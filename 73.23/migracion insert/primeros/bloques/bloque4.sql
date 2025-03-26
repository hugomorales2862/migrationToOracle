INSERT INTO aud_temp_fin_personal
SELECT * FROM "aud_temp_fin_personal"@ifmx;
/
commit;
/
INSERT INTO aud_ipm_cart
SELECT * FROM "aud_ipm_cart"@ifmx;
/
commit;
/
INSERT INTO aud_ipm_dfam_temp
SELECT * FROM "aud_ipm_dfam_temp"@ifmx;
/
commit;
/
INSERT INTO aud_exp_solicitud
SELECT * FROM "aud_exp_solicitud"@ifmx;
/
commit;
/
INSERT INTO aud_exp_conocimiento
SELECT * FROM "aud_exp_conocimiento"@ifmx;
/
commit;
/
INSERT INTO aud_cgsifldd
SELECT * FROM "aud_cgsifldd"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_tdfdes
SELECT * FROM "aud_tdfdes"@ifmx;
/
commit;
/
INSERT INTO aud_psan_boleta_restore
SELECT * FROM "aud_psan_boleta_restore"@ifmx;
/
commit;
/
INSERT INTO aud_stxparmd
SELECT * FROM "aud_stxparmd"@ifmx;
/
commit;
/
INSERT INTO aud_com_ent_sal2
SELECT * FROM "aud_com_ent_sal2"@ifmx;
/
commit;
/
INSERT INTO slc_matrimonio
SELECT * FROM "slc_matrimonio"@ifmx;
/
commit;
/
INSERT INTO aud_slc_matrimonio
SELECT * FROM "aud_slc_matrimonio"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO slc_mb
SELECT * FROM "slc_mb"@ifmx;
/
commit;
/
INSERT INTO slc_cmv
SELECT * FROM "slc_cmv"@ifmx;
/
commit;
/
INSERT INTO aud_slc_cmv
SELECT * FROM "aud_slc_cmv"@ifmx;
/
commit;
/
INSERT INTO slc_autorizado
SELECT * FROM "slc_autorizado"@ifmx;
/
commit;
/
INSERT INTO slc_licencia_temporal
SELECT * FROM "slc_licencia_temporal"@ifmx;
/
commit;
/
INSERT INTO aud_slc_licencia_temporal
SELECT * FROM "aud_slc_licencia_temporal"@ifmx;
/
commit;
/
INSERT INTO slc_protocolo
SELECT * FROM "slc_protocolo"@ifmx;
/
commit;
/
INSERT INTO aud_slc_autorizado
SELECT * FROM "aud_slc_autorizado"@ifmx;
/
commit;
/
INSERT INTO aud_slc_protocolo
SELECT * FROM "aud_slc_protocolo"@ifmx;
/
commit;
/
INSERT INTO aud_slc_mb
SELECT * FROM "aud_slc_mb"@ifmx;
/
commit;
/
INSERT INTO aud_slc_dsal_fechas
SELECT * FROM "aud_slc_dsal_fechas"@ifmx;
/
commit;
/
INSERT INTO slc_sal_pais
SELECT * FROM "slc_sal_pais"@ifmx;
/
commit;
/
INSERT INTO aud_slc_sal_pais
SELECT * FROM "aud_slc_sal_pais"@ifmx;
/
commit;
/
INSERT INTO slc_dsal_fechas
SELECT * FROM "slc_dsal_fechas"@ifmx;
/
commit;
-- /
-- INSERT INTO seg_aspirantes
-- SELECT * FROM "seg_aspirantes"@ifmx;
/
commit;
--- no tiene datos 
/
INSERT INTO seg_evaluacion
SELECT * FROM "seg_evaluacion"@ifmx;
/
commit;
/
INSERT INTO seg_examen
SELECT * FROM "seg_examen"@ifmx;
/
commit;
/
INSERT INTO seg_genero
SELECT * FROM "seg_genero"@ifmx;
/
commit;
/
INSERT INTO seg_nacionalidad
SELECT * FROM "seg_nacionalidad"@ifmx;
/
commit;
/
INSERT INTO seg_preguntas
SELECT * FROM "seg_preguntas"@ifmx;
/
commit;
/
INSERT INTO seg_respuestas
SELECT * FROM "seg_respuestas"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO seg_respuesta_correcta
SELECT * FROM "seg_respuesta_correcta"@ifmx;
/
commit;
/
INSERT INTO seg_subtemas
SELECT * FROM "seg_subtemas"@ifmx;
/
commit;
/
INSERT INTO seg_temas
SELECT * FROM "seg_temas"@ifmx;
/
commit;
/
INSERT INTO usuarios_prueba
SELECT * FROM "usuarios_prueba"@ifmx;
/
commit;
/
INSERT INTO ciber_temas
SELECT * FROM "ciber_temas"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_ciber_temas
SELECT * FROM "aud_ciber_temas"@ifmx;
/
commit;
/
INSERT INTO ciber_subtemas
SELECT * FROM "ciber_subtemas"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_subtemas
SELECT * FROM "aud_ciber_subtemas"@ifmx;
/
commit;
/
INSERT INTO ciber_preguntas
SELECT * FROM "ciber_preguntas"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_preguntas
SELECT * FROM "aud_ciber_preguntas"@ifmx;
/
commit;
/
INSERT INTO ciber_respuestas
SELECT * FROM "ciber_respuestas"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_respuestas
SELECT * FROM "aud_ciber_respuestas"@ifmx;
/
commit;
/
INSERT INTO ciber_evaluaciones
SELECT * FROM "ciber_evaluaciones"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_evaluaciones
SELECT * FROM "aud_ciber_evaluaciones"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO ciber_detalle_evaluaciones
SELECT * FROM "ciber_detalle_evaluaciones"@ifmx;
/
commit;
/
INSERT INTO aud_ciber_detalle_evaluaciones
SELECT * FROM "aud_ciber_detalle_evaluaciones"@ifmx;
/
commit;
/
INSERT INTO ciber_usuarios
SELECT * FROM "ciber_usuarios"@ifmx;
/
commit;
/
commit;
/
commit;
INSERT INTO aud_ciber_usuarios
SELECT * FROM "aud_ciber_usuarios"@ifmx;
/
commit;
-- /
-- INSERT INTO pruebas_tiempo
-- SELECT * FROM "pruebas_tiempo"@ifmx;
/
commit;
-- no se incluyo porque no tiene datos 
/
INSERT INTO smm_banda
SELECT * FROM "smm_banda"@ifmx;
/
commit;
/
INSERT INTO aud_smm_banda
SELECT * FROM "aud_smm_banda"@ifmx;
/
commit;
/
INSERT INTO smm_actividad
SELECT * FROM "smm_actividad"@ifmx;
/
commit;
/
INSERT INTO aud_smm_actividad
SELECT * FROM "aud_smm_actividad"@ifmx;
/
commit;
/
INSERT INTO opaf_carrera1
SELECT * FROM "opaf_carrera1"@ifmx;
/
commit;
/
INSERT INTO aud_opaf_carrera1
SELECT * FROM "aud_opaf_carrera1"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO smm_reporte
SELECT * FROM "smm_reporte"@ifmx;
/
commit;
/
INSERT INTO aud_smm_reporte
SELECT * FROM "aud_smm_reporte"@ifmx;
/
commit;
/
INSERT INTO esip_fuente_financiamiento
SELECT * FROM "esip_fuente_financiamiento"@ifmx;
/
commit;
/
INSERT INTO aud_esip_fuente_financiamiento
SELECT * FROM "aud_esip_fuente_financiamiento"@ifmx;
/
commit;
/
INSERT INTO esip_grupo_gasto
SELECT * FROM "esip_grupo_gasto"@ifmx;
/
commit;
/
INSERT INTO aud_esip_grupo_gasto
SELECT * FROM "aud_esip_grupo_gasto"@ifmx;
/
commit;
/
INSERT INTO esip_planes_basicos
SELECT * FROM "esip_planes_basicos"@ifmx;
/
commit;
/
INSERT INTO aud_esip_planes_basicos
SELECT * FROM "aud_esip_planes_basicos"@ifmx;
/
commit;
/
INSERT INTO esip_paquetes_logisticos
SELECT * FROM "esip_paquetes_logisticos"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_esip_paquetes_logisticos
SELECT * FROM "aud_esip_paquetes_logisticos"@ifmx;
/
commit;
/
INSERT INTO esip_unidad_medida
SELECT * FROM "esip_unidad_medida"@ifmx;
/
commit;
/
INSERT INTO aud_esip_unidad_medida
SELECT * FROM "aud_esip_unidad_medida"@ifmx;
/
commit;
/
INSERT INTO esip_renglon_presupuestario
SELECT * FROM "esip_renglon_presupuestario"@ifmx;
/
commit;
/
INSERT INTO aud_esip_renglon_presupuestario
SELECT * FROM "aud_esip_renglon_presupuestario"@ifmx;
/
commit;
/
INSERT INTO esip_matriz_presupuestaria
SELECT * FROM "esip_matriz_presupuestaria"@ifmx;
/
commit;
/
INSERT INTO aud_esip_matriz_presupuestaria
SELECT * FROM "aud_esip_matriz_presupuestaria"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO aud_capta_documentos
SELECT * FROM "aud_capta_documentos"@ifmx;
/
commit;
/
INSERT INTO aud_capta_evaluaciones
SELECT * FROM "aud_capta_evaluaciones"@ifmx;
/
commit;
/
INSERT INTO capta_evaluados
SELECT * FROM "capta_evaluados"@ifmx;
/
commit;
/
INSERT INTO aud_capta_evaluados
SELECT * FROM "aud_capta_evaluados"@ifmx;
/
commit;
/
INSERT INTO aud_capta_tipoeva
SELECT * FROM "aud_capta_tipoeva"@ifmx;
/
commit;
/
INSERT INTO aud_capta_feriados
SELECT * FROM "aud_capta_feriados"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO capta_documentos
SELECT * FROM "capta_documentos"@ifmx;
/
commit;
/
INSERT INTO capta_evaluaciones
SELECT * FROM "capta_evaluaciones"@ifmx;
/
commit;
/
INSERT INTO capta_tipoeva
SELECT * FROM "capta_tipoeva"@ifmx;
/
commit;
/
INSERT INTO capta_feriados
SELECT * FROM "capta_feriados"@ifmx;
/
commit;
/
INSERT INTO aud_asig_requisitos
SELECT * FROM "aud_asig_requisitos"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO asig_requisitos
SELECT * FROM "asig_requisitos"@ifmx;
/
commit;
/
INSERT INTO capta_ingresos
SELECT * FROM "capta_ingresos"@ifmx;
/
commit;
/
INSERT INTO aud_capta_ingresos
SELECT * FROM "aud_capta_ingresos"@ifmx;
/
commit;
/
INSERT INTO tri_eventos
SELECT * FROM "tri_eventos"@ifmx;
/
commit;
/
INSERT INTO aud_tri_eventos
SELECT * FROM "aud_tri_eventos"@ifmx;
/
commit;
/
INSERT INTO tri_etapas
SELECT * FROM "tri_etapas"@ifmx;
/
commit;
/
INSERT INTO aud_tri_etapas
SELECT * FROM "aud_tri_etapas"@ifmx;
/
commit;
/
commit;
/
commit;
/
INSERT INTO tri_detalle
SELECT * FROM "tri_detalle"@ifmx;
/
commit;
/
INSERT INTO aud_tri_detalle
SELECT * FROM "aud_tri_detalle"@ifmx;
/
commit;
/
INSERT INTO tri_participantes
SELECT * FROM "tri_participantes"@ifmx;
/
commit;
/
INSERT INTO aud_tri_participantes
SELECT * FROM "aud_tri_participantes"@ifmx;
/
commit;
/
INSERT INTO tri_puntaje (id, participante, etapa, punteo, tiempo, situacion)
SELECT "id", "participante", "etapa", "punteo", 
      NUMTODSINTERVAL (EXTRACT(HOUR FROM "tiempo") * 3600 + 
       EXTRACT(MINUTE FROM "tiempo") * 60 + 
       EXTRACT(SECOND FROM "tiempo"), 'SECOND'), 
       "situacion"
FROM "tri_puntaje"@ifmx;
/
commit;
/
INSERT INTO aud_tri_puntaje (id, participante, etapa, punteo, tiempo, situacion,
desp_id, desp_participante, desp_etapa, desp_punteo, desp_tiempo, desp_situacion, accion, usuario, hora)
SELECT "id", "participante", "etapa", "punteo", 
      NUMTODSINTERVAL (EXTRACT(HOUR FROM "tiempo") * 3600 + 
       EXTRACT(MINUTE FROM "tiempo") * 60 + 
       EXTRACT(SECOND FROM "tiempo"), 'SECOND'), 
       "situacion",
       "desp_id", "desp_participante", "desp_etapa", "desp_punteo", 
      NUMTODSINTERVAL (EXTRACT(HOUR FROM "desp_tiempo") * 3600 + 
       EXTRACT(MINUTE FROM "desp_tiempo") * 60 + 
       EXTRACT(SECOND FROM "desp_tiempo"), 'SECOND'), 
       "desp_situacion",
       "accion","usuario","hora"
FROM "aud_tri_puntaje"@ifmx;
/
commit;
/
INSERT INTO resp_perm_220323
SELECT * FROM "resp_perm_220323"@ifmx;
/
commit;
/
INSERT INTO coc_instituciones
SELECT * FROM "coc_instituciones"@ifmx;
/
commit;


