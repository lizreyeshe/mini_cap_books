Book.create!([
  {name: "The Complete Guide to Rat Training", author: "Debbie Ducommun", description: "The Complete Guide to Rat Training teaches you how to have fun and enhance the relationship you share with your pet rat. The step-by-step format thoroughly and concisely covers a variety of training topics, including positive reinforcement, clicker training, basic and advanced trick training, and how to set up games and science projects.", stock: nil, price: nil, supplier_id: 1},
  {name: "The Will Parrots on Telegraph Hill", author: "Mark Bittner", description: "Like a lot of young people in the 1970s, Mark Bittner took the path of the “dharma bum.” When the counterculture faded, Mark held on, seeking shelter in the nooks and crannies of San Francisco’s fabled bohemian neighborhood, North Beach. While living on the eastern slope of Telegraph Hill, he made a magical discovery: a flock of wild parrots.", stock: nil, price: "11.2", supplier_id: 2},
  {name: "Why we sleep", author: "Matthew Walker", description: "How a good night's shut-eye can make us cleverer, more attractive, slimmer, happier, healthier, and ward off cancer", stock: nil, price: "24.0", supplier_id: 2},
  {name: "The Life-Changing Magic of Tidying up", author: "Marie Kondo", description: "Best-selling guide to decluttering your home from Japanese cleaning consultant Marie Kondo takes readers step-by-step through her revolutionary KonMari Method for simplifying, organizing, and storing", stock: nil, price: "11.99", supplier_id: 2},
  {name: "Musashi: An Epic Novel of the Samurai Era", author: "Eiji Yoshikawa", description: "Miyamoto Musashi was the child of an era when Japan was emerging from decades of civil strife. Lured to the great Battle of Sekigahara in 1600 by the hope of becoming a samurai--without really knowing what it meant--he regains consciousness after the battle to find himself lying defeated, dazed and wounded among thousands of the dead and dying. On his way home, he commits a rash act, becomes a fugitive and brings life in his own village to a standstill--until he is captured by a weaponless Zen monk.", stock: nil, price: "9.5", supplier_id: 1},
  {name: "The Tao of Pooh", author: "Benjamin Hoff", description: "The how of Pooh? The Tao of who? The Tao of Pooh!?! In which it is revealed that one of the world's great Taoist masters isn't Chinese--or a venerable philosopher--but is in fact none other than that effortlessly calm, still, reflective bear. A. A. Milne's Winnie-the-Pooh! While Eeyore frets, and Piglet hesitates, and Rabbit calculates, and Owl pontificates, Pooh just is.", stock: nil, price: "15.0", supplier_id: 1},
  {name: "Yes Please!", author: "Amy Poehler", description: "Do you want towith laughter on Saturday Night Live, and in movies like Baby Mama, Blades of Glory, and They Came Together? Do you find yourself daydreaming about hanging out with the actor behind the brilliant Leslie Knope on Parks and Recreation? Did you wish you were in the audience at the last two Golden Globes ceremonies, so you could bask in the hilarity of Amy's one-liners?", stock: nil, price: "55.0", supplier_id: 1}
])
BookCategory.create!([
  {book_id: 1, category_id: 2},
  {book_id: 14, category_id: 1},
  {book_id: 2, category_id: 1},
  {book_id: 17, category_id: 1},
  {book_id: 15, category_id: 3},
  {book_id: 8, category_id: 3},
  {book_id: 2, category_id: 2},
  {book_id: 16, category_id: 1},
  {book_id: 14, category_id: 2},
  {book_id: 16, category_id: 4},
  {book_id: 1, category_id: 4},
  {book_id: 17, category_id: 4}
])
CartedProduct.create!([
  {user_id: 5, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 5, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 5, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 5, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 5, quantity: 12, status: "carted", order_id: nil, book_id: 1},
  {user_id: 5, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 2, quantity: 3, status: "carted", order_id: nil, book_id: 1},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 7, book_id: 16},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 15},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 2},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 16},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 7, book_id: 14},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 7, book_id: 2},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 7, book_id: 14},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 7, book_id: 2},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 14},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 16},
  {user_id: 4, quantity: 3, status: "purchased", order_id: 7, book_id: 16},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 8, book_id: 14}
])
Category.create!([
  {name: "Bios"},
  {name: "Best Sellers"},
  {name: "Animal Books"},
  {name: "Featured"}
])
Image.create!([
  {image1: "https://www.google.com/aclk?sa=l&ai=DChcSEwj1mPb448nbAhVFZX4KHU3JCAIYABABGgJwYw&sig=AOD64_1a6isaZdlEc0rFH-LTkdS8rKDjuw&ctype=5&q=&ved=0ahUKEwiHqvL448nbAhXJiVQKHfj1CU0Qwg8INA&adurl=", book_id: 1},
  {image1: "https://phulme.files.wordpress.com/2017/11/why-we-sleep.jpg", book_id: 1}
])
Order.create!([
  {user_id: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: 48.0, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: 11.2, tax: 1.008, total: 12.208},
  {user_id: 4, subtotal: 233.55, tax: 21.0195, total: 254.5695},
  {user_id: 4, subtotal: 9.0, tax: 0.81, total: 9.81}
])
Supplier.create!([
  {name: "Bob", email: "bob@gmail.com", phone_number: "4155555555"},
  {name: "Ernest", email: "e@gmail.com", phone_number: "415765555"},
  {name: "Bob", email: "bob@gmail.com", phone_number: "4155555555"},
  {name: "Ernest", email: "e@gmail.com", phone_number: "415765555"}
])
User.create!([
  {email: "liz@gmail.com", password_digest: "$2a$10$wUhVqVDvw0j2RyFlET/53OfWhzi1.92hEgAcXPfSThN.D1rGnO4I2", name: "liz", admin: false},
  {email: "luke@gmail.com", password_digest: "$2a$10$Dh1kpJH0ZniYM..n6ovOFOZbEWn/PU3d0dxX9sX3HN9qokITODajy", name: "luke", admin: false},
  {email: "kali@gmail.com", password_digest: "$2a$10$ybbEc9V0gEFJ4OXKXIIOKOrVKJERb8q9fetWZV4ez1b4mtCMY8rWS", name: "kali", admin: false},
  {email: "legolas@greenleaf.org", password_digest: "$2a$10$SgkUk88a9LJEGJCh0daKR.UHbA/S6GbimYYlZH/8h0SAOi5xJqkNG", name: "legolas", admin: false},
  {email: "liz.reyeshe@gmail.com", password_digest: "$2a$10$5l1pgNjsj.eHaFPQksc2yOF5LcXLYZs6MyrjgmCXt65ov8qVlEeLm", name: "liz", admin: false}
])
