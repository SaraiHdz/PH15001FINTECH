create database	fintech

use fintech

ALTER AUTHORIZATION ON DATABASE::fintech TO sa;
GO

create table usuario
(
codUsuario int NOT NULL PRIMARY KEY,
nombreUsuario varchar(50) NOT NULL, 
primerApellidoUsuario varchar(50) NOT NULL,
segundoApellidoUsuario varchar(50) NOT NULL,
registroUnicoUsuario varchar(10) NOT NULL
)

create table transferencias
(
codTransfer int NOT NULL PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
cuentaTranfer int NOT NULL,
montoTranfer float not null,
receptoraTransfer int not null
)

create table pagos
(
codPagos int NOT NULL PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
NPEPagos int NOT NULL,
cuentaPagos float not null,
)

create table prestamo
(
codPrestamo int NOT NULL PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
montoSolicitadoPrestamo float NOT NULL,
fechaSolicitaPrestamo date not null,
)

create table compras
(
codCompras int NOT NULL PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
productoCompras varchar (50) NOT NULL,
cantidadCompras int not null,
precioCompras float not null,
totalCompras float not null,
cuentaCompras int not null
)

create table consulta 
(
codConsulta int not null PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
)

SELECT * FROM usuario
SELECT * FROM transferencias
SELECT * FROM pagos
SELECT * FROM prestamo
SELECT * FROM compras
SELECT * FROM consulta


/*Registro de Usuario*/
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (1, 'Adriana', 'Rodriguez', 'Perez', 00005)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (2, 'Juan', 'Contreras', 'Escalante', 00010)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (3, 'Javier', 'Vasquez', 'Martinez', 00015)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (4, 'Maria', 'Portillo', 'Diaz', 00020)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (5, 'Karla', 'Sosa', 'Diaz', 00025)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (6, 'Max', 'Suarez', 'Cienfuegos', 00030)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (7, 'Axel', 'Daniel', 'Hernandez', 00045)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (8, 'Kenai', 'Cruz', 'Sosa', 00050)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (9, 'Alez', 'Quijano', 'Vasquez', 00055)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (10, 'Isaac', 'Hernandez', 'Fuentes', 00035)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (11, 'Guadalupe', 'Portillo', 'Perez', 00040)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (12, 'Roberto', 'Campos', 'Ceren', 00060)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (13, 'Samuel', 'Escamilla', 'Diaz', 00065)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (14, 'Karla', 'Delgado', 'Perez', 00070)
insert into usuario (codUsuario, nombreUsuario, primerApellidoUsuario, segundoApellidoUsuario, registroUnicoUsuario) 
values (15, 'Diana', 'Ruiz', 'Campos', 00075)


/*Registro de Transferencias*/
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (1, 15, 1234567890, 55, 728274982)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (2, 14, 93839623, 5.00, 246916496)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (3, 13, 34235645, 10.00, 26491638)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (4, 12, 25567556, 20.00, 964916614)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (5, 11, 242234544, 30.00, 861348632)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (6, 10, 57875523, 40.00, 389664861)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (7, 9, 244546477, 45.00, 834983649)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (8, 8, 346567562, 50.00, 389963484)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (9, 7, 246684632, 55.00, 269623846)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (10, 6, 534655463, 60.00, 882964823)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (11, 5, 534536532, 70.00, 347982360)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (12, 4, 234467352, 80.00, 896498432)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (13, 3, 867274854, 90.00, 423649165)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (14, 2, 247572093, 100.00, 691264896)
insert into transferencias (codTransfer, codUsuario, cuentaTranfer, montoTranfer, receptoraTransfer) values (15, 1, 272893648, 155.00, 87654321)


/*Registro de pagos*/
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (1, 15, 13243, 19479140)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (2, 14, 452345, 90404248)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (3, 13, 143143, 049826894)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (4, 12, 34636565, 9298264)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (5, 11, 235565, 22984672)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (6, 10, 243543, 86872647)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (7, 9, 7575654, 29426746)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (8, 7, 645645673, 89498247)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (9, 8, 242356, 274948233)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (10, 6, 684562, 24926474)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (11, 5, 346567, 030298691)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (12, 4, 3634657, 39767632)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (13, 3, 475673, 092928647)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (14, 2, 3645743, 37649350)
insert into pagos (codPagos, codUsuario, NPEPagos, cuentaPagos) values (15, 1, 564573, 24084674)


/*Registro de prestamo*/
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (1, 15, 100, '20190501')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (2, 14, 200, '20190502')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (3, 13, 150, '20190503')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (4, 12, 1999, '20190504')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (5, 11, 2500.49, '20190505')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (6, 10, 1000, '20190506')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (7, 9, 1500, '20190512')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (8, 8, 700, '20190515')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (9, 7, 9000, '20190517')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (10, 6, 340, '20190520')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (11, 5, 5000, '20190522')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (12, 4, 300, '20190525')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (13, 3, 200, '20190526')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (14, 2, 7000, '20190528')
insert into prestamo (codPrestamo, codUsuario, montoSolicitadoPrestamo, fechaSolicitaPrestamo) values (15, 1, 100, '20190530')


/*Registro de Compras*/
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (1, 15, 'CELULAR LG', 1, 500, 500, 098765237)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (2, 14, 'ZAPATOS', 1, 80, 80, 0923409149)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (3, 13, 'CAMISA', 1, 20, 20, 932846732)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (4, 12, 'PANTALON', 1, 33, 33, 498984691)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (5, 11, 'ESPEJO', 1, 5, 5, 294798429)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (6, 10, 'BROCHAS', 3, 7, 21, 488636422)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (7, 9, 'ESPONJA', 1, 4, 4, 929872548)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (8, 8, 'CAMA', 1, 100, 100, 98474623)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (9, 7, 'LAPTOP', 1, 350, 350, 86498170)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (10, 6, 'ADAPTADOR', 10, 5, 50, 82875481)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (11, 5, 'LAMPARA', 10, 2, 20, 84846134)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (12, 4, 'MOCHILA', 2, 20, 40, 02928946)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (13, 3, 'CARTERA', 1, 300, 500, 96981749)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (14, 2, 'TV', 1, 500, 500, 38437648)
insert into compras (codCompras, codUsuario, productoCompras, cantidadCompras, precioCompras, totalCompras, cuentaCompras) 
values (15, 1, 'CAMARA', 3, 25, 75, 29479644)


/*Registro de Consulta*/
insert into consulta (codConsulta, codUsuario) values (1, 15)
insert into consulta (codConsulta, codUsuario) values (2, 14)
insert into consulta (codConsulta, codUsuario) values (3, 13)
insert into consulta (codConsulta, codUsuario) values (4, 12)
insert into consulta (codConsulta, codUsuario) values (5, 11)
insert into consulta (codConsulta, codUsuario) values (6, 10)
insert into consulta (codConsulta, codUsuario) values (7, 9)
insert into consulta (codConsulta, codUsuario) values (8, 8)
insert into consulta (codConsulta, codUsuario) values (9, 7)
insert into consulta (codConsulta, codUsuario) values (10, 6)
insert into consulta (codConsulta, codUsuario) values (11, 5)
insert into consulta (codConsulta, codUsuario) values (12, 4)
insert into consulta (codConsulta, codUsuario) values (13, 3)
insert into consulta (codConsulta, codUsuario) values (14, 2)
insert into consulta (codConsulta, codUsuario) values (15, 1)


create table movimientos
(
codMov int NOT NULL PRIMARY KEY,
codUsuario int FOREIGN KEY REFERENCES usuario (codUsuario),
fechaIngreso date NOT NULL,
movimientos varchar (50) NOT NULL,
)


/*Registro de Movimientos*/
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (1, 15, '20190501', 'Ingreso a la plataforma')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (2, 14, '20190502', 'Realizo un pago')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (3, 13, '20190503', 'Realizo una compra')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (4, 12, '20190504', 'Solicito un prestamo')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (5, 11, '20190505', 'Ingreso a la plataforma')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (6, 10, '20190506', 'Realizo una transferencia')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (7, 9, '20190507', 'Ingreso a la plataforma')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (8, 8, '20190508', 'Realizo una compra')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (9, 7, '20190510', 'Solicito un prestamo')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (10, 6, '20190512', 'Realizo un pago')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (11, 5, '20190515', 'Realizo una transferencia')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (12, 4, '20190518', 'Solocoto un prestamo')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (13, 3, '20190520', 'Realizo un pago')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (14, 2, '20190525', 'Ingreso a la plataforma')
insert into movimientos (codMov, codUsuario, fechaIngreso, movimientos) values (15, 1, '20190530', 'Ingreso a la plataforma')
