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
