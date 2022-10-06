create table usuarios(id int primary key,contraseña varchar(50),correoUsuario varchar(50),nombre varchar(50))

Create table movimientos (idUsuario int,id_mov int primary key,tipo int,categoria int not null,cantidad int not null,
							descripcion varchar(50),fecha date,
							foreign key (tipo) references tipoMovimiento(id),
							foreign key (categoria) references categoria(id),
							foreign key (idUsuario) references usuarios(id))

Create table categoria(id int primary key,descripcion varchar(30),tipo int
						foreign key (tipo) references tipoMovimiento(id))

create table tipoMovimiento(id int primary key,tipo varchar (15))