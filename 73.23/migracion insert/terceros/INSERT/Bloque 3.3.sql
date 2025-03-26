alter table ADMIN.VLH_MARCAS modify MAR_DESC null;
/
COMMIT;
/
alter table ADMIN.VLH_TIPO_COMBUSTIBLE modify COM_DESC null;
/
COMMIT;
/
alter table ADMIN.VLH_CARACT_VEHICULOS modify CAR_COLOR_VEHICULO null;
/
COMMIT;
/
alter table ADMIN.COC_MENSAJE modify MEN_RESP_EMPLEO null;
/
COMMIT;
/
alter table ADMIN.COC_MENSAJE modify MEN_COMTE_EMPLEO null;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_mper_contratos
SELECT * FROM "aud_con_mper_contratos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_contrato
SELECT * FROM "con_contrato"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_desc_area
SELECT * FROM "con_desc_area"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_desc_area
SELECT * FROM "aud_con_desc_area"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_desc_subareas
SELECT * FROM "con_desc_subareas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_desc_subareas
SELECT * FROM "aud_con_desc_subareas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_manual
SELECT * FROM "con_manual"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_manual
SELECT * FROM "aud_con_manual"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_mdep
SELECT * FROM "aud_con_mdep"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_minuta
SELECT * FROM "con_minuta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_minuta
SELECT * FROM "aud_con_minuta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_observaciones
SELECT * FROM "con_observaciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_observaciones
SELECT * FROM "aud_con_observaciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_permisos
SELECT * FROM "con_permisos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_permisos
SELECT * FROM "aud_con_permisos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_plaza
SELECT * FROM "con_plaza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_plaza
SELECT * FROM "aud_con_plaza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_seguimiento
SELECT * FROM "con_seguimiento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_seguimiento
SELECT * FROM "aud_con_seguimiento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cont_solicitud
SELECT * FROM "cont_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cont_solicitud
SELECT * FROM "aud_cont_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_subareas
SELECT * FROM "con_subareas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_subareas
SELECT * FROM "aud_con_subareas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_usuarios
SELECT * FROM "con_usuarios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_usuarios
SELECT * FROM "aud_con_usuarios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_unidades
SELECT * FROM "aud_con_unidades"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_juridico
SELECT * FROM "con_juridico"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_juridico
SELECT * FROM "aud_con_juridico"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_solicitud
SELECT * FROM "con_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_contrato
SELECT * FROM "aud_con_contrato"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_boleta
SELECT * FROM "aud_con_boleta"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.con_ef_personal
SELECT * FROM "con_ef_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_con_ef_personal
SELECT * FROM "aud_con_ef_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_paridera
SELECT * FROM "arco_paridera"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cci_est_destino
SELECT * FROM "cci_est_destino"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cci_est_destino
SELECT * FROM "aud_cci_est_destino"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cci_est_fuerza
SELECT * FROM "cci_est_fuerza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cci_est_fuerza
SELECT * FROM "aud_cci_est_fuerza"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cci_novedades
SELECT * FROM "cci_novedades"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cci_novedades
SELECT * FROM "aud_cci_novedades"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_t_cisterna
SELECT * FROM "vlh_t_cisterna"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_t_vehiculo
SELECT * FROM "vlh_t_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_llantas
SELECT * FROM "vlh_llantas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_marcas
SELECT * FROM "vlh_marcas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_hidraulico_fag
SELECT * FROM "vlh_hidraulico_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_linea
SELECT * FROM "vlh_linea"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_aceite_fag
SELECT * FROM "vlh_aceite_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_aceite_fag
SELECT * FROM "aud_vlh_aceite_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_aeronave
SELECT * FROM "vlh_aeronave"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_aeronave
SELECT * FROM "aud_vlh_aeronave"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_apu
SELECT * FROM "vlh_apu"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_apu
SELECT * FROM "aud_vlh_apu"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_baterias
SELECT * FROM "vlh_baterias"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_baterias
SELECT * FROM "aud_vlh_baterias"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_t_cisterna
SELECT * FROM "aud_vlh_t_cisterna"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_t_vehiculo
SELECT * FROM "aud_vlh_t_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_tipo_carroceria
SELECT * FROM "vlh_tipo_carroceria"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_tipo_carroceria
SELECT * FROM "aud_vlh_tipo_carroceria"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_tipo_combustible
SELECT * FROM "vlh_tipo_combustible"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_tipo_combustible
SELECT * FROM "aud_vlh_tipo_combustible"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_traccion_vehiculo
SELECT * FROM "vlh_traccion_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_traccion_vehiculo
SELECT * FROM "aud_vlh_traccion_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_transmision_vehiculo
SELECT * FROM "vlh_transmision_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_transmision_vehiculo
SELECT * FROM "aud_vlh_transmision_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_validaciones
SELECT * FROM "vlh_validaciones"@ifmx;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_validaciones
SELECT * FROM "aud_vlh_validaciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_permisos
SELECT * FROM "vlh_permisos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_permisos
SELECT * FROM "aud_vlh_permisos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_hidraulico_fag
SELECT * FROM "aud_vlh_hidraulico_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_marcas
SELECT * FROM "aud_vlh_marcas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_linea
SELECT * FROM "aud_vlh_linea"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_llantas
SELECT * FROM "aud_vlh_llantas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_motor_fag
SELECT * FROM "vlh_motor_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_motor_fag
SELECT * FROM "aud_vlh_motor_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_neumaticos_fag
SELECT * FROM "vlh_neumaticos_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_neumaticos_fag
SELECT * FROM "aud_vlh_neumaticos_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_origen_vehiculo
SELECT * FROM "vlh_origen_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_origen_vehiculo
SELECT * FROM "aud_vlh_origen_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_estado_vehiculo
SELECT * FROM "vlh_estado_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_estado_vehiculo
SELECT * FROM "aud_vlh_estado_vehiculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_combustible_fag
SELECT * FROM "vlh_combustible_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_combustible_fag
SELECT * FROM "aud_vlh_combustible_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_cons_comb_vehi
SELECT * FROM "vlh_cons_comb_vehi"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_cons_comb_vehi
SELECT * FROM "aud_vlh_cons_comb_vehi"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_cons_lubri_vehi
SELECT * FROM "vlh_cons_lubri_vehi"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_cons_lubri_vehi
SELECT * FROM "aud_vlh_cons_lubri_vehi"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_destino
SELECT * FROM "vlh_destino"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_destino
SELECT * FROM "aud_vlh_destino"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_carretones
SELECT * FROM "vlh_carretones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_equipo_terrestre_fag
SELECT * FROM "vlh_equipo_terrestre_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_embarcacion
SELECT * FROM "vlh_embarcacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_remolques
SELECT * FROM "vlh_remolques"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_carretones
SELECT * FROM "aud_vlh_carretones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_equipo_terrestre_fag
SELECT * FROM "aud_vlh_equipo_terrestre_fag"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_embarcacion
SELECT * FROM "aud_vlh_embarcacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_remolques
SELECT * FROM "aud_vlh_remolques"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_caract_vehiculos
SELECT * FROM "vlh_caract_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_caract_vehiculos
SELECT * FROM "aud_vlh_caract_vehiculos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_fag_caracteristicas
SELECT * FROM "vlh_fag_caracteristicas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_vlh_fag_caracteristicas
SELECT * FROM "aud_vlh_fag_caracteristicas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_t_comision
SELECT * FROM "gpl_t_comision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_t_comision
SELECT * FROM "aud_gpl_t_comision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_presidencial
SELECT * FROM "aud_gpl_presidencial"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_ubicacion
SELECT * FROM "gpl_ubicacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_ubicacion
SELECT * FROM "aud_gpl_ubicacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_lugar
SELECT * FROM "gpl_lugar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_lugar
SELECT * FROM "aud_gpl_lugar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_asig_lugar
SELECT * FROM "aud_gpl_asig_lugar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_transporte
SELECT * FROM "gpl_transporte"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cont_curriculo
SELECT * FROM "cont_curriculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cont_curriculo
SELECT * FROM "aud_cont_curriculo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_conductores
SELECT * FROM "aud_gpl_conductores"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_gpl_transporte
SELECT * FROM "aud_gpl_transporte"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.vlh_tow
SELECT * FROM "vlh_tow"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dfam_ipm
SELECT * FROM "v_dfam_ipm"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.pafe_alternos
SELECT * FROM "pafe_alternos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dfdes_banrural
SELECT * FROM "dfdes_banrural"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dfdes_banrural
SELECT * FROM "aud_dfdes_banrural"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.com_ent_sal2
SELECT * FROM "com_ent_sal2"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.com_resumen
SELECT * FROM "com_resumen"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_area_mision
SELECT * FROM "coc_area_mision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_metodo_ejec
SELECT * FROM "coc_metodo_ejec"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_metas
SELECT * FROM "coc_metas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_coordenadas2
SELECT * FROM "coc_coordenadas2"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_vehiculo_rep2
SELECT * FROM "coc_vehiculo_rep2"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ef_fuerza_rsvp
SELECT * FROM "ef_fuerza_rsvp"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ef_fuerza_ce
SELECT * FROM "ef_fuerza_ce"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ipm_dfam_temp
SELECT * FROM "ipm_dfam_temp"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_mensaje
SELECT * FROM "coc_mensaje"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_registro_personal
SELECT * FROM "amp_registro_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_ubicacion_personal
SELECT * FROM "amp_ubicacion_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_asig_propietario
SELECT * FROM "amp_asig_propietario"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_lote
SELECT * FROM "amp_lote"@ifmx;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_manzana
SELECT * FROM "amp_manzana"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.amp_sector
SELECT * FROM "amp_sector"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.opaf_abdominales1
SELECT * FROM "opaf_abdominales1"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.opaf_carrera2
SELECT * FROM "opaf_carrera2"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.opaf_dominadas1
SELECT * FROM "opaf_dominadas1"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.opaf_notas1
SELECT * FROM "opaf_notas1"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_control
SELECT * FROM "coc_control"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_actividad
SELECT * FROM "gpl_actividad"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_ministerios
SELECT * FROM "gpl_ministerios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_asig_mision
SELECT * FROM "gpl_asig_mision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_conductores
SELECT * FROM "gpl_conductores"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.gpl_asig_lugar
SELECT * FROM "gpl_asig_lugar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.opaf_evento_per
SELECT * FROM "opaf_evento_per"@ifmx;
/
COMMIT;
