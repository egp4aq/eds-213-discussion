CREATE TABLE colors(
    id int NOT NULL, -- unique id for this color
    name varchar, -- name of color (human readable)
    rgb varchar, -- approx. rgb of color (hex code)
    is_trans boolean -- t/f if color is transparent
);

CREATE TABLE inventories(
    id int NOT NULL, -- unique id for inventory entry
    version int, -- version number
    set_num int -- set number from sets
);

CREATE TABLE sets(
    id int NOT NULL,
    name varchar, -- name of set
    year int, -- year set was published
    set_num int, -- set number from sets
    theme_id int, -- unique ID for theme used for set
    num_parts int -- number of parts in set
);

CREATE TABLE parts(
    part_num int NOT NULL, -- unique ID for the part
    name varchar, -- name of the part
    part_cat_id int -- part category ID from part_categories
);

CREATE TABLE themes(
    id int NOT NULL, -- theme unique ID
    name varchar, -- name of theme
    parent_id int -- unique ID for larger theme
);