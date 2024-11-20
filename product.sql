CREATE TABLE product(
    Product_id INT NOT NULL AUTO_INCREMENT,
    Brand VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Price INT NOT NULL,
    Quantity INT NOT NULL,
    Image_url VARCHAR(255) NOT NULL,
    PRIMARY KEY (product_id)
)

INSERT INTO product ("Product_id", "Brand", "Description", "Price", "Quantity", "Image_url")
VALUES 
(1, 'Jordan Why Not.4', 'Men\'s Kyrie Infinity Basketball Shoe', 669, 5, 'images/product1.png', 'Men', 4, 20),
(2, 'Air Jordan Retro 4', 'Men\'s Jordan', 500, 7, 'images/product2.png', 'Men', 4, 10),
(3, 'Nike Air Force 1', 'Unisex Air Force 1', 419, 5, 'images/product3.png', 'Women', 5, 0),
(4, 'Adidas Originals Superstar', 'Tennis shoe ', 360, 14, 'images/product4.png', 'Women', 1, 0),
(5, 'Puma Palermo', 'Casual Sneakers', 260, 14, 'images/product5.png', 'Kids', 2, 15),
(6, 'Mango Chelsea Boots', 'Men\'s black boots', 160, 2, 'images/product6.png', 'Men', 3, 0),
(7, 'Vans', 'black boot collection', 360, 4, 'images/product7.png', 'Women', 3, 0),
(8, 'Nike Lebron's 19, 'Men\'s zoom basketball shoes', 600, 3, 'images/product8.png', 'Men', 3, 0),
(9, 'Nike Kyrie 3', 'Men\'s Kyrie basketball shoes', 1060, 17, 'images/product9.png', 'Kids', 5, 70),
(10, 'Nike Kyrie Infinity ', 'Men\'s Kyrie basketball shoes', 500, 13, 'images/main-nike-pic.png', 'Men', 5, 50),
(12, 'Nike Mag 'Back To The Future'', 'exotic nike shoes', 5000, 10, './images/product10.png', 'Men', 1, 17),
(13, 'Adidas Forum', 'Kids Addidas sneakers', 100, 13, 'images/product11.png', 'Kids', 2, 10);



-- CART ITEM TABLE
CREATE TABLE cart_item (
    User_id INT NOT NULL,
    Product_id INT NOT NULL,
    Item_quantity INT NOT NULL,
    PRIMARY KEY (User_id, Product_id),
    FOREIGN KEY (User_id) REFERENCES Users(ID),
    FOREIGN KEY (Product_id) REFERENCES product(Product_id)
);

-- WISH LIST TABLE
CREATE TABLE wish_list (
User_id INT NOT NULL,
Product_id INT NOT NULL,
PRIMARY KEY (User_id, Product_id),
FOREIGN KEY (User_id) REFERENCES Users(ID),
FOREIGN KEY (Product_id) REFERENCES product(Product_id)
);
