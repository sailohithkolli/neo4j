//Your Neo4j code goes here

CREATE (Naveen:Family {name: 'naveen kolli', born: 1990}),
(Madhan: Family {name: 'Madhan kolli', born: 1970}),
(Alia: Family {name: 'Alia Bhatt', born: 1992}),
(Adithya: Family {name: 'Adithya Vardhan', born: 2000}),
(Ayesha : Family {name: 'Ayesha Mohammed', born: 2005}),
(Fathima: Family {name: 'Fathima Begum', born: 1975}),
(Charan: Family {name: 'Charan Kolli', born: 1965}),
(Akshitha: Family {name: 'Akshitha Kolli', born: 1960}),
(Charitha:Family {name: 'Charitha Suvarapu', born: 1955})

CREATE (Charan)-[:SPOUSE {married:1990}]->(Akshitha),
(Akshitha)-[:SPOUSE {married:1990}]->(Charan),
(Akshitha)-[:CHILD {type:'son'}]->(Adithya), 
(Charan)-[:CHILD {type:'son'}]->(Adithya),
(Akshitha)-[:CHILD {type:'daughter'}]->(Ayesha),
(Charan)-[:CHILD {type:'daughter'}]->(Ayesha),
(Naveen)-[:PARENT {type:'mother'}]->(Charitha),
(Adithya)-[:PARENT {type:'father'}]->(Akshitha),
(Adithya)-[:PARENT {type:'mother'}]->(Charan),
(Ayesha)-[:PARENT {type:'father'}]->(Akshitha),
(Ayesha)-[:PARENT {type:'mother'}]->(Charan),
(Madhan)-[:SPOUSE {married:2000}]->(Fathima),
(Fathima)-[:SPOUSE {married:2000}]->(Madhan),
(Alia)-[:SPOUSE {married:2017}]->(Naveen),
(Naveen)-[:SPOUSE {married:2017}]->(Alia),
(Ayesha)-[:SIBLING]->(Adithya),
(Akshitha)-[:SIBLING]->(Charitha),
(Alia)-[:PARENT {type:'mother'}]->(Fathima)
;
