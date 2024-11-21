-- Seeding table ROLE
INSERT INTO ROLE (id_role, role) 
VALUES (1, '#');

-- Seeding table USER
INSERT INTO USER (id_user, name, email, password, date_created, status, id_role) 
VALUES (1, '#', '#', '#', CURRENT_DATE, '#', 1);

-- Seeding table CATEGORY
INSERT INTO CATEGORY (id_category, name) 
VALUES
    (1, 'film'),
    (2, 'serie'),
    (3, 'animation'),
    (4, 'repas'),
    (5, 'dessert');

-- Seeding table RECIPE
INSERT INTO RECIPE (id_recipe, title, description, anecdote, source, date_added) 
VALUES
    (1,
    'Tarte Royale de Princesse Chewing-Gum',
    'Un dessert royal inspiré des aventures de Finn et Jake, cette tarte parfaite célèbre la délicatesse sucrée de la Princesse Chewing-Gum, sans potion paralysante, mais pleine de saveurs mémorables !',
    '',
    'Adventure Time',
    CURRENT_DATE),
    (2,
    'Scones aux Champignons du Pays des Merveilles',
    "Ces scones savoureux inspirés du célèbre pays d'Alice sont faits de champignons Bella, de bacon et de fromage cheddar, parfaits pour un goûter royal. Ajoutez une touche de poivre et de bacon si vous le souhaitez !", 
    '', 
    'Alice au Pays des Merveilles', 
    CURRENT_DATE),
    (3, 
    'Shawarma', 
    "Un délicieux sandwich à base de viande d\'agneau marinée, accompagné de légumes frais, de frites et d\'une sauce de votre choix, inspiré de la scène d'"Avengers" !", 
    ""You ever try shawarma? There's a shawarma joint about two blocks from here. I don't know what it is, but I want to try it."", 
    'Marvel Avengers (2012)', 
    CURRENT_DATE),
    (4, 
    'Buffy\'s Chocolate Caramel Stakes', 
    'Des bonbons caramel trempés dans du chocolat, créant l\'illusion de stakes pour une soirée thématique Buffy ou vampire !', 
    'Inspiration de "Buffy the Vampire Slayer" Fiction Kitchen Podcast', 
    'Buffy the Vampire Slayer', 
    CURRENT_DATE),
    (5, 
    'Cinderella\'s Butterfly Cupcakes', 
    'Des cupcakes inspirés par le film "Cinderella" (2015) avec des décorations de papillons et des motifs de nuages.', 
    'Inspiré par le film de Disney "Cinderella" (2015), ces cupcakes rendent hommage au motif bleu des papillons et des nuages dans le film.', 
    'Disney\'s Cinderella (2015)', 
    CURRENT_DATE),
     (6, 
    'Fisk Omelette', 
    'Un omelette légère inspirée par la scène d\'ouverture de "Daredevil" S1 EP8, accompagnée de tranches d\'avocat et de pain artisanal.', 
    'Cette omelette fait écho à l\'univers de "Daredevil", en particulier à la scène d\'ouverture où le héros navigue dans un monde de tensions et de justice.', 
    'Daredevil, S1 EP8', 
    CURRENT_DATE),
    (7, 
    'Mini Minion Pizza', 
    'De petites pizzas sur muffins anglais, inspirées des Minions, avec du fromage mozzarella, du pepperoni et des olives pour créer les visages des Minions.', 
    'Ces petites pizzas sont parfaites pour une fête à thème Minion ou pour un repas amusant en famille.', 
    'Fête Minion', 
    CURRENT_DATE),
    (8,
    'Biscuit Dodger à la Confiture',
    'Des biscuits sablés avec de la confiture au centre, inspirés des aventures de Matt Smith en tant que Le Docteur. Parfait pour accompagner une tasse de thé !',
    "All right...it is a jammy dodger, but I was promised tea!",
    'Doctor Who',
    CURRENT_DATE),
    (9,
    'Pot de Crème à la Citrouille Épices',
    'Un dessert crémeux et épicé qui rappelle la saison d\'Halloween, fait à partir d\'un mélange de Sof\'ella. Idéal pour accompagner un thé ou à servir lors de fêtes.',
    'Inspiré par l\'univers magique de Harry Potter, ce pot de crème rappelle les nombreux délices à la citrouille de la saga.',
    'Harry Potter',
    CURRENT_DATE),
    (10,
    'Peanut Butter Chocolate Cups',
    'Des bouchées sucrées et chocolatées avec un cœur au beurre de cacahuète crémeux, inspirées des classiques mais revisitées pour un goût irrésistible.',
    '',
    'Recette Maison',
    CURRENT_DATE);
-- Seeding table INGREDIENT

INSERT INTO INGREDIENT (id_ingredient, name, quantity, unit, id_recipe)
VALUES
-- Recette 1
(1, 'Fond de tarte précuit', '1', 'pièce', 1),
(2, 'Fromage à la crème', '225', 'g', 1),
(3, 'Jus de citron', '1/2', 'c. à café', 1),
(4, 'Sucre glace tamisé', '75', 'g', 1),
(5, 'Crème fouettée Cool Whip', '225', 'g', 1),
(6, 'Crème fouettée maison', '750', 'ml', 1),
(7, 'Fraises fraîches', '1', 'barquette', 1),
(8, 'Glaçage à la fraise', '300', 'g', 1),
(9, 'Feuilles de menthe fraîche', 'au goût', 'pièce', 1),

-- Recette 2

(10, 'Huile', '15', 'g', 2),
(11, 'Champignons Baby Bella', '227', 'g', 2),
(12, 'Farine', '240', 'g', 2),
(13, 'Levure chimique', '12', 'g', 2),
(14, 'Sel', '5', 'g', 2),
(15, 'Poivre concassé', '1', 'g', 2),
(16, 'Romarin frais', '1', 'g', 2),
(17, 'Beurre', '85', 'g', 2),
(18, 'Fromage cheddar râpé', '120', 'g', 2),
(19, 'Bacon précuit', '3', 'tranches', 2),
(20, 'Œufs', '2', 'pièce', 2),
(21, 'Crème épaisse', '120', 'ml', 2),
(22, 'Eau', '15', 'ml', 2),

-- Recette 3
(23, 'Pita ou pain plat', '1', 'pièce', 3),
(24, 'Sauce/condiment au choix (Hummus, Tahini, Mayonnaise, Yaourt grec, Ranch, Chutney mangue épicé)', 'au goût', 'portion', 3),
(25, 'Tomates Roma', '3', 'pièce', 3),
(26, 'Concombre anglais', '1', 'pièce', 3),
(27, 'Oignon doux', '1', 'pièce', 3),
(28, 'Persil frais', 'au goût', 'pièce', 3),
(29, 'Frites', 'au goût', 'portion', 3),
(30, 'Cornichons', 'au goût', 'pièce', 3),
(31, 'Épaule d'agneau désossée', '1800', 'g', 3),
(32, 'Yaourt grec', '120', 'g', 3),
(33, 'Jus de citron', '30', 'ml', 3),
(34, 'Vinaigre blanc', '30', 'ml', 3),
(35, 'Ail haché', '15', 'g', 3),
(36, 'Sel', '5', 'g', 3),
(37, 'Poivre noir', '1', 'g', 3),
(38, 'Cumin', '2', 'g', 3),
(39, 'Piment de la Jamaïque', '2', 'g', 3),
(40, 'Piment de Cayenne', '1', 'g', 3),
(41, 'Huile d'olive', '30', 'ml', 3),

-- Recette 4
(42, 'Mini Cow Tail Caramel Candies ou Cubes de Caramel', '1/2', 'paquet', 4),
(43, 'CandiQuick (ou chocolat à fondre)', '1', 'paquet (16 oz)', 4),
(44, 'Sirop de fraise', 'au goût', 'portion', 4),

-- Recette 5
(45, 'Boîte de mélange à gâteau blanc (~15,25oz)', '1', 'boîte', 5),
(46, 'Cotton Candy Bleu', '1', 'paquet ou contenant', 5),
(47, 'Pouding instantané à la vanille au chocolat blanc (~3,5oz)', '1', 'paquet', 5),
(48, 'Cool Whip', '4', 'oz', 5),
(49, 'Frosting à la crème au beurre blanc', 'au choix', 'portion', 5),
(50, 'Candy Melts Bleu Clair', '3/4', 'tasse', 5),
(51, 'Candy Melts Bleu Foncé', '3/4', 'tasse', 5),
(52, 'Candy Melts Noir', '3/4', 'tasse', 5),
(53, 'EZ-Thin ou autre aidant à tremper les Candy Melts', 'au besoin', 'petite quantité', 5),
(54, 'Dragées perles/sprinkles', 'au goût', 'portion', 5),

-- Recette 6
(55, 'Beurre', '1', 'cuillère à soupe', 6),
(56, 'Œufs', '2', 'unités', 6),
(57, 'Lait', '2', 'cuillères à soupe', 6),
(58, 'Sel et Poivre', 'au goût', 'portion', 6),
(59, 'Ciboules fraîches', 'finement hachées', 'portion', 6),
(60, 'Avocat', '1', 'tranché', 6),

-- Recette 7
(61, 'Muffin Anglais', '1', 'ouvert', 7),
(62, 'Tranches de fromage mozzarella', '2', 'unités', 7),
(63, 'Sauce spaghetti ou pizza', 'au goût', 'portion', 7),
(64, 'Pepperoni', '6-12', 'pièces', 7),
(65, 'Olives noires tranchées', 'au goût', 'portion', 7),

-- Recette 8
(66, 'Beurre non salé', '230', 'g', 8),
(67, 'Sucre granulé', '100', 'g', 8),
(68, 'Sucre brun clair', '50', 'g', 8),
(69, 'Jaune d'œuf', '1', 'pièce', 8),
(70, 'Extrait de vanille', '7.5', 'ml', 8),
(71, 'Farine de blé', '360', 'g', 8),
(72, 'Noix de muscade', '0.5', 'g', 8),
(73, 'Sel', '2', 'g', 8),
(74, 'Confiture de framboise ou de fraise sans morceaux', '150', 'g', 8),

-- Recette 9
(75, 'Sof'ella Pumpkin Spice Pot de Crème', '1', 'paquet', 9),
(76, 'Lait entier', '480', 'ml', 9),

-- Recette 10
(77, 'Beurre', '1', 'cuil. à soupe', 10),
(78, 'Beurre de cacahuète', '1/4', 'tasse', 10),
(79, 'Sucre glace tamisé', '1/3', 'tasse + 2 cuil. à soupe', 10),
(80, 'Pépites de chocolat', '1', 'tasse', 10),
(81, 'Aide à tremper (facultatif)', 'un peu', 'selon besoin', 10).
-- Seeding table RECIPE_INSTRUCTIONS


INSERT INTO INSTRUCTION (id_instruction, step_number, instruction, id_recipe)
VALUES

-- Recette 1
(1, 1, "Préparer la crème : Mélangez le fromage à la crème, le jus de citron et le sucre glace jusqu'à obtenir une texture lisse. Incorporez délicatement la crème fouettée. Versez la moitié dans le fond de tarte refroidi (scellez avec de la confiture d'abricot chaude si souhaité).", 1),
(2, 2, 'Ajouter les fraises : Coupez les fraises (en réservant quelques-unes) et disposez-les sur la crème en une couche uniforme. Ajoutez une fine couche de glaçage, puis recouvrez avec le reste de la crème. Placez au congélateur 10-15 min.', 1),
(3, 3, 'Finition : Étalez une dernière couche de glaçage rouge vif. Décorez avec une fraise coupée au centre et des feuilles de menthe. Réfrigérez au moins 1 heure (idéalement toute une nuit).', 1),
(4, 4, 'Servir : Décorez chaque part avec une fraise et des feuilles de menthe.', 1);

-- Recette 2
(5, 1, 'Préchauffer le four à 230°C. Faire revenir les champignons dans l\'huile pendant 3 minutes, puis les égoutter sur du papier absorbant.', 2),
(6, 2, 'Mélanger la farine, la levure, le sel, le poivre et le romarin. Ajouter le beurre, puis le fromage râpé.', 2),
(7, 3, 'Battre 1 œuf avec la crème, puis mélanger à la pâte avec les champignons et le bacon.', 2),
(8, 4, 'Former une boule, puis l\'étaler en un disque de 15 cm. Couper en 6 à 8 parts et placer sur une plaque de cuisson.', 2),
(9, 5, "Badigeonner les scones avec l'œuf battu, saupoudrer de fromage râpé et ajouter une tranche de champignon sur chaque scone.", 2),
(10, 6, 'Cuire au four pendant 12-15 minutes, jusqu\'à ce qu\'ils soient dorés. Servir avec du beurre.', 2);

-- Recette 3
(11, 1, "Découper la viande en morceaux de 8-10 cm d\'épaisseur. Mélanger tous les ingrédients sauf l\'huile et verser sur la viande. Ajouter l\'huile et couvrir de film plastique et de papier d\'aluminium. Laisser mariner au réfrigérateur 24 heures.", 3),
(12, 2, "Préchauffer le four à 130°C. Retirer le film plastique et recouvrir la viande de papier d\'aluminium. Placer au four pendant environ 2 heures.", 3),
(13, 3, "Faire chauffer une poêle ou un grill. Faire saisir la viande des deux côtés jusqu\'à ce qu\'elle soit dorée et légèrement croustillante, environ 1 à 2 minutes.", 3),
(14, 4, "Cuire les frites comme indiqué sur l\'emballage. Réchauffer les pains pita ou le pain plat au micro-ondes pendant environ 30 secondes.", 3),
(15, 5, "Étaler la sauce de votre choix sur le pain. Découper la viande en tranches fines et les ajouter sur le pain.", 3),
(16, 6, "Ajouter des tranches de tomate, concombre, oignon et persil. Vous pouvez aussi ajouter des frites et des cornichons dans le sandwich.", 3),
(17, 7, "Assaisonner selon votre goût et plier le pain pour former le sandwich. Déguster !", 3);

-- Recette 4
(18, 1, 'Étirez et torsadez les bonbons au caramel jusqu\'à ce qu\'ils aient environ 6 cm de long et 1 cm de diamètre. Enfoncez un cure-dent à une extrémité de chaque morceau, en laissant assez de cure-dent pour pouvoir le tenir, puis placez les bonbons sur une grande feuille de papier parchemin.', 4),
(19, 2, 'Faites fondre le CandiQuick selon les instructions du paquet et versez-le dans un verre haut (si vous utilisez des pépites de chocolat, faites-les fondre par incréments de 30 secondes au micro-ondes ou au bain-marie). Tenez les bonbons au caramel par les cure-dents et trempez-les un par un dans le chocolat fondu, en tapotant légèrement pour laisser l\'excédent tomber, puis placez-les à nouveau sur le papier parchemin. Après avoir trempé quelques bonbons, faites des marques en diagonale sur leur surface avec le cure-dent pour créer un effet bois. Continuez à tremper et marquer jusqu\'à ce que tous les bonbons soient sur le parchemin. Laissez-les durcir complètement.', 4),
(20, 3, 'Prenez un bonbon trempé par son cure-dent et maintenez-le horizontalement. Utilisez les ciseaux de cuisine pour couper l\'extrémité sans cure-dent en biais, créant ainsi l\'aspect pointu d\'un stake. Coupez également tout excédent de chocolat sur les côtés du bonbon qui pourrait s\'être étalé après le trempage. Placez le bonbon terminé sur votre plat de service et retirez le cure-dent. Servez avec du sirop de fraise optionnel.', 4);

-- Recette 5
(21, 1, 'Préparez le pouding et laissez-le refroidir selon les instructions sur le paquet. Incorporez la crème fouettée jusqu\'à ce que le mélange soit bien combiné et aéré. Mettez-le au réfrigérateur jusqu\'à ce qu\'il soit prêt à être utilisé.', 5),
(22, 2, 'Préparez les cupcakes dans des caissettes blanches selon les instructions du paquet de mélange à gâteau. Laissez-les refroidir complètement et découpez délicatement le centre des cupcakes, environ à la taille d\'un quart, sans aller jusqu\'au fond. Réservez les morceaux découpés pour plus tard. Préparez le frosting si vous ne l\'achetez pas tout fait.', 5),
(23, 3, 'Tapissez un grand plateau de papier parchemin. Faites fondre les candy melts noirs dans un bol allant au micro-ondes en les chauffant par incréments de 30 secondes, en remuant après chaque chauffe, jusqu\'à ce qu\'ils soient complètement fondus (ajoutez l\'aide à tremper si vous en utilisez).', 5),
(24, 4, 'Versez le chocolat fondu dans un sac de décoration en plastique ou une bouteille et déposez plusieurs segments de ligne d\'environ 1/4" de large x 1 1/2" de long sur le papier parchemin, autant que de cupcakes. Ce seront les corps de vos papillons. Laissez durcir.', 5),
(25, 5, 'Répétez le processus de fonte avec les candy melts bleu foncé et bleu clair. Avec le bleu foncé, formez un "ᗺ" et un "ᗷ" pour chaque cupcake (vous pouvez les rendre plus pointus si vous le souhaitez). Ce seront les contours des ailes du papillon.', 5),
(26, 6, 'Ajoutez une fine couche de bleu clair sur chaque contour d\'aile et faites tourbillonner un peu de bleu foncé avec un cure-dent (vous pouvez voir sur les photos que j\'ai essayé différentes façons de décorer les ailes, mais j\'aime le tourbillon de bleu foncé dans le bleu clair le plus). Vous pouvez aussi utiliser le cure-dent pour dessiner un motif en spirale dans le bleu clair après qu\'il se soit un peu solidifié. Laissez durcir complètement les ailes, puis retirez-les délicatement du papier.', 5),
(27, 7, 'Remplissez un sac en plastique avec le mélange de pouding et crème fouettée et découpez un coin. Pochez le mélange dans les centres des cupcakes. Remplissez un autre sac avec le frosting et pochez une fine couche sur chaque cupcake (ou étalez-la simplement avec un couteau à beurre). Placez du coton candy bleu sur chaque cupcake pour couvrir le frosting.', 5),
(28, 8, 'Note : Si vous souhaitez sauter l\'étape du coton candy et éviter sa désintégration, omettez-le et colorez votre frosting en bleu à la place ! Pochez une couche de frosting en forme de nuage sur chaque cupcake, puis continuez l\'assemblage des papillons.', 5),
(29, 9, 'Utilisez de petites gouttes de candy melt pour fixer un corps de papillon noir sur le dessus de chaque cupcake. Placez un cure-dent de chaque côté de chaque segment de candy melt noir (deux cure-dents par cupcake) à un angle de 45º. Un par un, pochez une fine ligne de candy melt noir sur les côtés des segments noirs et placez rapidement une aile bleue de chaque côté, les bords droits dans le candy melt que vous venez de poser, en les inclinant avec les cure-dents. Laissez durcir en place, puis retirez les cure-dents.', 5),
(30, 10, 'Décorez les cupcakes avec de petites perles en sucre en les fixant avec un peu de candy melt sur un cure-dent. Mangez les cupcakes rapidement car au fil du temps, l\'humidité du cupcake fera fondre le coton candy!', 5);

-- Recette 6
(31, 1, 'Dans une poêle moyenne à feu moyen, faites fondre le beurre et faites-le tourbillonner pour bien enrober la poêle. Battez les œufs avec le lait jusqu\'à ce que les blancs soient complètement cassés, puis ajoutez du sel et du poivre.', 6),
(32, 2, 'Versez les œufs dans la poêle et utilisez immédiatement une spatule pour pousser l\'œuf cuit des bords vers le centre, laissant l\'œuf encore liquide remplir les espaces créés. Une fois que l\'œuf est presque pris et plus liquide, repliez 2 bords vers le centre et superposez-les (comme un dépliant). Retournez l\'omelette avec soin et faites cuire quelques secondes de plus.', 6),
(33, 3, 'Faites glisser l\'omelette sur une assiette et saupoudrez de ciboules finement hachées, ainsi que de sel et de poivre au goût. Servez avec des tranches d\'avocat et du pain artisanal croûté, si vous le souhaitez.', 6);

-- Recette 7
(34, 1, 'Préchauffez votre four à 350ºF (175ºC). Placez une tranche de mozzarella sur la moitié d\'un muffin anglais et faites-le toaster au four sur une plaque jusqu\'à ce que le fromage soit fondu.', 7),
(35, 2, 'Retirez du four et ajoutez de la sauce spaghetti ou pizza sur le fromage fondu, puis étalez-la uniformément. Placez au moins six morceaux de pepperoni (pour une double couche, mettez 12 morceaux !) sur la sauce, puis ajoutez une autre tranche de mozzarella.', 7),
(36, 3, 'Utilisez un petit emporte-pièce rond pour découper un cercle au centre d\'une tranche de pepperoni et placez ce "O" sur la mozzarella pour créer le goggle. Placez une olive noire coupée au centre du "O" pour faire l\'œil et découpez un autre pepperoni en deux bandes que vous disposerez sur les côtés pour faire les bretelles du goggle.', 7),
(37, 4, 'Coupez une olive noire en deux pour obtenir une forme en "U" et placez-la sous le goggle pour faire un sourire. Placez deux ou trois morceaux d\'olive noire coupés au-dessus du goggle pour faire les cheveux.', 7),
(38, 5, 'Mettez la pizza dans le four et faites cuire jusqu\'à ce que le fromage fonde autour des bords. Retirez du four et réajustez les morceaux de "cheveux" en olive noire s\'ils ont glissé pendant la cuisson. Dégustez et savourez !', 7);

-- Recette 8
(39, 1, 'Préchauffez votre four à 180°C. Dans un grand bol, crémez le beurre à vitesse moyenne, puis ajoutez les deux sucres et mélangez. Ajoutez le jaune d\'œuf et l\'extrait de vanille et mélangez jusqu\'à incorporation complète. Baissez la vitesse et ajoutez la farine, le sel et la noix de muscade, petit à petit, jusqu\'à ce que la pâte forme une boule.', 8),
(40, 2, 'Sur une feuille de papier sulfurisé, étalez environ la moitié de la pâte en une épaisseur de 3 mm. Utilisez un emporte-pièce pour découper des cercles et laissez de l\'espace entre chaque cercle. Retirez les chutes de pâte et remettez-les dans la boule de pâte. Utilisez un emporte-pièce plus petit pour découper un cercle au centre de la moitié des biscuits.', 8),
(41, 3, 'Placez les biscuits découpés sur une plaque de cuisson et faites-les cuire pendant environ 8 minutes, ou jusqu\'à ce que les bords commencent à dorer. Laissez refroidir complètement.', 8),
(42, 4, 'Une fois les biscuits refroidis, étalez une fine couche de confiture sur chaque biscuit entier, en laissant un peu d\'espace autour des bords. Posez un biscuit avec le centre découpé sur chaque biscuit garni de confiture et appuyez légèrement.', 8),
(43, 5, 'Servez les biscuits avec une tasse de thé chaud. Ils sont encore meilleurs le lendemain, après avoir reposé et que la confiture ait bien pris.', 8);

-- Recette 9
(44, 1, 'Versez le mélange pour pot de crème et le lait dans une casserole sur feu moyen-élevé. Fouettez jusqu\'à ce que le mélange épaississe et commence à frémir. Réduisez le feu et laissez cuire encore 30 secondes. Retirez du feu.', 9),
(45, 2, 'Versez le mélange dans des ramequins ou des petits verres et laissez reposer à température ambiante jusqu\'à ce qu\'il atteigne la température ambiante. Ensuite, placez-les au réfrigérateur pendant 1 à 2 heures pour qu\'ils prennent.', 9),
(46, 3, 'Servez avec de la crème fouettée (voir la recette ici) et saupoudrez de noix de muscade sur le dessus.', 9);

-- Recette 10
(47, 1, "Faire fondre le beurre et le beurre de cacahuète dans une casserole à feu doux. Ajouter le sucre glace et mélanger jusqu'à obtenir une texture lisse.", 10),
(48, 2, "Former des boules avec le mélange de beurre de cacahuète, les envelopper dans du film plastique et les placer au congélateur pendant 3 minutes.", 10),
(49, 3, "Faire fondre le chocolat au micro-ondes par intervalles de 30 secondes, puis ajouter un peu d'huile ou de Crisco pour rendre le chocolat plus fluide.", 10),
(50, 4, "Verser une petite quantité de chocolat fondu dans chaque moule, tapoter le moule pour répartir uniformément le chocolat, puis laisser durcir.", 10),
(51, 5, "Placer un petit morceau de mélange de beurre de cacahuète au centre de chaque cavité, puis recouvrir avec le reste de chocolat fondu. Laisser durcir au moins 30 minutes.", 10),
(52, 6, "Démouler délicatement les bonbons et les placer dans des caissettes ou des petites coupelles si nécessaire.", 10);
