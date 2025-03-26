INSERT INTO vt_tab_ls_7
SELECT * FROM "vt_tab_ls_7"@ifmx;
/
commit;
/
INSERT INTO vt_tab_ls_8
SELECT * FROM "vt_tab_ls_8"@ifmx;
/
commit;
/
INSERT INTO vt_tab_ls_9
SELECT * FROM "vt_tab_ls_9"@ifmx;
/
commit;
/
INSERT INTO vt_tab_ls_10
SELECT * FROM "vt_tab_ls_10"@ifmx;
/
commit;
/
INSERT INTO vt_tab_ls_11
SELECT * FROM "vt_tab_ls_11"@ifmx;
/
commit;
/
INSERT INTO vt_tab_ls_13
SELECT * FROM "vt_tab_ls_13"@ifmx;
/
commit;
/
INSERT INTO aud_fin_programa
SELECT * FROM "aud_fin_programa"@ifmx;
/
commit;
/
INSERT INTO aud_fin_subproducto
SELECT * FROM "aud_fin_subproducto"@ifmx;
/
commit;
/
INSERT INTO aud_fin_producto
SELECT * FROM "aud_fin_producto"@ifmx;
/
commit;
/
INSERT INTO aud_fin_actividades
SELECT * FROM "aud_fin_actividades"@ifmx;
/
commit;
/
INSERT INTO aud_fin_subpro_desc
SELECT * FROM "aud_fin_subpro_desc"@ifmx;
/
commit;
/
INSERT INTO fin_subpro_desc
SELECT * FROM "fin_subpro_desc"@ifmx;
/
commit;
/
INSERT INTO fin_programa
SELECT * FROM "fin_programa"@ifmx;
/
commit;
/
INSERT INTO fin_actividades
SELECT * FROM "fin_actividades"@ifmx;
/
commit;
/
INSERT INTO fin_producto
SELECT * FROM "fin_producto"@ifmx;
/
commit;
/
INSERT INTO fin_subproducto
SELECT * FROM "fin_subproducto"@ifmx;
/
commit;
/
INSERT INTO sig_asig_grupos
SELECT * FROM "sig_asig_grupos"@ifmx;
/
commit;
/
INSERT INTO cau_situaciones
SELECT * FROM "cau_situaciones"@ifmx;
/
commit;
/
INSERT INTO aud_cau_situaciones
SELECT * FROM "aud_cau_situaciones"@ifmx;
/
commit;
/
INSERT INTO cau_permisos
SELECT * FROM "cau_permisos"@ifmx;
/
commit;
/
INSERT INTO aud_cau_permisos
SELECT * FROM "aud_cau_permisos"@ifmx;
/
commit;
/
INSERT INTO aud_opaf_notas1
SELECT * FROM "aud_opaf_notas1"@ifmx;
/
commit;
/
INSERT INTO cat_permisos
SELECT * FROM "cat_permisos"@ifmx;
/
commit;
/
INSERT INTO sol_tarjetaunica
SELECT * FROM "sol_tarjetaunica"@ifmx;
/
commit;
/
INSERT INTO aud_sol_tarjetaunica
SELECT * FROM "aud_sol_tarjetaunica"@ifmx;
/
commit;
/
INSERT INTO tropa_cuenta(
cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
cuenta_sit)
SELECT * FROM "v_tropa_cuenta"@ifmx;
/
commit;
/
INSERT INTO aud_tropa_cuenta(
cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
cuenta_sit,
desp_cuenta_id,
desp_cuenta_usu,
desp_cuenta_cat,
desp_cuenta_fech,
desp_cuenta_ban,
desp_cuenta_no,
desp_cuenta_sit,
accion,
usuario,
hora
)
SELECT * FROM "v_aud_tropa_cuenta"@ifmx;
/
commit;
/
INSERT INTO sig_rancho
SELECT * FROM "sig_rancho"@ifmx;
/
commit;
/
INSERT INTO aud_sig_rancho
SELECT * FROM "aud_sig_rancho"@ifmx;
/
commit;
/
INSERT INTO rm_registros
SELECT * FROM "rm_registros"@ifmx;
/
commit;
/
INSERT INTO aud_rm_registros
SELECT * FROM "aud_rm_registros"@ifmx;
/
commit;
/
INSERT INTO rm_beneficiarios
SELECT * FROM "rm_beneficiarios"@ifmx;
/
commit;
/
INSERT INTO aud_rm_beneficiarios
SELECT * FROM "aud_rm_beneficiarios"@ifmx;
/
commit;
/
INSERT INTO rm_cuenta
(
cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
cuenta_sit,
cuenta_obs)
SELECT * FROM "v_rm_cuenta"@ifmx;
/
commit;
/
INSERT INTO aud_rm_cuenta
(
cuenta_id,
cuenta_usu,
cuenta_cat,
cuenta_fech,
cuenta_ban,
cuenta_no,
cuenta_sit,
cuenta_obs,
desp_cuenta_id,
desp_cuenta_usu,
desp_cuenta_cat,
desp_cuenta_fech,
desp_cuenta_ban,
desp_cuenta_no,
desp_cuenta_sit,
desp_cuenta_obs,
accion,
usuario,
hora)
SELECT * FROM "v_aud_rm_cuenta"@ifmx;
/
commit;
/
INSERT INTO rm_asistencia
SELECT * FROM "rm_asistencia"@ifmx;
/
commit;
/
INSERT INTO aud_rm_asistencia
SELECT * FROM "aud_rm_asistencia"@ifmx;
/
commit;
/
INSERT INTO ciber_office
SELECT * FROM "ciber_office"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_office
SELECT * FROM "aud_ciber_office"@ifmx;
/
commit;
/
INSERT INTO ciber_ram
SELECT * FROM "ciber_ram"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_ram
SELECT * FROM "aud_ciber_ram"@ifmx;
/
commit;
/
INSERT INTO ciber_antivirus
SELECT * FROM "ciber_antivirus"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_antivirus
SELECT * FROM "aud_ciber_antivirus"@ifmx;
/
commit;
/
INSERT INTO ciber_disco_duro
SELECT * FROM "ciber_disco_duro"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_disco_duro
SELECT * FROM "aud_ciber_disco_duro"@ifmx;
/
commit;
/
INSERT INTO ciber_procesador
SELECT * FROM "ciber_procesador"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_procesador
SELECT * FROM "aud_ciber_procesador"@ifmx;
/
commit;
/
INSERT INTO ciber_sistema_operativo
SELECT * FROM "ciber_sistema_operativo"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_sistema_operativo
SELECT * FROM "aud_ciber_sistema_operativo"@ifmx;
/
commit;
/
INSERT INTO ciber_evento
SELECT * FROM "ciber_evento"@ifmx;
/
commit;
/
commit;
/
commit;
INSERT INTO aud_ciber_evento
SELECT * FROM "aud_ciber_evento"@ifmx;
/
commit;
/
INSERT INTO ciber_inventario
SELECT * FROM "ciber_inventario"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_inventario
SELECT * FROM "aud_ciber_inventario"@ifmx;
/
commit;
/
INSERT INTO tropa_beneficiarios
SELECT * FROM "tropa_beneficiarios"@ifmx;
/
commit;
/
INSERT INTO aud_tropa_beneficiarios
SELECT * FROM "aud_tropa_beneficiarios"@ifmx;
/
commit;
/
INSERT INTO rm_historial_pagos
SELECT * FROM "rm_historial_pagos"@ifmx;
/
commit;
/
INSERT INTO aud_rm_historial_pagos
SELECT * FROM "aud_rm_historial_pagos"@ifmx;
/
commit;
/
INSERT INTO aud_bd_permisos
SELECT * FROM "aud_bd_permisos"@ifmx;
/
commit;
/
INSERT INTO esip_unidades_ejecutoras
SELECT * FROM "esip_unidades_ejecutoras"@ifmx;
/
commit;
/
INSERT INTO aud_esip_unidades_ejecutoras
SELECT * FROM "aud_esip_unidades_ejecutoras"@ifmx;
/
commit;
/
INSERT INTO aud_registro_puestos_vacunacion
SELECT * FROM "aud_registro_puestos_vacunacion"@ifmx;
/
commit;
/
INSERT INTO aud_resumen_vacuna_ssm
SELECT * FROM "aud_resumen_vacuna_ssm"@ifmx;
/
commit;
/
INSERT INTO registro_puestos_vacunacion
SELECT * FROM "registro_puestos_vacunacion"@ifmx;
/
commit;
/
INSERT INTO resumen_vacuna_ssm
SELECT * FROM "resumen_vacuna_ssm"@ifmx;
/
commit;
/
INSERT INTO psan_sanciones
SELECT * FROM "psan_sanciones"@ifmx;
/
commit;
/
INSERT INTO sub18_acciones
SELECT * FROM "sub18_acciones"@ifmx;
/
commit;
/
INSERT INTO aud_sub18_acciones
SELECT * FROM "aud_sub18_acciones"@ifmx;
/
commit;
/
INSERT INTO sub18_boleta
SELECT * FROM "sub18_boleta"@ifmx;
/
commit;
/
INSERT INTO aud_sub18_boleta
SELECT * FROM "aud_sub18_boleta"@ifmx;
/
commit;
/
INSERT INTO sub18_detalles
SELECT * FROM "sub18_detalles"@ifmx;
/
commit;
/
INSERT INTO aud_sub18_detalles
SELECT * FROM "aud_sub18_detalles"@ifmx;
/
commit;
/
INSERT INTO aud_coc_area_mision
SELECT * FROM "aud_coc_area_mision"@ifmx;
/
commit;
/
commit;
/
commit;
/
-- INSERT INTO aud_coc_ope_planificada
-- SELECT * FROM "aud_coc_ope_planificada"@ifmx;
/
commit;

INSERT INTO aud_coc_coordenadas2
SELECT * FROM "aud_coc_coordenadas2"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_coc_control
SELECT * FROM "aud_coc_control"@ifmx;
/
commit;
/
INSERT INTO aud_coc_dep_orden
SELECT * FROM "aud_coc_dep_orden"@ifmx;
/
commit;
/
INSERT INTO aud_coc_mensaje
SELECT * FROM "aud_coc_mensaje"@ifmx;
/
commit;
/
INSERT INTO aud_coc_metas
SELECT * FROM "aud_coc_metas"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_coc_metodo_ejec
SELECT * FROM "aud_coc_metodo_ejec"@ifmx;
/
commit;

/
INSERT INTO aud_coc_operaciones
SELECT * FROM "aud_coc_operaciones"@ifmx;
/
commit;
/
INSERT INTO aud_coc_ordenes
SELECT * FROM "aud_coc_ordenes"@ifmx;
/
commit;
/
INSERT INTO aud_coc_personal2
SELECT * FROM "aud_coc_personal2"@ifmx;
/
commit;
/
INSERT INTO aud_coc_proposito
SELECT * FROM "aud_coc_proposito"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_coc_unidad_organica
SELECT * FROM "aud_coc_unidad_organica"@ifmx;
/
commit;
/
INSERT INTO aud_coc_vehiculo_rep2
SELECT * FROM "aud_coc_vehiculo_rep2"@ifmx;
/
commit;
/
INSERT INTO aud_opaf_carrera2
SELECT * FROM "aud_opaf_carrera2"@ifmx;
/
commit;
/
INSERT INTO certificaciones
SELECT * FROM "v_certificaciones"@ifmx;
/
commit;
/
INSERT INTO aud_certificaciones
SELECT * FROM "v_aud_certificaciones"@ifmx;
/
commit;
/
INSERT INTO fag_compras
SELECT * FROM "fag_compras"@ifmx;
/
commit;
/
INSERT INTO aud_fag_compras
SELECT * FROM "aud_fag_compras"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO sub_18_contrato
SELECT * FROM "sub_18_contrato"@ifmx;
/
commit;
/
INSERT INTO aud_sub_18_contrato
SELECT * FROM "aud_sub_18_contrato"@ifmx;
/
commit;
/
INSERT INTO fag_metodo_adquisicion
SELECT * FROM "fag_metodo_adquisicion"@ifmx;
/
commit;
/
INSERT INTO fag_dependencia
SELECT * FROM "fag_dependencia"@ifmx;
/
commit;
/
INSERT INTO fag_condicion_rep
SELECT * FROM "fag_condicion_rep"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO fag_unidad_medida
SELECT * FROM "fag_unidad_medida"@ifmx;
/
commit;
/
INSERT INTO fag_tipo_articulos
SELECT * FROM "fag_tipo_articulos"@ifmx;
/
commit;
/
INSERT INTO fag_articulos
SELECT * FROM "fag_articulos"@ifmx;
/
commit;
/
INSERT INTO fag_almacen
SELECT * FROM "fag_almacen"@ifmx;
/
commit;
/
INSERT INTO fag_seccion
SELECT * FROM "fag_seccion"@ifmx;
/
commit;
/
commit;
/
commit;
INSERT INTO fag_estanterias
SELECT * FROM "fag_estanterias"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO fag_columnas
SELECT * FROM "fag_columnas"@ifmx;
/
commit;
/
INSERT INTO fag_niveles
SELECT * FROM "fag_niveles"@ifmx;
/
commit;
/
INSERT INTO fag_caja
SELECT * FROM "fag_caja"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO fag_inventario
SELECT * FROM "fag_inventario"@ifmx;
/
commit;
/
INSERT INTO mdep_otros
SELECT * FROM "mdep_otros"@ifmx;
/
commit;
/
INSERT INTO aud_mdep_otros
SELECT * FROM "aud_mdep_otros"@ifmx;
/
commit;
/
INSERT INTO permisos_bdmdn
SELECT * FROM "permisos_bdmdn"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO far_insumos_dependencias
SELECT * FROM "far_insumos_dependencias"@ifmx;
/
commit;
/
INSERT INTO aud_far_insumos_dependencias
SELECT * FROM "aud_far_insumos_dependencias"@ifmx;
/
commit;
/
INSERT INTO far_insumos_datos_dependencias
SELECT * FROM "far_insumos_datos_dependencias"@ifmx;
/
commit;
/
INSERT INTO aud_far_insumos_datos_dependencias
SELECT * FROM "aud_far_insumos_datos_dependencias"@ifmx;
/
commit;
/
INSERT INTO far_enfermedades
SELECT * FROM "far_enfermedades"@ifmx;
/
commit;
/
INSERT INTO aud_far_enfermedades
SELECT * FROM "aud_far_enfermedades"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO far_categorias_enfermedades
SELECT * FROM "far_categorias_enfermedades"@ifmx;
/
commit;
/
INSERT INTO aud_far_categorias_enfermedades
SELECT * FROM "aud_far_categorias_enfermedades"@ifmx;
/
commit;
/
INSERT INTO far_tipos_enfermedades
SELECT * FROM "far_tipos_enfermedades"@ifmx;
/
commit;
/
INSERT INTO aud_far_tipos_enfermedades
SELECT * FROM "aud_far_tipos_enfermedades"@ifmx;
/
commit;
/
INSERT INTO constancias_sage
SELECT * FROM "v_constancias_sage"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_constancias_sage
SELECT * FROM "v_aud_constancias_sage"@ifmx;
/
commit;
/
INSERT INTO aud_fmper
SELECT * FROM "aud_fmper"@ifmx;
/
commit;
/
INSERT INTO f_cat_eliminados
SELECT * FROM "f_cat_eliminados"@ifmx;
/
commit;
/
INSERT INTO aud_f_cat_eliminados
SELECT * FROM "aud_f_cat_eliminados"@ifmx;
/
commit;
/
INSERT INTO aud_lmun_conocimiento
SELECT * FROM "aud_lmun_conocimiento"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO tiro_totales
SELECT * FROM "tiro_totales"@ifmx;
/
commit;
/
INSERT INTO aud_tiro_totales
SELECT * FROM "aud_tiro_totales"@ifmx;
/
commit;
/
INSERT INTO tiro_equipos
SELECT * FROM "tiro_equipos"@ifmx;
/
commit;
/
INSERT INTO aud_tiro_equipos
SELECT * FROM "aud_tiro_equipos"@ifmx;
/
commit;
/
INSERT INTO tiro_resultados_equipo
SELECT * FROM "tiro_resultados_equipo"@ifmx;
/
commit;
/
INSERT INTO aud_tiro_resultados_equipo
SELECT * FROM "aud_tiro_resultados_equipo"@ifmx;
/
commit;
/
INSERT INTO con_boleta_dp
SELECT * FROM "con_boleta_dp"@ifmx;
/
commit;
/
INSERT INTO aud_con_boleta_dp
SELECT * FROM "aud_con_boleta_dp"@ifmx;
/
commit;
/
INSERT INTO emer_julia
SELECT * FROM "emer_julia"@ifmx;
/
commit;
/
INSERT INTO aud_emer_julia
SELECT * FROM "aud_emer_julia"@ifmx;
/
commit;
/
INSERT INTO pro_ord_gral
SELECT * FROM "pro_ord_gral"@ifmx;
/
commit;
/
INSERT INTO aud_pro_ord_gral
SELECT * FROM "aud_pro_ord_gral"@ifmx;
/
commit;
/
INSERT INTO per_plazas_orden
SELECT * FROM "per_plazas_orden"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_per_plazas_orden
SELECT * FROM "aud_per_plazas_orden"@ifmx;
/
commit;
/
INSERT INTO pro_ord_gral_h
SELECT * FROM "pro_ord_gral_h"@ifmx;
/
commit;
/
INSERT INTO aud_pro_ord_gral_h
SELECT * FROM "aud_pro_ord_gral_h"@ifmx;
/
commit;
/
INSERT INTO dfdes_vivibanco
SELECT * FROM "dfdes_vivibanco"@ifmx;
/
commit;
/
INSERT INTO aud_dfdes_vivibanco
SELECT * FROM "aud_dfdes_vivibanco"@ifmx;
/
commit;
/
INSERT INTO emer_lisa
SELECT * FROM "emer_lisa"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_emer_lisa
SELECT * FROM "aud_emer_lisa"@ifmx;
/
commit;
/
INSERT INTO aud_hisfin
SELECT * FROM "aud_hisfin"@ifmx;
/
commit;
/
INSERT INTO aud_tmper
SELECT * FROM "aud_tmper"@ifmx;
/
commit;
/
INSERT INTO aud_ep_mper
SELECT * FROM "aud_ep_mper"@ifmx;
/
commit;
/
INSERT INTO aud_vlh_tow
SELECT * FROM "aud_vlh_tow"@ifmx;
/
commit;
/
INSERT INTO aud_veteranos_comparacion
SELECT * FROM "aud_veteranos_comparacion"@ifmx;
/
commit;
/
INSERT INTO aud_n_mper
SELECT * FROM "aud_n_mper"@ifmx;
/
commit;
