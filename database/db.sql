-- creating login table

CREATE TABLE login (id INTEGER PRIMARY KEY, 
                    email VARCHAR(80) UNIQUE NOT NULL, 
                    password VARCHAR(150) NOT NULL, 
                    lastlogin DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);


-- creating code table

CREATE TABLE code ( _id INTEGER AUTO_INCREMENT PRIMARY KEY, 
                    _state VARCHAR(40) NOT NULL, 
                    a_type VARCHAR(1) NOT NULL, 
                    d_type VARCHAR(1) NOT NULL, 
                    code VARCHAR(7) NOT NULL, 
                    ref_no INTEGER NOT NULL, 
                    userid INTEGER NOT NULL, 
                    created DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
                    FOREIGN KEY (userid) REFERENCES login(id)  ON DELETE RESTRICT ON UPDATE CASCADE );
                    

-- inserting  given values in the login table
-- given passwords are already hashed to  store in database as Register page is not implemented in the application

INSERT INTO login (id,email,password) VALUES(1,'demo@payu.in','$2a$10$ddKH/.ORgfpXfi1ipVuGnOQ0fiYHalRlwByoutmjoTgyc6VTit2f2');


INSERT INTO login (id,email,password) VALUES(2,'machinetest@payu.in','$2a$10$ig1Vt0Jv0dLDd6CdROsASefUSgKgPk.hkqf8ETsY.WvpTec0hff2S');