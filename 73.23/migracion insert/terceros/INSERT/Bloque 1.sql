
alter table AUD_CMM_REBAJADOS modify DESP_REB_DIAGNOSTICO varchar2(250);
/
commit;
/
alter table AUD_CMM_REBAJADOS modify REB_DIAGNOSTICO varchar2(250);
/
commit;
/
INSERT  INTO hist_rep
SELECT * FROM "hist_rep"@ifmx;
/
commit;
/
INSERT  INTO agui
SELECT * FROM "agui"@ifmx;
/
commit;
/
ALTER TABLE ADMIN.dfam DROP CONSTRAINT CK_FAM_CED_ORD;
/
commit;
/
ALTER TABLE ADMIN.dfam 
ADD CONSTRAINT CK_FAM_CED_ORD 
CHECK (fam_ced_ord IN 
('A-1', 'B-2', 'C-3', 'D-4', 'E-5', 'F-6', 'G-7', 'H-8', 'I-9', 'J-10',
 'K-11', 'L-12', 'M-13', 'N-14', 'Ñ-15', 'O-16', 'P-17', 'Q-18', '&-15', 'R-19', 
 'S-20', 'T-21', 'U-22', 'P-99', '¥-1', 'Ñ-1'));
 /
 commit;
/
commit;
/
commit;
/
alter table co_mper drop constraint ck_per_ced_ord;
/
commit;
/
 alter table co_mper add constraint ck_per_ced_ord check (per_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,
      'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'�-15' ,'O-16' ,
      'P-17' ,'Q-18' ,'&-15' ,'�-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99','Ñ-1' ));
      /
      commit;
 /
 commit;
 /
 commit;
/
INSERT  INTO dfam
SELECT * FROM "dfam"@ifmx;
/
commit;
/
INSERT  INTO maestro
SELECT * FROM "maestro"@ifmx;
/
commit;
/
INSERT  INTO aud_ubica_cerra
SELECT * FROM "aud_ubica_cerra"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO dfdes_ipm
SELECT * FROM "dfdes_ipm"@ifmx;
/
commit;
/
INSERT  INTO resutro
SELECT * FROM "resutro"@ifmx;
/
commit;
/
INSERT  INTO tsan
SELECT * FROM "tsan"@ifmx;
/
commit;
/
INSERT  INTO mdep
SELECT * FROM "mdep"@ifmx;
/
commit;
/
INSERT  INTO aud_permorga
SELECT * FROM "aud_permorga"@ifmx;
/
commit;
/
INSERT  INTO documento
SELECT * FROM "documento"@ifmx;
/
commit;
/
INSERT  INTO bono14
SELECT * FROM "bono14"@ifmx;
/
commit;
/
INSERT  INTO aud_doc_pendientes
SELECT * FROM "aud_doc_pendientes"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO aud_mftror
SELECT * FROM "aud_mftror"@ifmx;
/
commit;
/
INSERT  INTO aud_meomeop
SELECT * FROM "aud_meomeop"@ifmx;
/
commit;
/
INSERT  INTO aud_tropabajas
SELECT * FROM "aud_tropabajas"@ifmx;
/
commit;
/
INSERT  INTO marginado
SELECT * FROM "marginado"@ifmx;
/
commit;
/
INSERT  INTO doc_cerrados
SELECT * FROM "doc_cerrados"@ifmx;
/
commit;
/
INSERT  INTO aud_doc_cerrados
SELECT * FROM "aud_doc_cerrados"@ifmx;
/
commit;
/
INSERT  INTO aud_dcur
SELECT * FROM "aud_dcur"@ifmx;
/
commit;
/
INSERT  INTO mlins
SELECT * FROM "mlins"@ifmx;
/
commit;
/
INSERT  INTO situaciones
SELECT * FROM "situaciones"@ifmx;
/
commit;
/
INSERT  INTO tempdpue
SELECT * FROM "tempdpue"@ifmx;
/
commit;
/
INSERT  INTO usuariosnt
SELECT * FROM "usuariosnt"@ifmx;
/
commit;
/
INSERT  INTO aud_dpue
SELECT * FROM "aud_dpue"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO permorden
SELECT * FROM "permorden"@ifmx;
/
commit;
/
INSERT  INTO cla_cond
SELECT * FROM "cla_cond"@ifmx;
/
commit;
/
INSERT  INTO lsm_marca
SELECT * FROM "lsm_marca"@ifmx;
/
commit;
/
INSERT  INTO lsm_equipo
SELECT * FROM "lsm_equipo"@ifmx;
/
commit;
/
INSERT  INTO menu_det
SELECT * FROM "menu_det"@ifmx;
/
commit;
/
INSERT  INTO orden
SELECT * FROM "orden"@ifmx;
/
commit;
/
INSERT  INTO orden_h
SELECT * FROM "orden_h"@ifmx;
/
commit;
/
INSERT  INTO sitrasla
SELECT * FROM "sitrasla"@ifmx;
/
commit;
/
INSERT  INTO hfdes1
SELECT * FROM "hfdes1"@ifmx;
/
commit;
/
INSERT  INTO hfasigc
SELECT * FROM "hfasigc"@ifmx;
/
commit;
/
INSERT  INTO dlicen
SELECT * FROM "dlicen"@ifmx;
/
commit;
/
INSERT  INTO tusuar
SELECT * FROM "tusuar"@ifmx;
/
commit;
/
INSERT  INTO indice_dau
SELECT * FROM "indice_dau"@ifmx;
/
commit;
/
INSERT  INTO eva_detalle
SELECT * FROM "eva_detalle"@ifmx;
/
commit;
/
INSERT  INTO accesos
SELECT * FROM "accesos"@ifmx;
/
commit;
/
INSERT  INTO rh_evaluacion
SELECT * FROM "rh_evaluacion"@ifmx;
/
commit;
/
INSERT  INTO rh_aspecto
SELECT * FROM "rh_aspecto"@ifmx;
/
commit;
/
INSERT  INTO rh_tipo_aspecto
SELECT * FROM "rh_tipo_aspecto"@ifmx;
/
commit;
/
INSERT  INTO rh_categoria
SELECT * FROM "rh_categoria"@ifmx;
/
commit;
/
INSERT  INTO rh_det_evaluacion
SELECT * FROM "rh_det_evaluacion"@ifmx;
/
commit;
/
INSERT  INTO aud_asamblea
SELECT * FROM "aud_asamblea"@ifmx;
/
commit;
/
INSERT  INTO aud_asig_cat
SELECT * FROM "aud_asig_cat"@ifmx;
/
commit;
/
INSERT  INTO aud_asig_plaza
SELECT * FROM "aud_asig_plaza"@ifmx;
/
commit;
/
INSERT  INTO aud_categorias
SELECT * FROM "aud_categorias"@ifmx;
/
commit;
/
INSERT  INTO aud_cmm_rebajados
SELECT * FROM "aud_cmm_rebajados"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO aud_depmun
SELECT * FROM "aud_depmun"@ifmx;
/
commit;
/
INSERT  INTO aud_des_no_efec
SELECT * FROM "aud_des_no_efec"@ifmx;
/
commit;
/
INSERT  INTO aud_descripciones
SELECT * FROM "aud_descripciones"@ifmx;
/
commit;
/
INSERT  INTO aud_eva_detalle
SELECT * FROM "aud_eva_detalle"@ifmx;
/
commit;
/
INSERT  INTO aud_disr
SELECT * FROM "aud_disr"@ifmx;
/
commit;
/
INSERT  INTO insp_tipos
SELECT * FROM "insp_tipos"@ifmx;
/
commit;
/
INSERT  INTO insp_situacion
SELECT * FROM "insp_situacion"@ifmx;
/
commit;
/
INSERT  INTO insp_nueva
SELECT * FROM "insp_nueva"@ifmx;
/
commit;
/
INSERT  INTO insp_ianota
SELECT * FROM "insp_ianota"@ifmx;
/
commit;
/
INSERT  INTO insp_estado
SELECT * FROM "insp_estado"@ifmx;
/
commit;
/
INSERT  INTO insp_anotaciones
SELECT * FROM "insp_anotaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_nueva
SELECT * FROM "aud_insp_nueva"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_situacion
SELECT * FROM "aud_insp_situacion"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_estado
SELECT * FROM "aud_insp_estado"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_tipos
SELECT * FROM "aud_insp_tipos"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_anotaciones
SELECT * FROM "aud_insp_anotaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_ianota
SELECT * FROM "aud_insp_ianota"@ifmx;
/
commit;
/
INSERT  INTO cc_tip_requerimiento
SELECT * FROM "cc_tip_requerimiento"@ifmx;
/
commit;
/
INSERT  INTO cc_divisiones
SELECT * FROM "cc_divisiones"@ifmx;
/
commit;
/
INSERT  INTO cc_situaciones
SELECT * FROM "cc_situaciones"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO cc_problemas
SELECT * FROM "cc_problemas"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_divisiones
SELECT * FROM "aud_cc_divisiones"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_problemas
SELECT * FROM "aud_cc_problemas"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_situaciones
SELECT * FROM "aud_cc_situaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_tip_requerimiento
SELECT * FROM "aud_cc_tip_requerimiento"@ifmx;
/
commit;
/
INSERT  INTO aud_dfdes_inv
SELECT * FROM "aud_dfdes_inv"@ifmx;
/
commit;
/
INSERT  INTO aud_dfdes_invt
SELECT * FROM "aud_dfdes_invt"@ifmx;
/
commit;
/
INSERT  INTO aud_dfdes_ipm
SELECT * FROM "aud_dfdes_ipm"@ifmx;
/
commit;
/
INSERT  INTO insp_inmuebles
SELECT * FROM "insp_inmuebles"@ifmx;
/
commit;
/
INSERT  INTO aud_accesos
SELECT * FROM "aud_accesos"@ifmx;
/
commit;
/
INSERT  INTO aud_chunk
SELECT * FROM "aud_chunk"@ifmx;
/
commit;
/
INSERT  INTO aud_cla_cond
SELECT * FROM "aud_cla_cond"@ifmx;
/
commit;
/
INSERT  INTO aud_empresas
SELECT * FROM "aud_empresas"@ifmx;
/
commit;
/
INSERT  INTO aud_fbitacora
SELECT * FROM "aud_fbitacora"@ifmx;
/
commit;
/
INSERT  INTO aud_fmasi
SELECT * FROM "aud_fmasi"@ifmx;
/
commit;
/
INSERT  INTO aud_fmdes
SELECT * FROM "aud_fmdes"@ifmx;
/
commit;
/
INSERT  INTO aud_fnosalta
SELECT * FROM "aud_fnosalta"@ifmx;
/
commit;
/
INSERT  INTO aud_fuerza
SELECT * FROM "aud_fuerza"@ifmx;
/
commit;
/
INSERT  INTO aud_hdareal
SELECT * FROM "aud_hdareal"@ifmx;
/
commit;
/
INSERT  INTO aud_hist_rep
SELECT * FROM "aud_hist_rep"@ifmx;
/
commit;
/
INSERT  INTO aud_indice_dau
SELECT * FROM "aud_indice_dau"@ifmx;
/
commit;
/
INSERT  INTO insp_observaciones
SELECT * FROM "insp_observaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_observaciones
SELECT * FROM "aud_insp_observaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_lsm_equipo
SELECT * FROM "aud_lsm_equipo"@ifmx;
/
commit;
/
INSERT  INTO aud_lsm_marca
SELECT * FROM "aud_lsm_marca"@ifmx;
/
commit;
/
INSERT  INTO aud_maestro
SELECT * FROM "aud_maestro"@ifmx;
/
commit;
/
INSERT  INTO aud_mcols
SELECT * FROM "aud_mcols"@ifmx;
/
commit;
/
INSERT  INTO aud_mlins
SELECT * FROM "aud_mlins"@ifmx;
/
commit;
/
INSERT  INTO aud_mnums
SELECT * FROM "aud_mnums"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO aud_mreps
SELECT * FROM "aud_mreps"@ifmx;
/
commit;
/
INSERT  INTO aud_rh_aspecto
SELECT * FROM "aud_rh_aspecto"@ifmx;
/
commit;
/
INSERT  INTO aud_rh_categoria
SELECT * FROM "aud_rh_categoria"@ifmx;
/
commit;
/
INSERT  INTO aud_rh_det_evaluacion
SELECT * FROM "aud_rh_det_evaluacion"@ifmx;
/
commit;
/
INSERT  INTO aud_rh_evaluacion
SELECT * FROM "aud_rh_evaluacion"@ifmx;
/
commit;
/
INSERT  INTO aud_rh_tipo_aspecto
SELECT * FROM "aud_rh_tipo_aspecto"@ifmx;
/
commit;
/
INSERT  INTO aud_noestan
SELECT * FROM "aud_noestan"@ifmx;
/
commit;
/
INSERT  INTO aud_nopagados
SELECT * FROM "aud_nopagados"@ifmx;
/
commit;
/
INSERT  INTO aud_orden_h
SELECT * FROM "aud_orden_h"@ifmx;
/
commit;
/
INSERT  INTO aud_pdinero
SELECT * FROM "aud_pdinero"@ifmx;
/
commit;
/
INSERT  INTO aud_permorden
SELECT * FROM "aud_permorden"@ifmx;
/
commit;
/
INSERT  INTO aud_process
SELECT * FROM "aud_process"@ifmx;
/
commit;
/
INSERT  INTO aud_retencion
SELECT * FROM "aud_retencion"@ifmx;
/
commit;
/
INSERT  INTO aud_sinefecto
SELECT * FROM "aud_sinefecto"@ifmx;
/
commit;
/
INSERT  INTO aud_sistemas
SELECT * FROM "aud_sistemas"@ifmx;
/
commit;
/
INSERT  INTO aud_sitrasla
SELECT * FROM "aud_sitrasla"@ifmx;
/
commit;
/
INSERT  INTO aud_t_org
SELECT * FROM "aud_t_org"@ifmx;
/
commit;
/
INSERT  INTO aud_tablas
SELECT * FROM "aud_tablas"@ifmx;
/
commit;
/
INSERT  INTO aud_tconec
SELECT * FROM "aud_tconec"@ifmx;
/
commit;
/
INSERT  INTO aud_tauth
SELECT * FROM "aud_tauth"@ifmx;
/
commit;
/
INSERT  INTO aud_telefonos
SELECT * FROM "aud_telefonos"@ifmx;
/
commit;
/
INSERT  INTO aud_tempdpue
SELECT * FROM "aud_tempdpue"@ifmx;
/
commit;
/
INSERT  INTO aud_tr_armas
SELECT * FROM "aud_tr_armas"@ifmx;
/
commit;
/
INSERT  INTO aud_tusuar
SELECT * FROM "aud_tusuar"@ifmx;
/
commit;
/
INSERT  INTO aud_usuarios
SELECT * FROM "aud_usuarios"@ifmx;
/
commit;
/
INSERT  INTO aud_usuarios_sistema
SELECT * FROM "aud_usuarios_sistema"@ifmx;
/
commit;
/
INSERT  INTO aud_usuariosnt
SELECT * FROM "aud_usuariosnt"@ifmx;
/
commit;
/
INSERT  INTO aud_usumenu
SELECT * FROM "aud_usumenu"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO cc_dticket
SELECT * FROM "v_cc_dticket"@ifmx;
/
commit;
/
INSERT  INTO cc_mticket
SELECT * FROM "v_cc_mticket"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_mticket
SELECT * FROM "aud_cc_mticket"@ifmx;
/
commit;
/
INSERT  INTO aud_cc_dticket
SELECT * FROM "aud_cc_dticket"@ifmx;
/
commit;
/
INSERT  INTO aud_insp_inmuebles
SELECT * FROM "aud_insp_inmuebles"@ifmx;
/
commit;
/
INSERT  INTO c_proposito
SELECT * FROM "c_proposito"@ifmx;
/
commit;
/
INSERT  INTO aud_c_proposito
SELECT * FROM "aud_c_proposito"@ifmx;
/
commit;
/
INSERT  INTO c_empresas
SELECT * FROM "c_empresas"@ifmx;
/
commit;
/
INSERT  INTO aud_c_empresas
SELECT * FROM "aud_c_empresas"@ifmx;
/
commit;
/
INSERT  INTO aud_c_oficinas
SELECT * FROM "aud_c_oficinas"@ifmx;
/
commit;
/
INSERT  INTO aud_c_tipo_docum
SELECT * FROM "aud_c_tipo_docum"@ifmx;
/
commit;
/
INSERT  INTO aud_c_corr_seg
SELECT * FROM "aud_c_corr_seg"@ifmx;
/
commit;
/
INSERT  INTO aud_pcdtablr
SELECT * FROM "aud_pcdtablr"@ifmx;
/
commit;
/
INSERT  INTO aud_armas
SELECT * FROM "aud_armas"@ifmx;
/
commit;
/
INSERT  INTO aud_asignaciones
SELECT * FROM "aud_asignaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_banderas
SELECT * FROM "aud_banderas"@ifmx;
/
commit;
/
INSERT  INTO aud_cond
SELECT * FROM "aud_cond"@ifmx;
/
commit;
/
INSERT  INTO aud_cursos
SELECT * FROM "aud_cursos"@ifmx;
/
commit;
/
INSERT  INTO aud_dep_mun
SELECT * FROM "aud_dep_mun"@ifmx;
/
commit;
/
INSERT  INTO aud_descuentos
SELECT * FROM "aud_descuentos"@ifmx;
/
commit;
/
INSERT  INTO aud_dlicen
SELECT * FROM "aud_dlicen"@ifmx;
/
commit;
/
INSERT  INTO aud_escuelas
SELECT * FROM "aud_escuelas"@ifmx;
/
commit;
/
INSERT  INTO aud_evaluacion
SELECT * FROM "aud_evaluacion"@ifmx;
/
commit;
/
INSERT  INTO aud_grados
SELECT * FROM "aud_grados"@ifmx;
/
commit;
/
INSERT  INTO aud_marginado
SELECT * FROM "aud_marginado"@ifmx;
/
commit;
/
INSERT  INTO aud_mdep
SELECT * FROM "aud_mdep"@ifmx;
/
commit;
/
INSERT  INTO aud_menu_det
SELECT * FROM "aud_menu_det"@ifmx;
/
commit;
/
INSERT  INTO aud_menu_master
SELECT * FROM "aud_menu_master"@ifmx;
/
commit;
/
INSERT  INTO aud_menus
SELECT * FROM "aud_menus"@ifmx;
/
commit;
/
INSERT  INTO aud_meom
SELECT * FROM "aud_meom"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO aud_meop
SELECT * FROM "aud_meop"@ifmx;
/
commit;
/
INSERT  INTO aud_mfdep
SELECT * FROM "aud_mfdep"@ifmx;
/
commit;
/
INSERT  INTO aud_mfsub
SELECT * FROM "aud_mfsub"@ifmx;
/
commit;
/
INSERT  INTO aud_mfsue_e
SELECT * FROM "aud_mfsue_e"@ifmx;
/
commit;
/
INSERT  INTO aud_mfsue_o
SELECT * FROM "aud_mfsue_o"@ifmx;
/
commit;
/
INSERT  INTO aud_oficina
SELECT * FROM "aud_oficina"@ifmx;
/
commit;
/
INSERT  INTO aud_paises
SELECT * FROM "aud_paises"@ifmx;
/
commit;
/
INSERT  INTO aud_parentescos
SELECT * FROM "aud_parentescos"@ifmx;
/
commit;
/
INSERT  INTO aud_pbienal
SELECT * FROM "aud_pbienal"@ifmx;
/
commit;
/
INSERT  INTO aud_permisos
SELECT * FROM "aud_permisos"@ifmx;
/
commit;
/
INSERT  INTO aud_permper
SELECT * FROM "aud_permper"@ifmx;
/
commit;
/
INSERT  INTO aud_permtropa
SELECT * FROM "aud_permtropa"@ifmx;
/
commit;
/
INSERT  INTO aud_situaciones
SELECT * FROM "aud_situaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_tipo_docum
SELECT * FROM "aud_tipo_docum"@ifmx;
/
commit;
/
INSERT  INTO aud_tropa_pv
SELECT * FROM "aud_tropa_pv"@ifmx;
/
commit;
/
INSERT  INTO aud_tropa_sp
SELECT * FROM "aud_tropa_sp"@ifmx;
/
commit;
/
INSERT  INTO aud_tsan
SELECT * FROM "aud_tsan"@ifmx;
/
commit;
/
INSERT  INTO aud_jefes
SELECT * FROM "aud_jefes"@ifmx;
/
commit;
/
INSERT  INTO aud_corr_seg
SELECT * FROM "aud_corr_seg"@ifmx;
/
commit;
/
INSERT  INTO aud_sand
SELECT * FROM "aud_sand"@ifmx;
/
commit;
/
INSERT  INTO c_oficinas
SELECT * FROM "c_oficinas"@ifmx;
/
commit;
/
INSERT  INTO c_tipo_docum
SELECT * FROM "c_tipo_docum"@ifmx;
/
commit;
/
INSERT  INTO r_papel
SELECT * FROM "r_papel"@ifmx;
/
commit;
/
INSERT  INTO r_programas
SELECT * FROM "r_programas"@ifmx;
/
commit;
/
INSERT  INTO aud_r_programas
SELECT * FROM "aud_r_programas"@ifmx;
/
commit;
/
INSERT  INTO aud_r_papel
SELECT * FROM "aud_r_papel"@ifmx;
/
commit;
/
INSERT  INTO aud_r_det_requerimientos
SELECT * FROM "aud_r_det_requerimientos"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO economato
SELECT * FROM "economato"@ifmx;
/
commit;
/
INSERT  INTO aud_f_hreal
SELECT * FROM "aud_f_hreal"@ifmx;
/
commit;
/
INSERT  INTO r_requerimientos
SELECT * FROM "r_requerimientos"@ifmx;
/
commit;
/
INSERT  INTO aud_r_requerimientos
SELECT * FROM "aud_r_requerimientos"@ifmx;
/
commit;
/
INSERT  INTO r_det_req
SELECT * FROM "r_det_req"@ifmx;
/
commit;
/
INSERT  INTO aud_vocales
SELECT * FROM "aud_vocales"@ifmx;
/
commit;
/
INSERT  INTO vocales
SELECT * FROM "vocales"@ifmx;
/
commit;
/
INSERT  INTO usuapli
SELECT * FROM "usuapli"@ifmx;
/
commit;
/
INSERT  INTO c_control
SELECT * FROM "c_control"@ifmx;
/
commit;
/
INSERT  INTO aud_usu_opera
SELECT * FROM "aud_usu_opera"@ifmx;
/
commit;
/
INSERT  INTO aud_opera_menu
SELECT * FROM "aud_opera_menu"@ifmx;
/
commit;
/
INSERT  INTO opera_menu
SELECT * FROM "opera_menu"@ifmx;
/
commit;
/
INSERT  INTO usu_opera
SELECT * FROM "usu_opera"@ifmx;
/
commit;
/
INSERT  INTO co_mper
SELECT * FROM "co_mper"@ifmx;
/
commit;
/
INSERT  INTO aud_co_mper
SELECT * FROM "aud_co_mper"@ifmx;
/
commit;
/
INSERT  INTO aud_sysmenus
SELECT * FROM "aud_sysmenus"@ifmx;
/
commit;
/
INSERT  INTO diagnosticos
SELECT * FROM "diagnosticos"@ifmx;
/
commit;
/
INSERT  INTO aud_diagnosticos
SELECT * FROM "aud_diagnosticos"@ifmx;
/
commit;
/
INSERT  INTO aud_ingreso
SELECT * FROM "aud_ingreso"@ifmx;
/
commit;

INSERT  INTO aud_busqueda
SELECT * FROM "aud_busqueda"@ifmx;
/
commit;
/
INSERT  INTO evaluaciones_ant
SELECT * FROM "evaluaciones_ant"@ifmx;
/
commit;
/
INSERT  INTO aud_documento
SELECT * FROM "aud_documento"@ifmx;
/
commit;
/
INSERT  INTO aud_ubica_docum
SELECT * FROM "aud_ubica_docum"@ifmx;
/
commit;
/
INSERT  INTO aud_msan
SELECT * FROM "aud_msan"@ifmx;
/
commit;
/
INSERT  INTO resofi
SELECT * FROM "resofi"@ifmx;
/
commit;
/
INSERT  INTO descripciones
SELECT * FROM "descripciones"@ifmx;
/
commit;
/
INSERT  INTO f_hfag
SELECT * FROM "f_hfag"@ifmx;
/
commit;
/
INSERT  INTO aud_f_hfag
SELECT * FROM "aud_f_hfag"@ifmx;
/
commit;
/
INSERT  INTO hfasig
SELECT * FROM "hfasig"@ifmx;
/
commit;
/
INSERT  INTO hfdes
SELECT * FROM "hfdes"@ifmx;
/
commit;
/
INSERT  INTO aud_f_bac
SELECT * FROM "aud_f_bac"@ifmx;
/
commit;
/
INSERT  INTO aud_f_amt
SELECT * FROM "aud_f_amt"@ifmx;
/
commit;
/
INSERT  INTO aud_icombus
SELECT * FROM "aud_icombus"@ifmx;
/
commit;
/
INSERT  INTO icombus
SELECT * FROM "icombus"@ifmx;
/
commit;
/
INSERT  INTO icorep
SELECT * FROM "icorep"@ifmx;
/
commit;
/
INSERT  INTO icobsrep
SELECT * FROM "icobsrep"@ifmx;
/
commit;
/
INSERT  INTO aud_icorep
SELECT * FROM "aud_icorep"@ifmx;
/
commit;
/
INSERT  INTO aud_icodetrep
SELECT * FROM "aud_icodetrep"@ifmx;
/
commit;
/
INSERT  INTO aud_icobsrep
SELECT * FROM "aud_icobsrep"@ifmx;
/
commit;
/
INSERT  INTO icodetrep
SELECT * FROM "icodetrep"@ifmx;
/
commit;
/
INSERT  INTO chn
SELECT * FROM "chn"@ifmx;
/
commit;
/
INSERT  INTO aud_chn
SELECT * FROM "aud_chn"@ifmx;
/
commit;
/
INSERT  INTO fceom
SELECT * FROM "fceom"@ifmx;
/
commit;
/
INSERT  INTO aud_fceom
SELECT * FROM "aud_fceom"@ifmx;
/
commit;
/
INSERT  INTO asigna
SELECT * FROM "asigna"@ifmx;
/
commit;
/
INSERT  INTO ftempo
SELECT * FROM "ftempo"@ifmx;
/
commit;
/
INSERT  INTO aud_ftempo
SELECT * FROM "aud_ftempo"@ifmx;
/
commit;
/
INSERT  INTO aud_f_mulfar
SELECT * FROM "aud_f_mulfar"@ifmx;
/
commit;
/
INSERT  INTO f_mulfar
SELECT * FROM "f_mulfar"@ifmx;
/
commit;
/
INSERT  INTO aud_yakis
SELECT * FROM "aud_yakis"@ifmx;
/
commit;
/
INSERT  INTO aud_evaluaciones_ant
SELECT * FROM "aud_evaluaciones_ant"@ifmx;
/
commit;
/
INSERT  INTO pacceso
SELECT * FROM "pacceso"@ifmx;
/
commit;
/
INSERT  INTO pdocumento
SELECT * FROM "pdocumento"@ifmx;
/
commit;
/
INSERT  INTO pestado
SELECT * FROM "pestado"@ifmx;
/
commit;
/
INSERT  INTO pnegociado
SELECT * FROM "pnegociado"@ifmx;
/
commit;
/
INSERT  INTO ptipo
SELECT * FROM "ptipo"@ifmx;
/
commit;
/
INSERT  INTO aud_pdocumento
SELECT * FROM "aud_pdocumento"@ifmx;
/
commit;
/
INSERT  INTO aud_ptipo
SELECT * FROM "aud_ptipo"@ifmx;
/
commit;
/
INSERT  INTO aud_pestado
SELECT * FROM "aud_pestado"@ifmx;
/
commit;
/
INSERT  INTO aud_pnegociado
SELECT * FROM "aud_pnegociado"@ifmx;
/
commit;
/
INSERT  INTO aud_pacceso
SELECT * FROM "aud_pacceso"@ifmx;
/
commit;
/
INSERT  INTO aud_ptiempos
SELECT * FROM "aud_ptiempos"@ifmx;
/
commit;
/
INSERT  INTO ptiempos
SELECT * FROM "ptiempos"@ifmx;
/
commit;
/
INSERT  INTO tconec
SELECT * FROM "tconec"@ifmx;
/
commit;
/
INSERT  INTO fincas
SELECT * FROM "fincas"@ifmx;
/
commit;
/
INSERT  INTO aud_fincas
SELECT * FROM "aud_fincas"@ifmx;
/
commit;
/
INSERT  INTO asig_cat
SELECT * FROM "asig_cat"@ifmx;
/
commit;
/
INSERT  INTO c_corr_seg
SELECT * FROM "c_corr_seg"@ifmx;
/
commit;
/
INSERT  INTO c_documento
SELECT * FROM "c_documento"@ifmx;
/
commit;
/
INSERT  INTO c_ubicacion_docum
SELECT * FROM "c_ubicacion_docum"@ifmx;
/
commit;
/
INSERT  INTO dpue
SELECT * FROM "dpue"@ifmx;
/
commit;
/
INSERT  INTO mtit
SELECT * FROM "mtit"@ifmx;
/
commit;
/
INSERT  INTO sand
SELECT * FROM "sand"@ifmx;
/
commit;
/
INSERT  INTO telefonos
SELECT * FROM "telefonos"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO t_org
SELECT * FROM "t_org"@ifmx;
/
commit;
/
INSERT  INTO ret_of_carre_res
SELECT * FROM "ret_of_carre_res"@ifmx;
/
commit;
/
INSERT  INTO ret_tropa
SELECT * FROM "ret_tropa"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_im
SELECT * FROM "ret_desc_im"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_hr
SELECT * FROM "ret_desc_hr"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_ipm_asim
SELECT * FROM "ret_desc_ipm_asim"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_ipm_esptas
SELECT * FROM "ret_desc_ipm_esptas"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_ipm_of
SELECT * FROM "ret_desc_ipm_of"@ifmx;
/
commit;
/
INSERT  INTO ret_desc_ipm_sgtos_may
SELECT * FROM "ret_desc_ipm_sgtos_may"@ifmx;
/
commit;
/
INSERT  INTO ret_of_asim
SELECT * FROM "ret_of_asim"@ifmx;
/
commit;
/
INSERT  INTO ret_esptas
SELECT * FROM "ret_esptas"@ifmx;
/
commit;
/
INSERT  INTO ret_sgtos_may
SELECT * FROM "ret_sgtos_may"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_hr
SELECT * FROM "aud_ret_desc_hr"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_im
SELECT * FROM "aud_ret_desc_im"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_ipm_esptas
SELECT * FROM "aud_ret_desc_ipm_esptas"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_ipm_of
SELECT * FROM "aud_ret_desc_ipm_of"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_ipm_sgtos_may
SELECT * FROM "aud_ret_desc_ipm_sgtos_may"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_of_asim
SELECT * FROM "aud_ret_of_asim"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_of_carre_res
SELECT * FROM "aud_ret_of_carre_res"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_sgtos_may
SELECT * FROM "aud_ret_sgtos_may"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_desc_ipm_asim
SELECT * FROM "aud_ret_desc_ipm_asim"@ifmx;
/
commit;
/
INSERT  INTO retiro
SELECT * FROM "retiro"@ifmx;
/
commit;
/
INSERT  INTO aud_asigna
SELECT * FROM "aud_asigna"@ifmx;
/
commit;
/
INSERT  INTO aud_c_control
SELECT * FROM "aud_c_control"@ifmx;
/
commit;
/
INSERT  INTO aud_usuapli
SELECT * FROM "aud_usuapli"@ifmx;
/
commit;
/
INSERT  INTO aud_cmm_hospitalizados
SELECT * FROM "aud_cmm_hospitalizados"@ifmx;
/
commit;
/
INSERT  INTO aud_retiro
SELECT * FROM "aud_retiro"@ifmx;
/
commit;
/
INSERT  INTO f_resumen
SELECT * FROM "f_resumen"@ifmx;
/
commit;
/
INSERT  INTO f_datosfza
SELECT * FROM "f_datosfza"@ifmx;
/
commit;
/
INSERT  INTO aplicaciones
SELECT * FROM "aplicaciones"@ifmx;
/
commit;
/
INSERT  INTO divisiones
SELECT * FROM "divisiones"@ifmx;
/
commit;
/
INSERT  INTO negociados
SELECT * FROM "negociados"@ifmx;
/
commit;
/
INSERT  INTO u_comisiones
SELECT * FROM "u_comisiones"@ifmx;
/
commit;
/
INSERT  INTO aud_aplicaciones
SELECT * FROM "aud_aplicaciones"@ifmx;
/
commit;
/
INSERT  INTO aud_divisiones
SELECT * FROM "aud_divisiones"@ifmx;
/
commit;
/
INSERT  INTO aud_negociados
SELECT * FROM "aud_negociados"@ifmx;
/
commit;
/
INSERT  INTO aud_u_comisiones
SELECT * FROM "aud_u_comisiones"@ifmx;
/
commit;
/
INSERT  INTO f_ipm_cart
SELECT * FROM "f_ipm_cart"@ifmx;
/
commit;
/
INSERT  INTO agtsa
SELECT * FROM "agtsa"@ifmx;
/
commit;
/
INSERT  INTO asamblea
SELECT * FROM "asamblea"@ifmx;
/
commit;
/
INSERT  INTO banejer_car
SELECT * FROM "banejer_car"@ifmx;
/
commit;
/
INSERT  INTO dfdes_gra
SELECT * FROM "dfdes_gra"@ifmx;
/
commit;
/
INSERT  INTO dfdes_grat
SELECT * FROM "dfdes_grat"@ifmx;
/
commit;
/
INSERT  INTO dfdes_inv
SELECT * FROM "dfdes_inv"@ifmx;
/
commit;
/
INSERT  INTO dfdes_invt
SELECT * FROM "dfdes_invt"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO f_amt
SELECT * FROM "f_amt"@ifmx;
/
commit;
/
INSERT  INTO f_bac
SELECT * FROM "f_bac"@ifmx;
/
commit;
/
INSERT  INTO f_combust
SELECT * FROM "f_combust"@ifmx;
/
commit;
/
INSERT  INTO f_hreal
SELECT * FROM "f_hreal"@ifmx;
/
commit;
/
INSERT  INTO findustria
SELECT * FROM "findustria"@ifmx;
/
commit;
/
INSERT  INTO f_asgral
SELECT * FROM "f_asgral"@ifmx;
/
commit;
/
INSERT  INTO mper
SELECT * FROM "mper"@ifmx;
/
commit;
/
INSERT  INTO aud_permiso
SELECT * FROM "aud_permiso"@ifmx;
/
commit;
/
INSERT  INTO permiso
SELECT * FROM "permiso"@ifmx;
/
commit;
/
INSERT  INTO fn_motivos
SELECT * FROM "fn_motivos"@ifmx;
/
commit;
/
INSERT  INTO aud_fn_motivos
SELECT * FROM "aud_fn_motivos"@ifmx;
/
commit;
/
INSERT  INTO aud_f_cmm
SELECT * FROM "aud_f_cmm"@ifmx;
/
commit;
/
INSERT  INTO f_cmm
SELECT * FROM "f_cmm"@ifmx;
/
commit;
/
INSERT  INTO hftro_des
SELECT * FROM "hftro_des"@ifmx;
/
commit;
/
INSERT  INTO ft_asigna
SELECT * FROM "ft_asigna"@ifmx;
/
commit;
/
INSERT  INTO aud_ft_asigna
SELECT * FROM "aud_ft_asigna"@ifmx;
/
commit;
/
INSERT  INTO busqueda
SELECT * FROM "busqueda"@ifmx;
/
commit;
/
INSERT  INTO ingreso
SELECT * FROM "ingreso"@ifmx;
/
commit;
/
INSERT  INTO fcatnop
SELECT * FROM "fcatnop"@ifmx;
/
commit;
/
INSERT  INTO aud_fcatnop
SELECT * FROM "aud_fcatnop"@ifmx;
/
commit;
/
INSERT  INTO cna
SELECT * FROM "cna"@ifmx;
/
commit;
/
INSERT  INTO religiones
SELECT * FROM "religiones"@ifmx;
/
commit;
/
INSERT  INTO rel_detalle
SELECT * FROM "rel_detalle"@ifmx;
/
commit;
/
INSERT  INTO aud_religiones
SELECT * FROM "aud_religiones"@ifmx;
/
commit;
/
INSERT  INTO aud_rel_detalle
SELECT * FROM "aud_rel_detalle"@ifmx;
/
commit;
/
INSERT  INTO cnc
SELECT * FROM "cnc"@ifmx;
/
commit;
/
INSERT  INTO radius1
SELECT * FROM "radius1"@ifmx;
/
commit;
/
INSERT  INTO aud_oestoe
SELECT * FROM "aud_oestoe"@ifmx;
/
commit;
/
INSERT  INTO oestoe
SELECT * FROM "oestoe"@ifmx;
/
commit;
/
INSERT  INTO aud_mtit
SELECT * FROM "aud_mtit"@ifmx;
/
commit;
/
INSERT  INTO aud_resofi
SELECT * FROM "aud_resofi"@ifmx;
/
commit;
/
INSERT  INTO aud_f_resumen
SELECT * FROM "aud_f_resumen"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_esptas
SELECT * FROM "aud_ret_esptas"@ifmx;
/
commit;
/
INSERT  INTO aud_findustria
SELECT * FROM "aud_findustria"@ifmx;
/
commit;
/
INSERT  INTO aud_banejer_acc
SELECT * FROM "aud_banejer_acc"@ifmx;
/
commit;
/
INSERT  INTO xsql_languages
SELECT * FROM "xsql_languages"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO xserver_info
SELECT * FROM "xserver_info"@ifmx;
/
commit;
/
INSERT  INTO dfdes_frasa
SELECT * FROM "dfdes_frasa"@ifmx;
/
commit;
/
INSERT  INTO aud_dfdes_frasa
SELECT * FROM "aud_dfdes_frasa"@ifmx;
/
commit;
/
INSERT  INTO msan
SELECT * FROM "msan"@ifmx;
/
commit;
/
INSERT  INTO aud_resutro
SELECT * FROM "aud_resutro"@ifmx;
/
commit;
/
INSERT  INTO aud_hftro_des
SELECT * FROM "aud_hftro_des"@ifmx;
/
commit;
/
INSERT  INTO aud_partidas
SELECT * FROM "aud_partidas"@ifmx;
/
commit;
/
INSERT  INTO aud_orden
SELECT * FROM "aud_orden"@ifmx;
/
commit;
/
INSERT  INTO aud_ret_tropa
SELECT * FROM "aud_ret_tropa"@ifmx;
/
commit;
/
INSERT  INTO aud_f_datosfza
SELECT * FROM "aud_f_datosfza"@ifmx;
/
commit;
/
INSERT  INTO aud_f_asgral
SELECT * FROM "aud_f_asgral"@ifmx;
/
commit;
/
INSERT  INTO aud_f_combust
SELECT * FROM "aud_f_combust"@ifmx;
/
commit;
/
INSERT  INTO f_seguros_gt
SELECT * FROM "f_seguros_gt"@ifmx;
/
commit;
/
INSERT  INTO aud_hftro
SELECT * FROM "aud_hftro"@ifmx;
/
commit;
/
INSERT  INTO aud_pafe_oficiales
SELECT * FROM "aud_pafe_oficiales"@ifmx;
/
commit;
/
INSERT  INTO pafe_oficiales
SELECT * FROM "pafe_oficiales"@ifmx;
/
commit;
/
INSERT  INTO dfasig
SELECT * FROM "dfasig"@ifmx;
/
commit;
/
INSERT  INTO c_tareas
SELECT * FROM "c_tareas"@ifmx;
/
commit;
/
INSERT  INTO aud_c_tareas
SELECT * FROM "aud_c_tareas"@ifmx;
/
commit;
/
INSERT  INTO recepcion
SELECT * FROM "recepcion"@ifmx;
/
commit;
/
INSERT  INTO marca
SELECT * FROM "marca"@ifmx;
/
commit;
/
INSERT  INTO equipos
SELECT * FROM "equipos"@ifmx;
/
commit;
/
INSERT  INTO aud_equipos
SELECT * FROM "aud_equipos"@ifmx;
/
commit;
/
INSERT  INTO aud_marca
SELECT * FROM "aud_marca"@ifmx;
/
commit;
/
INSERT  INTO aud_recepcion
SELECT * FROM "aud_recepcion"@ifmx;
/
commit;
/
INSERT  INTO eacciones
SELECT * FROM "eacciones"@ifmx;
/
commit;
/
INSERT  INTO eusuarios
SELECT * FROM "eusuarios"@ifmx;
/
commit;
/
INSERT  INTO aud_det_acciones
SELECT * FROM "aud_det_acciones"@ifmx;
/
commit;
/
INSERT  INTO aud_eacciones
SELECT * FROM "aud_eacciones"@ifmx;
/
commit;
/
INSERT  INTO aud_eusuarios
SELECT * FROM "aud_eusuarios"@ifmx;
/
commit;
/
INSERT  INTO det_acciones
SELECT * FROM "det_acciones"@ifmx;
/
commit;
/
INSERT  INTO paf_actas
SELECT * FROM "paf_actas"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO paf_calendario
SELECT * FROM "paf_calendario"@ifmx;
/
commit;
/
INSERT  INTO paf_periodos
SELECT * FROM "paf_periodos"@ifmx;
/
commit;
/
INSERT  INTO paf_grafica
SELECT * FROM "paf_grafica"@ifmx;
/
commit;
/
INSERT  INTO aud_paf_actas
SELECT * FROM "aud_paf_actas"@ifmx;
/
commit;
/
INSERT  INTO aud_paf_calendario
SELECT * FROM "aud_paf_calendario"@ifmx;
/
commit;
/
INSERT  INTO aud_paf_detalle
SELECT * FROM "aud_paf_detalle"@ifmx;
/
commit;
/
INSERT  INTO aud_paf_periodos
SELECT * FROM "aud_paf_periodos"@ifmx;
/
commit;
/
INSERT  INTO aud_paf_programador
SELECT * FROM "aud_paf_programador"@ifmx;
/
commit;
/
INSERT  INTO paf_programador
SELECT * FROM "paf_programador"@ifmx;
/
commit;
/
INSERT  INTO paf_detalle
SELECT * FROM "paf_detalle"@ifmx;
/
commit;
/
INSERT  INTO aud_tiempos
SELECT * FROM "aud_tiempos"@ifmx;
/
commit;
/
INSERT  INTO freforma
SELECT * FROM "freforma"@ifmx;
/
commit;
/
INSERT  INTO aud_freforma
SELECT * FROM "aud_freforma"@ifmx;
/
commit;
/
INSERT  INTO licencias
SELECT * FROM "licencias"@ifmx;
/
commit;
/
INSERT  INTO aud_licencias
SELECT * FROM "aud_licencias"@ifmx;
/
commit;
/
INSERT  INTO msanlla
SELECT * FROM "msanlla"@ifmx;
/
commit;
/
INSERT  INTO sandlla
SELECT * FROM "sandlla"@ifmx;
/
commit;
/
INSERT  INTO psan_orden
SELECT * FROM "psan_orden"@ifmx;
/
commit;
/
INSERT  INTO psan_estadistica
SELECT * FROM "psan_estadistica"@ifmx;
/
commit;
/
INSERT  INTO psan_registro
SELECT * FROM "psan_registro"@ifmx;
/
commit;
/
INSERT  INTO aud_psan_orden
SELECT * FROM "aud_psan_orden"@ifmx;
/
commit;
/
INSERT  INTO aud_psan_estadistica
SELECT * FROM "aud_psan_estadistica"@ifmx;
/
commit;
/
INSERT  INTO aud_psan_registro
SELECT * FROM "aud_psan_registro"@ifmx;
/
commit;
/
INSERT  INTO aud_mper
SELECT * FROM "aud_mper"@ifmx;
/
commit;
/
INSERT  INTO aud_agtsa
SELECT * FROM "aud_agtsa"@ifmx;
/
commit;
/
INSERT  INTO aud_f_seguros_gt
SELECT * FROM "aud_f_seguros_gt"@ifmx;
/
commit;
/
INSERT  INTO aud_banejer_car
SELECT * FROM "aud_banejer_car"@ifmx;
/
commit;
/
INSERT  INTO aud_economato
SELECT * FROM "aud_economato"@ifmx;
/
commit;
/
INSERT  INTO aud_ipm_fact
SELECT * FROM "aud_ipm_fact"@ifmx;
/
commit;
/
INSERT  INTO insti
SELECT * FROM "insti"@ifmx;
/
commit;
/
INSERT  INTO aud_insti
SELECT * FROM "aud_insti"@ifmx;
/
commit;
/
INSERT  INTO tdfasig
SELECT * FROM "tdfasig"@ifmx;
/
commit;
/
INSERT  INTO tdfdes
SELECT * FROM "tdfdes"@ifmx;
/
commit;
/
INSERT  INTO tmper
SELECT * FROM "tmper"@ifmx;
/
commit;
/
INSERT  INTO boleta
SELECT * FROM "boleta"@ifmx;
/
commit;
/
INSERT  INTO cuentas15
SELECT * FROM "cuentas15"@ifmx;
/
commit;
/
INSERT  INTO despachos
SELECT * FROM "despachos"@ifmx;
/
commit;
/
INSERT  INTO det_isr
SELECT * FROM "det_isr"@ifmx;
/
commit;
/
INSERT  INTO detalle
SELECT * FROM "detalle"@ifmx;
/
commit;
/
COMMIT;
/
commit;
/
INSERT  INTO devoluciones
SELECT * FROM "devoluciones"@ifmx;
/
commit;
/
INSERT  INTO dper
SELECT * FROM "dper"@ifmx;
/
commit;

