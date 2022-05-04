-- QUESTÃO 01
-- Eu criaria uma tabela chamada Zona e faria o relacionamento com as tabelas Grupo, MensagemMoradores, Edificios. Assim evitaria o cadastro da mesma informação escrito de formas diferentes. 
-- Eu criaria uma tabela chamada Projecto e faria o relacionamento com as tabelas Grupo, Mensagens. Assim evitaria o cadastro da mesma informação escrito de formas diferentes. 

-- QUESTÃO 02
CREATE VIEW ZonaView
AS
SELECT COUNT(e.Id) AS 'TotalEdificios', COUNT(c.Id) AS 'TotalCasas'
FROM [dbo].[Edificios] e
LEFT JOIN [dbo].[Zona] z ON z.Id = e.ZonaId
INNER JOIN [dbo].[Casas] c ON c.EdificioId = e.Id
WHERE e.Estado = 2 OR e.Estado = 3