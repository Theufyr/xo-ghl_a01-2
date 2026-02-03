SELECT * FROM themes;

SELECT name FROM skills WHERE theme_id = 2;

SELECT skills.name, themes.name FROM skills
JOIN themes ON theme_id = themes.id ORDER BY themes.name ASC;

INSERT INTO skills (name, description, creation_date, theme_id) VALUES 
('Organisation d''événements IRL', 'Planification et animation de rencontres physiques comme des apéros réguliers, repas ou événements communautaires', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de communautés'));

