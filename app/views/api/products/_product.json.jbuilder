json.id product.id
json.name product.name
json.description product.description
json.price product.price
json.images product.images
json.is_discounted? product.is_discounted?
json.in_stock? product.in_stock
json.tax number_to_currency(product.tax)
json.total number_to_currency(product.total)
json.supplier product.supplier
json.current_user current_user.name