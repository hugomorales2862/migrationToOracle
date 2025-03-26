
97,725 filas insertadas.


9,393 filas insertadas.


97,770 filas insertadas.


Error que empieza en la l�nea: 10 del comando -
INSERT INTO aud_tropa_foto
SELECT * FROM "aud_tropa_foto"@ifmx
Error en la l�nea de comandos : 10 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:
       
----NO SE REPARO PUES NO TIENE REGISTROS


19,342 filas insertadas.


0 filas insertadas.


0 filas insertadas.


Error que empieza en la l�nea: 22 del comando -
INSERT INTO tropa_foto (
fot_id,
fot_catalogo,
fot_descr,
fot_tipo,
fot_situacion)
SELECT "fot_id",
"fot_catalogo",
"fot_descr",
"fot_tipo",
"fot_situacion" FROM "tropa_foto"@ifmx
Error en la l�nea de comandos : 23 Columna : 8
Informe de error -
Error SQL: ORA-00997: uso no v�lido del tipo de dato LONG
00997. 00000 -  "illegal use of LONG datatype"
*Cause:    
*Action:

----pendiente esta yuca porque son datos blob  FOT_DOC  en el campo  


2 filas insertadas.


1 fila insertadas.


2 filas insertadas.


2 filas insertadas.


5 filas insertadas.


5 filas insertadas.


5 filas insertadas.


4 filas insertadas.


8 filas insertadas.


5 filas insertadas.


7 filas insertadas.


16 filas insertadas.


14 filas insertadas.


655 filas insertadas.


965 filas insertadas.


78,030 filas insertadas.


83,741 filas insertadas.


10 filas insertadas.


38 filas insertadas.


837 filas insertadas.


Error que empieza en la l�nea: 85 del comando -
INSERT INTO aud_dfdes_bindustrial
SELECT * FROM "taud_dfdes_bindustrial"@ifmx
Error en la l�nea de comandos : 86 Columna : 15
Informe de error -
Error SQL: ORA-00942: la tabla o vista no existe
[Informix][Informix ODBC Driver][Informix]The specified table (taud_dfdes_bindustrial) is not in the database. {42S02,NativeErr = -206}
ORA-02063: 2 lines precediendo a IFMX
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:


---------------INSERT INTO aud_dfdes_bindustrial
--------SELECT * FROM "aud_dfdes_bindustrial"@ifmx

16 filas insertadas.


3,967 filas insertadas.


9,427 filas insertadas.


0 filas insertadas.


49,484 filas insertadas.


78,706 filas insertadas.


73,081 filas insertadas.


115,728 filas insertadas.


547 filas insertadas.


34,365 filas insertadas.


220 filas insertadas.


334 filas insertadas.


6 filas insertadas.


8 filas insertadas.


4 filas insertadas.


10 filas insertadas.


Error que empieza en la l�nea: 136 del comando :
INSERT INTO veteranos_comparacion
SELECT * FROM "veteranos_comparacion"@ifmx
Informe de error -
ORA-01400: no se puede realizar una inserci�n NULL en ("ADMIN"."VETERANOS_COMPARACION"."VET_NOM_REAL")

---se cambio a tipo de dato null

3 filas insertadas.


2 filas insertadas.


141 filas insertadas.


2,041 filas insertadas.


2,039 filas insertadas.

Confirmaci�n terminada.
