create table usuarios(id int primary key,contrasena varchar(50) not null,correo varchar(50) unique not null,nombre varchar(50),username varchar(30))

Create table movimientos (id_usuario int not null ,id int primary key,id_tipo int not null,id_categoria int not null,cantidad int not null,
							descripcion varchar(50),fecha date not null,
							foreign key (id_tipo) references tipo_movimiento(id),
							foreign key (id_categoria) references categorias(id),
							foreign key (id_Usuario) references usuarios(id))

Create table categorias(id int primary key,descripcion varchar(30) not null,id_tipo int,
						foreign key (tipo) references tipo_movimiento(id))

create table tipos_movimiento(id int primary key,tipo varchar (15) not null)
