def add_friend(name, person)
  person[:friends] << name
end

def remove_friend(name, person)
  result = nil

  for friend in person[:friends]
    result = friend if friend == name
  end

  if result != nil
    person[:friends].delete(result)
  end

end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:things_to_eat].include?(food)
end

def total_funds(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend_money(giver, reciever, value)
  giver[:monies] -= value
  reciever[:monies] += value
end

def all_foods(people)
  foods = []
  for person in people
    foods.concat(person[:favourites][:things_to_eat])
  end
  return foods
end

def no_friends(people)
  result = []
  for person in people
    result << person if person[:friends].empty?
  end
  return result
end

def same_tv_show( friends )
  tv_shows = {}
  result = {}

  for friend in friends
    show = friend[:favourites][:tv_show]

    if tv_shows[show]
      tv_shows[show].push(friend[:name])
    else
      tv_shows[show] = [friend[:name]]
    end
  end

  for i in tv_shows.keys
    if tv_shows[i].size > 1
      result[i] = tv_shows[i].reverse
    end
  end

  return result
end


# 1. For a given person, return their favourite tv show
# 2. For a given person, check if they like a particular food
# 3. Allow a new friend to be added to a given person
# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show