skin_type(oily).
skin_type(dry).
skin_type(normal).
skin_type(sensitive).

product_type(cleanser).
product_type(toner).
product_type(serum).
product_type(moisturizer).
product_type(sunscreen).
product_type(mask).

product_for_skin_type(oily, cleanser).
product_for_skin_type(oily, toner).
product_for_skin_type(oily, moisturizer).
product_for_skin_type(oily, sunscreen).

product_for_skin_type(dry, cleanser).
product_for_skin_type(dry, moisturizer).
product_for_skin_type(dry, serum).
product_for_skin_type(dry, sunscreen).

product_for_skin_type(sensitive, cleanser).
product_for_skin_type(sensitive, moisturizer).
product_for_skin_type(sensitive, sunscreen).

product_for_skin_type(normal, cleanser).
product_for_skin_type(normal, moisturizer).
product_for_skin_type(normal, sunscreen).

recommend_products(SkinType, Products) :-
    skin_type(SkinType),
    findall(Product, product_for_skin_type(SkinType, Product), Products).
