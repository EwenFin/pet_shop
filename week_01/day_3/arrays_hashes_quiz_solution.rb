### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array
 # puts lines.length()

# 2. Return 'Edinburgh Park' from the array
# puts lines[1]

# 3. How many ways can we return 'Princes Street' from the array?
# puts lines[4]
# puts lines[-1]
# puts lines.pop()
# for place in lines
#   if place == "Princes Street"
#     puts place
#   end
# end

# counter = 0
# while lines[counter] != "Princes Street"
#   counter = counter + 1
# end
# puts lines[counter]
# puts lines.slice(4)
# puts lines.fetch(4)

# 4. Work out the index position of 'Haymarket'
# puts lines.include?("Haymarket")
# puts lines.index("Haymarket")

# 5. Add 'Airport' to the start of the array
# puts lines.unshift("Airport")

# 6. Add 'York Place' to the end of the array
# puts lines.push("York Place")
# puts lines << "York Place"

# 7. Remove 'Edinburgh Park' from the array using it's name
# lines.delete("Edinburgh Park")
# puts lines

# 8. Delete 'Edinburgh Park' from the array by index
# lines.delete_at(1)
# puts lines

# 9. Reverse the positions of the stops in the array
# lines.reverse()
# puts lines

### B. Given the following data structure:

my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?
# puts my_hash[1]

# 2. How would you return the string `"Two"`?
# puts my_hash[:two]

# 3. How would you return the number `2`?
# puts my_hash["two"]

# 4. How would you add `{3 => "Three"}` to the hash?
# my_hash[3] = "Three"
# puts my_hash
# my_hash.merge!({3 => "three"})
# my_hash.store(3, "Three")
# puts my_hash

# 5. How would you add `{:four => 4}` to the hash?
# my_hash[:four] = 4
# puts my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# puts users["Jonathan"][:twitter]

# 2. Return Erik's home_town
# puts users["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers
# puts users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet colin
# puts users["Avril"][:pets]["colin"]
# puts users["Avril"][:pets].values[0]

# 5. Return the smallest of Erik's favorite numbers
# puts users["Erik"][:favourite_numbers].min

# 6. Add the number `7` to Erik's favorite numbers
# users["Erik"][:favourite_numbers].unshift(7)
# users["Erik"][:favourite_numbers].push(7)
# users["Erik"][:favourite_numbers].insert(1, 7)

# puts users["Erik"]

# 7. Change Erik's home_town to Edinburgh
# users["Erik"][:home_town] = "Edinburgh"
# puts users["Erik"]

# 8. Add a pet dog to Erik called "Fluffy"
# users["Erik"][:pets]["fluffy"] = :dog
# puts users["Erik"]
# users["Erik"][:pets].merge!({ "fluffy" => :dog })
# puts users["Erik"]

# 9. Add yourself to the users hash

# users.store("Chris",  {:twitter => "cbrown"})

# users["David"] = {
#   twitter: "rbcroft",
#   favourite_numbers: [1,2,3,4]
# }

# me = {
#   twitter: "graeme"
# }

me = {
  "Graeme" => {
      twitter: "graeme"
  }
}

puts users.merge!(me)


