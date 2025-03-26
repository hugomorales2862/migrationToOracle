
0 filas insertadas.


736 filas insertadas.


347 filas insertadas.


589 filas insertadas.


1,361 filas insertadas.


65,453 filas insertadas.


9 filas insertadas.


289 filas insertadas.


21 filas insertadas.


20 filas insertadas.


221,559 filas insertadas.


37,332 filas insertadas.


7 filas insertadas.


20 filas insertadas.


21 filas insertadas.


70 filas insertadas.


75 filas insertadas.


7 filas insertadas.


7 filas insertadas.


7,056 filas insertadas.


20,032 filas insertadas.


0 filas insertadas.


289,702 filas insertadas.


795 filas insertadas.


3,080 filas insertadas.


Error que empieza en la l�nea: 76 del comando -
INSERT INTO tropa_cuenta(
cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
cuenta_sit
)
SELECT "cuenta_id",
"cuenta_usu",
"cuenta_cat",
"cuenta_fech",
"cuenta_ban",
"cuenta_no",
"cuenta_sit" FROM "tropa_cuenta"@ifmx
Error en la l�nea de comandos : 77 Columna : 8
Informe de error -
Error SQL: ORA-00997: uso no v�lido del tipo de dato LONG
00997. 00000 -  "illegal use of LONG datatype"
*Cause:    
*Action:

Error que empieza en la l�nea: 79 del comando -
INSERT INTO aud_tropa_cuenta(cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
--cuenta_doc,
cuenta_sit,
desp_cuenta_id,
desp_cuenta_usu,
desp_cuenta_cat,
desp_cuenta_fech,
desp_cuenta_ban,
desp_cuenta_no,
-- desp_cuenta_doc,
desp_cuenta_sit,
accion,
usuario,
hora)
SELECT "cuenta_id",
"cuenta_usu",
"cuenta_cat",
"cuenta_fech",
"cuenta_ban",
"cuenta_no",
--cuenta_doc,
"cuenta_sit",
"desp_cuenta_id",
"desp_cuenta_usu",
"desp_cuenta_cat",
"desp_cuenta_fech",
"desp_cuenta_ban",
"desp_cuenta_no",
-- desp_cuenta_doc,
"desp_cuenta_sit",
"accion",
"usuario",
"hora" FROM "aud_tropa_cuenta"@ifmx
Error en la l�nea de comandos : 79 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:

106,416 filas insertadas.


134,118 filas insertadas.


9,330 filas insertadas.


41,836 filas insertadas.


18,660 filas insertadas.


30,834 filas insertadas.


Error que empieza en la l�nea: 100 del comando -
INSERT INTO rm_cuenta
SELECT * FROM "rm_cuenta"@ifmx
Error en la l�nea de comandos : 101 Columna : 8
Informe de error -
Error SQL: ORA-00997: uso no v�lido del tipo de dato LONG
00997. 00000 -  "illegal use of LONG datatype"
*Cause:    
*Action:

Error que empieza en la l�nea: 103 del comando -
INSERT INTO aud_rm_cuenta
SELECT * FROM "aud_rm_cuenta"@ifmx
Error en la l�nea de comandos : 104 Columna : 8
Informe de error -
Error SQL: ORA-00997: uso no v�lido del tipo de dato LONG
00997. 00000 -  "illegal use of LONG datatype"
*Cause:    
*Action:

90,655 filas insertadas.


99,729 filas insertadas.


6 filas insertadas.


6 filas insertadas.


3 filas insertadas.


3 filas insertadas.


4 filas insertadas.


4 filas insertadas.


3 filas insertadas.


3 filas insertadas.


3 filas insertadas.


3 filas insertadas.


7 filas insertadas.


7 filas insertadas.


0 filas insertadas.

Confirmaci�n terminada.
