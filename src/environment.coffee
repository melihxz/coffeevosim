# environment.coffee
class Environment
  constructor: (width, height) ->
    @width = width
    @height = height
    @grid = []

    # Boş bir grid oluşturun
    for i in [0...@height]
      row = []
      for j in [0...@width]
        row.push null
      @grid.push row

  addOrganism: (organism, x, y) ->
    if @grid[y][x] is null
      @grid[y][x] = organism

  update: ->
    # Mikroorganizmaların hareketini ve evrimini güncelleyin
    for row in @grid
      for cell in row
        if cell? and cell.isAlive()
          cell.move(@grid)
          cell.age()
        else
          cell = null

  display: ->
    console.log @grid.map (row) ->
      row.map (cell) ->
        if cell? then "M" else "."
      .join " "
    .join "\n"

module.exports = Environment
