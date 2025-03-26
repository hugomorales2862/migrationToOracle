
2 filas insertadas.


Error que empieza en la l�nea: 1 del comando :
INSERT INTO fag_estanterias
SELECT * FROM "fag_estanterias"@ifmx
Informe de error -
ORA-00001: restricci�n �nica (ADMIN.PK_FAG_ESTANTERIAS) violada

---SI QUITO LA PK Y LUEGO SE COLOCO DESPUES DEL INSERT 

Confirmaci�n terminada.

2 filas insertadas.


2 filas insertadas.


2 filas insertadas.

Confirmaci�n terminada.

4 filas insertadas.


61 filas insertadas.


61 filas insertadas.


308,915 filas insertadas.

Confirmaci�n terminada.

136,890 filas insertadas.


169,133 filas insertadas.


70,735 filas insertadas.


290,948 filas insertadas.


361 filas insertadas.


1,143 filas insertadas.

Confirmaci�n terminada.

237 filas insertadas.


464 filas insertadas.


30 filas insertadas.


56 filas insertadas.


Error que empieza en la l�nea: 63 del comando -
INSERT INTO constancias_sage
SELECT * FROM "constancias_sage"@ifmx
Error en la l�nea de comandos : 63 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:
Confirmaci�n terminada.



-----------------------------
create view v_constancias_sage (cons_id, cons_dpi, cons_nom1, cons_nom2, 
cons_ape1, cons_ape2, cons_sexo, cons_fecha_doc, cons_nombre_not,
 cons_numero_col, cons_sexo_not, cons_fecha_alta, cons_grado_alta,
  cons_dep_alta, cons_fecha_baja, cons_grado_baja, cons_dep_baja,
   cons_motivo_baja, cons_doc_respaldo, cons_num_recibo, cons_cat_jefecerti,
    cons_graarm_certi, cons_nom_certi, cons_cat_jefesage, cons_graarm_jefesage,
     cons_nom_jefesage, cons_fecha_transac, cons_plaza_certi, cons_plaza_jefe, 
     cons_cat_hizo, cons_motivo_cambio, cons_tip_documento, cons_situacion
)as 
cons_id::varchar(250), cons_dpi, cons_nom1, cons_nom2, 
cons_ape1, cons_ape2, cons_sexo, cons_fecha_doc, cons_nombre_not,
 cons_numero_col, cons_sexo_not, cons_fecha_alta, cons_grado_alta,
  cons_dep_alta, cons_fecha_baja, cons_grado_baja, cons_dep_baja,
   cons_motivo_baja, cons_doc_respaldo, cons_num_recibo, cons_cat_jefecerti,
    cons_graarm_certi, cons_nom_certi, cons_cat_jefesage, cons_graarm_jefesage,
     cons_nom_jefesage, cons_fecha_transac, cons_plaza_certi, cons_plaza_jefe, 
     cons_cat_hizo, cons_motivo_cambio, cons_tip_documento, cons_situacion
     from constancias_sage
------------------------------------------------

-- create view v_aud_constancias_sage( cons_id,cons_dpi, cons_nom1, cons_nom2, cons_ape1, cons_ape2,
--  cons_sexo, cons_fecha_doc, cons_nombre_not, cons_numero_col,
--   cons_sexo_not, cons_fecha_alta, cons_grado_alta, cons_dep_alta, 
--   cons_fecha_baja, cons_grado_baja, cons_dep_baja, cons_motivo_baja, 
--   cons_doc_respaldo, cons_num_recibo, cons_cat_jefecerti, cons_graarm_certi,
--    cons_nom_certi, cons_cat_jefesage, cons_graarm_jefesage, 
--    cons_nom_jefesage, cons_fecha_transac, cons_plaza_certi,
--     cons_plaza_jefe, cons_cat_hizo, cons_motivo_cambio,
--      cons_tip_documento, cons_situacion, desp_cons_id, 
--      desp_cons_dpi, desp_cons_nom1, desp_cons_nom2, desp_cons_ape1, 
--      desp_cons_ape2, desp_cons_sexo, desp_cons_fecha_doc, desp_cons_nombre_not,
--       desp_cons_numero_col, desp_cons_sexo_not, desp_cons_fecha_alta, 
--       desp_cons_grado_alta, desp_cons_dep_alta, desp_cons_fecha_baja, 
--       desp_cons_grado_baja, desp_cons_dep_baja, desp_cons_motivo_baja, 
--       desp_cons_doc_respaldo, desp_cons_num_recibo, desp_cons_cat_jefecerti, 
--       desp_cons_graarm_certi, desp_cons_nom_certi, desp_cons_cat_jefesage,
--        desp_cons_graarm_jefesage, desp_cons_nom_jefesage, desp_cons_fecha_transac,
--         desp_cons_plaza_certi, desp_cons_plaza_jefe, desp_cons_cat_hizo, 
--         desp_cons_motivo_cambio, desp_cons_tip_documento, desp_cons_situacion, 
--         accion, usuario, hora) as
-- select cons_id::varchar(250),cons_dpi, cons_nom1, cons_nom2, cons_ape1, cons_ape2,
--  cons_sexo, cons_fecha_doc, cons_nombre_not, cons_numero_col,
--   cons_sexo_not, cons_fecha_alta, cons_grado_alta, cons_dep_alta, 
--   cons_fecha_baja, cons_grado_baja, cons_dep_baja, cons_motivo_baja, 
--   cons_doc_respaldo, cons_num_recibo, cons_cat_jefecerti, cons_graarm_certi,
--    cons_nom_certi, cons_cat_jefesage, cons_graarm_jefesage, 
--    cons_nom_jefesage, cons_fecha_transac, cons_plaza_certi,
--     cons_plaza_jefe, cons_cat_hizo, cons_motivo_cambio,
--      cons_tip_documento, cons_situacion, desp_cons_id::varchar(250), 
--      desp_cons_dpi, desp_cons_nom1, desp_cons_nom2, desp_cons_ape1, 
--      desp_cons_ape2, desp_cons_sexo, desp_cons_fecha_doc, desp_cons_nombre_not,
--       desp_cons_numero_col, desp_cons_sexo_not, desp_cons_fecha_alta, 
--       desp_cons_grado_alta, desp_cons_dep_alta, desp_cons_fecha_baja, 
--       desp_cons_grado_baja, desp_cons_dep_baja, desp_cons_motivo_baja, 
--       desp_cons_doc_respaldo, desp_cons_num_recibo, desp_cons_cat_jefecerti, 
--       desp_cons_graarm_certi, desp_cons_nom_certi, desp_cons_cat_jefesage,
--        desp_cons_graarm_jefesage, desp_cons_nom_jefesage, desp_cons_fecha_transac,
--         desp_cons_plaza_certi, desp_cons_plaza_jefe, desp_cons_cat_hizo, 
--         desp_cons_motivo_cambio, desp_cons_tip_documento, desp_cons_situacion, 
--         accion, usuario, hora
--     from aud_constancias_sage



-- insert into aud_constancias_sage select * from "v_aud_constancias_sage"@ifmx;

-- Error que empieza en la l�nea: 68 del comando -
-- INSERT INTO aud_constancias_sage
-- SELECT * FROM "aud_constancias_sage"@ifmx
-- Error en la l�nea de comandos : 68 Columna : 13
-- Informe de error -
-- Error SQL: ORA-00947: no hay suficientes valores
-- 00947. 00000 -  "not enough values"
-- *Cause:    
-- *Action:




4 filas insertadas.


1,072 filas insertadas.


1,319 filas insertadas.


3,778 filas insertadas.

Confirmaci�n terminada.

30 filas insertadas.


1,250 filas insertadas.


36 filas insertadas.


47 filas insertadas.


30 filas insertadas.


624 filas insertadas.


-- Error que empieza en la l�nea: 103 del comando :
-- INSERT INTO con_boleta_dp
-- SELECT * FROM "con_boleta_dp"@ifmx
-- Informe de error -
-- ORA-01400: no se puede realizar una inserci�n NULL en ("ADMIN"."CON_BOLETA_DP"."BOL_ID_FOTO")


-- insert INTO con_boleta_dp
-- SELECT * FROM "con_boleta_dp"@ifmx

3,268 filas insertadas.


93 filas insertadas.


127 filas insertadas.


6 filas insertadas.


556 filas insertadas.


11,299 filas insertadas.

Confirmaci�n terminada.

33,934 filas insertadas.


0 filas insertadas.


0 filas insertadas.


1 fila insertadas.


83 filas insertadas.


2 filas insertadas.

Confirmaci�n terminada.

2 filas insertadas.


Error que empieza en la l�nea: 149 del comando -
INSERT INTO aud_hisfin
SELECT * FROM "aud_hisfin"@ifmx
Error en la l�nea de comandos : 149 Columna : 13
Informe de error -
Error SQL: ORA-00942: la tabla o vista no existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

-----------CREAMOS LOS DATOS

0 filas insertadas.


0 filas insertadas.


0 filas insertadas.


0 filas insertadas.


0 filas insertadas.

Confirmaci�n terminada.
