-- Once upon a time... SQL DDL + queries
CREATE TABLE vampires (
  id INTEGER PRIMARY KEY,
  name TEXT,
  location TEXT,
  birth INTEGER,
  death INTEGER
);

INSERT INTO vampires (id, name, location, birth, death) VALUES (1, 'Dracula', 'Transylvania', 1428, 1476);

-- Query age
SELECT name, (death - birth) AS age FROM vampires WHERE id = 1;
