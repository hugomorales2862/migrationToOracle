
5,380 filas insertadas.


Error que empieza en la l�nea: 4 del comando :
INSERT INTO pruebas_tiempo
SELECT * FROM "pruebas_tiempo"@ifmx
Informe de error -
ORA-01843: mes no v�lido

--------------NO INCLUIR PORQUE SOLO ES DE PRUEBA 

20 filas insertadas.


37 filas insertadas.


22 filas insertadas.


32 filas insertadas.


6,963 filas insertadas.


0 filas insertadas.

Confirmaci�n terminada.

20 filas insertadas.


15 filas insertadas.


25 filas insertadas.


57 filas insertadas.


10 filas insertadas.


37 filas insertadas.


14 filas insertadas.


65 filas insertadas.


36 filas insertadas.

Confirmaci�n terminada.

61 filas insertadas.


13 filas insertadas.


37 filas insertadas.


206 filas insertadas.


240 filas insertadas.


13 filas insertadas.


113 filas insertadas.

Confirmaci�n terminada.

92 filas insertadas.


106 filas insertadas.


2 filas insertadas.


73 filas insertadas.


3 filas insertadas.


10 filas insertadas.

Confirmaci�n terminada.

6 filas insertadas.


1 fila insertadas.


3 filas insertadas.


8 filas insertadas.


4,613 filas insertadas.

Confirmaci�n terminada.

650 filas insertadas.


5 filas insertadas.


110 filas insertadas.


71 filas insertadas.


114 filas insertadas.


7 filas insertadas.


30 filas insertadas.

Confirmaci�n terminada.

103 filas insertadas.


103 filas insertadas.


1,592 filas insertadas.


1,619 filas insertadas.


Error que empieza en la l�nea: 151 del comando :
INSERT INTO tri_puntaje
SELECT * FROM "tri_puntaje"@ifmx
Informe de error -
ORA-01873: la precisi�n inicial del intervalo es demasiado peque�a


-- INSERT INTO tri_puntaje (id, participante, etapa, punteo, tiempo, situacion)
-- SELECT "id", "participante", "etapa", "punteo", 
--       NUMTODSINTERVAL (EXTRACT(HOUR FROM "tiempo") * 3600 + 
--        EXTRACT(MINUTE FROM "tiempo") * 60 + 
--        EXTRACT(SECOND FROM "tiempo"), 'SECOND'), 
--        "situacion"
-- FROM "tri_puntaje"@ifmx;

-- commit

-- ALTER TABLE tri_puntaje MODIFY tiempo INTERVAL DAY TO SECOND;


-- Error que empieza en la l�nea: 154 del comando :
-- INSERT INTO aud_tri_puntaje
-- SELECT * FROM "aud_tri_puntaje"@ifmx
-- Informe de error -
-- ORA-01873: la precisi�n inicial del intervalo es demasiado peque�a


-- INSERT INTO aud_tri_puntaje (id, participante, etapa, punteo, tiempo, situacion,
-- desp_id, desp_participante, desp_etapa, desp_punteo, desp_tiempo, desp_situacion, accion, usuario, hora)
-- SELECT "id", "participante", "etapa", "punteo", 
--       NUMTODSINTERVAL (EXTRACT(HOUR FROM "tiempo") * 3600 + 
--        EXTRACT(MINUTE FROM "tiempo") * 60 + 
--        EXTRACT(SECOND FROM "tiempo"), 'SECOND'), 
--        "situacion",
--        "desp_id", "desp_participante", "desp_etapa", "desp_punteo", 
--       NUMTODSINTERVAL (EXTRACT(HOUR FROM "desp_tiempo") * 3600 + 
--        EXTRACT(MINUTE FROM "desp_tiempo") * 60 + 
--        EXTRACT(SECOND FROM "desp_tiempo"), 'SECOND'), 
--        "desp_situacion",
--        "accion","usuario","hora"
-- FROM "aud_tri_puntaje"@ifmx;

-- ALTER TABLE aud_tri_puntaje MODIFY tiempo INTERVAL DAY TO SECOND;

-- ALTER TABLE aud_tri_puntaje MODIFY desp_tiempo INTERVAL DAY TO SECOND;


301,499 filas insertadas.


19 filas insertadas.

Confirmaci�n terminada.


