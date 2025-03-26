alter table ADMIN.INV_DETALLE modify DET_OBSERVACIONES null;
/
COMMIT;
/
alter table ADMIN.EVA_EVALUACION modify EVA_OBS_INM null;
/
COMMIT;
/
alter table ADMIN.EVA_EVALUACION modify EVA_OBS_FINAL null;
/
COMMIT;
/
alter table ADMIN.EVA_EVALUACION modify EVA_OBS null;
/
COMMIT;
/
alter table ADMIN.EVA_EVALUACION modify EVA_EMPLEO1 null;
/
COMMIT;
/
alter table ADMIN.LLAMADA_ATENCION_MOD modify MOTIVO_MOD null;
/
COMMIT;
/
alter table ADMIN.LLAMADA_ATENCION_MOD modify DOC_REF_MOD null;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_proveedor
SELECT * FROM "inv_proveedor"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_proveedor
SELECT * FROM "aud_inv_proveedor"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_representante
SELECT * FROM "inv_representante"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_asig_repre_provee
SELECT * FROM "inv_asig_repre_provee"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_detalle
SELECT * FROM "inv_detalle"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_articulo
SELECT * FROM "inv_articulo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_clase
SELECT * FROM "inv_clase"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_clase
SELECT * FROM "aud_inv_clase"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_grupo
SELECT * FROM "aud_inv_grupo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_articulo
SELECT * FROM "aud_inv_articulo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_detalle
SELECT * FROM "aud_inv_detalle"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_asig_repre_provee
SELECT * FROM "aud_inv_asig_repre_provee"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_representante
SELECT * FROM "aud_inv_representante"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_grupo
SELECT * FROM "inv_grupo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_lote
SELECT * FROM "inv_lote"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.inv_formulario
SELECT * FROM "inv_formulario"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_lote
SELECT * FROM "aud_inv_lote"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_inv_formulario
SELECT * FROM "aud_inv_formulario"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dtx_accesorio
SELECT * FROM "dtx_accesorio"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dtx_accesorio
SELECT * FROM "aud_dtx_accesorio"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dtx_marca
SELECT * FROM "dtx_marca"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dtx_articulo
SELECT * FROM "dtx_articulo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dtx_articulo
SELECT * FROM "aud_dtx_articulo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dtx_equipo
SELECT * FROM "dtx_equipo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dtx_equipo
SELECT * FROM "aud_dtx_equipo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dtx_marca
SELECT * FROM "aud_dtx_marca"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dtx_distribucion
SELECT * FROM "aud_dtx_distribucion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dtx_distribucion
SELECT * FROM "dtx_distribucion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_situacion
SELECT * FROM "bin_situacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_situacion
SELECT * FROM "aud_bin_situacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_adquisicion
SELECT * FROM "bin_adquisicion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_adquisicion
SELECT * FROM "aud_bin_adquisicion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_tipos
SELECT * FROM "bin_tipos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_tipos
SELECT * FROM "aud_bin_tipos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_accion
SELECT * FROM "bin_accion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_utm
SELECT * FROM "bin_utm"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_utm
SELECT * FROM "aud_bin_utm"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_inmueble
SELECT * FROM "bin_inmueble"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_inmueble
SELECT * FROM "aud_bin_inmueble"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_accion
SELECT * FROM "aud_bin_accion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_ubicacion
SELECT * FROM "bin_ubicacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_ubicacion
SELECT * FROM "aud_bin_ubicacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_incidencia
SELECT * FROM "bin_incidencia"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bin_asignacion
SELECT * FROM "bin_asignacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_incidencia
SELECT * FROM "aud_bin_incidencia"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_bin_asignacion
SELECT * FROM "aud_bin_asignacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lemus
SELECT * FROM "lemus"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_psan_boleta
SELECT * FROM "aud_psan_boleta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.psan_boleta
SELECT * FROM "psan_boleta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_asi_maquinas
SELECT * FROM "ing_asi_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_asi_maquinas
SELECT * FROM "aud_ing_asi_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_asi_subren
SELECT * FROM "ing_asi_subren"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_asi_subren
SELECT * FROM "aud_ing_asi_subren"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_asi_vehiculos
SELECT * FROM "ing_asi_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_asi_vehiculos
SELECT * FROM "aud_ing_asi_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_avances
SELECT * FROM "ing_avances"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_avances
SELECT * FROM "aud_ing_avances"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_hist_maquinas
SELECT * FROM "ing_hist_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_hist_maquinas
SELECT * FROM "aud_ing_hist_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_hist_vehiculos
SELECT * FROM "ing_hist_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_hist_vehiculos
SELECT * FROM "aud_ing_hist_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_renglones
SELECT * FROM "ing_renglones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_renglones
SELECT * FROM "aud_ing_renglones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_subrenglones
SELECT * FROM "ing_subrenglones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_subrenglones
SELECT * FROM "aud_ing_subrenglones"@ifmx;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_tramos
SELECT * FROM "aud_ing_tramos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.sancioness
SELECT * FROM "sancioness"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.estadisticaa
SELECT * FROM "estadisticaa"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.detallee
SELECT * FROM "detallee"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_maq_servicios
SELECT * FROM "ing_maq_servicios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_maq_servicios
SELECT * FROM "aud_ing_maq_servicios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_proyecto
SELECT * FROM "ing_proyecto"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_proyecto
SELECT * FROM "aud_ing_proyecto"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_veh_servicios
SELECT * FROM "ing_veh_servicios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_veh_servicios
SELECT * FROM "aud_ing_veh_servicios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.historial_relestcivil
SELECT * FROM "historial_relestcivil"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_historial_relestcivil
SELECT * FROM "aud_historial_relestcivil"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.religion_personal
SELECT * FROM "religion_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_religion_personal
SELECT * FROM "aud_religion_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.eva_factores
SELECT * FROM "eva_factores"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_eva_factores
SELECT * FROM "aud_eva_factores"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.eva_linea
SELECT * FROM "eva_linea"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_eva_linea
SELECT * FROM "aud_eva_linea"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.eva_evaluacion
SELECT * FROM "eva_evaluacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.eva_notas
SELECT * FROM "eva_notas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_eva_notas
SELECT * FROM "aud_eva_notas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_eva_evaluacion
SELECT * FROM "aud_eva_evaluacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_maquinas
SELECT * FROM "ing_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_maquinas
SELECT * FROM "aud_ing_maquinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_vehiculos
SELECT * FROM "ing_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ing_vehiculos
SELECT * FROM "aud_ing_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.res_personal
SELECT * FROM "res_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_res_personal
SELECT * FROM "aud_res_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.respafe
SELECT * FROM "respafe"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_respafe
SELECT * FROM "aud_respafe"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.resascensos
SELECT * FROM "resascensos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_resascensos
SELECT * FROM "aud_resascensos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.resdfam
SELECT * FROM "resdfam"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_resdfam
SELECT * FROM "aud_resdfam"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.resorg
SELECT * FROM "resorg"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_resorg
SELECT * FROM "aud_resorg"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dep_reservas
SELECT * FROM "dep_reservas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dep_reservas
SELECT * FROM "aud_dep_reservas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ing_tramos
SELECT * FROM "ing_tramos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.bonoextra
SELECT * FROM "bonoextra"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.llamada_atencion
SELECT * FROM "llamada_atencion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_llamada_atencion
SELECT * FROM "aud_llamada_atencion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.llamada_atencion_mod
SELECT * FROM "llamada_atencion_mod"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_llamada_atencion_mod
SELECT * FROM "aud_llamada_atencion_mod"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.sanciones
SELECT * FROM "sanciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_solicitud_detalle
SELECT * FROM "exp_solicitud_detalle"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_conocimiento
SELECT * FROM "exp_conocimiento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_solicitud
SELECT * FROM "exp_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_uso
SELECT * FROM "exp_uso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_tipo
SELECT * FROM "exp_tipo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_proyecto
SELECT * FROM "exp_proyecto"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.exp_ent_sal
SELECT * FROM "exp_ent_sal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.control_toe
SELECT * FROM "control_toe"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_control_toe
SELECT * FROM "aud_control_toe"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.religion_segcontalu
SELECT * FROM "religion_segcontalu"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_religion_segcontalu
SELECT * FROM "aud_religion_segcontalu"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_mdep
SELECT * FROM "con_mdep"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_unidades
SELECT * FROM "con_unidades"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.fmdep
SELECT * FROM "fmdep"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_ent_sal_restore
SELECT * FROM "lmun_ent_sal_restore"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_conocimiento_restore
SELECT * FROM "lmun_conocimiento_restore"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dfasig_tabla
SELECT * FROM "dfasig_tabla"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_area
SELECT * FROM "con_area"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_area
SELECT * FROM "aud_con_area"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_asignacion_plaza
SELECT * FROM "con_asignacion_plaza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_asignacion_plaza
SELECT * FROM "aud_con_asignacion_plaza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_boleta
SELECT * FROM "con_boleta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_mper_contratos
SELECT * FROM "con_mper_contratos"@ifmx;
/
COMMIT;
