-- create colors table
CREATE TABLE colors(
    id int NOT NULL, -- unique id for this color
    name varchar, -- name of color (human readable)
    rgb varchar, -- approx. rgb of color (hex code)
    is_trans boolean -- t/f if color is transparent
);

INSERT INTO colors
SELECT id, name, rgb, is_trans
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/data/colors.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');

-- create inventories table
CREATE TABLE inventories(
    id int NOT NULL, -- unique id for inventory entry
    version int, -- version number
    set_num varchar -- set number from sets
);

INSERT INTO inventories
SELECT id, version, set_num
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/data/inventories.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');

-- create sets table
CREATE TABLE sets(
    name varchar, -- name of set
    year int, -- year set was published
    set_num varchar, -- set number from sets
    theme_id int, -- unique ID for theme used for set
    num_parts int -- number of parts in set
);

INSERT INTO sets
SELECT name, year, set_num, theme_id, num_parts
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/data/sets.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');

-- create parts table
CREATE TABLE parts(
    part_num varchar NOT NULL, -- unique ID for the part
    name varchar, -- name of the part
    part_cat_id int -- part category ID from part_categories
);

INSERT INTO parts
SELECT part_num, name, part_cat_id
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/data/parts.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');

-- create themes table
CREATE TABLE themes(
    id int NOT NULL, -- theme unique ID
    name varchar, -- name of theme
    parent_id varchar -- unique ID for larger theme
);

INSERT INTO themes
SELECT id, name, parent_id
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/data/themes.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');

-- create inventory parts table
CREATE TABLE inventory_parts(
    inventory_id int NOT NULL, -- theme inventory ID
    part_num varchar, 
    color_id varchar,
    quantity int,
    is_spare boolean
);

INSERT INTO inventory_parts
SELECT inventory_id, part_num, color_id, quantity, is_spare
FROM read_csv_auto('/Users/elizabethpeterson/MEDS/eds-213-discussion/lego data/inventory_parts.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR = 'NA');