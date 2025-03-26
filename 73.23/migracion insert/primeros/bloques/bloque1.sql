INSERT INTO gpl_presidencial
SELECT * FROM "gpl_presidencial"@ifmx;
/
commit;
/
INSERT INTO test_table
SELECT * FROM "test_table"@ifmx;
/
commit;  
/
INSERT INTO cumple_jefes
SELECT * FROM "cumple_jefes"@ifmx;
/
commit;
/  
INSERT INTO aud_cumple_jefes
SELECT * FROM "aud_cumple_jefes"@ifmx;
/
commit; 
/
INSERT INTO coc_ope_planificada
SELECT * FROM "coc_ope_planificada"@ifmx;
/
commit;  
/
INSERT INTO aud_opaf_notas19
SELECT * FROM "aud_opaf_notas19"@ifmx;
/
commit; 
/
INSERT INTO acc_correctiva
SELECT * FROM "acc_correctiva"@ifmx;
/
commit;
/ 
-- INSERT INTO inmate
-- SELECT * FROM "inmate"@ifmx;
/
commit; 
-- /
INSERT INTO aud_lmun_ent_sal
SELECT * FROM "aud_lmun_ent_sal"@ifmx;
/
commit; 

INSERT INTO toerenglon0
SELECT * FROM "toerenglon0"@ifmx;
/
commit; 
/
INSERT INTO sig_agregados
SELECT * FROM "sig_agregados"@ifmx;
/
commit; 
/
INSERT INTO sig_destinos
SELECT * FROM "sig_destinos"@ifmx;
/
commit; 
/
INSERT INTO sig_unidades
SELECT * FROM "sig_unidades"@ifmx;
/
commit;
/ 
INSERT INTO sig_companias
SELECT * FROM "sig_companias"@ifmx;
/
commit; 
/
INSERT INTO sig_comisiones
SELECT * FROM "sig_comisiones"@ifmx;
/
commit; 
/
INSERT INTO sig_com_asig
SELECT * FROM "sig_com_asig"@ifmx;
/
commit;

INSERT INTO sig_fuerza
SELECT * FROM "sig_fuerza"@ifmx;
/
commit; 
/
INSERT INTO sig_asig_companias
SELECT * FROM "sig_asig_companias"@ifmx;
/
commit; 
/
INSERT INTO sig_marcas
SELECT * FROM "sig_marcas"@ifmx;
/
commit; 
/
INSERT INTO sig_soporteotr
SELECT * FROM "sig_soporteotr"@ifmx;
/
commit; 
/
INSERT INTO sig_soporteimp
SELECT * FROM "sig_soporteimp"@ifmx;
/
commit;
/
INSERT INTO sig_soportecpu
SELECT * FROM "sig_soportecpu"@ifmx;
/
commit;
/
INSERT INTO sig_soportemon
SELECT * FROM "sig_soportemon"@ifmx;
/
commit;
/
INSERT INTO sig_novedades
SELECT * FROM "sig_novedades"@ifmx;
/
commit;
/
INSERT INTO sig_jefes_servicio
SELECT * FROM "sig_jefes_servicio"@ifmx;
/
commit;
/
INSERT INTO aud_sig_fuerza
SELECT * FROM "aud_sig_fuerza"@ifmx;
/
commit;
/
INSERT INTO aud_sig_agregados
SELECT * FROM "aud_sig_agregados"@ifmx;
/
commit;
/
INSERT INTO aud_sig_destinos
SELECT * FROM "aud_sig_destinos"@ifmx;
/
commit;
/
INSERT INTO aud_sig_unidades
SELECT * FROM "aud_sig_unidades"@ifmx;
/
commit;
/
INSERT INTO aud_sig_companias
SELECT * FROM "aud_sig_companias"@ifmx;
/
commit;
/
INSERT INTO aud_sig_asig_companias
SELECT * FROM "aud_sig_asig_companias"@ifmx;
/
commit;
/
INSERT INTO aud_sig_com_asig
SELECT * FROM "aud_sig_com_asig"@ifmx;
/
commit;
/
INSERT INTO aud_sig_comisiones
SELECT * FROM "aud_sig_comisiones"@ifmx;
/
commit;
/
INSERT INTO sig_personal_contrato
SELECT * FROM "sig_personal_contrato"@ifmx;
/
commit;
/
INSERT INTO aud_sig_personal_contrato
SELECT * FROM "aud_sig_personal_contrato"@ifmx;
/
commit;
/
INSERT INTO aud_sig_marcas
SELECT * FROM "aud_sig_marcas"@ifmx;
/
commit;
/
INSERT INTO aud_sig_novedades
SELECT * FROM "aud_sig_novedades"@ifmx;
/
commit;
/
INSERT INTO aud_sig_jefes_servicio
SELECT * FROM "aud_sig_jefes_servicio"@ifmx;
/
commit;
/
INSERT INTO aud_sig_soportecpu
SELECT * FROM "aud_sig_soportecpu"@ifmx;
/
commit;
/
INSERT INTO aud_sig_soportemon
SELECT * FROM "aud_sig_soportemon"@ifmx;
/
commit;
/
INSERT INTO aud_sig_soporteimp
SELECT * FROM "aud_sig_soporteimp"@ifmx;
/
commit;
/
INSERT INTO aud_sig_soporteotr
SELECT * FROM "aud_sig_soporteotr"@ifmx;
/
commit;
/
INSERT INTO smg_tipos_mantenimiento
SELECT * FROM "smg_tipos_mantenimiento"@ifmx;
/
commit;
/
INSERT INTO smg_motivos
SELECT * FROM "smg_motivos"@ifmx;
/
commit;
/
INSERT INTO smg_historial_mantenimiento
SELECT * FROM "smg_historial_mantenimiento"@ifmx;
/
commit;
/
INSERT INTO smg_historial_disparos
SELECT * FROM "smg_historial_disparos"@ifmx;
/
commit;
/
INSERT INTO aud_smg_motivos
SELECT * FROM "aud_smg_motivos"@ifmx;
/
commit;
/
INSERT INTO aud_smg_tipos_mantenimiento
SELECT * FROM "aud_smg_tipos_mantenimiento"@ifmx;
/
commit;
/
INSERT INTO aud_smg_historial_disparos
SELECT * FROM "aud_smg_historial_disparos"@ifmx;
/
commit;
/
INSERT INTO aud_smg_historial_mantenimiento
SELECT * FROM "aud_smg_historial_mantenimiento"@ifmx;
/
commit;
/
INSERT INTO aud_sig_soporteimp
SELECT * FROM "aud_sig_soporteimp"@ifmx
/
commit;
/
commit;
/
INSERT INTO aud_farma_dependencias_asignadas
SELECT * FROM "aud_farma_dependencias_asignadas"@ifmx;
/
commit;
/
INSERT INTO aud_farma_orden_compra
SELECT * FROM "aud_farma_orden_compra"@ifmx;
/
commit;
/
INSERT INTO aud_farma_compra_asignada
SELECT * FROM "aud_farma_compra_asignada"@ifmx;
/
commit;
/
INSERT INTO aud_farma_presentacion_asignada
SELECT * FROM "aud_farma_presentacion_asignada"@ifmx;
/
commit;
/
INSERT INTO far_contrato
SELECT * FROM "far_contrato"@ifmx;
/
commit;
/
INSERT INTO far_proveedor
SELECT * FROM "far_proveedor"@ifmx;
/
commit;
/
INSERT INTO farma_presentaciones
SELECT * FROM "farma_presentaciones"@ifmx;
/
commit;
/
INSERT INTO farma_unidades_medida
SELECT * FROM "farma_unidades_medida"@ifmx;
/
commit;
/
INSERT INTO farma_tipo_medicamentos
SELECT * FROM "farma_tipo_medicamentos"@ifmx;
/
commit;
/
INSERT INTO farma_renglones_presupuestarios
SELECT * FROM "farma_renglones_presupuestarios"@ifmx;
/
commit;
/
INSERT INTO farma_facturacion
SELECT * FROM "farma_facturacion"@ifmx;
/
commit;
/
INSERT INTO farma_orden_compra
SELECT * FROM "farma_orden_compra"@ifmx;
/
commit;
/
INSERT INTO farma_compra_asignada
SELECT * FROM "farma_compra_asignada"@ifmx;
/
commit;
/
INSERT INTO farma_presentacion_asignada
SELECT * FROM "farma_presentacion_asignada"@ifmx;
/
commit;
/
INSERT INTO res_situacion
SELECT * FROM "res_situacion"@ifmx;
/
commit;
/
INSERT INTO aud_res_situacion
SELECT * FROM "aud_res_situacion"@ifmx;
/
commit;
/
INSERT INTO res_tipo
SELECT * FROM "res_tipo"@ifmx;
/
commit;
/
INSERT INTO aud_res_tipo
SELECT * FROM "aud_res_tipo"@ifmx;
/
commit;
/
INSERT INTO mprof
SELECT * FROM "mprof"@ifmx;
/
commit;
/
INSERT INTO aud_mprof
SELECT * FROM "aud_mprof"@ifmx;
/
commit;
/
INSERT INTO personalc
SELECT * FROM "personalc"@ifmx;
/
commit;
/
INSERT INTO res_fam
SELECT * FROM "res_fam"@ifmx;
/
commit;
/
INSERT INTO res_mdep
SELECT * FROM "res_mdep"@ifmx;
/
commit;
/
INSERT INTO res_reservas
SELECT * FROM "res_reservas"@ifmx;
/
commit;
/
INSERT INTO res_asig_per
SELECT * FROM "res_asig_per"@ifmx;
/
commit;
/
INSERT INTO ddhh_gest
SELECT * FROM "ddhh_gest"@ifmx;
/
commit;
/
INSERT INTO ddhh_gest_cont
SELECT * FROM "ddhh_gest_cont"@ifmx;
/
commit;
/
INSERT INTO aud_personalc
SELECT * FROM "aud_personalc"@ifmx;
/
commit;
/
INSERT INTO aud_res_fam
SELECT * FROM "aud_res_fam"@ifmx;
/
commit;
/
INSERT INTO aud_res_reservas
SELECT * FROM "aud_res_reservas"@ifmx;
/
commit;
/
INSERT INTO aud_res_asig_per
SELECT * FROM "aud_res_asig_per"@ifmx;
/
commit;
/
INSERT INTO aud_res_mdep
SELECT * FROM "aud_res_mdep"@ifmx;
/
commit;
/
INSERT INTO aud_ddhh_gest
SELECT * FROM "aud_ddhh_gest"@ifmx;
/
commit;
/
INSERT INTO aud_ddhh_gest_cont
SELECT * FROM "aud_ddhh_gest_cont"@ifmx;
/
commit;
/
INSERT INTO prueba
SELECT * FROM "prueba"@ifmx;
/
commit;
/
INSERT INTO re22_areas
SELECT * FROM "re22_areas"@ifmx;
/
commit;
/
INSERT INTO re22_bancos
SELECT * FROM "re22_bancos"@ifmx;
/
commit;
/
INSERT INTO re22_bono_escolar
SELECT * FROM "re22_bono_escolar"@ifmx;
/
commit;
/
INSERT INTO re22_bono_vacacional
SELECT * FROM "re22_bono_vacacional"@ifmx;
/
commit;
/
INSERT INTO re22_tipos_descuentos
SELECT * FROM "re22_tipos_descuentos"@ifmx;
/
commit;
/
INSERT INTO re22_ocupaciones
SELECT * FROM "re22_ocupaciones"@ifmx;
/
commit;
/
INSERT INTO re22_unidades_ejecutoras
SELECT * FROM "re22_unidades_ejecutoras"@ifmx;
/
commit;
/
INSERT INTO re22_puestos
SELECT * FROM "re22_puestos"@ifmx;
/
commit;
/
INSERT INTO re22_obras
SELECT * FROM "re22_obras"@ifmx;
/
commit;
/
INSERT INTO dot_entrega
SELECT * FROM "dot_entrega"@ifmx;
/
commit;
/
INSERT INTO re22_subareas
SELECT * FROM "re22_subareas"@ifmx;
/
commit;
/
INSERT INTO re22_asignaciones
SELECT * FROM "re22_asignaciones"@ifmx;
/
commit;
/
INSERT INTO re22_control_pagos_isr
SELECT * FROM "re22_control_pagos_isr"@ifmx;
/
commit;
/
INSERT INTO re22_fianzas
SELECT * FROM "re22_fianzas"@ifmx;
/
commit;
/
INSERT INTO re22_obras_bono
SELECT * FROM "re22_obras_bono"@ifmx;
/
commit;



