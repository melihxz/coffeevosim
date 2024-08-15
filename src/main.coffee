# main.coffee
Microorganism = require './organism'
Environment = require './environment'
{ randomDNA } = require './utils'

# Simülasyon parametreleri
gridWidth = 10
gridHeight = 10
organismCount = 5

# Ortamı ve mikroorganizmaları oluşturun
env = new Environment(gridWidth, gridHeight)
for i in [0...organismCount]
  dna = randomDNA(4)
  organism = new Microorganism(dna, { x: Math.floor(Math.random() * gridWidth), y: Math.floor(Math.random() * gridHeight) })
  env.addOrganism(organism, organism.position.x, organism.position.y)

# Simülasyon döngüsü
for turn in [0...100]
  console.log "Turn: #{turn}"
  env.update()
  env.display()
  console.log "\n"
