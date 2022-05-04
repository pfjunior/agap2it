USE AgapTest;
Go

-- Zona
INSERT INTO [dbo].[Zona](Id, Descricao) VALUES(NEWID(), 'Zona 01');
GO
INSERT INTO [dbo].[Zona](Id, Descricao) VALUES(NEWID(), 'Zona 02');
GO
INSERT INTO [dbo].[Zona](Id, Descricao) VALUES(NEWID(), 'Zona 03');
GO

-- Estado
INSERT INTO [dbo].[Estado](Descricao) VALUES('1');
GO
INSERT INTO [dbo].[Estado](Descricao) VALUES('2');
GO
INSERT INTO [dbo].[Estado](Descricao) VALUES('3');
GO

-- Edificios
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 1, 1, null, 'E01', 'ADE7B4D5-564E-4809-85B8-24DFBD9700DF');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 2, null, 1, 'E02', '699569E5-AC5A-4168-A083-816566718886');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 3, null, null, 'E03', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 1, 1, null, 'E04', '699569E5-AC5A-4168-A083-816566718886');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 2, null, 1, 'E05', 'ADE7B4D5-564E-4809-85B8-24DFBD9700DF');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 3, null, null, 'E06', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 1, 1, null, 'E07', '699569E5-AC5A-4168-A083-816566718886');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 2, null, 1, 'E08', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[Edificios](Id, Estado, E1100, E1200, Numero, ZonaId) VALUES(NEWID(), 3, null, null, 'E09', 'ADE7B4D5-564E-4809-85B8-24DFBD9700DF');
GO

-- Casas
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 1, '9A20D595-8018-45E9-92E2-1966781A507A');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 2, '435E641D-4BF6-42D4-B57A-C33A79A6C149');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 3, '74D8BD7C-EE77-4352-BA7E-042EF8163C31');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 1, 'EC214D9E-0BC2-4D94-A061-50159E31401E');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 3, '30573C19-7AF0-4B65-B19C-C00992D59DAA');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 2, '435E641D-4BF6-42D4-B57A-C33A79A6C149');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 3, '74D8BD7C-EE77-4352-BA7E-042EF8163C31');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 1, '9C526B76-8E06-4C2E-AA23-82E274449918');
Go
INSERT INTO [dbo].[Casas](Id, Estado, EdificioId) VALUES(NEWID(), 2, 'C7FFBF3C-0238-441D-8B08-CC714B727B8F');
Go

-- Perfies
INSERT INTO [dbo].[Perfies](Descricao) VALUES('1');
GO

INSERT INTO [dbo].[Perfies](Descricao) VALUES('2');
GO

-- Projecto
INSERT INTO [dbo].[Projecto](Id, Descricao) VALUES (NEWID(), 'PROJ01');
GO
INSERT INTO [dbo].[Projecto](Id, Descricao) VALUES (NEWID(), 'PROJ02');
GO
INSERT INTO [dbo].[Projecto](Id, Descricao) VALUES (NEWID(), 'PROJ03');
GO

-- Grupos
INSERT INTO [dbo].[Grupos](Id, PerfilId, ZonaId, ProjectoId) VALUES(NEWID(), 1, 'ADE7B4D5-564E-4809-85B8-24DFBD9700DF', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Grupos](Id, PerfilId, ZonaId, ProjectoId) VALUES(NEWID(), 2, '699569E5-AC5A-4168-A083-816566718886', 'C3D12BA8-A064-43BC-AF77-3C6C7E79022D');
GO
INSERT INTO [dbo].[Grupos](Id, PerfilId, ZonaId, ProjectoId) VALUES(NEWID(), 2, '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C', '23D8EE63-769A-4259-A4C8-0ED50A11E189');
GO

-- Mensagens
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscing', '1897C01B-94E7-4A59-A1EF-28BCB28C56AA');
GO
INSERT INTO [dbo].[Mensagens](Id, Texto, ProjectoId) VALUES(NEWID(), 'Lorem ipsum dolor sit amet consectetur adipiscingh', 'C3D12BA8-A064-43BC-AF77-3C6C7E79022D');
GO

-- Moradores
INSERT INTO [dbo].[Moradores](Id, Nome) VALUES(NEWID(), 'Morador01');
GO
INSERT INTO [dbo].[Moradores](Id, Nome) VALUES(NEWID(), 'Morador02');
GO
INSERT INTO [dbo].[Moradores](Id, Nome) VALUES(NEWID(), 'Morador03');
GO
INSERT INTO [dbo].[Moradores](Id, Nome) VALUES(NEWID(), 'Morador04');
GO

-- MensagemMoradores
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('B7482A11-DBF2-4116-BD9F-2EC892A6913D', '5CC384CA-F86F-4CF2-BA2E-418523E44FE6', 'ADE7B4D5-564E-4809-85B8-24DFBD9700DF');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('B7482A11-DBF2-4116-BD9F-2EC892A6913D', '5CC384CA-F86F-4CF2-BA2E-418523E44FE6', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('B7482A11-DBF2-4116-BD9F-2EC892A6913D', '5CC384CA-F86F-4CF2-BA2E-418523E44FE6', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('B7482A11-DBF2-4116-BD9F-2EC892A6913D', '5CC384CA-F86F-4CF2-BA2E-418523E44FE6', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('B7482A11-DBF2-4116-BD9F-2EC892A6913D', '5CC384CA-F86F-4CF2-BA2E-418523E44FE6', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('2F2774F2-E611-46C7-A299-620B7179D419', '7275D973-40D0-43A3-84CB-706FAE12E8DC', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('2F2774F2-E611-46C7-A299-620B7179D419', '7275D973-40D0-43A3-84CB-706FAE12E8DC', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('2F2774F2-E611-46C7-A299-620B7179D419', '7275D973-40D0-43A3-84CB-706FAE12E8DC', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('8DAAF158-1E04-49D8-B837-66EC9AA6834D', '263F246B-6D84-48E0-96A4-F0FE57EDEA23', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('8DAAF158-1E04-49D8-B837-66EC9AA6834D', '263F246B-6D84-48E0-96A4-F0FE57EDEA23', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
INSERT INTO [dbo].[MensagemMoradores](MensagemId, MoradorId, ZonaId) VALUES('70E2A3F5-0D3F-4362-8C02-8780A563CE45', '069ADD09-9116-4B3B-8B2D-F48F85AE7F17', '7414A455-41CB-4A3D-9E5C-3F6A7D472D7C');
GO
