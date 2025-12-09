// Once upon a time... Groovy example
class Vampire {
  String location; int birth; int death; List weaknesses = ['Sunlight']
  int age() { death - birth }
}

def d = new Vampire(location: 'Transylvania', birth: 1428, death: 1476)
println "${d.location} age: ${d.age()}"
