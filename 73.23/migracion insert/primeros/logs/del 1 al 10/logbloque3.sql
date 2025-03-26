
8,422 filas insertadas.


24 filas insertadas.


148,183 filas insertadas.


5,797 filas insertadas.


Error que empieza en la l�nea: 13 del comando -
INSERT INTO re22_mper
SELECT * FROM "re22_mper"@ifmx
Error en la l�nea de comandos : 13 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:


--per_iggs

INSERT INTO re22_mper (
    per_catalogo, per_nom1, per_nom2, per_nom3, per_ape1, per_ape2, per_ape3, per_sexo, 
    per_estado_civil, per_religion, per_nacimiento, per_lugar_nac, per_dpi, per_fecha_ext, 
    per_lugar_ext, per_nit, per_pio, per_ocupacion, per_empleo, per_obra, 
    per_subarea, per_horas, per_bono_prof, per_direccion, per_telefono, per_celular, 
    per_email, per_contrato, per_inicio, per_fin, per_situacion, per_peisol, per_puesto,
     per_obs
)
SELECT 
    "per_catalogo", "per_nom1", "per_nom2", "per_nom3", "per_ape1", "per_ape2", "per_ape3", 
    "per_sexo", 
    "per_estado_civil", "per_religion", "per_nacimiento", "per_lugar_nac", "per_dpi", 
    "per_fecha_ext", 
    "per_lugar_ext","per_nit", "per_pio", "per_ocupacion", "per_empleo", "per_obra", 
    "per_subarea", "per_horas", "per_bono_prof", "per_direccion", "per_telefono", 
    "per_celular", 
    "per_email", "per_contrato", "per_inicio", "per_fin", "per_situacion", "per_peisol",
     "per_puesto", "per_obs"
FROM "re22_mper"@ifmx;


--pendiente la columa per_iggs 
--corregido 17 de febrero de 2025

16 filas insertadas.


7 filas insertadas.


8 filas insertadas.


4 filas insertadas.


14 filas insertadas.


457 filas insertadas.


19 filas insertadas.


499 filas insertadas.


Error que empieza en la l�nea: 40 del comando -
INSERT INTO aud_re22_mper
SELECT * FROM "aud_re22_mper"@ifmx
Error en la l�nea de comandos : 40 Columna : 13
Informe de error -
Error SQL: ORA-00947: no hay suficientes valores
00947. 00000 -  "not enough values"
*Cause:    
*Action:


CREATE VIEW v_aud_re22_mper ( per_catalogo, per_nom1, per_nom2, per_nom3, per_ape1, per_ape2, per_ape3, per_sexo, 
    per_estado_civil, per_religion, per_nacimiento, per_lugar_nac, per_dpi, per_fecha_ext, 
    per_lugar_ext,per_iggs, per_nit, per_pio, per_ocupacion, per_empleo, per_obra, 
    per_subarea, per_horas, per_bono_prof, per_direccion, per_telefono, per_celular, 
    per_email, per_contrato, per_inicio, per_fin, per_situacion, per_peisol, per_puesto, per_obs,
    desp_per_catalogo, desp_per_nom1, desp_per_nom2, desp_per_nom3, desp_per_ape1, desp_per_ape2, desp_per_ape3, 
    desp_per_sexo, desp_per_estado_civil, desp_per_religion, desp_per_nacimiento, desp_per_lugar_nac, 
    desp_per_dpi, desp_per_fecha_ext, desp_per_lugar_ext, desp_per_iggs,desp_per_nit, desp_per_pio, 
    desp_per_ocupacion, desp_per_empleo, desp_per_obra, desp_per_subarea, desp_per_horas, desp_per_bono_prof, 
    desp_per_direccion, desp_per_telefono, desp_per_celular, desp_per_email, desp_per_contrato, desp_per_inicio, 
    desp_per_fin, desp_per_situacion, desp_per_peisol, desp_per_puesto, desp_per_obs, 
    accion, usuario, hora) AS  
SELECT per_catalogo, per_nom1, per_nom2, per_nom3, per_ape1, per_ape2, per_ape3, per_sexo, 
    per_estado_civil, per_religion, per_nacimiento, per_lugar_nac, per_dpi, per_fecha_ext, 
    per_lugar_ext,per_iggs::varchar(250), per_nit, per_pio, per_ocupacion, per_empleo, per_obra, 
    per_subarea, per_horas, per_bono_prof, per_direccion, per_telefono, per_celular, 
    per_email, per_contrato, per_inicio, per_fin, per_situacion, per_peisol, per_puesto, per_obs,
    desp_per_catalogo, desp_per_nom1, desp_per_nom2, desp_per_nom3, desp_per_ape1, desp_per_ape2, desp_per_ape3, 
    desp_per_sexo, desp_per_estado_civil, desp_per_religion, desp_per_nacimiento, desp_per_lugar_nac, 
    desp_per_dpi, desp_per_fecha_ext, desp_per_lugar_ext, desp_per_iggs::varchar(250),desp_per_nit, desp_per_pio, 
    desp_per_ocupacion, desp_per_empleo, desp_per_obra, desp_per_subarea, desp_per_horas, desp_per_bono_prof, 
    desp_per_direccion, desp_per_telefono, desp_per_celular, desp_per_email, desp_per_contrato, desp_per_inicio, 
    desp_per_fin, desp_per_situacion, desp_per_peisol, desp_per_puesto, desp_per_obs, 
    accion, usuario, hora 
FROM aud_re22_mper;


INSERT INTO aud_re22_mper
SELECT * FROM "v_aud_re22_mper"@ifmx

------solucionado   

6,743 filas insertadas.


31,413 filas insertadas.


369 filas insertadas.


666,473 filas insertadas.


5,797 filas insertadas.


409 filas insertadas.


20,209 filas insertadas.


50 filas insertadas.


113 filas insertadas.


6 filas insertadas.


38,207 filas insertadas.


65,247 filas insertadas.


135 filas insertadas.


135 filas insertadas.


976 filas insertadas.


1,000 filas insertadas.


9,713 filas insertadas.


43,258 filas insertadas.


24,737 filas insertadas.


58,509 filas insertadas.


3,108 filas insertadas.


6,613 filas insertadas.


2,567 filas insertadas.


3,389 filas insertadas.


0 filas insertadas.


0 filas insertadas.


885 filas insertadas.


3,013 filas insertadas.


1,461 filas insertadas.


6,607 filas insertadas.


14 filas insertadas.


14 filas insertadas.


44,075 filas insertadas.


45,064 filas insertadas.


2,079 filas insertadas.


2,021 filas insertadas.

