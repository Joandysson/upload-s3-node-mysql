-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 127.0.0.Database: easymenu
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.5-MariaDB-1:10.5.5+maria~focal
--
-- Dumping data for table `users`
--
INSERT INTO
  `users`
VALUES
  ('974de739-2a5c-4176-a13d-2ccce00dd7c3', 'teste', 'teste@teste.com', '$2b$08$/gktdQ3FWpyoApwquzMHJux8ByqwGX39rFmBEOb0Rlc9Ajvb9yzCS', '79999999999', '99999999999', NULL, NULL, '2020-11-23 02:20:16', '2020-11-23 02:20:16', NULL);
--
-- Dumping data for table `establishments`
--
INSERT INTO
  `establishments`
VALUES
  ('7742690c-e659-4970-b0b9-edd20bbdb10b', '974de739-2a5c-4176-a13d-2ccce00dd7c3', 'role 10', 'role10', 'Hamburgueria', 'Hamburgueria do role 10 - top 10', 0, '2020-11-23 02:24:35', '2020-11-23 02:24:35', NULL);
--
-- Dumping data for table `categories`
--
INSERT INTO
  `categories`
VALUES
  ('4fb72fd4-2d33-11eb-8fc4-0242c0a8dc02', '7742690c-e659-4970-b0b9-edd20bbdb10b', 'Hamburgueres', '2020-11-23 02:26:36', '2020-11-23 02:26:36', NULL),
  ('6d1f889f-2d33-11eb-8fc4-0242c0a8dc02', '7742690c-e659-4970-b0b9-edd20bbdb10b', 'Jantas', '2020-11-23 02:27:26', '2020-11-23 02:27:26', NULL),
  ('75497bd1-2d33-11eb-8fc4-0242c0a8dc02', '7742690c-e659-4970-b0b9-edd20bbdb10b', 'Saladas', '2020-11-23 02:27:39', '2020-11-23 02:27:39', NULL);
--
-- Dumping data for table `products`
--
INSERT INTO
  `products`
VALUES
  ('46900895-2d3c-11eb-8595-0242c0a8dc02', '75497bd1-2d33-11eb-8fc4-0242c0a8dc02', 1, 'SALADA JOCLES', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', 70.00, '0000-00-00 00:00:00', '2020-11-23 03:30:47', NULL),
  ('4690ddc7-2d3c-11eb-8595-0242c0a8dc02', '75497bd1-2d33-11eb-8fc4-0242c0a8dc02', 2, 'SALADA ADLER', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1540420773420-3366772f4999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=631&q=80', 20.00, '0000-00-00 00:00:00', '2020-11-23 03:30:47', NULL),
  ('4691269d-2d3c-11eb-8595-0242c0a8dc02', '75497bd1-2d33-11eb-8fc4-0242c0a8dc02', 3, 'SALADA RAFOLIS', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80', 15.50, '0000-00-00 00:00:00', '2020-11-23 03:30:47', NULL),
  ('494601de-2d3b-11eb-8595-0242c0a8dc02', '4fb72fd4-2d33-11eb-8fc4-0242c0a8dc02', 1, 'X-JOCLES', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1594212699903-ec8a3eca50f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 70.00, '2020-11-23 03:23:42', '2020-11-23 03:23:42', NULL),
  ('49464a18-2d3b-11eb-8595-0242c0a8dc02', '4fb72fd4-2d33-11eb-8fc4-0242c0a8dc02', 2, 'X-ADLER', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1529564879024-c54e7c2dd0e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 20.00, '2020-11-23 03:23:42', '2020-11-23 03:23:42', NULL),
  ('4946eade-2d3b-11eb-8595-0242c0a8dc02', '4fb72fd4-2d33-11eb-8fc4-0242c0a8dc02', 3, 'X-RAFOLIS', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1546599115-c0c0815c391b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 13.50, '2020-11-23 03:23:42', '2020-11-23 03:23:42', NULL),
  ('fcf44f5d-2d3b-11eb-8595-0242c0a8dc02', '6d1f889f-2d33-11eb-8fc4-0242c0a8dc02', 1, 'JOCLES AO MOLHO', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1515516969-d4008cc6241a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 70.00, '2020-11-23 03:28:43', '2020-11-23 03:28:43', NULL),
  ('fcf47530-2d3b-11eb-8595-0242c0a8dc02', '6d1f889f-2d33-11eb-8fc4-0242c0a8dc02', 2, 'ADLER PA NUM SEI OQ', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80', 20.00, '2020-11-23 03:28:43', '2020-11-23 03:28:43', NULL),
  ('fcf5260c-2d3b-11eb-8595-0242c0a8dc02', '6d1f889f-2d33-11eb-8fc4-0242c0a8dc02', 3, 'RAFOLIS SINCERO', 'Lorem ipsum nossa que descricao chata meu que doideira é essa cara meu deus Lord Vinheteiro haha', 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=637&q=80', 13.50, '2020-11-23 03:28:43', '2020-11-23 03:28:43', NULL);
--
-- Dumping data for table `extras`
--
INSERT INTO
  `extras`
VALUES
  ('90290128-2d3c-11eb-8595-0242c0a8dc02', 1, 'item 1', 2, 'detalhe item 1', '0000-00-00 00:00:00', '2020-11-23 03:32:50', NULL),
  ('90292727-2d3c-11eb-8595-0242c0a8dc02', 2, 'item 2', 2, 'detalhes item 2', '0000-00-00 00:00:00', '2020-11-23 03:32:50', NULL),
  ('9029b8d8-2d3c-11eb-8595-0242c0a8dc02', 3, 'item 4', 3, 'detalhes item 3', '0000-00-00 00:00:00', '2020-11-23 03:32:50', NULL),
  ('9029e49e-2d3c-11eb-8595-0242c0a8dc02', 4, 'item 4', 4, 'detalhes item 4', '0000-00-00 00:00:00', '2020-11-23 03:32:50', NULL);
--
-- Dumping data for table `products_extras`
--
INSERT INTO
  `products_extras`
VALUES
  ('2fcfbf92-2d3d-11eb-8595-0242c0a8dc02','494601de-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc12f-2d3d-11eb-8595-0242c0a8dc02','494601de-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc1f5-2d3d-11eb-8595-0242c0a8dc02','494601de-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc260-2d3d-11eb-8595-0242c0a8dc02','494601de-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc308-2d3d-11eb-8595-0242c0a8dc02','49464a18-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc3de-2d3d-11eb-8595-0242c0a8dc02','49464a18-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fcfc486-2d3d-11eb-8595-0242c0a8dc02','49464a18-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02bb5-2d3d-11eb-8595-0242c0a8dc02','49464a18-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02cdb-2d3d-11eb-8595-0242c0a8dc02','4946eade-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02d4c-2d3d-11eb-8595-0242c0a8dc02','4946eade-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02ddc-2d3d-11eb-8595-0242c0a8dc02','4946eade-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02e6c-2d3d-11eb-8595-0242c0a8dc02','4946eade-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02f1e-2d3d-11eb-8595-0242c0a8dc02','fcf44f5d-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd02fb5-2d3d-11eb-8595-0242c0a8dc02','fcf44f5d-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03034-2d3d-11eb-8595-0242c0a8dc02','fcf44f5d-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd030c6-2d3d-11eb-8595-0242c0a8dc02','fcf44f5d-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03171-2d3d-11eb-8595-0242c0a8dc02','fcf47530-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03207-2d3d-11eb-8595-0242c0a8dc02','fcf47530-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03298-2d3d-11eb-8595-0242c0a8dc02','fcf47530-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd0332c-2d3d-11eb-8595-0242c0a8dc02','fcf47530-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd033dc-2d3d-11eb-8595-0242c0a8dc02','fcf5260c-2d3b-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03471-2d3d-11eb-8595-0242c0a8dc02','fcf5260c-2d3b-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd034dd-2d3d-11eb-8595-0242c0a8dc02','fcf5260c-2d3b-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03576-2d3d-11eb-8595-0242c0a8dc02','fcf5260c-2d3b-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd0360b-2d3d-11eb-8595-0242c0a8dc02','46900895-2d3c-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd036b1-2d3d-11eb-8595-0242c0a8dc02','46900895-2d3c-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03731-2d3d-11eb-8595-0242c0a8dc02','46900895-2d3c-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd037bf-2d3d-11eb-8595-0242c0a8dc02','46900895-2d3c-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03831-2d3d-11eb-8595-0242c0a8dc02','4690ddc7-2d3c-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03890-2d3d-11eb-8595-0242c0a8dc02','4690ddc7-2d3c-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd038e9-2d3d-11eb-8595-0242c0a8dc02','4690ddc7-2d3c-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03943-2d3d-11eb-8595-0242c0a8dc02','4690ddc7-2d3c-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd039aa-2d3d-11eb-8595-0242c0a8dc02','4691269d-2d3c-11eb-8595-0242c0a8dc02','90290128-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03a06-2d3d-11eb-8595-0242c0a8dc02','4691269d-2d3c-11eb-8595-0242c0a8dc02','90292727-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03a61-2d3d-11eb-8595-0242c0a8dc02','4691269d-2d3c-11eb-8595-0242c0a8dc02','9029b8d8-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL),
  ('2fd03aba-2d3d-11eb-8595-0242c0a8dc02','4691269d-2d3c-11eb-8595-0242c0a8dc02','9029e49e-2d3c-11eb-8595-0242c0a8dc02','2020-11-23 03:37:18','2020-11-23 03:37:18',NULL);
-- Dump completed on 2020-11-23  3:53:19