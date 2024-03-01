DROP DATABASE IF EXISTS RecursosHumanos; /* For testing */

CREATE DATABASE RecursosHumanos;

USE RecursosHumanos;

CREATE TABLE DEPARTAMENTO (
 ID INT NOT NULL,
 NOMBRE VARCHAR(50),
 LOCALIDAD VARCHAR(50),
 CONSTRAINT DEPARTAMENTOS_PK
 PRIMARY KEY (ID)
);

CREATE TABLE RANGO_SUELDO (
 GRADO INT PRIMARY KEY ,
 SUELDO_MIN DECIMAL(9,2),
 SUELDO_MAX DECIMAL(9,2)
);

CREATE TABLE EMPLEADO (
 ID INT NOT NULL,
 NOMBRE VARCHAR(30),
 APELLIDOS VARCHAR(60),
 TELEFONO VARCHAR(25),
 EMAIL VARCHAR(50),
 CARGO VARCHAR(20),
 JEFE_ID INT,
 FECHA_ALTA DATE,
 SUELDO DECIMAL(9,2),
 COMISION DECIMAL(9,2),
 DEPARTAMENTO_ID INT NOT NULL,
 CONSTRAINT EMPLEADOS_PK
 PRIMARY KEY (ID),
 CONSTRAINT DEPARTAMENTO_ID_FK
 FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES DEPARTAMENTO(ID),
 CONSTRAINT EMAIL_CHK
 CHECK ( EMAIL REGEXP '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'),
 CONSTRAINT TELEFONO_CHK
 CHECK ( TELEFONO REGEXP '^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-[[:space:]]\./0-9]*$' )
 );

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (1, 'INFORMATICA', 'BILBAO');

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (2, 'INVESTIGACION', 'MADRID');

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (3, 'VENTAS', 'BARCELONA');

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (4, 'PRODUCCION', 'VALENCIA');

COMMIT ;

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (1, 700, 1200);

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (2, 1201, 1400);

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (3, 1401, 2000);

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (4, 2001, 3000);

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (5, 3001, 9999);

COMMIT ;

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (1, 'CARLOS', 'ALONSO GARCIA',
'34937377770','carlos.alonso@gmail.com','COMERCIAL', 4,
str_to_date('20/02/1991', '%d/%m/%Y'), 1600, 30, 3);

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (2, 'ANDRES', 'GOMEZ SEGUNDO', '+(34) 937-376-525',
'andres.gomez@gmail.com', 'COMERCIAL', 4, str_to_date('22/02/1991', '%d/%m/%Y'),
1250, 50, 3);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (3, 'ANA', 'HERRANZ CIFUENTES', '+34937376523','herranz.ana@gmail.com',
'COMERCIAL', 4,str_to_date('28/09/1991', '%d/%m/%Y'), 1250, 140, 3);

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (4, 'ESTHER', 'PEÑA MATA', '+34937377761','epena@gmail.com','DIRECTOR',
6,str_to_date('01/05/1991', '%d/%m/%Y'), 2850, NULL, 3);

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (5, 'DANIEL', 'LOPEZ LEON', '+34937377780','dlopez@gmail.com','DIRECTOR',
6,str_to_date('09/06/1991', '%d/%m/%Y'), 2450, NULL, 1);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (6, 'INES', 'FERNANDEZ SANCHEZ', 'fsanches@gmail.com','+50255552612',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (7, 'TOMAS', 'CALLEJA ARCAZ','+34937376541','tomas.calleja@gmail.com',
'COMERCIAL', 4, str_to_date( '08/09/1991', '%d/%m/%Y'), 1500, 0, 3);
COMMIT ;

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (8, 'INES', 'FERNANDEZ SANCHEZ', 'fsanchez@gmail.com','+50255552612',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);

INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (9, 'ESTHER', 'PEÑA MATA', '+34937377761','epena@gmail.com','DIRECTOR',
6,str_to_date('01/05/1991', '%d/%m/%Y'), 2850, NULL, 3);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (10, 'DANIEL', 'LOPEZ LEON', '+34937377780','dlopez@gmail.com','DIRECTOR',
6,str_to_date('09/06/1991', '%d/%m/%Y'), 2450, NULL, 1);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (11, 'CARLOS', 'ALONSO GARCIA',
'34937377770','carlos.alonso@gmail.com','COMERCIAL', 4,
str_to_date('20/02/1991', '%d/%m/%Y'), 1600, 30, 3);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (12, 'ANDRES', 'GOMEZ SEGUNDO', '+(34) 937-376-525',
'andres.gomez@gmail.com', 'COMERCIAL', 4, str_to_date('22/02/1991', '%d/%m/%Y'),
1250, 50, 3);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (13, 'ANA', 'HERRANZ CIFUENTES', '+34937376523','herranz.ana@gmail.com',
'COMERCIAL', 4,str_to_date('28/09/1991', '%d/%m/%Y'), 1250, 140, 3);


INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (17, 'TOMAS', 'CALLEJA ARCAZ','+34937376541','tomas.calleja@gmail.com',
'COMERCIAL', 4, str_to_date( '08/09/1991', '%d/%m/%Y'), 1500, 0, 3);
COMMIT ;



/*
1. Considerando las reglas de normalización, ¿Qué mejoras podría realizar en las tablas?

Considero que se debería tener una tabla de localidades para asignarlas a la tabla de departamento, para
evitar la redundancia de ingresarlas nuevamente, además de que se puede prestar para ingresarlas de distintas formas,
así asignando un ID de la localidad al departamento.

Movería la columna de jefe_id a una tabla de jefe_empleado para evitar tener potencialmente columnas nulas dentro de la tabla empleado
teniendo la tabla de jefe_empleado con los campos de idEmpleado, idJefe siendo ambas llaves foraneas hacia empleado pero con llave primaria en 
ambas columnas para evitar que se coloque la misma persona como su propio jefe.

Tendria una tabla cargo donde se tenga las columnas del nombre de cargo, más el departamento al que pertenece ya que esa información va relacionada,
también para evitar valores repetidos dentro de la tabla empleado por el mismo cargo.

La tabla empleado quedaría como

CREATE TABLE EMPLEADO(
    ID INT NOT NULL,
    NOMBRE VARCHAR(30),
    APELLIDOS VARCHAR(60),
    TELEFONO VARCHAR(25),
    EMAIL VARCHAR(50),
    ID_CARGO INT,
    FECHA_ALTA DATE,
    SUELDO DECIMAL(9,2),
    COMISION DECIMAL(9,2),
    PRIMARY KEY(ID),
    FOREIGN KEY (ID_CARGO)
)
Nota: Empleado Mantiene los tipos de dato ya definidos para las tablas que no cambiaron y sus restricciones correspondientes definidas
anteriromente, solo es para mostrar el resultado final.

2. ¿Qué registro de empleado falla y por qué? ¿Cómo se corrige?
Para empleado fallan los registros con email fsanches!@gmail.com y fsanchez!@gmail.com, ya que contienen un signo de exclamación !,
lo cual no cumple con el formato definido en la expresión regular para poder ingresar un correo, también tiene en el número de telefono
el caracter a lo cual no cumple con el formato de la expresión regular definido en la restricción, se encontraron registros con IDs que ya existian,
se procedio a corregirlos.

*/


-- 3. Obtener los apellidos del empleado
    SELECT APELLIDOS FROM EMPLEADO;

-- 4. Obtener los apellidos del empleado sin repetición 
    SELECT DISTINCT APELLIDOS FROM EMPLEADO;
-- 5. Obtener todos los datos de los empleados apellidados López
    SELECT * FROM EMPLEADO
        WHERE APELLIDOS LIKE '%lopez%';
-- 6. Obtener todos los datos del empleado con apellido López o Peña 
    SELECT * FROM EMPLEADO
        WHERE APELLIDOS LIKE '%lopez%' OR APELLIDOS LIKE '%Peña%';

-- 7. Obtener los datos del empleado que trabaja en el departamento de informática.
    SELECT * FROM EMPLEADO
        WHERE DEPARTAMENTO_ID = 1;

-- 8. Obtener los datos del empleado cuyo nombre comience por I 
    SELECT * FROM EMPLEADO
        WHERE NOMBRE LIKE 'I%';
-- 9. Obtener el nombre del departamento y el número de empleados que tiene.
    SELECT D.Nombre, COUNT(E.ID) AS 'Departamento' FROM EMPLEADO AS E
        INNER JOIN DEPARTAMENTO AS D ON E.DEPARTAMENTO_ID = D.ID
        GROUP BY E.DEPARTAMENTO_ID;

-- 10.  Consultar los diferentes cargos desempeñados en la empresa.
    SELECT DISTINCT CARGO FROM EMPLEADO;
-- 11.  Listar los empleados como sigue: LOPEZ PEREZ, CARLOS: es PRESIDENTE
    SELECT CONCAT(APELLIDOS, ", ", NOMBRE, ": es ", CARGO) AS 'INFO_EMPLEADO' FROM EMPLEADO;
-- 12.  Mostrar el nombre, apellidos, sueldo y comisión del empleado que tiene jefe, y su 
-- comisión es superior a 150 €. 
    SELECT NOMBRE, APELLIDOS, SUELDO, COMISION FROM EMPLEADO
	    WHERE JEFE_ID IS NOT NULL AND COMISION > 150;
-- 13.  Obtener los empleados que no ejercen de comercial y cuyos nombres contienen la letra N.
    SELECT * FROM EMPLEADO
        WHERE CARGO NOT LIKE '%comercial%' AND NOMBRE LIKE '%N%';
-- 14.  De los empleados que tienen comisión, obtener el nombre, sueldo y comisión, ordenados 
-- por sueldo de mayor a menor.
    SELECT NOMBRE, SUELDO, COMISION FROM EMPLEADO
        WHERE COMISION IS NOT NULL
        ORDER BY SUELDO DESC;
-- 15.  Ordenar a los empleados por sus apellidos y nombres.
    SELECT * FROM EMPLEADO
    ORDER BY APELLIDOS, NOMBRE;
-- 16.  Obtener el nombre, sueldo anual y fecha de alta de los empleados que no tienen 
-- comisión, ordenados por fecha de alta en la empresa. 
    SELECT NOMBRE, (SUELDO * 12) AS 'Sueldo Anual', FECHA_ALTA FROM EMPLEADO
        WHERE COMISION IS NOT NULL
        ORDER BY FECHA_ALTA;
-- 17.  Mostrar el nombre y sueldo de los empleados incrementados en un 10% y ordenados por 
-- nombre y apellidos. 
    SELECT NOMBRE, (SUELDO + (SUELDO * 0.10)) AS 'Incremento 10%' FROM EMPLEADO
        ORDER BY NOMBRE, APELLIDOS;
-- 18.  Mostrar el nombre y fecha de alta de cada empleado, ordenado por fecha de entrada 
-- como sigue: Fecha de entrada (como título) Ejemplo: ‘Carlos Alonso García empezó a 
-- trabajar el 20 de febrero de 1991’ 
    SET lc_time_names = 'es_ES';
    SELECT CONCAT(NOMBRE, ' ', APELLIDOS, ' empezó a trabajar el ', DAYOFMONTH(FECHA_ALTA), ' de ', MONTHNAME(FECHA_ALTA), ' de ', YEAR(FECHA_ALTA)) AS 'Datos'
        FROM EMPLEADO ORDER BY FECHA_ALTA;
-- 19.  Obtener el nombre de los comerciales, la comisión, el sueldo mensual y el sueldo 
-- incrementado como sigue: si la comisión es menor que 50 €, aumentar un 25%; y si es 
-- igual o superior, aumentar un 12%. 
    SELECT NOMBRE, COMISION, SUELDO,
        (CASE 
            WHEN COMISION < 50 THEN COMISION + (COMISION * 0.25)
            ELSE COMISION + (COMISION + 0.12)
        END) AS 'SUELDO_INCREMENTADO'
    FROM EMPLEADO
    WHERE CARGO LIKE 'comercial'
-- 20.  Mostrar la localidad, nombre y sueldo del empleado cuyo grado es 2 o 3. 
    SELECT D.LOCALIDAD, E.NOMBRE, E.SUELDO, RS.GRADO FROM EMPLEADO AS E
        INNER JOIN DEPARTAMENTO AS D ON E.DEPARTAMENTO_ID = D.ID
        INNER JOIN RANGO_SUELDO AS RS
        WHERE E.SUELDO BETWEEN RS.SUELDO_MIN AND RS.SUELDO_MAX
        AND GRADO IN (2, 3);

-- 21.  Mostrar el nombre de los departamentos cuyos empleados tienen comisión o su sueldo 
-- anual es superior a 18.000 €. 
    SELECT D.NOMBRE FROM DEPARTAMENTO AS D
        INNER JOIN EMPLEADO AS E ON D.ID = E.DEPARTAMENTO_ID
        WHERE E.COMISION IS NOT NULL OR (E.SUELDO * 12) > 18000

-- 22.  Calcular el número de empleados del departamento de VENTAS. 
    SELECT COUNT(ID) AS 'NUM EMPLEADOS' FROM EMPLEADO
        WHERE DEPARTAMENTO_ID = 3;
-- 23.  Calcular la comisión media de los empleados, excluyendo al presidente y suponiendo que 
-- todos los empleados cobran al menos una comisión de o €. 
    SELECT AVG(COMISION) FROM EMPLEADO
        WHERE CARGO NOT LIKE 'presidente';
-- 24.  Calcular el sueldo máximo de los empleados de cada departamento siempre que el 
-- mínimo sueldo del departamento sea superior a 780 €. 
    SELECT MAX(E.SUELDO) AS 'MAX SUELDO', D.NOMBRE FROM EMPLEADO AS E
        INNER JOIN DEPARTAMENTO AS D ON D.ID = E.DEPARTAMENTO_ID
        GROUP BY DEPARTAMENTO_ID
        HAVING MIN(E.SUELDO) > 780;
-- 25.  Mostrar el nombre y fecha de entrada de todos los empleados que trabajan en el mismo 
-- departamento que ESTHER. 
    SELECT E.NOMBRE, E.FECHA_ALTA FROM EMPLEADO AS E
        WHERE E.DEPARTAMENTO_ID = 3;
-- 26.  Calcular el número de empleados que están en BILBAO 
    SELECT COUNT(E.ID) AS 'EMPLEADOS EN BILBAO' FROM EMPLEADO AS E
        INNER JOIN DEPARTAMENTO AS D
        ON D.ID = E.DEPARTAMENTO_ID
        WHERE LOCALIDAD LIKE 'BILBAO'
    

