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
  pet_shop[:admin][:pets_sold] = sale
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
end

def find_pet_by_name(pet_shop, pet_name)
  found_pets = []
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
      found_pets.push(pets)
    end
  end
  return found_pets[0]
end

