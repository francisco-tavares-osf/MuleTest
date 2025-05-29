CREATE TABLE blockbuster.CLIENTS(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE blockbuster.MOVIES(
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    stock INT DEFAULT 0,
    price FLOAT NOT NULL
);
CREATE TABLE blockbuster.ORDERS(
	id INT AUTO_INCREMENT PRIMARY KEY,
    clientId INT NOT NULL,
    orderType DECIMAL(10,2) NOT NULL,
    status ENUM('created','paid','cancelled') NOT NULL,
    createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (clientId) REFERENCES clients(id)
);
CREATE TABLE orders_movies(
	orderId INT NOT NULL,
    movieId INT NOT NULL,
    PRIMARY KEY (orderId, movieId),
    FOREIGN KEY (orderId) REFERENCES orders(id),
    FOREIGN KEY (movieId) REFERENCES movies(id)
);
 
