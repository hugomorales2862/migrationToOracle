create table ADMIN.coc_personal2 
  (
    per_id number not null ,
    per_reporte number  default null,
    per_anio number not null ,
    per_dep number not null ,
    per_tipo number not null ,
    per_cantidad number not null 
  );
  /
  COMMIT;
/
alter table ADMIN.COC_PLANIFICAR modify PLA_REFERENCIA null;
/
COMMIT;
/
alter table ADMIN.COR_UBICACION_DOCUM modify UBI_DOC_REMITE null;
/
COMMIT;
/
alter table ADMIN.COR_UBICACION_DOCUM modify UBI_OBSERVACIONES null;
/
COMMIT;
/
alter table ADMIN.COR_DOCUMENTO modify DOC_REFERENCIA null;
/
COMMIT;
/
alter table ADMIN.COR_DOCUMENTO modify DOC_ASUNTO null;
/
COMMIT;
/
alter table ADMIN.COR_DOCUMENTO modify DOC_NOMBRE null;
/
COMMIT;
/
alter table ADMIN.COR_OFICINAS modify OF_DESCRIPCION null;
/
COMMIT;
/
alter table ADMIN.LMUN_SOLICITUD modify SOL_MSJ_SOLICITA null;
/
COMMIT;
/
alter table ADMIN.LMUN_CONOCIMIENTO modify CON_NUMERO_LIBRO null;
/
COMMIT;
/
alter table ADMIN.LMUN_CONOCIMIENTO modify CON_FOLIO_LIBRO null;
/
COMMIT;
/
alter table ADMIN.LMUN_CONOCIMIENTO modify CON_MENSAJE null;
/
COMMIT;
/
alter table ADMIN.LMUN_CONOCIMIENTO modify CON_CONOCIMIENTO_LIBRO null;
/
COMMIT;
/
alter table ADMIN.COR_CORR_SEG modify SEG_PASS null;
/
COMMIT;
/
alter table ADMIN.DOT_SOLICITUD modify SOL_OBSERVACIONES null;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_movimientos
SELECT * FROM "aud_lmun_movimientos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_asignacion
SELECT * FROM "aud_lmun_asignacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_cambio_sit
SELECT * FROM "aud_lmun_cambio_sit"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_trasint
SELECT * FROM "aud_lmun_trasint"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_det_conocimiento
SELECT * FROM "aud_lmun_det_conocimiento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_conoc_fab
SELECT * FROM "aud_lmun_conoc_fab"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmun_det_conoc_fab
SELECT * FROM "aud_lmun_det_conoc_fab"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.pcapa_det_solicitud
SELECT * FROM "pcapa_det_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_pcapa_det_solicitud
SELECT * FROM "aud_pcapa_det_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.pocur_solicitud
SELECT * FROM "pocur_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_pocur_solicitud
SELECT * FROM "aud_pocur_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.pdcapacitacion
SELECT * FROM "pdcapacitacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_pdcapacitacion
SELECT * FROM "aud_pdcapacitacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.ocur_det_solicitud
SELECT * FROM "ocur_det_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_ocur_det_solicitud
SELECT * FROM "aud_ocur_det_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.usuarios_sistema
SELECT * FROM "usuarios_sistema"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.luni_asignacion
SELECT * FROM "luni_asignacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_luni_asignacion
SELECT * FROM "aud_luni_asignacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_capacitaciones
SELECT * FROM "arco_capacitaciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_capacitaciones
SELECT * FROM "aud_arco_capacitaciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_cond
SELECT * FROM "arco_cond"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_cond
SELECT * FROM "aud_arco_cond"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_dcon
SELECT * FROM "arco_dcon"@ifmx;
/
COMMIT;
/
COMMIT;
/
COMMIT;

/
INSERT  INTO ADMIN.aud_arco_dcon
SELECT * FROM "aud_arco_dcon"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_dcur
SELECT * FROM "arco_dcur"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_dcur
SELECT * FROM "aud_arco_dcur"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_demeritos
SELECT * FROM "arco_demeritos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_demeritos
SELECT * FROM "aud_arco_demeritos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_erudiccion
SELECT * FROM "arco_erudiccion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_erudiccion
SELECT * FROM "aud_arco_erudiccion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_evads
SELECT * FROM "arco_evads"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_evads
SELECT * FROM "aud_arco_evads"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_grados
SELECT * FROM "arco_grados"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_grados
SELECT * FROM "aud_arco_grados"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_notas
SELECT * FROM "arco_notas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_notas
SELECT * FROM "aud_arco_notas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_obligatorio
SELECT * FROM "arco_obligatorio"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_obligatorio
SELECT * FROM "aud_arco_obligatorio"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_pafes
SELECT * FROM "arco_pafes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_pafes
SELECT * FROM "aud_arco_pafes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_ponderacion
SELECT * FROM "arco_ponderacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_ponderacion
SELECT * FROM "aud_arco_ponderacion"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_sanciones
SELECT * FROM "arco_sanciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_sanciones
SELECT * FROM "aud_arco_sanciones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_cursos
SELECT * FROM "arco_cursos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_cursos
SELECT * FROM "aud_arco_cursos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_jefes
SELECT * FROM "arco_jefes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_jefes
SELECT * FROM "aud_arco_jefes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.larm_solicitud
SELECT * FROM "larm_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_coordenadas
SELECT * FROM "coc_coordenadas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_coordenadas
SELECT * FROM "aud_coc_coordenadas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_mision
SELECT * FROM "coc_mision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_mision
SELECT * FROM "aud_coc_mision"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_personal
SELECT * FROM "coc_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_personal
SELECT * FROM "aud_coc_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_reporte
SELECT * FROM "coc_reporte"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_reporte
SELECT * FROM "aud_coc_reporte"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_tipo_veh
SELECT * FROM "coc_tipo_veh"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_tipo_veh
SELECT * FROM "aud_coc_tipo_veh"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_vehiculo_rep
SELECT * FROM "coc_vehiculo_rep"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_vehiculo_rep
SELECT * FROM "aud_coc_vehiculo_rep"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_fin_personal
SELECT * FROM "aud_fin_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.fin_personal
SELECT * FROM "fin_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_dman
SELECT * FROM "coc_dman"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_dman
SELECT * FROM "aud_coc_dman"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.fin_contrato
SELECT * FROM "fin_contrato"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_fin_contrato
SELECT * FROM "aud_fin_contrato"@ifmx;
/
COMMIT;
/
COMMIT;
/
COMMIT;
/
INSERT  INTO ADMIN.fin_escuadrones
SELECT * FROM "fin_escuadrones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_fin_escuadrones
SELECT * FROM "aud_fin_escuadrones"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cn
SELECT * FROM "cn"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cnb
SELECT * FROM "cnb"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cn
SELECT * FROM "aud_cn"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cnb
SELECT * FROM "aud_cnb"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cna
SELECT * FROM "aud_cna"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cns
SELECT * FROM "cns"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_usu_sistemas
SELECT * FROM "aud_usu_sistemas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dfam
SELECT * FROM "aud_dfam"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.prueba_dfam
SELECT * FROM "prueba_dfam"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.coc_planificar
SELECT * FROM "coc_planificar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_coc_planificar
SELECT * FROM "aud_coc_planificar"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.tauth
SELECT * FROM "tauth"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.usuarios
SELECT * FROM "usuarios"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.temp_fin_personal
SELECT * FROM "temp_fin_personal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_tipo_docum
SELECT * FROM "cor_tipo_docum"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_tipo_docum
SELECT * FROM "aud_cor_tipo_docum"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_proposito
SELECT * FROM "cor_proposito"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_proposito
SELECT * FROM "aud_cor_proposito"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_ubicacion_docum
SELECT * FROM "cor_ubicacion_docum"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_ubicacion_docum
SELECT * FROM "aud_cor_ubicacion_docum"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_documento
SELECT * FROM "cor_documento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_documento
SELECT * FROM "aud_cor_documento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_empresas
SELECT * FROM "cor_empresas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_empresas
SELECT * FROM "aud_cor_empresas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_oficinas
SELECT * FROM "cor_oficinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_oficinas
SELECT * FROM "aud_cor_oficinas"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_solicitud
SELECT * FROM "lmun_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_lote
SELECT * FROM "lmun_lote"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_detalle_solicitud
SELECT * FROM "lmun_detalle_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_lote_asig
SELECT * FROM "lmun_lote_asig"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_tipo
SELECT * FROM "lmun_tipo"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_calibre
SELECT * FROM "lmun_calibre"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_uso
SELECT * FROM "lmun_uso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_ent_sal
SELECT * FROM "lmun_ent_sal"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_lmarmas1
SELECT * FROM "aud_lmarmas1"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_egresos
SELECT * FROM "mag_egresos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_egresos
SELECT * FROM "aud_mag_egresos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_inventario
SELECT * FROM "mag_inventario"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_inventario
SELECT * FROM "aud_mag_inventario"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_insumos
SELECT * FROM "mag_insumos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_insumos
SELECT * FROM "aud_mag_insumos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_det_ingreso
SELECT * FROM "mag_det_ingreso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_det_ingreso
SELECT * FROM "aud_mag_det_ingreso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_det_egreso
SELECT * FROM "mag_det_egreso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_det_egreso
SELECT * FROM "aud_mag_det_egreso"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.mag_ingresos
SELECT * FROM "mag_ingresos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_mag_ingresos
SELECT * FROM "aud_mag_ingresos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_conocimiento
SELECT * FROM "lmun_conocimiento"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.usu_autocom
SELECT * FROM "usu_autocom"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.cor_corr_seg
SELECT * FROM "cor_corr_seg"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_cor_corr_seg
SELECT * FROM "aud_cor_corr_seg"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.lmun_asig_arm
SELECT * FROM "lmun_asig_arm"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_escalafon
SELECT * FROM "arco_escalafon"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_arco_escalafon
SELECT * FROM "aud_arco_escalafon"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_escalafonp
SELECT * FROM "arco_escalafonp"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_not_creditos
SELECT * FROM "arco_not_creditos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_escalafon1
SELECT * FROM "arco_escalafon1"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.tiempos
SELECT * FROM "tiempos"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.arco_pcomando
SELECT * FROM "arco_pcomando"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dot_uniformes
SELECT * FROM "dot_uniformes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dot_uniformes
SELECT * FROM "aud_dot_uniformes"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dot_solicitud
SELECT * FROM "dot_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dot_solicitud
SELECT * FROM "aud_dot_solicitud"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.dot_detalle
SELECT * FROM "dot_detalle"@ifmx;
/
COMMIT;
/
INSERT  INTO ADMIN.aud_dot_detalle
SELECT * FROM "aud_dot_detalle"@ifmx;
/
COMMIT;
