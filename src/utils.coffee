# utils.coffee
randomDNA = (length) ->
  result = ""
  characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  for i in [0...length]
    result += characters.charAt(Math.floor(Math.random() * characters.length))
  result

module.exports = { randomDNA }
