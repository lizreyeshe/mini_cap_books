require 'unirest'

# params = {
#   name: "A short Story of Nearly Everything", 
#   author: "Bill Bryson",
#   description: "One of the world’s most beloved writers and bestselling author of One Summer takes his ultimate journey—into the most intriguing and intractable questions that science seeks to answer",
#   price:9
# }

# response = Unirest.post("http://localhost:3000/api/books", parameters: params)

# JSON.pretty_generate(response)


# puts "enterd id of book you want to update"
# book_id = gets.chomp

# params = {
#   description: "How a good night's shut-eye can make us cleverer, more attractive, slimmer, happier, healthier, and ward off cancer"
# }

# response = Unirest.patch("http://localhost:3000/api/books/#{book_id}", parameters: params).body 

# JSON.pretty_generate(response)

# puts "What book do you want to delete?"
# book_id = gets.chomp

# response = Unirest.delete("http://localhost:3000/api/books/#{book_id}").body

response = Unirest.post(
    "http://localhost:3000/users",
    parameters: {
      name: "kali",
      email: "kali@gmail.com",
      password: "password",
      password_confirmation: "password"
    }
  )
  p response.body










