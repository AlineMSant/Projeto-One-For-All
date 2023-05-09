CREATE TABLE favoritos(
     usuario_id INT NOT NULL,
     cancao_id INT NOT NULL,
     cancoes_favoritas VARCHAR(100) NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
) ENGINE = InnoDB;

INSERT INTO favoritos (usuario_id, cancao_id, cancoes_favoritas)
VALUES
   (1, 3, 'ALIEN SUPERSTAR'),
   (1, 6, 'Como Nossos Pais'),
   (1, 10, 'Feeling Good'),
   (2, 4, "Don't Stop Me Now"),
   (3, 1, 'BREAK MY SOUL'),
   (3, 3, 'ALIEN SUPERSTAR'),
   (7, 4, 'O Medo de Amar é o Medo de Ser Livre'),
   (4, 4, "Don't Stop Me Now"),
   (5, 10, 'Feeling Good'),
   (5, 2, "VIRGO'S GROOVE"),
   (8, 4, "Don't Stop Me Now"),
   (9, 7, 'O Medo de Amar é o Medo de Ser Livre'),
   (10, 3, 'ALIEN SUPERSTAR');
