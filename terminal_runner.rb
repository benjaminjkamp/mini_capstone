require 'http'



puts "Select a number corresponding to the function from the following choices:"
puts "[1] See all products"
puts "[2] See information for a particular product"
puts "[3] Add a product"
puts "[4] Update an existing product"
puts "[5] Delete a product"

function = gets.chomp

if function == "1"
  response = HTTP.get("http://localhost:3000/api/products")
  puts response.parse
elsif function == "2"
  puts "Select the ID of the product you would like to see:"
  id = gets.chomp
  response = HTTP.get("http://localhost:3000/api/products/#{id}")
  puts response.parse
elsif function == "3"
  puts "Enter the product name:"
  name = gets.chomp
  puts "Enter the product description:"
  description = gets.chomp
  puts "Enter the product price:"
  price = gets.chomp

  post = HTTP.post("http://localhost:3000/api/products", :form => {name: name, description: description, price: price})
  puts post.parse
elsif function == "4"
  puts "Enter the value for the updated attribute:"
  if attribute == "price"
    value = gets.chomp.to_i
  else
    value = gets.chomp
  end

  response = HTTP.patch("http://localhost:3000/api/products/#{id}", :form => {attribute => value})
  puts response.parse

elsif function == "5"
  puts "Select the ID of the product you would like to annihilate:"
  id = gets.chomp
  response = HTTP.delete("http://localhost:3000/api/products/#{id}")
  puts response.parse[0]["product"]
end 


# response = HTTP.get("http://localhost:3000/api/products")
# products = response.parse


# puts "#{products}\n\n"

# index = 1
# 3.times do
#   response = HTTP.get("http://localhost:3000/api/products/#{index}")
#   show_product = response.parse
#   puts show_product["id"]
#   puts show_product["name"]
#   puts show_product["description"]
#   puts show_product["price"]
#   puts show_product["image"]
#   puts "\n\n"
#   index += 1
# end
# puts "Enter the product name:"
# name = gets.chomp
# puts "Enter the product description:"
# description = gets.chomp
# puts "Enter the product price:"
# price = gets.chomp

# post = HTTP.post("http://localhost:3000/api/products", :form => {name: name, description: description, price: price})




# response = HTTP.get("http://localhost:3000/api/products")
# products = response.parse
# puts products

# puts "Select the ID of the product you would like to update:"
# id = gets.chomp.to_i

# puts "Enter the attribute you would like to edit:"
# attribute = gets.chomp

# puts "Enter the value for the updated attribute:"
# if attribute == "price"
#   value = gets.chomp.to_i
# else
#   value = gets.chomp
# end


# HTTP.patch("http://localhost:3000/api/products/#{id}", :form => {attribute => value})

# response = HTTP.get("http://localhost:3000/api/products")

# puts response.parse


# puts "Select the ID of the product you would like to destroy:"
# id = gets.chomp.to_i

# HTTP.delete("http://localhost:3000/api/products/#{id}")


# response = HTTP.get("http://localhost:3000/api/products")

# puts response.parse