-- Once upon a time... Lua example
Vampire = {}
Vampire.__index = Vampire

function Vampire.new(location, birth, death)
  local self = setmetatable({}, Vampire)
  self.location = location
  self.birth = birth
  self.death = death
  self.weaknesses = { 'Sunlight' }
  return self
end

function Vampire:age()
  return self.death - self.birth
end

local d = Vampire.new('Transylvania', 1428, 1476)
print(d.location .. ' age: ' .. d:age())
