ALTER TABLE ADMIN.LVEH_SOLICITUD MODIFY SOL_REFERENCIA NULL;
/
COMMIT;
/
ALTER TABLE ADMIN.LVEH_DET_DOCUMENTO MODIFY DET_DOC_REFERENCIA NULL;
/
COMMIT;
/
alter table admin.LVEH_OBSER modify OBS_CLOBO null;
/
COMMIT;
/

alter table ADMIN.RNB_BITACORA modify bit_accion null;
/
COMMIT;
/
INSERT INTO ADMIN.aud_eva_meritos
SELECT * FROM "aud_eva_meritos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.eva_preguntas
SELECT * FROM "eva_preguntas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_eva_preguntas
SELECT * FROM "aud_eva_preguntas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.eva_datos
SELECT * FROM "eva_datos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_eva_datos
SELECT * FROM "aud_eva_datos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.eva_certifica
SELECT * FROM "eva_certifica"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_eva_certifica
SELECT * FROM "aud_eva_certifica"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_tipo_emb
 SELECT * FROM "v_aud_rnb_tipo_emb"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.rnb_propietario
 SELECT * FROM "v_rnb_propietario"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.aud_rnb_propietario
 SELECT * FROM "v_aud_rnb_propietario"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.rnb_color
 SELECT * FROM "v_rnb_color"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.aud_rnb_color
 SELECT * FROM "v_aud_rnb_color"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.rnb_embarcacion
 SELECT * FROM "v_rnb_embarcacion"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.aud_rnb_embarcacion
 SELECT * FROM "v_aud_rnb_embarcacion"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.rnb_licencia
 SELECT * FROM "v_rnb_licencia"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.aud_rnb_licencia
 SELECT * FROM "v_aud_rnb_licencia"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.rnb_usuario
 SELECT * FROM "v_rnb_usuario"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
 INSERT INTO ADMIN.aud_rnb_usuario
 SELECT * FROM "v_aud_rnb_usuario"@ifmx;
 /
 COMMIT;
---------------------------------------------------- rnbs
INSERT INTO ADMIN.rnb_casco
 SELECT * FROM "v_rnb_casco"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_casco
SELECT * FROM "v_aud_rnb_casco"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_motor
SELECT * FROM "v_rnb_motor"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_motor
SELECT * FROM "v_aud_rnb_motor"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_marca
SELECT * FROM "v_rnb_marca"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
 INSERT INTO ADMIN.aud_rnb_marca
 SELECT * FROM "v_aud_rnb_marca"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
*
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_modificacion (
mod_codigo,
mod_embarcacion,
--mod_modificacion
mod_fecha,
mod_quien,
mod_autoriza,
desp_mod_codigo,
desp_mod_embarcacion,
--desp_mod_modificacion
desp_mod_fecha,
desp_mod_quien,
desp_mod_autoriza,
accion,
usuario,
hora
)
 SELECT * FROM "v_aud_rnb_modificacion"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_impuesto
 SELECT * FROM "rnb_impuesto"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
 INSERT INTO ADMIN.aud_rnb_impuesto
 SELECT * FROM "aud_rnb_impuesto"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_tipo_emb
SELECT * FROM "rnb_tipo_emb"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
-- /
-----------------------


/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_inspeccion (insp_codigo,
insp_embarcacion,
insp_correlativo,
insp_anno,
insp_fecha,
insp_lugar,
insp_inspector,
insp_secretario,
insp_comandante,
insp_dependencia,
--insp_observacion
insp_resultado)
SELECT * FROM "v_rnb_inspeccion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
 /
INSERT INTO ADMIN.aud_rnb_inspeccion(
insp_codigo,
insp_embarcacion,
insp_correlativo,
insp_anno,
insp_fecha,
insp_lugar,
insp_inspector,
insp_secretario,
insp_comandante,
insp_dependencia,
--insp_observacion,
insp_resultado,
desp_insp_codigo,
desp_insp_embarcacion,
desp_insp_correlativo,
desp_insp_anno,
desp_insp_fecha,
desp_insp_lugar,
desp_insp_inspector,
desp_insp_secretario,
desp_insp_comandante,
desp_insp_dependencia,
--desp_insp_observacion,
desp_insp_resultado,
accion,
usuario,
hora)
SELECT * FROM "v_aud_rnb_inspeccion"@ifmx;
/
COMMIT;

/
commit;
/
COMMIT;
 /
INSERT INTO ADMIN.rnb_dependencia
SELECT * FROM "rnb_dependencia"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
 /
INSERT INTO ADMIN.aud_rnb_dependencia
 SELECT * FROM "aud_rnb_dependencia"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
/
 INSERT INTO ADMIN.rnb_matricula
 SELECT * FROM "rnb_matricula"@ifmx;
 /
 COMMIT;
/
commit;
/
COMMIT;
 /
INSERT INTO ADMIN.aud_rnb_matricula
SELECT * FROM "aud_rnb_matricula"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_zarpe_inter
SELECT * FROM "rnb_zarpe_inter"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_zarpe_inter
SELECT * FROM "aud_rnb_zarpe_inter"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_zarpe
SELECT * FROM "rnb_zarpe"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_zarpe
SELECT * FROM "aud_rnb_zarpe"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_bitacora (
bit_codigo,
bit_tipo,
--bit_accion,
bit_fecha,
bit_quien,
bit_dependencia
)
SELECT * FROM "v_rnb_bitacora"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_bitacora(
bit_codigo,
bit_tipo,
--bit_accion,
bit_fecha,
bit_quien,
bit_dependencia,
desp_bit_codigo,
desp_bit_tipo,
--desp_bit_accion,
desp_bit_fecha,
desp_bit_quien,
desp_bit_dependencia,
accion,
usuario,
hora)
SELECT * FROM "v_aud_rnb_bitacora"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.rnb_atraque
SELECT * FROM "rnb_atraque"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_rnb_atraque
SELECT * FROM "aud_rnb_atraque"@ifmx;
/
COMMIT;
/

--------------------------------------
commit;
/
COMMIT;
/
INSERT INTO ADMIN.peva_detpersonal
SELECT * FROM "peva_detpersonal"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_peva_detpersonal
SELECT * FROM "aud_peva_detpersonal"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_peva_boletasas
SELECT * FROM "aud_peva_boletasas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.peva_certificaas
SELECT * FROM "peva_certificaas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_peva_certificaas
SELECT * FROM "aud_peva_certificaas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT INTO ADMIN.peva_detbolconcep
SELECT * FROM "peva_detbolconcep"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_peva_detbolconcep
SELECT * FROM "aud_peva_detbolconcep"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.peva_boletasas
SELECT * FROM "peva_boletasas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.larm_inventario
SELECT * FROM "larm_inventario"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_larm_inventario
SELECT * FROM "aud_larm_inventario"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.pictures
SELECT * FROM "pictures"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.his_morg
SELECT * FROM "his_morg"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.larm_hallazgo
SELECT * FROM "larm_hallazgo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_larm_hallazgo
SELECT * FROM "aud_larm_hallazgo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.per
SELECT * FROM "per"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_neumaticos
SELECT * FROM "lveh_neumaticos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_neumaticos
SELECT * FROM "aud_lveh_neumaticos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_neumaticos
SELECT * FROM "lveh_det_neumaticos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_neumaticos
SELECT * FROM "aud_lveh_det_neumaticos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_plaza
SELECT * FROM "lveh_det_plaza"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_plaza
SELECT * FROM "aud_lveh_det_plaza"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_otros
SELECT * FROM "lveh_det_otros"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_otros
SELECT * FROM "aud_lveh_det_otros"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_estilo
SELECT * FROM "lveh_estilo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_estilo
SELECT * FROM "aud_lveh_estilo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_marcas
SELECT * FROM "lveh_marcas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_marcas
SELECT * FROM "aud_lveh_marcas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_tipo
SELECT * FROM "lveh_tipo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_tipo
SELECT * FROM "aud_lveh_tipo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lvehiculos
SELECT * FROM "lvehiculos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lvehiculos
SELECT * FROM "aud_lvehiculos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_transmision
SELECT * FROM "lveh_det_transmision"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_motor
SELECT * FROM "lveh_det_motor"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_motor
SELECT * FROM "aud_lveh_det_motor"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_solicitud
SELECT * FROM "lveh_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_solicitud
SELECT * FROM "aud_lveh_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_combustible
SELECT * FROM "lveh_combustible"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_combustible
SELECT * FROM "aud_lveh_combustible"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_aceite
SELECT * FROM "lveh_aceite"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_aceite
SELECT * FROM "aud_lveh_aceite"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_nuevo
SELECT * FROM "lveh_nuevo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_det_documento
SELECT * FROM "lveh_det_documento"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_documento
SELECT * FROM "aud_lveh_det_documento"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_caracteristicas
SELECT * FROM "lveh_caracteristicas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_caracteristicas
SELECT * FROM "aud_lveh_caracteristicas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_asigna
SELECT * FROM "lveh_asigna"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_asigna
SELECT * FROM "aud_lveh_asigna"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_nuevo
SELECT * FROM "aud_lveh_nuevo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_larm_loc
SELECT * FROM "aud_larm_loc"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.conecta2
SELECT * FROM "conecta2"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_obser(obs_cat,
obs_num,
obs_fecha,
obs_usuario)
SELECT * FROM "v_lveh_obser"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_obser (
obs_cat,
obs_num,
obs_fecha,
obs_usuario,
desp_obs_cat,
desp_obs_num,
desp_obs_fecha,
desp_obs_usuario,
accion,
usuario,
hora
)
SELECT * FROM "v_aud_lveh_obser"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_his
SELECT * FROM "lveh_his"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_his
SELECT * FROM "aud_lveh_his"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_situacion
SELECT * FROM "lveh_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_situacion
SELECT * FROM "aud_lveh_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lveh_color
SELECT * FROM "lveh_color"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_color
SELECT * FROM "aud_lveh_color"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lveh_det_transmision
SELECT * FROM "aud_lveh_det_transmision"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_larm_solicitud
SELECT * FROM "aud_larm_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_larm_obser
SELECT * FROM "aud_larm_obser"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.larm_obser
SELECT * FROM "larm_obser"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.ptel_personal
SELECT * FROM "ptel_personal"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_ptel_personal
SELECT * FROM "aud_ptel_personal"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.ptel_depen
SELECT * FROM "ptel_depen"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_ptel_depen
SELECT * FROM "aud_ptel_depen"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.ptel_centrix
SELECT * FROM "ptel_centrix"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_ptel_centrix
SELECT * FROM "aud_ptel_centrix"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.dfdes
SELECT * FROM "dfdes"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
-- /
-- INSERT INTO ADMIN.aud_dfdes
-- SELECT * FROM "aud_dfdes"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.psan_detalle
SELECT * FROM "psan_detalle"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_psan_detalle
SELECT * FROM "aud_psan_detalle"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_clase_licencia
SELECT * FROM "esp_clase_licencia"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_clase_licencia
SELECT * FROM "aud_esp_clase_licencia"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_expertos
SELECT * FROM "esp_expertos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_expertos
SELECT * FROM "aud_esp_expertos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_permisos
SELECT * FROM "esp_permisos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_permisos
SELECT * FROM "aud_esp_permisos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_historial
SELECT * FROM "esp_historial"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_historial
SELECT * FROM "aud_esp_historial"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_det_permisos
SELECT * FROM "esp_det_permisos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_det_permisos
SELECT * FROM "aud_esp_det_permisos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_marcas
SELECT * FROM "esp_marcas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_marcas
SELECT * FROM "aud_esp_marcas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_grupo_producto
SELECT * FROM "esp_grupo_producto"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_grupo_producto
SELECT * FROM "aud_esp_grupo_producto"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_productos
SELECT * FROM "esp_productos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_productos
SELECT * FROM "aud_esp_productos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_unidad_medida
SELECT * FROM "esp_unidad_medida"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_unidad_medida
SELECT * FROM "aud_esp_unidad_medida"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_aduanas
SELECT * FROM "esp_aduanas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_aduanas
SELECT * FROM "aud_esp_aduanas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_inventario
SELECT * FROM "esp_inventario"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_inventario
SELECT * FROM "aud_esp_inventario"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_det_licencias
SELECT * FROM "esp_det_licencias"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_det_licencias
SELECT * FROM "aud_esp_det_licencias"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_aseguradoras
SELECT * FROM "esp_aseguradoras"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_aseguradoras
SELECT * FROM "aud_esp_aseguradoras"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_clase_permiso
SELECT * FROM "esp_clase_permiso"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_clase_permiso
SELECT * FROM "aud_esp_clase_permiso"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT INTO ADMIN.esp_licencias
SELECT * FROM "esp_licencias"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_licencias
SELECT * FROM "aud_esp_licencias"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_seguro
SELECT * FROM "esp_seguro"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_seguro
SELECT * FROM "aud_esp_seguro"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_empresas
SELECT * FROM "esp_empresas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_empresas
SELECT * FROM "aud_esp_empresas"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.esp_vehiculos
SELECT * FROM "esp_vehiculos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_esp_vehiculos
SELECT * FROM "aud_esp_vehiculos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_solicitud
SELECT * FROM "luni_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_solicitud
SELECT * FROM "aud_luni_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_detallesoli
SELECT * FROM "luni_detallesoli"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_detallesoli
SELECT * FROM "aud_luni_detallesoli"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_detsol_log
SELECT * FROM "luni_detsol_log"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_detsol_log
SELECT * FROM "aud_luni_detsol_log"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_situacion
SELECT * FROM "luni_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_situacion
SELECT * FROM "aud_luni_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_documento
SELECT * FROM "luni_documento"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_documento
SELECT * FROM "aud_luni_documento"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.luni_talla
SELECT * FROM "luni_talla"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_luni_talla
SELECT * FROM "aud_luni_talla"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_tipo1
SELECT * FROM "lmun_tipo1"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_calibre1
SELECT * FROM "lmun_calibre1"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_marca
SELECT * FROM "lmun_marca"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_color
SELECT * FROM "lmun_color"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_modelo
SELECT * FROM "lmun_modelo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_fabrica
SELECT * FROM "lmun_fabrica"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_lote1
SELECT * FROM "lmun_lote1"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_situacion
SELECT * FROM "lmun_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.l_municion
SELECT * FROM "l_municion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_uso1
SELECT * FROM "lmun_uso1"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_carga
SELECT * FROM "lmun_carga"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_solicitud1
SELECT * FROM "lmun_solicitud1"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_det_solicitud
SELECT * FROM "lmun_det_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_det_solasigna
SELECT * FROM "lmun_det_solasigna"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_det_cambiosit
SELECT * FROM "lmun_det_cambiosit"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_devolentre
SELECT * FROM "lmun_devolentre"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_mov_solicitud
SELECT * FROM "lmun_mov_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_correla
SELECT * FROM "lmun_correla"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_movimientos
SELECT * FROM "lmun_movimientos"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_asignacion
SELECT * FROM "lmun_asignacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_cambio_sit
SELECT * FROM "lmun_cambio_sit"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_trasint
SELECT * FROM "lmun_trasint"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_det_conocimiento 
SELECT * FROM "lmun_det_conocimiento "@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_conoc_fab
SELECT * FROM "lmun_conoc_fab"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.lmun_det_conoc_fab
SELECT * FROM "lmun_det_conoc_fab"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_tipo
SELECT * FROM "aud_lmun_tipo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_calibre
SELECT * FROM "aud_lmun_calibre"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_marca
SELECT * FROM "aud_lmun_marca"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_color
SELECT * FROM "aud_lmun_color"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_modelo
SELECT * FROM "aud_lmun_modelo"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_fabrica
SELECT * FROM "aud_lmun_fabrica"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_lote
SELECT * FROM "aud_lmun_lote"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_situacion
SELECT * FROM "aud_lmun_situacion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_l_municion
SELECT * FROM "aud_l_municion"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_uso
SELECT * FROM "aud_lmun_uso"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_carga
SELECT * FROM "aud_lmun_carga"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_solicitud
SELECT * FROM "aud_lmun_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_det_solicitud
SELECT * FROM "aud_lmun_det_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_det_solasigna
SELECT * FROM "aud_lmun_det_solasigna"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_det_cambiosit
SELECT * FROM "aud_lmun_det_cambiosit"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_devolentre
SELECT * FROM "aud_lmun_devolentre"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_mov_solicitud
SELECT * FROM "aud_lmun_mov_solicitud"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;
/
INSERT INTO ADMIN.aud_lmun_correla
SELECT * FROM "aud_lmun_correla"@ifmx;
/
COMMIT;
/
commit;
/
COMMIT;