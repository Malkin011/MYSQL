CRIAR TABELA `Temas` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`descricao` varchar (255) AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `Usuarios` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar (255) NOT NULL AUTO_INCREMENT,
	`usuario` varchar (255) NOT NULL AUTO_INCREMENT,
	`senha` varchar (255) NÃO NULO AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `Postagens` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titulo` varchar (255) AUTO_INCREMENT,
	`texto` varchar (1000) AUTO_INCREMENT,
	`data` TIMESTAMP AUTO_INCREMENT,
	`tema_id` INT NOT NULL,
	`usuario_id` INT NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT` Postagens_fk0` FOREIGN KEY (`tema_id`) REFERÊNCIAS` Temas` (`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT` Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERÊNCIAS` Usuarios` (`id`);




