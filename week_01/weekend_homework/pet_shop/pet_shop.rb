def pet_shop_name(name)
  return "Camelot of Pets"
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
  
def add_or_remove_cash(pet_shop, value)
    money = pet_shop[:admin][:total_cash]
    money += value
    pet_shop[:admin][:total_cash] = money
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold] 
end

def increase_pets_sold(pet_shop, value)
  sale = pet_shop[:admin][:pets_sold]
  sale += value
  pet_shop[:admin][:pets_sold] = value
end

def stock_count(pet_shop)
  count = pet_shop[:pets].length 
  return count
end

def pets_by_breed(pet_shop, breed)
  found_pets = []  
    for pets in pet_shop[:pets]     
      if pets[:breed] == breed
        found_pets.push(pets)
      end
    end
    return found_pets
    #I hated this function
end

def find_pet_by_name(pet_shop, pet_name)
  found_pets = []
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
      found_pets.push(pets)
    end
  end
  return found_pets[0]
#I initially put this return inside the return loop and only got 1 result, that took me a long time to notice 
end

def remove_pet_by_name(pet_shop, pet_name)
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
    pet_shop[:pets].delete(pets)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
  #I tried to use merge here but it wouldn't work and I don't understand why
end

def customer_pet_count(customer)
  num = customer[:pets].length
  return num
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] <= customer[:cash]
    return true
  else
    return false
  end
  #put the <= the wrong way around, had to look up why it didn't work
end

def sell_pet_to_customer(pet_shop, pet, customer)
  case 
    when find_pet_by_name = []
      return nil
    when customer_can_afford_pet = false
      return nil
    when customer_can_afford_pet = true 
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, pets[:price])
      add_pet_to_customer(customer, pet)
      remove_pet_by_name(pet_shop, pets[:name])
  end
end

#still getting an error on ln 178