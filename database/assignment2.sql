-- Insert a new record to the account table
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Modify Tony record to change the account_type
UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

--Delete Tony record from the database
DELETE FROM account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

--Modify record description
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Use inner join
SELECT inventory.inv_make, inventory.inv_model, classification.classification_name
FROM inventory
INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

-- Update all records in the inventory table
UPDATE inventory
SET inv_image = CONCAT('/images/vehicles/hummer.jpg/', SUBSTRING(inv_image FROM POSITION('/images/' IN inv_image) + 8)),
    inv_thumbnail = CONCAT('/images/vehicles/hummer.jpg/', SUBSTRING(inv_thumbnail FROM POSITION('/images/' IN inv_thumbnail) + 8));
