-- =========================
-- THEMES
-- =========================

INSERT INTO themes (name, description, creation_date) VALUES
('Composition musicale', 'Création professionnelle de musique pour projets artistiques ou commerciaux', CURRENT_DATE),
('Développement web et application', 'Développement technique de solutions web et applicatives', CURRENT_DATE),
('Création graphique', 'Conception visuelle pour communication et produits numériques', CURRENT_DATE),
('Artisanat cuir BDSM', 'Fabrication artisanale d''équipements en cuir dédiés aux pratiques BDSM', CURRENT_DATE),
('Gestion de boutique de proximité', 'Pilotage quotidien d''un commerce local', CURRENT_DATE),
('Conception de jeux en ligne', 'Création, exploitation et maintenance de jeux multijoueurs en ligne', CURRENT_DATE),
('Gestion de communautés', 'Encadrement et développement de communautés numériques', CURRENT_DATE);

-- =========================
-- SKILLS - COMPOSITION MUSICALE
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Composition harmonique', 'Construction d''harmonies et de progressions adaptées à un style musical', NOW(),
 (SELECT id FROM themes WHERE name = 'Composition musicale')),
('Arrangement instrumental', 'Adaptation d''une composition pour différents instruments et formations', NOW(),
 (SELECT id FROM themes WHERE name = 'Composition musicale')),
('Production en MAO', 'Utilisation de logiciels de musique assistée par ordinateur pour produire des titres', NOW(),
 (SELECT id FROM themes WHERE name = 'Composition musicale')),
('Mixage audio', 'Équilibrage des pistes pour obtenir un rendu clair et professionnel', NOW(),
 (SELECT id FROM themes WHERE name = 'Composition musicale'));

-- =========================
-- SKILLS - DÉVELOPPEMENT WEB ET APPLICATION
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Intégration front-end', 'Développement d''interfaces responsives conformes aux maquettes', NOW(),
 (SELECT id FROM themes WHERE name = 'Développement web et application')),
('Développement back-end', 'Implémentation de la logique métier et des API', NOW(),
 (SELECT id FROM themes WHERE name = 'Développement web et application')),
('Conception de bases de données', 'Modélisation, optimisation et maintenance de bases relationnelles', NOW(),
 (SELECT id FROM themes WHERE name = 'Développement web et application')),
('Tests et qualité logicielle', 'Mise en place de tests automatisés et validation fonctionnelle', NOW(),
 (SELECT id FROM themes WHERE name = 'Développement web et application')),
('Mise en production', 'Déploiement d''applications sur des serveurs ou services cloud', NOW(),
 (SELECT id FROM themes WHERE name = 'Développement web et application'));

-- =========================
-- SKILLS - CRÉATION GRAPHIQUE
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Direction artistique', 'Définition d''une identité visuelle cohérente avec un projet', NOW(),
 (SELECT id FROM themes WHERE name = 'Création graphique')),
('Design UI', 'Conception d''interfaces ergonomiques pour applications et sites web', NOW(),
 (SELECT id FROM themes WHERE name = 'Création graphique')),
('Illustration numérique', 'Création de visuels sur tablette ou ordinateur', NOW(),
 (SELECT id FROM themes WHERE name = 'Création graphique')),
('Préparation pour impression', 'Mise en conformité des fichiers pour l''impression professionnelle', NOW(),
 (SELECT id FROM themes WHERE name = 'Création graphique'));

-- =========================
-- SKILLS - ARTISANAT CUIR BDSM
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Sélection des cuirs', 'Choix de cuirs adaptés à l''usage, à la résistance et au confort', NOW(),
 (SELECT id FROM themes WHERE name = 'Artisanat cuir BDSM')),
('Patronage et découpe', 'Création de patrons et découpe précise des pièces en cuir', NOW(),
 (SELECT id FROM themes WHERE name = 'Artisanat cuir BDSM')),
('Assemblage et couture', 'Assemblage manuel ou machine des éléments en cuir', NOW(),
 (SELECT id FROM themes WHERE name = 'Artisanat cuir BDSM')),
('Conception sécurisée', 'Intégration des contraintes de sécurité propres aux pratiques BDSM', NOW(),
 (SELECT id FROM themes WHERE name = 'Artisanat cuir BDSM'));

-- =========================
-- SKILLS - GESTION DE BOUTIQUE DE PROXIMITÉ
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Gestion des approvisionnements', 'Commande et réception des marchandises', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de boutique de proximité')),
('Analyse des ventes', 'Suivi des indicateurs de performance et du chiffre d''affaires', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de boutique de proximité')),
('Accueil et conseil client', 'Accompagnement personnalisé des clients en magasin', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de boutique de proximité')),
('Gestion administrative', 'Facturation, comptabilité courante et obligations légales', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de boutique de proximité'));

-- =========================
-- SKILLS - CONCEPTION DE JEUX EN LIGNE
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Conception de mécaniques de jeu', 'Création de règles et systèmes engageants', NOW(),
 (SELECT id FROM themes WHERE name = 'Conception de jeux en ligne')),
('Programmation serveur de jeu', 'Gestion de la logique serveur et des sessions multijoueurs', NOW(),
 (SELECT id FROM themes WHERE name = 'Conception de jeux en ligne')),
('Équilibrage et progression', 'Ajustement des paramètres pour maintenir l''intérêt des joueurs', NOW(),
 (SELECT id FROM themes WHERE name = 'Conception de jeux en ligne')),
('Exploitation live', 'Suivi des performances et correction des bugs en production', NOW(),
 (SELECT id FROM themes WHERE name = 'Conception de jeux en ligne'));

-- =========================
-- SKILLS - GESTION DE COMMUNAUTÉS
-- =========================

INSERT INTO skills (name, description, creation_date, theme_id) VALUES
('Animation éditoriale', 'Création de contenus pour animer la communauté', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de communautés')),
('Modération proactive', 'Prévention et gestion des comportements problématiques', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de communautés')),
('Gestion de crise', 'Réaction adaptée face aux conflits ou bad buzz', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de communautés')),
('Analyse d''engagement', 'Suivi des indicateurs d''activité et de participation', NOW(),
 (SELECT id FROM themes WHERE name = 'Gestion de communautés'));
