# Once upon a time... CoffeeScript example
class Vampire
  constructor: (@location, @birth, @death) ->
    @weaknesses = ['Sunlight']

  age: -> @death - @birth

d = new Vampire 'Transylvania', 1428, 1476
console.log "#{d.location} age: #{d.age()}"
