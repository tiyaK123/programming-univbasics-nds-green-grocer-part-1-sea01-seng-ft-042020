def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0
while collection.length > index do
    item = collection[index]
    if item[:item] == name
      return item  
    end
    index += 1 
  end
return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
array = []
index = 0 
count = 1 
while cart.length > index do 
  new_cart = cart[index]
  if find_item_by_name_in_collection(new_cart[:item], array)
  new_cart[:count] = count
  array.push(new_cart)
  index += 1 
  count += 1 
end 
array 
end


  