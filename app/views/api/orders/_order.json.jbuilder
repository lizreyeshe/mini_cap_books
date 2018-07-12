json.id order.id 
json.user_id order.user_id 
json.subtotal order.subtotal
json.tax order.tax
json.total order.total

json.products do 
  json.array! order.books, partial: 'api/books/book', as: :book 
end 

json.user do 
  json.partial! order.user, partial: 'api/users/user', as: user 
end 
