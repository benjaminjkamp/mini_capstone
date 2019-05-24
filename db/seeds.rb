Category.create!([
  {name: "Phones"},
  {name: "Tablets"},
  {name: "Accessories"},
  {name: "Smart Home Products"},
  {name: "Android Devices"}
])
Supplier.create!([
  {name: "Google", email: "store@google.com", phone_number: "555-222-1111"},
  {name: "Amazon", email: "store@amazon.com", phone_number: "555-222-2222"}
])
User.create!([
  {name: "ak", email: "ak@gmail.com", password_digest: "$2a$10$FIQ7qobFTydypFT2bnaIeuQsik5SWnwQaaheqGp3QOzJKCbbx8qAK", admin: false},
  {name: "bk", email: "bk@gmail.com", password_digest: "$2a$10$/VUZt7oeobZiPOqkxSgwX.u/AQbxjECblqimtPxOOdZTBq6sXQgGq", admin: true},
  {name: "nobody", email: "nobody@gmail.com", password_digest: "$2a$10$pXRtWQNoTOzQ4mjX.sVme.HdU16/RoZjknXLREQamhQU0I3PeiUUG", admin: false}
])
Product.create!([
  {name: "Pixel 3XL", price: "899.0", description: "3rd generation XL phone made by Google", in_stock: true, supplier_id: 1},
  {name: "Pixel 3a", price: "399.0", description: "3rd generation budget version phone made by Google", in_stock: true, supplier_id: 1},
  {name: "Pixel XL", price: "249.99", description: "First generation XL Pixel phone made by google", in_stock: true, supplier_id: 1},
  {name: "Pixel Buds", price: "159.99", description: "Wireless ear buds made for Pixel phones made by Google", in_stock: true, supplier_id: 1},
  {name: "Pixel Slate", price: "799.0", description: "Google Tablet", in_stock: true, supplier_id: 1},
  {name: "Pixelbook", price: "999.0", description: "Chrome OS laptop made by Google", in_stock: true, supplier_id: 1},
  {name: "Google Nest Hub", price: "129.0", description: "Smart Display with Google Assistant", in_stock: true, supplier_id: 1},
  {name: "Pixel 2XL", price: "499.0", description: "2nd generation XL phone made by Google", in_stock: true, supplier_id: 1},
  {name: "test", price: "1010.0", description: "nope", in_stock: true, supplier_id: 2}
])
Image.create!([
  {url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcScdgBef17ZuhxgfvuXISI8rnTbqaj--dtRgzDQkAqlFjX9Db85DQM&usqp=CAc", product_id: 1},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTF9CzFhkLuKL_dyXVnXdx29Ni7ztiDk5d2QuMuAkTTRoI_e9JDpw&usqp=CAc", product_id: 2},
  {url: "https://www.androidcentral.com/sites/androidcentral.com/files/styles/xlarge_wm_brw/public/article_images/2019/05/pixel-3a-xl-preview-12.jpg?itok=oSN2poHI", product_id: 3},
  {url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQjuKCV6mpVhJ1VZ10h7HDzyZqClgbD_RWZ5X4W6Fh0NLv65vP40hHqFzqbuk5iad3FU-CvY4JDLmFlQojkiAZUV14Szy-7ctYVEjRkLFI&usqp=CAE", product_id: 4},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTf3Ke3z5oqMEIPRbJmekyq5bpLkYQoP17Lq6bBaJca5A5ehVTyspNtdhvsDKM4m6RDzAg5QYNmR2r1A1tMFdro_C9GvLSHZMNLOM7LPsRYx0Dwj-WtB9Mr&usqp=CAE", product_id: 5},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQ9yASlkyAw1jfqLlECYWvg1SgGxQ3QyRkZuhHH8ca9j2UnCYQrQ3w&usqp=CAc", product_id: 6},
  {url: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS9Pm1ZwqyI9M2HwSOJItZphpLSUNu_sgaY-LXEjexXNpIFc7n2uA&usqp=CAc", product_id: 7},
  {url: "data:image/png;base64,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", product_id: 12},
  {url: "https://images-na.ssl-images-amazon.com/images/I/61QMVdY5j3L._SL1500_.jpg", product_id: 1}
])
Order.create!([
  {quantity: 10, product_id: 5, subtotal: "1599.9", tax: "163.99", total: "1763.89", user_id: 2},
  {quantity: 10, product_id: 5, subtotal: "1599.9", tax: "163.99", total: "1763.89", user_id: 2},
  {quantity: 10, product_id: 5, subtotal: "1599.9", tax: "163.99", total: "1763.89", user_id: 2},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 3, product_id: 1, subtotal: "2700.0", tax: "276.75", total: "2976.75", user_id: 1},
  {quantity: 9, product_id: 12, subtotal: "1161.0", tax: "119.0", total: "1280.0", user_id: 1},
  {quantity: 3, product_id: 22, subtotal: "3030.0", tax: "310.58", total: "3340.58", user_id: 3}
])

ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 3},
  {product_id: 5, category_id: 2},
  {product_id: 7, category_id: 4},
  {product_id: 8, category_id: 1},
  {product_id: 1, category_id: 5},
  {product_id: 2, category_id: 5},
  {product_id: 5, category_id: 5}
])

