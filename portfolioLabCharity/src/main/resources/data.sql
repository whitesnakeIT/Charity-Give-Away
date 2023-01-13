use `charity-donation`;

INSERT INTO institutions (id, name, description) VALUE (null, 'Fundacja "Dbam o Zdrowie"', '"Cel i misja: Pomoc dzieciom z ubogich rodzin."');
INSERT INTO institutions (id, name, description) VALUE (null, 'Fundacja "A kogo"', '"Cel i misja: Pomoc wybudzaniu dzieci ze śpiączki."');
INSERT INTO institutions (id, name, description) VALUE (null, 'Fundacja "Dla dzieci"', '"Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji życiowej."');
INSERT INTO institutions (id, name, description) VALUE (null, 'Fundacja "Bez domu"', '"Cel i misja: Pomoc dla osób nie posiadających miejsca zamieszkania."');

INSERT INTO categories (id, name) VALUE (null, 'ubrania, które nadają się do ponownego użycia');
INSERT INTO categories (id, name) VALUE (null, 'ubrania, do wyrzucenia');
INSERT INTO categories (id, name) VALUE (null, 'zabawki');
INSERT INTO categories (id, name) VALUE (null, 'książki');
INSERT INTO categories (id, name) VALUE (null, 'inne');

INSERT INTO roles (id, name) VALUE (null, 'ROLE_ADMIN');
INSERT INTO roles (id, name) VALUE (null, 'ROLE_USER');

INSERT INTO users (id, email, password, username, enabled) VALUE (1, '1@1o2.pl','$2a$12$qRXaPiHLVtYc1XJFAhmxQOcHT8JcteKtij9R.ncaZu7tHX1eCBKNm','1', true);
INSERT INTO users (id, email, password, username, enabled) VALUE (2, '11@1o2.pl','$2a$12$qRXaPiHLVtYc1XJFAhmxQOcHT8JcteKtij9R.ncaZu7tHX1eCBKNm','11', true);
INSERT INTO users (id, email, password, username, enabled) VALUE (3, '111@1o2.pl', '$2a$12$qRXaPiHLVtYc1XJFAhmxQOcHT8JcteKtij9R.ncaZu7tHX1eCBKNm', '111', true);

INSERT INTO user_role(user_id, role_id) VALUE (1,1);
INSERT INTO user_role(user_id, role_id) VALUE (2,2);
INSERT INTO user_role(user_id, role_id) VALUE (3,2);