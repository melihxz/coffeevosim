# organism.coffee
class Microorganism
  constructor: (@dna, @position) ->
    @energy = 100
    @age = 0

  move: (grid) ->
    # Mikroorganizmanın rastgele bir yöne hareket etmesi
    directions = ["up", "down", "left", "right"]
    direction = directions[Math.floor(Math.random() * directions.length)]
    
    switch direction
      when "up" then @position.y = Math.max(@position.y - 1, 0)
      when "down" then @position.y = Math.min(@position.y + 1, grid.length - 1)
      when "left" then @position.x = Math.max(@position.x - 1, 0)
      when "right" then @position.x = Math.min(@position.x + 1, grid[0].length - 1)

  mutate: ->
    # Genetik kodda rastgele bir mutasyon
    index = Math.floor(Math.random() * @dna.length)
    newChar = String.fromCharCode(65 + Math.floor(Math.random() * 26))
    @dna[index] = newChar

  age: ->
    # Yaş arttıkça enerji azalır
    @age += 1
    @energy -= 1

  isAlive: ->
    @energy > 0

module.exports = Microorganism
