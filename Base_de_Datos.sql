create table usuarios(id int primary key,contraseña varchar(50) unique not null,correoUsuario varchar(50) unique not null,nombre varchar(50))

Create table movimientos (idUsuario int,id_mov int primary key,tipo int not null,categoria int not null,cantidad int not null,
							descripcion varchar(50),fecha date not null,
							foreign key (tipo) references tipoMovimiento(id),
							foreign key (categoria) references categoria(id),
							foreign key (idUsuario) references usuarios(id))

Create table categoria(id int primary key,descripcion varchar(30) not null,tipo int
						foreign key (tipo) references tipoMovimiento(id))

create table tipoMovimiento(id int primary key,tipo varchar (15) not null)
