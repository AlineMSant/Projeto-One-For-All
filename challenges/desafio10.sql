CREATE TABLE favoritos(
     id INT PRIMARY KEY AUTO_INCREMENT,
     usuario_id INT NOT NULL,
     cancao_id INT NOT NULL,
CONSTRAINT UNIQUE(usuario_id, cancao_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO favoritos (usuario_id, cancao_id)
VALUES
   (1, 3),
   (1, 6),
   (1, 10),
   (2, 4),
   (3, 1),
   (3, 3),
   (4, 7),
   (4, 4),
   (5, 10),
   (5, 2),
   (8, 4),
   (9, 7),
   (10, 3);
