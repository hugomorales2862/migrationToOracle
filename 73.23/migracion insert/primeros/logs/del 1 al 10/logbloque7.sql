
0 filas insertadas.


0 filas insertadas.


0 filas insertadas.


22,640 filas insertadas.


23,491 filas insertadas.


65,701 filas insertadas.


92,923 filas insertadas.


0 filas insertadas.


92 filas insertadas.


338 filas insertadas.


1 fila insertadas.


6 filas insertadas.


109 filas insertadas.


16,384 filas insertadas.


1,390 filas insertadas.


183 filas insertadas.


723 filas insertadas.


Error que empieza en la l�nea: 52 del comando :
INSERT INTO sub18_boleta
SELECT * FROM "sub18_boleta"@ifmx
Informe de error -
ORA-01400: no se puede realizar una inserci�n NULL en ("ADMIN"."SUB18_BOLETA"."SUB18_BOL_ANOTACIONES")

---se cambio el tipo de dato a null INSERT INTO sub18_boleta
--SELECT * FROM "sub18_boleta"@ifmx
---commit;


120 filas insertadas.


159 filas insertadas.


249 filas insertadas.


0 filas insertadas.

Confirmaci�n terminada.

297,391 filas insertadas.

Confirmaci�n terminada.

2,007 filas insertadas.


14,241 filas insertadas.


0 filas insertadas.


0 filas insertadas.

Confirmaci�n terminada.

0 filas insertadas.


21 filas insertadas.


287 filas insertadas.


2,134,515 filas insertadas.


432 filas insertadas.

Confirmaci�n terminada.

32 filas insertadas.


70,509 filas insertadas.


0 filas insertadas.


Error que empieza en la l�nea: 118 del comando -
INSERT INTO certificaciones
SELECT * FROM "certificaciones"@ifmx
Error en la l�nea de comandos : 118 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:
--se creo una vista 
--INSERT INTO certificaciones
--SELECT * FROM "v_certificaciones"@ifmx
-------------------------------------------------------------------------------------------------------------
Error que empieza en la l�nea: 121 del comando -
INSERT INTO aud_certificaciones
SELECT * FROM "aud_certificaciones"@ifmx
Error en la l�nea de comandos : 121 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:
----------------creamos  view  ------------

--INSERT INTO aud_certificaciones
--SELECT * FROM "v_aud_certificaciones"@ifmx
------------------------------------------------------------------------------------------------------

3 filas insertadas.


5 filas insertadas.

Confirmaci�n terminada.

Error que empieza en la l�nea: 132 del comando :
INSERT INTO sub_18_contrato
SELECT * FROM "sub_18_contrato"@ifmx
Informe de error -
ORA-01400: no se puede realizar una inserci�n NULL en ("ADMIN"."SUB_18_CONTRATO"."SUB18_RUTAPDF_CONTRATO")

-----------------  se agrego  
---------------INSERT INTO sub_18_contrato
--INSERT INTO sub_18_contrato
--SELECT * FROM "sub_18_contrato"@ifmx


1,948 filas insertadas.


1 fila insertadas.


1 fila insertadas.


1 fila insertadas.

Confirmaci�n terminada.

1 fila insertadas.


5 filas insertadas.


2 filas insertadas.


3 filas insertadas.


5 filas insertadas.

Confirmaci�n terminada.

Error que empieza en la l�nea: 69 del comando :
INSERT INTO aud_coc_ope_planificada
SELECT * FROM "aud_coc_ope_planificada"@ifmx
Informe de error -
ORA-28500: la conexi�n de ORACLE a un sistema no Oracle ha devuelto este mensaje:
[Informix][Informix ODBC Driver]Communication link failure. {08S01,NativeErr = -11020}[Informix][Informix ODBC Driver]Communication link failure. {08S01,NativeErr = -11020}[Informix][Informix ODBC Driver]Communication link failure. {08S01,NativeErr = -11020}[Informix][Informix ODBC Driver]Communication link failure. {08S01,NativeErr = -11020}[Informix][Informix ODBC Driver]Communication link failure. {08S01,NativeErr = -11020}
ORA-02063: 2 lines precediendo a IFMX


---tabla muy grande por lo que se ingreso por bloques 
-- correr desde sqlplus 

---COMO ES MUY GRANDE ENTONCES HUBIERON REGISTROS POR LO QUE SE COMPARO 
-- SELECT 
--     (SELECT COUNT(*) FROM aud_coc_ope_planificada) AS registros_local,
--     (SELECT COUNT(*) FROM "aud_coc_ope_planificada"@ifmx) AS registros_remoto
-- FROM dual;


-- POR LO QUE SE HIZO 

-- INSERT INTO ADMIN.aud_coc_ope_planificada
-- SELECT *
-- FROM "aud_coc_ope_planificada"@ifmx
-- MINUS
-- SELECT *
-- FROM ADMIN.aud_coc_ope_planificada; 