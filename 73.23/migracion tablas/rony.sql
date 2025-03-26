create table ADMIN.gpl_presidencial 
  (
    pre_id number not null ,
    pre_grado_of number not null ,
    pre_arma_of number not null ,
    pre_catalogo number not null ,
    pre_dependencia number not null ,
    pre_desc_com varchar2(255) not null ,
    pre_quien number not null ,
    pre_hrs number(7,2),
    pre_ofsuperior number,
    pre_ofsubalterno number,
    pre_tropa number not null ,
    pre_esp number not null ,
    pre_hora_salida TIMESTAMP not null ,
    pre_hora_ent TIMESTAMP,
    pre_duracion number(10,2),
    pre_situacion number not null ,
    constraint pk_pgl_precidencial primary key (pre_id)  
  );
/
create table ADMIN.test_table ADMIN.
  (
    tes_id number,
    tes_desc char(20),
    constraint pk_test_table primary key (tes_id) 
  );
/
create table ADMIN.cumple_jefes 
  (
    cum_id number not null ,
    cum_dependencia number not null ,
    cum_desc_empleo char(255) not null ,
    cum_jerarquia char(4),
    cum_plaza number not null ,
    cum_situacion char(2) not null ,
    constraint pk_cumple_jefes primary key (cum_id) 
  );
/
create table ADMIN.aud_cumple_jefes 
  (
    cum_id number,
    cum_dependencia number,
    cum_desc_empleo char(255),
    cum_jerarquia char(4),
    cum_plaza number,
    cum_situacion char(2),
    desp_cum_id number,
    desp_cum_dependencia number,
    desp_cum_desc_empleo char(255),
    desp_cum_jerarquia char(4),
    desp_cum_plaza number,
    desp_cum_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_ope_planificada 
  (
    ope_pla_codigo number not null ,
    ope_pla_planificar number not null ,
    ope_pla_area number not null ,
    ope_pla_operacion number not null ,
    ope_pla_proposito number not null ,
    ope_pla_met_ejec number not null ,
    ope_pla_uni_org number not null ,
    ope_pla_cat_responsable number not null ,
    ope_pla_fecha TIMESTAMP not null ,
    ope_pla_tel_resp number not null ,
    ope_pla_inicia TIMESTAMP not null ,
    ope_pla_termina TIMESTAMP not null ,
    ope_pla_usuario number not null ,
    ope_pla_dependencia number not null ,
    ope_pla_situacion number not null ,
    ope_pla_observacion char(1000),
    constraint pk_coc_ope_planificada primary key (ope_pla_codigo)  
  );
/
create table ADMIN.aud_opaf_notas19 
  (
    not_catalogo number,
    not_fecha date,
    not_dominadas number,
    not_punteo_dom number,
    not_abdominales number,
    not_punteo_abd number,
    not_carrera datetime minute to second,
    not_punteo_car number,
    not_promedio number(5,2),
    not_obs varchar2(255),
    not_tipo varchar2(1),
    not_revisado number,
    not_dependencia number,
    not_peso number,
    not_estatura number(3,2),
    not_imc number(4,2),
    not_perfil varchar2(15),
    not_fec_certi date,
    not_grado number,
    not_usuario number,
    not_acta varchar2(100),
    not_extemporaneo number,
    not_evento number,
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_dominadas number,
    desp_not_punteo_dom number,
    desp_not_abdominales number,
    desp_not_punteo_abd number,
    desp_not_carrera datetime minute to second,
    desp_not_punteo_car number,
    desp_not_promedio number(5,2),
    desp_not_obs varchar2(255),
    desp_not_tipo varchar2(1),
    desp_not_revisado number,
    desp_not_dependencia number,
    desp_not_peso number,
    desp_not_estatura number(3,2),
    desp_not_imc number(4,2),
    desp_not_perfil varchar2(15),
    desp_not_fec_certi date,
    desp_not_grado number,
    desp_not_usuario number,
    desp_not_acta varchar2(100),
    desp_not_extemporaneo number,
    desp_not_evento number,
    accion char(1) not null ,
    usuario number not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.acc_correctiva 
  (
    corr_codigo number not null ,
    corr_accion number not null ,
    corr_descripcion varchar2(250),
    constraint pk_acc_correctiva primary key (corr_codigo) 
  );
/
create table ADMIN.inmate 
  (
    id_num number,
    picture blob,
    felony clob
  );
/
create table ADMIN.aud_lmun_ent_sal 
  (
    es_codigo number,
    es_con_codigo number,
    es_con_dep_llave number,
    es_lote_codigo number,
    es_uso_codigo number,
    es_tipo_codigo number,
    es_cal_codigo number,
    es_eslabonada number,
    es_carga number,
    es_cantidad number,
    es_status number,
    es_tipo number,
    es_situacion number,
    desp_es_codigo number,
    desp_es_con_codigo number,
    desp_es_con_dep_llave number,
    desp_es_lote_codigo number,
    desp_es_uso_codigo number,
    desp_es_tipo_codigo number,
    desp_es_cal_codigo number,
    desp_es_eslabonada number,
    desp_es_carga number,
    desp_es_cantidad number,
    desp_es_status number,
    desp_es_tipo number,
    desp_es_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.toerenglon0 
  (
    toe_codigo number not null ,
    toe_dep_llave number not null ,
    toe_jerarquia varchar2(10) not null ,
    toe_morgtitl varchar2(10) not null ,
    toe_plaza number not null ,
    toe_correlativo number not null ,
    toe_corretittulo number not null ,
    toe_procodigo number not null ,
    toe_subcodigo number not null ,
    toe_fecha date not null ,
    toe_sit1 number not null ,
    toe_sit2 number not null 
  );
/
create table ADMIN.sig_agregados 
  (
    agr_id number not null ,
    agr_cat number,
    agr_dep number,
    agr_sit number,
    constraint pk_sig_agregados primary key (agr_id) 
  );
/
create table ADMIN.sig_destinos 
  (
    dest_id number not null ,
    dest_desc varchar2(50),
    dest_dep number,
    dest_sit number,
    constraint pk_sig_destinos primary key (dest_id) 
  );
/
create table ADMIN.sig_unidades 
  (
    uni_id number not null ,
    uni_desc varchar2(100),
    uni_dep number,
    uni_sit number,
    constraint pk_sig_unidades primary key (uni_id) 
  );
/
create table ADMIN.sig_companias 
  (
    com_id number not null ,
    com_desc varchar2(50),
    com_uni number,
    com_sit number,
    constraint pk_sig_companias primary key (com_id) 
  );
/
create table ADMIN.sig_comisiones 
  (
    com_id number not null ,
    com_desc varchar2(50),
    com_lugar varchar2(50),
    com_doc varchar2(50),
    com_fec_inicio TIMESTAMP(0),
    com_fec_fin TIMESTAMP(0),
    com_detalle varchar2(150),
    com_info varchar2(150),
    com_sit number,
    com_ing TIMESTAMP(0),
    com_dep number,
    constraint pk_sig_comisiones primary key (com_id) 
  );
/
create table ADMIN.sig_com_asig 
  (
    asi_id number not null ,
    asi_com number,
    asi_asig number,
    asi_sit number,
    constraint pk_sig_com_asig primary key (asi_id) 
  );
/
create table ADMIN.sig_fuerza 
  (
    fue_id number not null ,
    fue_cat number not null ,
    fue_hora datetime hour to minute not null ,
    fue_fecha date not null ,
    fue_destino number,
    fue_sit number,
    fue_obs varchar2(50),
    constraint pk_sig_fuerza primary key (fue_id) 
  );
/
create table ADMIN.sig_asig_companias 
  (
    asi_id number not null ,
    asi_cat number,
    asi_com number,
    asi_sit number,
    constraint pk_sig_asig_companias primary key (asi_id) 
  );
/
create table ADMIN.sig_marcas 
  (
    mar_id number,
    mar_nombre varchar2(50),
    constraint pk_sig_marcas primary key (mar_id) 
  );
/
create table ADMIN.sig_soporteotr 
  (
    otr_registro number not null ,
    otr_fecha date,
    otr_oficio varchar2(100),
    otr_usuario varchar2(100),
    otr_telefono number,
    otr_tecnico number,
    otr_dependencia number,
    otr_marca number,
    otr_modelo varchar2(100),
    otr_noserie varchar2(100),
    otr_motivo varchar2(100),
    otr_trabajo varchar2(200),
    otr_situacion number,
    constraint pk_sig_soporteotr primary key (otr_registro) 
  );
/
create table ADMIN.sig_soporteimp 
  (
    imp_registro number not null ,
    imp_fecha date,
    imp_oficio varchar2(100),
    imp_usuario varchar2(100),
    imp_telefono number,
    imp_tecnico number,
    imp_dependencia number,
    imp_tipo varchar2(10),
    imp_marca number,
    imp_modelo varchar2(100),
    imp_noserie varchar2(100),
    imp_cable varchar2(2),
    imp_motivo varchar2(100),
    imp_cableparalelo varchar2(2),
    imp_situacion number,
    constraint pk_sig_soporteimp primary key (imp_registro) 
  );
/
create table ADMIN.sig_soportecpu 
  (
    cpu_registro number not null ,
    cpu_fecha date,
    cpu_oficio varchar2(100),
    cpu_usuario varchar2(100),
    cpu_telefono number,
    cpu_tecnico number,
    cpu_dependencia number,
    cpu_procesador varchar2(100),
    cpu_cdrom varchar2(2),
    cpu_tarjetasonido varchar2(2),
    cpu_drivers varchar2(2),
    cpu_discoduro varchar2(100),
    cpu_tarjetavideo varchar2(100),
    cpu_teclado varchar2(2),
    cpu_mouse varchar2(2),
    cpu_fuente varchar2(2),
    cpu_cable varchar2(2),
    cpu_motivo varchar2(100),
    cpu_situacion number,
    constraint pk_sig_soportecpu primary key (cpu_registro) 
  );
/
create table ADMIN.sig_soportemon 
  (
    mon_registro number not null ,
    mon_fecha date,
    mon_oficio varchar2(100),
    mon_usuario varchar2(100),
    mon_telefono number,
    mon_tecnico number,
    mon_dependencia number,
    mon_marca number,
    mon_modelo varchar2(50),
    mon_nonumber varchar2(50),
    mon_tipo varchar2(5),
    mon_cable varchar2(2),
    mon_motivo varchar2(150),
    mon_situacion number,
    constraint pk_sig_soportemon primary key (mon_registro) 
  );
/
create table ADMIN.sig_novedades 
  (
    nov_id number not null ,
    nov_catalogo number,
    nov_fecha TIMESTAMP(0),
    nov_descripcion varchar2(2000),
    nov_dependencia number,
    nov_sit number,
    constraint pk_sig_novedades primary key (nov_id) 
  );
/
create table ADMIN.sig_jefes_servicio 
  (
    jefe_hist_id number not null ,
    jefe_grado number,
    jefe_arma number,
    jefe_fecha_inicial TIMESTAMP(0),
    jefe_fecha_final TIMESTAMP(0),
    jefe_catalogo number,
    jefe_dependencia number,
    constraint pk_sig_jefes_servicio primary key (jefe_hist_id) 
  );
/
create table ADMIN.aud_sig_fuerza 
  (
    fue_id number,
    fue_cat number,
    fue_hora datetime hour to minute,
    fue_fecha date,
    fue_destino number,
    fue_sit number,
    fue_obs varchar2(50),
    desp_fue_id number,
    desp_fue_cat number,
    desp_fue_hora datetime hour to minute,
    desp_fue_fecha date,
    desp_fue_destino number,
    desp_fue_sit number,
    desp_fue_obs varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_agregados 
  (
    agr_id number,
    agr_cat number,
    agr_dep number,
    agr_sit number,
    desp_agr_id number,
    desp_agr_cat number,
    desp_agr_dep number,
    desp_agr_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_destinos 
  (
    dest_id number,
    dest_desc varchar2(50),
    dest_dep number,
    dest_sit number,
    desp_dest_id number,
    desp_dest_desc varchar2(50),
    desp_dest_dep number,
    desp_dest_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_unidades 
  (
    uni_id number,
    uni_desc varchar2(100),
    uni_dep number,
    uni_sit number,
    desp_uni_id number,
    desp_uni_desc varchar2(100),
    desp_uni_dep number,
    desp_uni_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_companias 
  (
    com_id number,
    com_desc varchar2(50),
    com_uni number,
    com_sit number,
    desp_com_id number,
    desp_com_desc varchar2(50),
    desp_com_uni number,
    desp_com_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_asig_companias 
  (
    asi_id number,
    asi_cat number,
    asi_com number,
    asi_sit number,
    desp_asi_id number,
    desp_asi_cat number,
    desp_asi_com number,
    desp_asi_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_com_asig 
  (
    asi_id number,
    asi_com number,
    asi_asig number,
    asi_sit number,
    desp_asi_id number,
    desp_asi_com number,
    desp_asi_asig number,
    desp_asi_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_comisiones 
  (
    com_id number,
    com_desc varchar2(50),
    com_lugar varchar2(50),
    com_doc varchar2(50),
    com_fec_inicio TIMESTAMP(0),
    com_fec_fin TIMESTAMP(0),
    com_detalle varchar2(150),
    com_info varchar2(150),
    com_sit number,
    com_ing TIMESTAMP(0),
    com_dep number,
    desp_com_id number,
    desp_com_desc varchar2(50),
    desp_com_lugar varchar2(50),
    desp_com_doc varchar2(50),
    desp_com_fec_inicio TIMESTAMP(0),
    desp_com_fec_fin TIMESTAMP(0),
    desp_com_detalle varchar2(150),
    desp_com_info varchar2(150),
    desp_com_sit number,
    desp_com_ing TIMESTAMP(0),
    desp_com_dep number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sig_personal_contrato 
  (
    con_catalogo number not null ,
    con_nom1 varchar2(50),
    con_nom2 varchar2(50),
    con_ape1 varchar2(50),
    con_ape2 varchar2(50),
    con_grado number,
    con_dep number,
    con_sit number,
    constraint pk_sig_personal_contrato primary key (con_catalogo) 
  );
/
create table ADMIN.aud_sig_personal_contrato 
  (
    con_catalogo number,
    con_nom1 varchar2(50),
    con_nom2 varchar2(50),
    con_ape1 varchar2(50),
    con_ape2 varchar2(50),
    con_grado number,
    con_dep number,
    con_sit number,
    desp_con_catalogo number,
    desp_con_nom1 varchar2(50),
    desp_con_nom2 varchar2(50),
    desp_con_ape1 varchar2(50),
    desp_con_ape2 varchar2(50),
    desp_con_grado number,
    desp_con_dep number,
    desp_con_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_marcas 
  (
    mar_id number,
    mar_nombre varchar2(50),
    desp_mar_id number,
    desp_mar_nombre varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_novedades 
  (
    nov_id number,
    nov_catalogo number,
    nov_fecha TIMESTAMP(0),
    nov_descripcion varchar2(2000),
    nov_dependencia number,
    nov_sit number,
    desp_nov_id number,
    desp_nov_catalogo number,
    desp_nov_fecha TIMESTAMP(0),
    desp_nov_descripcion varchar2(2000),
    desp_nov_dependencia number,
    desp_nov_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_jefes_servicio 
  (
    jefe_hist_id number,
    jefe_grado number,
    jefe_arma number,
    jefe_fecha_inicial TIMESTAMP(0),
    jefe_fecha_final TIMESTAMP(0),
    jefe_catalogo number,
    jefe_dependencia number,
    desp_jefe_hist_id number,
    desp_jefe_grado number,
    desp_jefe_arma number,
    desp_jefe_fecha_inicial TIMESTAMP(0),
    desp_jefe_fecha_final TIMESTAMP(0),
    desp_jefe_catalogo number,
    desp_jefe_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_soportecpu 
  (
    cpu_registro number,
    cpu_fecha date,
    cpu_oficio varchar2(100),
    cpu_usuario varchar2(100),
    cpu_telefono number,
    cpu_tecnico number,
    cpu_dependencia number,
    cpu_procesador varchar2(100),
    cpu_cdrom varchar2(2),
    cpu_tarjetasonido varchar2(2),
    cpu_drivers varchar2(2),
    cpu_discoduro varchar2(100),
    cpu_tarjetavideo varchar2(100),
    cpu_teclado varchar2(2),
    cpu_mouse varchar2(2),
    cpu_fuente varchar2(2),
    cpu_cable varchar2(2),
    cpu_motivo varchar2(100),
    cpu_situacion number,
    desp_cpu_registro number,
    desp_cpu_fecha date,
    desp_cpu_oficio varchar2(100),
    desp_cpu_usuario varchar2(100),
    desp_cpu_telefono number,
    desp_cpu_tecnico number,
    desp_cpu_dependencia number,
    desp_cpu_procesador varchar2(100),
    desp_cpu_cdrom varchar2(2),
    desp_cpu_tarjetasonido varchar2(2),
    desp_cpu_drivers varchar2(2),
    desp_cpu_discoduro varchar2(100),
    desp_cpu_tarjetavideo varchar2(100),
    desp_cpu_teclado varchar2(2),
    desp_cpu_mouse varchar2(2),
    desp_cpu_fuente varchar2(2),
    desp_cpu_cable varchar2(2),
    desp_cpu_motivo varchar2(100),
    desp_cpu_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_soportemon 
  (
    mon_registro number,
    mon_fecha date,
    mon_oficio varchar2(100),
    mon_usuario varchar2(100),
    mon_telefono number,
    mon_tecnico number,
    mon_dependencia number,
    mon_marca number,
    mon_modelo varchar2(50),
    mon_nonumber varchar2(50),
    mon_tipo varchar2(5),
    mon_cable varchar2(2),
    mon_motivo varchar2(150),
    mon_situacion number,
    desp_mon_registro number,
    desp_mon_fecha date,
    desp_mon_oficio varchar2(100),
    desp_mon_usuario varchar2(100),
    desp_mon_telefono number,
    desp_mon_tecnico number,
    desp_mon_dependencia number,
    desp_mon_marca number,
    desp_mon_modelo varchar2(50),
    desp_mon_nonumber varchar2(50),
    desp_mon_tipo varchar2(5),
    desp_mon_cable varchar2(2),
    desp_mon_motivo varchar2(150),
    desp_mon_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_soporteimp 
  (
    imp_registro number,
    imp_fecha date,
    imp_oficio varchar2(100),
    imp_usuario varchar2(100),
    imp_telefono number,
    imp_tecnico number,
    imp_dependencia number,
    imp_tipo varchar2(10),
    imp_marca number,
    imp_modelo varchar2(100),
    imp_noserie varchar2(100),
    imp_cable varchar2(2),
    imp_motivo varchar2(100),
    imp_cableparalelo varchar2(2),
    imp_situacion number,
    desp_imp_registro number,
    desp_imp_fecha date,
    desp_imp_oficio varchar2(100),
    desp_imp_usuario varchar2(100),
    desp_imp_telefono number,
    desp_imp_tecnico number,
    desp_imp_dependencia number,
    desp_imp_tipo varchar2(10),
    desp_imp_marca number,
    desp_imp_modelo varchar2(100),
    desp_imp_noserie varchar2(100),
    desp_imp_cable varchar2(2),
    desp_imp_motivo varchar2(100),
    desp_imp_cableparalelo varchar2(2),
    desp_imp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sig_soporteotr 
  (
    otr_registro number,
    otr_fecha date,
    otr_oficio varchar2(100),
    otr_usuario varchar2(100),
    otr_telefono number,
    otr_tecnico number,
    otr_dependencia number,
    otr_marca number,
    otr_modelo varchar2(100),
    otr_noserie varchar2(100),
    otr_motivo varchar2(100),
    otr_trabajo varchar2(200),
    otr_situacion number,
    desp_otr_registro number,
    desp_otr_fecha date,
    desp_otr_oficio varchar2(100),
    desp_otr_usuario varchar2(100),
    desp_otr_telefono number,
    desp_otr_tecnico number,
    desp_otr_dependencia number,
    desp_otr_marca number,
    desp_otr_modelo varchar2(100),
    desp_otr_noserie varchar2(100),
    desp_otr_motivo varchar2(100),
    desp_otr_trabajo varchar2(200),
    desp_otr_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.smg_tipos_mantenimiento 
  (
    mant_id number not null ,
    mant_nombre varchar2(50),
    mant_desc varchar2(150),
    mant_resp number,
    mant_sit number,
    constraint pk_smg_tipos_mantenimiento primary key (mant_id) 
  );
/
create table ADMIN.smg_motivos 
  (
    mot_id number not null ,
    mot_nombre varchar2(50),
    mot_desc varchar2(150),
    mot_sit number,
    constraint pk_smg_motivos primary key (mot_id) 
  );
/
create table ADMIN.smg_historial_mantenimiento 
  (
    mant_codigo number not null ,
    mant_fusil number,
    mant_cat number,
    mant_mant number,
    mant_fecha date,
    mant_det varchar2(100),
    mant_sit number,
    constraint pk_smg_historial_mantenimiento primary key (mant_codigo) 
  );
/
create table ADMIN.smg_historial_disparos 
  (
    dis_id number not null ,
    dis_fusil number,
    dis_cantidad number,
    dis_fecha date,
    dis_doc varchar2(50),
    dis_mot number,
    dis_det varchar2(100),
    dis_sit number,
    constraint pk_smg_historial_disparos primary key (dis_id) 
  );
/
create table ADMIN.aud_smg_motivos 
  (
    mot_id number,
    mot_nombre varchar2(50),
    mot_desc varchar2(150),
    mot_sit number,
    desp_mot_id number,
    desp_mot_nombre varchar2(50,1),
    desp_mot_desc varchar2(150),
    desp_mot_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_smg_tipos_mantenimiento 
  (
    mant_id number,
    mant_nombre varchar2(50),
    mant_desc varchar2(150),
    mant_resp number,
    mant_sit number,
    desp_mant_id number,
    desp_mant_nombre varchar2(50),
    desp_mant_desc varchar2(150),
    desp_mant_resp number,
    desp_mant_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_smg_historial_disparos 
  (
    dis_id number,
    dis_fusil number,
    dis_cantidad number,
    dis_fecha date,
    dis_doc varchar2(50),
    dis_mot number,
    dis_det varchar2(100),
    dis_sit number,
    desp_dis_id number,
    desp_dis_fusil number,
    desp_dis_cantidad number,
    desp_dis_fecha date,
    desp_dis_doc varchar2(50),
    desp_dis_mot number,
    desp_dis_det varchar2(100),
    desp_dis_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_smg_historial_mantenimiento 
  (
    mant_codigo number,
    mant_fusil number,
    mant_cat number,
    mant_mant number,
    mant_fecha date,
    mant_det varchar2(100),
    mant_sit number,
    desp_mant_codigo number,
    desp_mant_fusil number,
    desp_mant_cat number,
    desp_mant_mant number,
    desp_mant_fecha date,
    desp_mant_det varchar2(100),
    desp_mant_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fp_fondo 
  (
    fon_codigo number not null ,
    fon_desc varchar2(250) not null ,
    fon_stat number not null ,
    constraint pk_fp_fondo primary key (fon_codigo) *****************
  );
/
create table ADMIN.fp_uso 
  (
    uso_codigo number not null ,
    uso_desc varchar2(250) not null ,
    uso_stat number not null ,
    constraint pk_fp_uso primary key (uso_codigo)
  );
/
create table ADMIN.fp_clasificacion 
  (
    clas_codigo number not null ,
    clas_desc varchar2(250) not null ,
    clas_stat number not null ,
    constraint pk_fp_clasificacion primary key (clas_codigo) 
  );
/
create table ADMIN.fp_estado 
  (
    est_codigo number not null ,
    est_desc varchar2(250) not null ,
    est_stat number not null ,
    constraint pk_fp_estado primary key (est_codigo)  constraint
  );
/
create table ADMIN.fp_documentos 
  (
    doc_codigo number not null ,
    doc_titulo varchar2(250) not null ,
    doc_descripcion varchar2(250) not null ,
    doc_tamanio number not null ,
    doc_tipo varchar2(250) not null ,
    doc_nombre_archivo varchar2(250) not null ,
    doc_respuesta number not null ,
    doc_fec_ini TIMESTAMP not null ,
    doc_fec_print TIMESTAMP not null ,
    doc_fec_fin TIMESTAMP not null ,
    doc_obs1 varchar2(250) not null ,
    doc_obs2 varchar2(250) not null ,
    doc_obs3 varchar2(250) not null ,
    doc_fondo number not null ,
    doc_uso number not null ,
    doc_estado number not null ,
    doc_clasificacion number not null ,
    doc_monto number(18,2) not null ,
    doc_prov varchar2(250) not null ,
    doc_catalogo number not null ,
    doc_dependencia number not null ,
    doc_cantidad number,
    doc_objeto_uso varchar2(150),
    constraint pk_fp_documentos primary key (doc_codigo) 
  );
/
create table ADMIN.fp_seguridad 
  (
    sec_codigo number not null ,
    sec_catalogo number not null ,
    sec_fecha TIMESTAMP not null ,
    sec_estado number not null ,
    sec_documento number not null ,
    sec_respuesta number not null ,
    constraint pk_fp_seguridad primary key (sec_codigo)
  );
/
create table ADMIN.lenguas 
  (
    leng_id number not null ,
    leng_desc char(30) not null ,
    leng_clase char(2) not null ,
    leng_situacion char(1) not null ,
    constraint pk_lenguas primary key (leng_id) 
  );
/
create table ADMIN.etnias 
  (
    etn_id number not null ,
    etn_desc char(30) not null ,
    etn_clase char(2) not null ,
    etn_situacion char(1) not null ,
    constraint pk_etnias primary key (etn_id) 
  );
/
create table ADMIN.act_etnia 
  (
    et_cat number not null ,
    et_etnia number not null ,
    et_fec date,
    et_leng number not null ,
    et_clase char(2) not null ,
    et_sit char(1) not null ,
    constraint pk_act_etnia primary key (et_cat) 
  );
/
create table ADMIN.ep_mper 
  (
    per_control number not null ,
    per_catalogo char(6) not null ,
    per_serie char(8),
    per_grado number not null ,
    per_arma number not null ,
    per_nom1 char(15) not null ,
    per_nom2 char(15),
    per_ape1 char(15) not null ,
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4) not null ,
    per_ced_reg char(20),
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4) not null ,
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4) not null ,
    per_telefono number,
    per_sexo char(1) not null ,
    per_fec_nac date not null ,
    per_nac_lugar char(4) not null ,
    per_promocion number,
    per_afil_ipm char(1) not null ,
    per_sangre char(3) not null ,
    per_antiguedad number,
    per_bienal number not null ,
    per_plaza number not null ,
    per_desc_empleo char(45) not null ,
    per_fec_nomb date not null ,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2) not null ,
    per_prima_prof number,
    per_dpi char(15),
    per_cambio number,
    per_fecambio date
  );
/
create table ADMIN.controlorgep 
  (
    con_codigo number not null ,
    con_ordeno char(200) not null ,
    con_autorizo char(200) not null ,
    con_plan char(200) not null ,
    con_fecha date 
        default current year to day,
    con_situacion number
  );
/
create table ADMIN.aud_fp_fondo 
  (
    fon_codigo number,
    fon_desc varchar2(250),
    fon_stat number,
    desp_fon_codigo number,
    desp_fon_desc varchar2(250),
    desp_fon_stat number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fp_uso 
  (
    uso_codigo number,
    uso_desc varchar2(250),
    uso_stat number,
    desp_uso_codigo number,
    desp_uso_desc varchar2(250),
    desp_uso_stat number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fp_estado 
  (
    est_codigo number,
    est_desc varchar2(250),
    est_stat number,
    desp_est_codigo number,
    desp_est_desc varchar2(250),
    desp_est_stat number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fp_clasificacion 
  (
    clas_codigo number,
    clas_desc varchar2(250),
    clas_stat number,
    desp_clas_codigo number,
    desp_clas_desc varchar2(250),
    desp_clas_stat number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fp_respuesta 
  (
    res_codigo number not null ,
    res_titulo varchar2(250) not null ,
    res_descripcion varchar2(250) not null ,
    res_tamanio number not null ,
    res_tipo varchar2(250) not null ,
    res_nombre_archivo varchar2(250) not null ,
    res_fec TIMESTAMP not null ,
    res_status number not null ,
    res_catalogo number not null ,
    res_dependencia number not null ,
    constraint pk_aud_fp_respuesta primary key (res_codigo)
  );
/
create table ADMIN.aud_fp_respuesta 
  (
    res_codigo number,
    res_titulo varchar2(250),
    res_descripcion varchar2(250),
    res_tamanio number,
    res_tipo varchar2(250),
    res_nombre_archivo varchar2(250),
    res_fec TIMESTAMP,
    res_status number,
    res_catalogo number,
    res_dependencia number,
    desp_res_codigo number,
    desp_res_titulo varchar2(250),
    desp_res_descripcion varchar2(250),
    desp_res_tamanio number,
    desp_res_tipo varchar2(250),
    desp_res_nombre_archivo varchar2(250),
    desp_res_fec TIMESTAMP,
    desp_res_status number,
    desp_res_catalogo number,
    desp_res_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fag_tip_aeronave 
  (
    aer_tip_registro number not null ,
    aer_desc_aeronave varchar2(50),
    aer_tip_ala varchar2(8),
    aer_tip_situacion char(1),
    constraint pk_fag_tip_aeronave primary key (aer_tip_registro) 
  );
/
create table ADMIN.fag_aero_gt 
  (
    aero_id number not null ,
    aero_matricula varchar2(10),
    aero_tip_aeronave number,
    aero_hrs_voladas float,
    aero_situacion char(1),
    constraint pk_fag_aero_gt primary key (aero_matricula) 
  );
/
create table ADMIN.fag_dep_estado 
  (
    dep_est_registro number not null ,
    dep_est_desc_lg varchar2(150),
    dep_est_desc_ct varchar2(75),
    dep_est_situacion char(1),
    constraint pk_fag_dep_estado primary key (dep_est_registro) 
  );
/
create table ADMIN.fag_hrs_historial_vuelo 
  (
    hist_catalogo number,
    hist_hrs_dia float,
    hist_hrs_noche float,
    hist_hrs_nav float,
    hist_hrs_instrum float,
    hist_horas_total float,
    hist_ala varchar2(8),
    hist_situacion char(1),
    constraint pk_fag_hrs_historial_vuelo primary key (hist_catalogo) 
  );
/
create table ADMIN.fag_rep_mision_vuelo 
  (
    rep_registro number not null ,
    rep_fecha date,
    rep_matricula varchar2(10),
    rep_cat_piloto_mili number,
    rep_piloto_civ varchar2(100),
    rep_cat_copiloto_mili number,
    rep_copiloto_civ varchar2(100),
    rep_cat_3ernav_mili number,
    rep_3ernav_civ varchar2(100),
    rep_invitado varchar2(100),
    rep_hrs_voladas_dia float,
    rep_hrs_voladas_noche float,
    rep_hrs_voladas_nvg float,
    rep_hrs_voladas_instrum float,
    rep_hrs_voladas_total float,
    rep_dep_ejercito number,
    rep_dep_estado number,
    rep_cant_pasa number,
    rep_nom_pasa varchar2(250),
    rep_obs varchar2(100),
    rep_cat_of_op number,
    rep_situacion char(1),
    constraint pk_fag_rep_mision_vuelo primary key (rep_registro) 
  );
/
create table ADMIN.fag_dest_vuelos 
  (
    dest_registro number not null ,
    dest_pais number,
    dest_depto char(4),
    dest_mun char(4),
    dest_otros varchar2(250),
    dest_reg_rmv number,
    constraint pk_fag_dest_vuelos primary key (dest_registro) 
  );
/
create table ADMIN.fag_rep_consumo_combustible 
  (
    comb_id number not null ,
    comb_cantidad float,
    comb_reg_vuelo number,
    constraint pk_fag_rep_consumo_combustible primary key (comb_id) 
  );
/
create table ADMIN.fag_vuelo_mision 
  (
    mision_id number not null ,
    mision_reco char(1),
    mision_transporte char(1),
    mision_ferry char(1),
    mision_ev_med char(1),
    mision_cobertura char(1),
    mision_abasto char(1),
    mision_pist_clandest char(1),
    mision_lanz_paraca char(1),
    mision_areas_front char(1),
    mision_sofoc_incend char(1),
    mision_desas_natur char(1),
    mision_comb_narco char(1),
    mision_instruccion char(1),
    mision_manto char(1),
    mision_emerg_nac char(1),
    mision_det_emerg varchar2(50),
    mision_estandarizacion char(1),
    mision_patrulla char(1),
    mision_registro_vuelo number,
    mision_hrs float,
    mision_situacion char(1),
    constraint pk_fag_vuelo_mision primary key (mision_id) 
  );
/
create table ADMIN.aud_fp_documentos 
  (
    doc_codigo number,
    doc_titulo varchar2(250),
    doc_descripcion varchar2(250),
    doc_tamanio number,
    doc_tipo varchar2(250),
    doc_nombre_archivo varchar2(250),
    doc_respuesta number,
    doc_fec_ini TIMESTAMP,
    doc_fec_print TIMESTAMP,
    doc_fec_fin TIMESTAMP,
    doc_obs1 varchar2(250),
    doc_obs2 varchar2(250),
    doc_obs3 varchar2(250),
    doc_fondo number,
    doc_uso number,
    doc_estado number,
    doc_clasificacion number,
    doc_monto number(18,2),
    doc_prov varchar2(250),
    doc_catalogo number,
    doc_dependencia number,
    doc_cantidad number,
    doc_objeto_uso varchar2(150),
    desp_doc_codigo number,
    desp_doc_titulo varchar2(250),
    desp_doc_descripcion varchar2(250),
    desp_doc_tamanio number,
    desp_doc_tipo varchar2(250),
    desp_doc_nombre_archivo varchar2(250),
    desp_doc_respuesta number,
    desp_doc_fec_ini TIMESTAMP,
    desp_doc_fec_print TIMESTAMP,
    desp_doc_fec_fin TIMESTAMP,
    desp_doc_obs1 varchar2(250),
    desp_doc_obs2 varchar2(250),
    desp_doc_obs3 varchar2(250),
    desp_doc_fondo number,
    desp_doc_uso number,
    desp_doc_estado number,
    desp_doc_clasificacion varchar2(150),
    desp_doc_monto number(18,2),
    desp_doc_prov varchar2(250),
    desp_doc_catalogo number,
    desp_doc_dependencia number,
    desp_doc_cantidad number,
    desp_doc_objeto_uso varchar2(150),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fp_seguridad 
  (
    sec_codigo number,
    sec_catalogo number,
    sec_fecha TIMESTAMP,
    sec_estado number,
    sec_documento number,
    sec_respuesta number,
    desp_sec_codigo number,
    desp_sec_catalogo number,
    desp_sec_fecha TIMESTAMP,
    desp_sec_estado number,
    desp_sec_documento number,
    desp_sec_respuesta number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_tip_aeronave 
  (
    aer_tip_registro number,
    aer_desc_aeronave varchar2(50),
    aer_tip_ala varchar2(8),
    aer_tip_situacion char(1),
    desp_aer_tip_registro number,
    desp_aer_desc_aeronave varchar2(50),
    desp_aer_tip_ala varchar2(8),
    desp_aer_tip_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_aero_gt 
  (
    aero_id number,
    aero_matricula varchar2(10),
    aero_tip_aeronave number,
    aero_hrs_voladas float,
    aero_situacion char(1),
    desp_aero_id number,
    desp_aero_matricula varchar2(10),
    desp_aero_tip_aeronave number,
    desp_aero_hrs_voladas float,
    desp_aero_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_dep_estado 
  (
    dep_est_registro number,
    dep_est_desc_lg varchar2(150),
    dep_est_desc_ct varchar2(75),
    dep_est_situacion char(1),
    desp_dep_est_registro number,
    desp_dep_est_desc_lg varchar2(150),
    desp_dep_est_desc_ct varchar2(75),
    desp_dep_est_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_hrs_historial_vuelo 
  (
    hist_catalogo number,
    hist_hrs_dia float,
    hist_hrs_noche float,
    hist_hrs_nav float,
    hist_hrs_instrum float,
    hist_horas_total float,
    hist_ala varchar2(8),
    hist_situacion char(1),
    desp_hist_catalogo number,
    desp_hist_hrs_dia float,
    desp_hist_hrs_noche float,
    desp_hist_hrs_nav float,
    desp_hist_hrs_instrum float,
    desp_hist_horas_total float,
    desp_hist_ala varchar2(8),
    desp_hist_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_dest_vuelos 
  (
    dest_registro number,
    dest_pais number,
    dest_depto char(4),
    dest_mun char(4),
    dest_otros varchar2(250),
    dest_reg_rmv number,
    desp_dest_registro number,
    desp_dest_pais number,
    desp_dest_depto char(4),
    desp_dest_mun char(4),
    desp_dest_otros varchar2(250),
    desp_dest_reg_rmv number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_rep_consumo_combustible 
  (
    comb_id number,
    comb_cantidad float,
    comb_reg_vuelo number,
    desp_comb_id number,
    desp_comb_cantidad float,
    desp_comb_reg_vuelo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_rep_mision_vuelo 
  (
    rep_registro number,
    rep_fecha date,
    rep_matricula varchar2(10),
    rep_cat_piloto_mili number,
    rep_piloto_civ varchar2(100),
    rep_cat_copiloto_mili number,
    rep_copiloto_civ varchar2(100),
    rep_cat_3ernav_mili number,
    rep_3ernav_civ varchar2(100),
    rep_invitado varchar2(100),
    rep_hrs_voladas_dia float,
    rep_hrs_voladas_noche float,
    rep_hrs_voladas_nvg float,
    rep_hrs_voladas_instrum float,
    rep_hrs_voladas_total float,
    rep_dep_ejercito number,
    rep_dep_estado number,
    rep_cant_pasa number,
    rep_nom_pasa varchar2(250),
    rep_obs varchar2(100),
    rep_cat_of_op number,
    rep_situacion char(1),
    desp_rep_registro number,
    desp_rep_fecha date,
    desp_rep_matricula varchar2(10),
    desp_rep_cat_piloto_mili number,
    desp_rep_piloto_civ varchar2(100),
    desp_rep_cat_copiloto_mili number,
    desp_rep_copiloto_civ varchar2(100),
    desp_rep_cat_3ernav_mili number,
    desp_rep_3ernav_civ varchar2(100),
    desp_rep_invitado varchar2(100),
    desp_rep_hrs_voladas_dia float,
    desp_rep_hrs_voladas_noche float,
    desp_rep_hrs_voladas_nvg float,
    desp_rep_hrs_voladas_instrum float,
    desp_rep_hrs_voladas_total float,
    desp_rep_dep_ejercito number,
    desp_rep_dep_estado number,
    desp_rep_cant_pasa number,
    desp_rep_nom_pasa varchar2(250),
    desp_rep_obs varchar2(100),
    desp_rep_cat_of_op number,
    desp_rep_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_vuelo_mision 
  (
    mision_id number,
    mision_reco char(1),
    mision_transporte char(1),
    mision_ferry char(1),
    mision_ev_med char(1),
    mision_cobertura char(1),
    mision_abasto char(1),
    mision_pist_clandest char(1),
    mision_lanz_paraca char(1),
    mision_areas_front char(1),
    mision_sofoc_incend char(1),
    mision_desas_natur char(1),
    mision_comb_narco char(1),
    mision_instruccion char(1),
    mision_manto char(1),
    mision_emerg_nac char(1),
    mision_det_emerg varchar2(50),
    mision_estandarizacion char(1),
    mision_patrulla char(1),
    mision_registro_vuelo number,
    mision_hrs float,
    mision_situacion char(1),
    desp_mision_id number,
    desp_mision_reco char(1),
    desp_mision_transporte char(1),
    desp_mision_ferry char(1),
    desp_mision_ev_med char(1),
    desp_mision_cobertura char(1),
    desp_mision_abasto char(1),
    desp_mision_pist_clandest char(1),
    desp_mision_lanz_paraca char(1),
    desp_mision_areas_front char(1),
    desp_mision_sofoc_incend char(1),
    desp_mision_desas_natur char(1),
    desp_mision_comb_narco char(1),
    desp_mision_instruccion char(1),
    desp_mision_manto char(1),
    desp_mision_emerg_nac char(1),
    desp_mision_det_emerg varchar2(50),
    desp_mision_estandarizacion char(1),
    desp_mision_patrulla char(1),
    desp_mision_registro_vuelo number,
    desp_mision_hrs float,
    desp_mision_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_act_etnia 
  (
    et_cat number,
    et_etnia number,
    et_fec date,
    et_leng number,
    et_clase char(2),
    et_sit char(1),
    desp_et_cat number,
    desp_et_etnia number,
    desp_et_fec date,
    desp_et_leng number,
    desp_et_clase char(2),
    desp_et_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_etnias 
  (
    etn_id number,
    etn_desc char(30),
    etn_clase char(2),
    etn_situacion char(1),
    desp_etn_id number,
    desp_etn_desc char(30),
    desp_etn_clase char(2),
    desp_etn_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_far_contrato 
  (
    con_id number,
    con_desc varchar2(250),
    con_situacion number,
    con_observacion varchar2(250),
    desp_con_id number,
    desp_con_desc varchar2(250),
    desp_con_situacion number,
    desp_con_observacion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_forma_pago 
  (
    form_id number not null ,
    form_desc varchar2(250),
    form_situacion number,
    constraint pk_far_forma_pago primary key (form_id) 
  );
/
create table ADMIN.aud_far_proveedor 
  (
    prov_id number,
    prov_nom_emp varchar2(250),
    prov_dir_emp varchar2(250),
    prov_tel1_emp number,
    prov_tel2_emp number,
    prov_correo_emp varchar2(250),
    prov_nom1_enc varchar2(250),
    prov_nom2_enc varchar2(250),
    prov_ape1_enc varchar2(250),
    prov_ape2_enc varchar2(250),
    prov_dir_enc varchar2(250),
    prov_tel1_enc number,
    prov_tel2_enc number,
    prov_correo_enc varchar2(250),
    prov_situacion number,
    prov_observacion varchar2(250),
    desp_prov_id number,
    desp_prov_nom_emp varchar2(250),
    desp_prov_dir_emp varchar2(250),
    desp_prov_tel1_emp number,
    desp_prov_tel2_emp number,
    desp_prov_correo_emp varchar2(250),
    desp_prov_nom1_enc varchar2(250),
    desp_prov_nom2_enc varchar2(250),
    desp_prov_ape1_enc varchar2(250),
    desp_prov_ape2_enc varchar2(250),
    desp_prov_dir_enc varchar2(250),
    desp_prov_tel1_enc number,
    desp_prov_tel2_enc number,
    desp_prov_correo_enc varchar2(250),
    desp_prov_situacion number,
    desp_prov_observacion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.farma_dependencias_asignadas 
  (
    dep_asig_id number not null ,
    dep_asig_uni_eje number,
    dep_asig_dep number,
    dep_asig_sit number,
    constraint pk_farma_dependencias_asignadas primary key (dep_asig_id) 
  );
/
create table ADMIN.com_uniejec 
  (
    uni_codigo number,
    uni_desc_lg varchar2(255),
    uni_desc_ct varchar2(200),
    uni_obs varchar2(25),
    uni_sit varchar2(1),
    constraint pk_com_uniejec primary key (uni_codigo) 
  );
/
create table ADMIN.aud_com_uniejec 
  (
    uni_codigo number,
    uni_desc_lg varchar2(255),
    uni_desc_ct varchar2(200),
    uni_obs varchar2(25),
    uni_sit varchar2(1),
    desp_uni_codigo number,
    desp_uni_desc_lg varchar2(255),
    desp_uni_desc_ct varchar2(200),
    desp_uni_obs varchar2(25),
    desp_uni_sit varchar2(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_far_forma_pago 
  (
    form_id number,
    form_desc varchar2(250),
    form_situacion number,
    desp_form_id number,
    desp_form_desc varchar2(250),
    desp_form_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_presentaciones 
  (
    pres_id number,
    pres_codigo varchar2(100),
    pres_nom varchar2(100),
    pres_sit number,
    pres_obs varchar2(255),
    desp_pres_id number,
    desp_pres_codigo varchar2(100),
    desp_pres_nom varchar2(100),
    desp_pres_sit number,
    desp_pres_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_unidades_medida 
  (
    uni_med_id number,
    uni_med_desc_lg varchar2(100),
    uni_med_desc_ct varchar2(100),
    uni_med_sit number,
    uni_med_obs varchar2(255),
    desp_uni_med_id number,
    desp_uni_med_desc_lg varchar2(100),
    desp_uni_med_desc_ct varchar2(100),
    desp_uni_med_sit number,
    desp_uni_med_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_tipo_medicamentos 
  (
    tipo_med_id number,
    tipo_med_nom varchar2(100),
    tipo_med_sit number,
    tipo_med_obs varchar2(255),
    desp_tipo_med_id number,
    desp_tipo_med_nom varchar2(100),
    desp_tipo_med_sit number,
    desp_tipo_med_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_renglones_presupuestarios 
  (
    ren_pres_id number,
    ren_pres_num number,
    ren_pres_desc varchar2(255),
    ren_pres_sit number,
    ren_pres_obs varchar2(255),
    desp_ren_pres_id number,
    desp_ren_pres_num number,
    desp_ren_pres_desc varchar2(255),
    desp_ren_pres_sit number,
    desp_ren_pres_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_facturacion 
  (
    fac_id number,
    fac_dep number,
    fac_dir varchar2(255),
    fac_tel1 number,
    fac_tel2 number,
    fac_nit varchar2(20),
    fac_sit number,
    fac_obs varchar2(255),
    desp_fac_id number,
    desp_fac_dep number,
    desp_fac_dir varchar2(255),
    desp_fac_tel1 number,
    desp_fac_tel2 number,
    desp_fac_nit varchar2(20),
    desp_fac_sit number,
    desp_fac_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_dependencias_asignadas 
  (
    dep_asig_id number,
    dep_asig_uni_eje number,
    dep_asig_dep number,
    dep_asig_sit number,
    desp_dep_asig_id number,
    desp_dep_asig_uni_eje number,
    desp_dep_asig_dep number,
    desp_dep_asig_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_orden_compra 
  (
    ord_comp_id number,
    ord_comp_num varchar2(200),
    ord_comp_dep number,
    ord_comp_cont number,
    ord_comp_prov number,
    ord_comp_sit number,
    ord_comp_fech_creac date,
    ord_comp_fech_impr date,
    ord_comp_obs varchar2(255),
    desp_ord_comp_id number,
    desp_ord_comp_num varchar2(200),
    desp_ord_comp_dep number,
    desp_ord_comp_cont number,
    desp_ord_comp_prov number,
    desp_ord_comp_sit number,
    desp_ord_comp_fech_creac date,
    desp_ord_comp_fech_impr date,
    desp_ord_comp_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_compra_asignada 
  (
    comp_asig_id number,
    comp_asig_ord_id number,
    comp_asig_ins number,
    comp_asig_pres number,
    comp_asig_cant number,
    comp_asig_prec number(16,2),
    comp_asig_total number(16,2),
    comp_asig_sit number,
    comp_asig_obs varchar2(255),
    desp_comp_asig_id number,
    desp_comp_asig_ord_id number,
    desp_comp_asig_ins number,
    desp_comp_asig_pres number,
    desp_comp_asig_cant number,
    desp_comp_asig_prec number(16,2),
    desp_comp_asig_total number(16,2),
    desp_comp_asig_sit number,
    desp_comp_asig_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_farma_presentacion_asignada 
  (
    pres_asig_id number,
    pres_asig_far_id number,
    pres_asig_cod varchar2(50),
    pres_asig_pres number,
    pres_asig_uni_med number,
    pres_asig_precio varchar2(100),
    pres_asig_sit number,
    pres_asig_obs varchar2(255),
    desp_pres_asig_id number,
    desp_pres_asig_far_id number,
    desp_pres_asig_cod varchar2(50),
    desp_pres_asig_pres number,
    desp_pres_asig_uni_med number,
    desp_pres_asig_precio varchar2(100),
    desp_pres_asig_sit number,
    desp_pres_asig_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_contrato 
  (
    con_id number not null ,
    con_desc varchar2(250),
    con_situacion number,
    con_observacion varchar2(250),
    constraint pk_far_contrato primary key (con_id) 
  );
/
create table ADMIN.far_proveedor 
  (
    prov_id number not null ,
    prov_nom_emp varchar2(250),
    prov_dir_emp varchar2(250),
    prov_tel1_emp number,
    prov_tel2_emp number,
    prov_correo_emp varchar2(250),
    prov_nom1_enc varchar2(250),
    prov_nom2_enc varchar2(250),
    prov_ape1_enc varchar2(250),
    prov_ape2_enc varchar2(250),
    prov_dir_enc varchar2(250),
    prov_tel1_enc number,
    prov_tel2_enc number,
    prov_correo_enc varchar2(250),
    prov_situacion number,
    prov_observacion varchar2(250),
    constraint pk_far_proveedor primary key (prov_id) 
  );
/
create table ADMIN.farma_presentaciones 
  (
    pres_id number not null ,
    pres_codigo varchar2(100),
    pres_nom varchar2(100),
    pres_sit number,
    pres_obs varchar2(255),
    constraint pk_farma_presentaciones primary key (pres_id) 
  );
/
create table ADMIN.farma_unidades_medida 
  (
    uni_med_id number not null ,
    uni_med_desc_lg varchar2(100),
    uni_med_desc_ct varchar2(100),
    uni_med_sit number,
    uni_med_obs varchar2(255),
    constraint pk_farma_unidades_medida primary key (uni_med_id) 
  );
/
create table ADMIN.farma_tipo_medicamentos 
  (
    tipo_med_id number not null ,
    tipo_med_nom varchar2(100),
    tipo_med_sit number,
    tipo_med_obs varchar2(255),
    constraint pk_farma_tipo_medicamentos primary key (tipo_med_id) 
  );
/
create table ADMIN.farma_renglones_presupuestarios 
  (
    ren_pres_id number not null ,
    ren_pres_num number,
    ren_pres_desc varchar2(255),
    ren_pres_sit number,
    ren_pres_obs varchar2(255),
    constraint pk_farma_renglones_presupuestarios primary key (ren_pres_id) 
  );
/
create table ADMIN.farma_facturacion 
  (
    fac_id number not null ,
    fac_dep number,
    fac_dir varchar2(255),
    fac_tel1 number,
    fac_tel2 number,
    fac_nit varchar2(20),
    fac_sit number,
    fac_obs varchar2(255),
    constraint pk_farma_facturacion primary key (fac_id) 
  );
/
create table ADMIN.farma_orden_compra 
  (
    ord_comp_id number not null ,
    ord_comp_num varchar2(200),
    ord_comp_dep number,
    ord_comp_cont number,
    ord_comp_prov number,
    ord_comp_sit number,
    ord_comp_fech_creac date,
    ord_comp_fech_impr date,
    ord_comp_obs varchar2(255),
    constraint pk_farma_orden_compra primary key (ord_comp_id) 
  );
/
create table ADMIN.farma_compra_asignada 
  (
    comp_asig_id number not null ,
    comp_asig_ord_id number,
    comp_asig_ins number,
    comp_asig_pres number,
    comp_asig_cant number,
    comp_asig_prec number(16,2),
    comp_asig_total number(16,2),
    comp_asig_sit number,
    comp_asig_obs varchar2(255),
    primary key (comp_asig_id) 
  );
/
create table ADMIN.farma_presentacion_asignada 
  (
    pres_asig_id number not null ,
    pres_asig_far_id number,
    pres_asig_cod varchar2(50),
    pres_asig_pres number,
    pres_asig_uni_med number,
    pres_asig_precio varchar2(100),
    pres_asig_sit number,
    pres_asig_obs varchar2(255),
    constraint pk_farma_presentacion_asignada primary key (pres_asig_id) 
  );
/
create table ADMIN.res_situacion 
  (
    sit_res_id number not null ,
    sit_res_situacion varchar2(50) not null ,
    sit_res_obs varchar2(50),
    sit_res_sit char(2),
    constraint pk_res_situacion primary key (sit_res_id) 
  );
/
create table ADMIN.aud_res_situacion 
  (
    sit_res_id number,
    sit_res_situacion varchar2(50),
    sit_res_obs varchar2(50),
    sit_res_sit char(2),
    desp_sit_res_id number,
    desp_sit_res_situacion varchar2(50),
    desp_sit_res_obs varchar2(50),
    desp_sit_res_sit char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.res_tipo 
  (
    tip_id number not null ,
    tip_descripcion varchar2(50) not null ,
    tip_obs varchar2(50) 
        default null,
    tip_situacion char(2) 
        default null,
    constraint pk_res_tipo primary key (tip_id) 
  );
/
create table ADMIN.aud_res_tipo 
  (
    tip_id number,
    tip_descripcion varchar2(50),
    tip_obs varchar2(50),
    tip_situacion char(2),
    desp_tip_id number,
    desp_tip_descripcion varchar2(50),
    desp_tip_obs varchar2(50),
    desp_tip_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mprof 
  (
    prof_codigo number not null ,
    prof_desc_lg char(100),
    prof_desc_ct char(75),
    prof_clase char(1),
    constraint pk_mprof primary key (prof_codigo) 
  );
/
create table ADMIN.aud_mprof 
  (
    prof_codigo number,
    prof_desc_lg char(100),
    prof_desc_ct char(75),
    prof_clase char(1),
    desp_prof_codigo number,
    desp_prof_desc_lg char(100),
    desp_prof_desc_ct char(75),
    desp_prof_clase char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.personalc 
  (
    cper_id number not null ,
    cper_dpi char(15) not null ,
    cper_nombre1 char(15),
    cper_nombre2 char(15),
    cper_nombre3 char(15),
    cper_apellido1 char(15),
    cper_apellido2 char(15),
    cper_apellido3 char(15),
    cper_direccion char(50),
    cper_estado_civil char(1),
    cper_sexo char(1),
    cper_sangre number,
    cper_profesion number,
    cper_telefono number,
    cper_celular number,
    cper_email varchar2(50),
    cper_fecha_nacimiento date,
    cper_dep_nacimiento char(4),
    cper_muni_nacimiento char(4),
    cper_religion number,
    cper_nit varchar2(12),
    cper_situacion number,
    cper_app varchar2(4),
    cper_na1 varchar2(10),
    cper_na2 varchar2(10),
    constraint pk_personalc primary key (cper_dpi) 
  );
/
create table ADMIN.res_fam 
  (
    fam_id number not null ,
    fam_dpi_parentesco char(15),
    fam_dpi char(15),
    fam_nom1 char(15),
    fam_nom2 char(15),
    fam_nom3 char(15),
    fam_ape1 char(15),
    fam_ape2 char(15),
    fam_ape3 char(15),
    fam_tel number,
    fam_parentezco number,
    constraint pk_res_fam primary key (fam_id) 
  );
/
create table ADMIN.res_mdep 
  (
    dep_id number not null ,
    dep_departamento char(4) not null ,
    dep_direccion varchar2(50) 
        default null,
    dep_coord_lat number(9,7) 
        default null,
    dep_coord_long number(9,7) 
        default null,
    dep_telefono number 
        default null,
    dep_email varchar2(50) not null ,
    dep_situacion char(4) not null ,
    constraint pk_res_mdep primary key (dep_id) 
  );
/
create table ADMIN.res_reservas 
  (
    reg_id number not null ,
    reg_codigo number,
    reg_catalogo number 
        default null,
    reg_fec_ext_dpi date 
        default null,
    reg_dpi_dep char(4) not null ,
    reg_dpi_mun char(4) 
        default null,
    reg_escol_grado number 
        default null,
    reg_fec_ingreso_rm date 
        default null,
    reg_lugar_entren number not null ,
    reg_fec_fin_curso date 
        default null,
    reg_no_cert number 
        default null,
    reg_dep number 
        default null,
    reg_fech_alta date 
        default null,
    reg_fech_baja date 
        default null,
    reg_profesion number,
    reg_tipo number 
        default null,
    reg_situacion number 
        default null,
    reg_obs varchar2(50) 
        default null,
    reg_det_sit number,
    constraint pk_res_reservas primary key (reg_id) 
  );
/
create table ADMIN.res_asig_per 
  (
    ape_id number not null ,
    ape_catalogo number not null ,
    ape_dep number not null ,
    ape_situacion number not null ,
    constraint pk_res_asig_per primary key (ape_id) 
  );
/
create table ADMIN.ddhh_gest 
  (
    gest_id number not null ,
    gest_cat number,
    gest_edad char(2),
    gest_grav_inic date,
    gest_grav_fin date,
    gest_pren_inic date,
    gest_pren_fin date,
    gest_fech_parto date,
    gest_post_inic date,
    gest_post_fin date,
    gest_lact_inic date,
    gest_lact_fin date,
    gest_region number,
    gest_tip_embarazo number,
    gest_tip_parto number,
    gest_obs varchar2(250),
    gest_situacion char(1),
    constraint pk_ddhh_gest primary key (gest_id) 
  );
/
create table ADMIN.ddhh_gest_cont 
  (
    gest_cont_id number,
    gest_cont_perc_id number,
    gest_cont_edad char(2),
    gest_cont_grav_inic date,
    gest_cont_grav_fin date,
    gest_cont_pren_inic date,
    gest_cont_pren_fin date,
    gest_cont_fech_parto date,
    gest_cont_post_inic date,
    gest_cont_post_fin date,
    gest_cont_lact_inic date,
    gest_cont_lact_fin date,
    gest_cont_region number,
    gest_cont_tip_embarazo number,
    gest_cont_tip_parto number,
    gest_cont_obs varchar2(250),
    gest_cont_situacion char(1),
    constraint pk_ddhh_gest_cont primary key (gest_cont_id) 
  );
/
create table ADMIN.aud_personalc 
  (
    cper_id number,
    cper_dpi char(15),
    cper_nombre1 char(15),
    cper_nombre2 char(15),
    cper_nombre3 char(15),
    cper_apellido1 char(15),
    cper_apellido2 char(15),
    cper_apellido3 char(15),
    cper_direccion char(50),
    cper_estado_civil char(1),
    cper_sexo char(1),
    cper_sangre number,
    cper_profesion number,
    cper_telefono number,
    cper_celular number,
    cper_email varchar2(50),
    cper_fecha_nacimiento date,
    cper_dep_nacimiento char(4),
    cper_muni_nacimiento char(4),
    cper_religion number,
    cper_nit varchar2(12),
    cper_situacion number,
    cper_app varchar2(4),
    cper_na1 varchar2(10),
    cper_na2 varchar2(10),
    desp_cper_id number,
    desp_cper_dpi char(15),
    desp_cper_nombre1 char(15),
    desp_cper_nombre2 char(15),
    desp_cper_nombre3 char(15),
    desp_cper_apellido1 char(15),
    desp_cper_apellido2 char(15),
    desp_cper_apellido3 char(15),
    desp_cper_direccion char(50),
    desp_cper_estado_civil char(1),
    desp_cper_sexo char(1),
    desp_cper_sangre number,
    desp_cper_profesion number,
    desp_cper_telefono number,
    desp_cper_celular number,
    desp_cper_email varchar2(50),
    desp_cper_fecha_nacimiento date,
    desp_cper_dep_nacimiento char(4),
    desp_cper_muni_nacimiento char(4),
    desp_cper_religion number,
    desp_cper_nit varchar2(12),
    desp_cper_situacion number,
    desp_cper_app varchar2(4),
    desp_cper_na1 varchar2(10),
    desp_cper_na2 varchar2(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_res_fam 
  (
    fam_id number,
    fam_dpi_parentesco char(15),
    fam_dpi char(15),
    fam_nom1 char(15),
    fam_nom2 char(15),
    fam_nom3 char(15),
    fam_ape1 char(15),
    fam_ape2 char(15),
    fam_ape3 char(15),
    fam_tel number,
    fam_parentezco number,
    desp_fam_id number,
    desp_fam_dpi_parentesco char(15),
    desp_fam_dpi char(15),
    desp_fam_nom1 char(15),
    desp_fam_nom2 char(15),
    desp_fam_nom3 char(15),
    desp_fam_ape1 char(15),
    desp_fam_ape2 char(15),
    desp_fam_ape3 char(15),
    desp_fam_tel number,
    desp_fam_parentezco number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_res_reservas 
  (
    reg_id number,
    reg_codigo number,
    reg_catalogo number,
    reg_fec_ext_dpi date,
    reg_dpi_dep char(4),
    reg_dpi_mun char(4),
    reg_escol_grado number,
    reg_fec_ingreso_rm date,
    reg_lugar_entren number,
    reg_fec_fin_curso date,
    reg_no_cert number,
    reg_dep number,
    reg_fech_alta date,
    reg_fech_baja date,
    reg_profesion number,
    reg_tipo number,
    reg_situacion number,
    reg_obs varchar2(50),
    reg_det_sit number,
    desp_reg_id number,
    desp_reg_codigo number,
    desp_reg_catalogo number,
    desp_reg_fec_ext_dpi date,
    desp_reg_dpi_dep char(4),
    desp_reg_dpi_mun char(4),
    desp_reg_escol_grado number,
    desp_reg_fec_ingreso_rm date,
    desp_reg_lugar_entren number,
    desp_reg_fec_fin_curso date,
    desp_reg_no_cert number,
    desp_reg_dep number,
    desp_reg_fech_alta date,
    desp_reg_fech_baja date,
    desp_reg_profesion number,
    desp_reg_tipo number,
    desp_reg_situacion number,
    desp_reg_obs varchar2(50),
    desp_reg_det_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_res_asig_per 
  (
    ape_id number,
    ape_catalogo number,
    ape_dep number,
    ape_situacion number,
    desp_ape_id number,
    desp_ape_catalogo number,
    desp_ape_dep number,
    desp_ape_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_res_mdep 
  (
    dep_id number,
    dep_departamento char(4),
    dep_direccion varchar2(50),
    dep_coord_lat number(9,7),
    dep_coord_long number(9,7),
    dep_telefono number,
    dep_email varchar2(50),
    dep_situacion char(4),
    desp_dep_id number,
    desp_dep_departamento char(4),
    desp_dep_direccion varchar2(50),
    desp_dep_coord_lat number(9,7),
    desp_dep_coord_long number(9,7),
    desp_dep_telefono number,
    desp_dep_email varchar2(50),
    desp_dep_situacion char(4),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ddhh_gest 
  (
    gest_id number,
    gest_cat number,
    gest_edad char(2),
    gest_grav_inic date,
    gest_grav_fin date,
    gest_pren_inic date,
    gest_pren_fin date,
    gest_fech_parto date,
    gest_post_inic date,
    gest_post_fin date,
    gest_lact_inic date,
    gest_lact_fin date,
    gest_region number,
    gest_tip_embarazo number,
    gest_tip_parto number,
    gest_obs varchar2(250),
    gest_situacion char(1),
    desp_gest_id number,
    desp_gest_cat number,
    desp_gest_edad char(2),
    desp_gest_grav_inic date,
    desp_gest_grav_fin date,
    desp_gest_pren_inic date,
    desp_gest_pren_fin date,
    desp_gest_fech_parto date,
    desp_gest_post_inic date,
    desp_gest_post_fin date,
    desp_gest_lact_inic date,
    desp_gest_lact_fin date,
    desp_gest_region number,
    desp_gest_tip_embarazo number,
    desp_gest_tip_parto number,
    desp_gest_obs varchar2(250),
    desp_gest_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ddhh_gest_cont 
  (
    gest_cont_id number,
    gest_cont_perc_id number,
    gest_cont_edad char(2),
    gest_cont_grav_inic date,
    gest_cont_grav_fin date,
    gest_cont_pren_inic date,
    gest_cont_pren_fin date,
    gest_cont_fech_parto date,
    gest_cont_post_inic date,
    gest_cont_post_fin date,
    gest_cont_lact_inic date,
    gest_cont_lact_fin date,
    gest_cont_region number,
    gest_cont_tip_embarazo number,
    gest_cont_tip_parto number,
    gest_cont_obs varchar2(250),
    gest_cont_situacion char(1),
    desp_gest_cont_id number,
    desp_gest_cont_perc_id number,
    desp_gest_cont_edad char(2),
    desp_gest_cont_grav_inic date,
    desp_gest_cont_grav_fin date,
    desp_gest_cont_pren_inic date,
    desp_gest_cont_pren_fin date,
    desp_gest_cont_fech_parto date,
    desp_gest_cont_post_inic date,
    desp_gest_cont_post_fin date,
    desp_gest_cont_lact_inic date,
    desp_gest_cont_lact_fin date,
    desp_gest_cont_region number,
    desp_gest_cont_tip_embarazo number,
    desp_gest_cont_tip_parto number,
    desp_gest_cont_obs varchar2(250),
    desp_gest_cont_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.prueba 
  (
    codigo number not null ,
    desc varchar2(15)
  );
/
create table ADMIN.re22_areas 
  (
    area_id number not null ,
    area_desc varchar2(100),
    area_sit number,
    constraint pk_re22_areas primary key (area_id) 
  );
/
create table ADMIN.re22_bancos 
  (
    banco_id number not null ,
    banco_desc varchar2(100),
    banco_sit number,
    constraint pk_re22_bancos primary key (banco_id) 
  );
/
create table ADMIN.re22_bono_escolar 
  (
    bono_id number,
    bono_year number,
    bono_cant number(16,2),
    bono_sit number,
    constraint pk_re22_bono_escolar primary key (bono_id) 
  );
/
create table ADMIN.re22_bono_vacacional 
  (
    bono_id number,
    bono_year number,
    bono_cant number(16,2),
    bono_sit number,
    constraint pk_re22_bono_vacacional primary key (bono_id) 
  );
/
create table ADMIN.re22_tipos_descuentos 
  (
    tip_id number,
    tip_desc varchar2(25),
    tip_sit number,
    constraint pk_re22_tipos_descuentos primary key (tip_id) 
  );
/
create table ADMIN.re22_ocupaciones 
  (
    ocupacion_id number,
    ocupacion_desc varchar2(100),
    ocupacion_sit number,
    constraint pk_re22_ocupaciones primary key (ocupacion_id) 
  );
/
create table ADMIN.re22_unidades_ejecutoras 
  (
    ue_codigo number,
    ue_desc varchar2(50),
    ue_sit number,
    constraint pk_re22_unidades_ejecutoras primary key (ue_codigo) 
  );
/
create table ADMIN.re22_puestos 
  (
    pue_id number,
    pue_desc varchar2(50),
    pue_sit number,
    constraint pk_re22_puestos primary key (pue_id) 
  );
/
create table ADMIN.re22_obras 
  (
    obra_id number not null ,
    obra_desc varchar2(100),
    obra_dep number,
    obra_subproducto varchar2(15),
    obra_grupo number,
    obra_sit number,
    constraint pk_re22_obras primary key (obra_id) 
  );
/
create table ADMIN.dot_entrega 
  (
    ent_id number not null ,
    ent_conocimiento varchar2(15),
    ent_recibe number,
    ent_entrega number,
    ent_dep number,
    ent_dotacion number,
    ent_year datetime year to year,
    ent_articulo number,
    ent_talla number,
    ent_cantidad number,
    ent_situacion number,
    ent_fecha date,
    ent_mensaje varchar2(50),
    constraint pk_dot_entrega primary key (ent_id) 
  );
/
create table ADMIN.re22_subareas 
  (
    sub_id number not null ,
    sub_descripcion varchar2(100),
    sub_salario number(16,2),
    sub_bono number(16,2),
    sub_base number(16,2),
    sub_area number,
    sub_situacion number,
    constraint pk_re22_subareas primary key (sub_id) 
  );
/
create table ADMIN.re22_asignaciones 
  (
    asig_id number not null ,
    asig_cat number,
    asig_cantidad number(16,2),
    asig_fecha date,
    asig_motivo varchar2(75),
    asig_ordeno number,
    asig_documento varchar2(50),
    asig_sit number,
    asig_tipo number,
    constraint pk_re22_asignaciones primary key (asig_id) 
  );
/
create table ADMIN.re22_control_pagos_isr 
  (
    pago_id number not null ,
    pago_catalogo number,
    pago_total number(16,2),
    pago_abonado number(16,2),
    pago_fecha datetime year to month,
    pago_sit number,
    constraint pk_re22_control_pagos_isr primary key (pago_id) 
  );
/
create table ADMIN.re22_fianzas 
  (
    fia_id number,
    fia_cat number,
    fia_cantidad number(16,2),
    fia_fecha date,
    fia_sit number,
    constraint pk_re22_fianzas primary key (fia_id) 
  );
/
create table ADMIN.re22_obras_bono 
  (
    bono_id number,
    bono_obra number,
    bono_cantidad number(16,2),
    bono_sit number,
    constraint pk_re22_obras_bono primary key (bono_id) 
  );
/
create table ADMIN.re22_partidas 
  (
    part_id number,
    part_obra number,
    part_numero varchar2(50),
    part_ue number,
    part_sit number,
    constraint pk_re22_partidas primary key (part_id) 
  );
/
create table ADMIN.re22_personal_isr 
  (
    isr_id number,
    isr_catalogo number,
    isr_cantidad varchar2(50),
    isr_year number,
    isr_sit number,
    constraint pk_re22_personal_isr primary key (isr_id) 
  );
/
create table ADMIN.re22_historial_pagos 
  (
    pago_id number not null ,
    pago_cat number,
    pago_fecha datetime year to month,
    pago_salario number(16,2),
    pago_bono66 number(16,2),
    pago_asig number(16,2),
    pago_igss number(16,2),
    pago_pio number(16,2),
    pago_fianza number(16,2),
    pago_desc number(16,2),
    pago_isr number(16,2),
    pago_total number(16,2),
    pago_valido number,
    pago_validacion number,
    pago_tipo number,
    constraint pk_re22_historial_pagos primary key (pago_cat,pago_fecha,pago_tipo) 
  );
/
create table ADMIN.re22_historial_situaciones 
  (
    sit_id number,
    sit_catalogo number,
    sit_situacion char(2),
    sit_observaciones varchar2(100),
    sit_fecha date,
    constraint pk_re22_historial_situaciones primary key (sit_id) 
  );
/
create table ADMIN.re22_mper 
  (
    per_catalogo number,
    per_nom1 varchar2(50),
    per_nom2 varchar2(50),
    per_nom3 varchar2(50),
    per_ape1 varchar2(50),
    per_ape2 varchar2(50),
    per_ape3 varchar2(50),
    per_sexo char(1),
    per_estado_civil char(1),
    per_religion number,
    per_nacimiento date,
    per_lugar_nac char(4),
    per_dpi varchar2(13),
    per_fecha_ext date,
    per_lugar_ext char(4),
    per_iggs number,
    per_nit varchar2(15),
    per_pio number,
    per_ocupacion number,
    per_empleo number,
    per_obra number,
    per_subarea number,
    per_horas number,
    per_bono_prof number,
    per_direccion varchar2(70),
    per_telefono number,
    per_celular number,
    per_email varchar2(50),
    per_contrato varchar2(25),
    per_inicio date,
    per_fin date,
    per_situacion char(2),
    per_peisol number,
    per_puesto number,
    per_obs varchar2(100),
    constraint pk_re22_mper primary key (per_catalogo) 
  );
/
create table ADMIN.aud_re22_areas 
  (
    area_id number,
    area_desc varchar2(100),
    area_sit number,
    desp_area_id number,
    desp_area_desc varchar2(100),
    desp_area_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_bancos 
  (
    banco_id number,
    banco_desc varchar2(100),
    banco_sit number,
    desp_banco_id number,
    desp_banco_desc varchar2(100),
    desp_banco_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_bono_escolar 
  (
    bono_id number,
    bono_year number,
    bono_cant number(16,2),
    bono_sit number,
    desp_bono_id number,
    desp_bono_year number,
    desp_bono_cant number(16,2),
    desp_bono_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_bono_vacacional 
  (
    bono_id number,
    bono_year number,
    bono_cant number(16,2),
    bono_sit number,
    desp_bono_id number,
    desp_bono_year number,
    desp_bono_cant number(16,2),
    desp_bono_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_tipos_descuentos 
  (
    tip_id number,
    tip_desc varchar2(25),
    tip_sit number,
    desp_tip_id number,
    desp_tip_desc varchar2(25),
    desp_tip_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_ocupaciones 
  (
    ocupacion_id number,
    ocupacion_desc varchar2(100),
    ocupacion_sit number,
    desp_ocupacion_id number,
    desp_ocupacion_desc varchar2(100),
    desp_ocupacion_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_unidades_ejecutoras 
  (
    ue_codigo number,
    ue_desc varchar2(50),
    ue_sit number,
    desp_ue_codigo number,
    desp_ue_desc varchar2(50),
    desp_ue_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_puestos 
  (
    pue_id number,
    pue_desc varchar2(50),
    pue_sit number,
    desp_pue_id number,
    desp_pue_desc varchar2(50),
    desp_pue_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_mper 
  (
    per_catalogo number,
    per_nom1 varchar2(50),
    per_nom2 varchar2(50),
    per_nom3 varchar2(50),
    per_ape1 varchar2(50),
    per_ape2 varchar2(50),
    per_ape3 varchar2(50),
    per_sexo char(1),
    per_estado_civil char(1),
    per_religion number,
    per_nacimiento date,
    per_lugar_nac char(4),
    per_dpi varchar2(13),
    per_fecha_ext date,
    per_lugar_ext char(4),
    per_iggs number,
    per_nit varchar2(15),
    per_pio number,
    per_ocupacion number,
    per_empleo number,
    per_obra number,
    per_subarea number,
    per_horas number,
    per_bono_prof number,
    per_direccion varchar2(70),
    per_telefono number,
    per_celular number,
    per_email varchar2(50),
    per_contrato varchar2(25),
    per_inicio date,
    per_fin date,
    per_situacion char(2),
    per_peisol number,
    per_puesto number,
    per_obs varchar2(100),
    desp_per_catalogo number,
    desp_per_nom1 varchar2(50),
    desp_per_nom2 varchar2(50),
    desp_per_nom3 varchar2(50),
    desp_per_ape1 varchar2(50),
    desp_per_ape2 varchar2(50),
    desp_per_ape3 varchar2(50),
    desp_per_sexo char(1),
    desp_per_estado_civil char(1),
    desp_per_religion number,
    desp_per_nacimiento date,
    desp_per_lugar_nac char(4),
    desp_per_dpi varchar2(13),
    desp_per_fecha_ext date,
    desp_per_lugar_ext char(4),
    desp_per_iggs number,
    desp_per_nit varchar2(15),
    desp_per_pio number,
    desp_per_ocupacion number,
    desp_per_empleo number,
    desp_per_obra number,
    desp_per_subarea number,
    desp_per_horas number,
    desp_per_bono_prof number,
    desp_per_direccion varchar2(70),
    desp_per_telefono number,
    desp_per_celular number,
    desp_per_email varchar2(50),
    desp_per_contrato varchar2(25),
    desp_per_inicio date,
    desp_per_fin date,
    desp_per_situacion char(2),
    desp_per_peisol number,
    desp_per_puesto number,
    desp_per_obs varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_asignaciones 
  (
    asig_id number,
    asig_cat number,
    asig_cantidad number(16,2),
    asig_fecha date,
    asig_motivo varchar2(75),
    asig_ordeno number,
    asig_documento varchar2(50),
    asig_sit number,
    asig_tipo number,
    desp_asig_id number,
    desp_asig_cat number,
    desp_asig_cantidad number(16,2),
    desp_asig_fecha date,
    desp_asig_motivo varchar2(75),
    desp_asig_ordeno number,
    desp_asig_documento varchar2(50),
    desp_asig_sit number,
    desp_asig_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_control_pagos_isr 
  (
    pago_id number,
    pago_catalogo number,
    pago_total number(16,2),
    pago_abonado number(16,2),
    pago_fecha datetime year to month,
    pago_sit number,
    desp_pago_id number,
    desp_pago_catalogo number,
    desp_pago_total number(16,2),
    desp_pago_abonado number(16,2),
    desp_pago_fecha datetime year to month,
    desp_pago_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_fianzas 
  (
    fia_id number,
    fia_cat number,
    fia_cantidad number(16,2),
    fia_fecha date,
    fia_sit number,
    desp_fia_id number,
    desp_fia_cat number,
    desp_fia_cantidad number(16,2),
    desp_fia_fecha date,
    desp_fia_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_historial_pagos 
  (
    pago_id number,
    pago_cat number,
    pago_fecha datetime year to month,
    pago_salario number(16,2),
    pago_bono66 number(16,2),
    pago_asig number(16,2),
    pago_igss number(16,2),
    pago_pio number(16,2),
    pago_fianza number(16,2),
    pago_desc number(16,2),
    pago_isr number(16,2),
    pago_total number(16,2),
    pago_valido number,
    pago_validacion number,
    pago_tipo number,
    desp_pago_id number,
    desp_pago_cat number,
    desp_pago_fecha datetime year to month,
    desp_pago_salario number(16,2),
    desp_pago_bono66 number(16,2),
    desp_pago_asig number(16,2),
    desp_pago_igss number(16,2),
    desp_pago_pio number(16,2),
    desp_pago_fianza number(16,2),
    desp_pago_desc number(16,2),
    desp_pago_isr number(16,2),
    desp_pago_total number(16,2),
    desp_pago_valido number,
    desp_pago_validacion number,
    desp_pago_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_historial_situaciones 
  (
    sit_id number,
    sit_catalogo number,
    sit_situacion char(2),
    sit_observaciones varchar2(100),
    sit_fecha date,
    desp_sit_id number,
    desp_sit_catalogo number,
    desp_sit_situacion char(2),
    desp_sit_observaciones varchar2(100),
    desp_sit_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_obras 
  (
    obra_id number,
    obra_desc varchar2(100),
    obra_dep number,
    obra_subproducto varchar2(15),
    obra_grupo number,
    obra_sit number,
    desp_obra_id number,
    desp_obra_desc varchar2(100),
    desp_obra_dep number,
    desp_obra_subproducto varchar2(15),
    desp_obra_grupo number,
    desp_obra_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_partidas 
  (
    part_id number,
    part_obra number,
    part_numero varchar2(50),
    part_ue number,
    part_sit number,
    desp_part_id number,
    desp_part_obra number,
    desp_part_numero varchar2(50),
    desp_part_ue number,
    desp_part_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_personal_isr 
  (
    isr_id number,
    isr_catalogo number,
    isr_cantidad varchar2(50),
    isr_year number,
    isr_sit number,
    desp_isr_id number,
    desp_isr_catalogo number,
    desp_isr_cantidad varchar2(50),
    desp_isr_year number,
    desp_isr_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_subareas 
  (
    sub_id number,
    sub_descripcion varchar2(100),
    sub_salario number(16,2),
    sub_bono number(16,2),
    sub_base number(16,2),
    sub_area number,
    sub_situacion number,
    desp_sub_id number,
    desp_sub_descripcion varchar2(100),
    desp_sub_salario number(16,2),
    desp_sub_bono number(16,2),
    desp_sub_base number(16,2),
    desp_sub_area number,
    desp_sub_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_re22_obras_bono 
  (
    bono_id number,
    bono_obra number,
    bono_cantidad number(16,2),
    bono_sit number,
    desp_bono_id number,
    desp_bono_obra number,
    desp_bono_cantidad number(16,2),
    desp_bono_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.re22_descuentos 
  (
    desc_id number,
    desc_cat number,
    desc_doc varchar2(250),
    desc_inicio date,
    desc_fin date,
    desc_cuota number(16,2),
    desc_tipo number,
    desc_duracion number,
    desc_sit number,
    desc_beneficiario varchar2(100),
    constraint pk_re22_descuentos primary key (desc_id) 
  );
/
create table ADMIN.aud_re22_descuentos 
  (
    desc_id number,
    desc_cat number,
    desc_doc varchar2(250),
    desc_inicio date,
    desc_fin date,
    desc_cuota number(16,2),
    desc_tipo number,
    desc_duracion number,
    desc_sit number,
    desc_beneficiario varchar2(100),
    desp_desc_id number,
    desp_desc_cat number,
    desp_desc_doc varchar2(250),
    desp_desc_inicio date,
    desp_desc_fin date,
    desp_desc_cuota number(16,2),
    desp_desc_tipo number,
    desp_desc_duracion number,
    desp_desc_sit number,
    desp_desc_beneficiario varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_articulos 
  (
    art_id number,
    art_desc varchar2(50),
    art_sit number 
        default 1,
    constraint pk_dot_articulos primary key (art_id) 
  );
/
create table ADMIN.aud_dot_articulos 
  (
    art_id number,
    art_desc varchar2(50),
    art_sit number 
        default 1,
    desp_art_id number,
    desp_art_desc varchar2(50),
    desp_art_sit number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_tallas 
  (
    talla_id number,
    talla_desc varchar2(20),
    talla_art number,
    talla_sit number,
    constraint pk_dot_tallas primary key (talla_id) 
  );
/
create table ADMIN.aud_dot_tallas 
  (
    talla_id number,
    talla_desc varchar2(20),
    talla_art number,
    talla_sit number,
    desp_talla_id number,
    desp_talla_desc varchar2(20),
    desp_talla_art number,
    desp_talla_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_tallas_oficiales 
  (
    talla_catalogo number,
    talla_uniforme number,
    talla_botas number,
    talla_boina number,
    talla_overol number,
    talla_obs varchar2(250),
    talla_ult_fec_act date,
    talla_situacion char(1),
    constraint pk_dot_tallas_oficiales primary key (talla_catalogo) 
  );
/
create table ADMIN.aud_dot_tallas_oficiales 
  (
    talla_catalogo number,
    talla_uniforme number,
    talla_botas number,
    talla_boina number,
    talla_overol number,
    talla_obs varchar2(250),
    talla_ult_fec_act date,
    talla_situacion char(1),
    desp_talla_catalogo number,
    desp_talla_uniforme number,
    desp_talla_botas number,
    desp_talla_boina number,
    desp_talla_overol number,
    desp_talla_obs varchar2(250),
    desp_talla_ult_fec_act date,
    desp_talla_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_tallas_cadetropa 
  (
    talla_plaza2 number not null ,
    talla_uniforme2 number,
    talla_botas2 number,
    talla_boina2 number,
    talla_obs2 varchar2(250),
    talla_ult_fec_act2 date,
    talla_situacion2 char(1),
    constraint PK_dot_tallas_cadetropa primary key (talla_plaza2) 
  );
/
create table ADMIN.aud_dot_tallas_cadetropa 
  (
    talla_plaza2 number,
    talla_uniforme2 number,
    talla_botas2 number,
    talla_boina2 number,
    talla_obs2 varchar2(250),
    talla_ult_fec_act2 date,
    talla_situacion2 char(1),
    desp_talla_plaza2 number,
    desp_talla_uniforme2 number,
    desp_talla_botas2 number,
    desp_talla_boina2 number,
    desp_talla_obs2 varchar2(250),
    desp_talla_ult_fec_act2 date,
    desp_talla_situacion2 char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_tallas_perscontrato 
  (
    talla_catalogo3 number not null ,
    talla_uniforme3 number,
    talla_botas3 number,
    talla_boina3 number,
    talla_cofia3 number,
    talla_bata3 number,
    talla_obs3 varchar2(250),
    talla_ult_fec_act3 date,
    talla_situacion3 char(1),
    constraint pk_dot_tallas_perscontrato primary key (talla_catalogo3) 
  );
/
create table ADMIN.aud_dot_tallas_perscontrato 
  (
    talla_catalogo3 number,
    talla_uniforme3 number,
    talla_botas3 number,
    talla_boina3 number,
    talla_cofia3 number,
    talla_bata3 number,
    talla_obs3 varchar2(250),
    talla_ult_fec_act3 date,
    talla_situacion3 char(1),
    desp_talla_catalogo3 number,
    desp_talla_uniforme3 number,
    desp_talla_botas3 number,
    desp_talla_boina3 number,
    desp_talla_cofia3 number,
    desp_talla_bata3 number,
    desp_talla_obs3 varchar2(250),
    desp_talla_ult_fec_act3 date,
    desp_talla_situacion3 char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_mis_necesidad 
  (
    esi_id number,
    esi_nec_id number,
    esi_mision1 number,
    esi_mision2 number,
    esi_mision3 number,
    esi_mision4 number,
    esi_mision5 number,
    esi_mision6 number,
    esi_mision7 number,
    esi_mision8 number,
    esi_mision9 number,
    esi_mision10 number,
    esi_sit char(1),
    constraint pk_esip_mis_necesidad primary key (esi_id) 
  );
/
create table ADMIN.aud_esip_mis_necesidad 
  (
    esi_id number,
    esi_nec_id number,
    esi_mision1 number,
    esi_mision2 number,
    esi_mision3 number,
    esi_mision4 number,
    esi_mision5 number,
    esi_mision6 number,
    esi_mision7 number,
    esi_mision8 number,
    esi_mision9 number,
    esi_mision10 number,
    esi_sit char(1),
    desp_esi_id number,
    desp_esi_nec_id number,
    desp_esi_mision1 number,
    desp_esi_mision2 number,
    desp_esi_mision3 number,
    desp_esi_mision4 number,
    desp_esi_mision5 number,
    desp_esi_mision6 number,
    desp_esi_mision7 number,
    desp_esi_mision8 number,
    desp_esi_mision9 number,
    desp_esi_mision10 number,
    desp_esi_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_areas_mision 
  (
    mis_id number,
    mis_no_mision number,
    mis_descripcion varchar2(250),
    mis_fecha date,
    mis_sit char(1),
    constraint pk_esip_areas_mision primary key (mis_id) 
  );
/
create table ADMIN.aud_esip_areas_mision 
  (
    mis_id number,
    mis_no_mision number,
    mis_descripcion varchar2(250),
    mis_fecha date,
    mis_sit char(1),
    desp_mis_id number,
    desp_mis_no_mision number,
    desp_mis_descripcion varchar2(250),
    desp_mis_fecha date,
    desp_mis_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_necesidad 
  (
    nec_id number,
    nec_nom_proy varchar2(250),
    nec_fecha date,
    nec_periodo number,
    nec_dep number,
    nec_costo float,
    nec_cuantia number,
    nec_prioridad number,
    nec_justificacion varchar2(250),
    nec_obs varchar2(250),
    nec_situacion number,
    constraint pk_esip_necesidad primary key (nec_id) 
  );
/
create table ADMIN.aud_esip_necesidad 
  (
    nec_id number,
    nec_nom_proy varchar2(250),
    nec_fecha date,
    nec_periodo number,
    nec_dep number,
    nec_costo float,
    nec_cuantia number,
    nec_prioridad number,
    nec_justificacion varchar2(250),
    nec_obs varchar2(250),
    nec_situacion number,
    desp_nec_id number,
    desp_nec_nom_proy varchar2(250),
    desp_nec_fecha date,
    desp_nec_periodo number,
    desp_nec_dep number,
    desp_nec_costo float,
    desp_nec_cuantia number,
    desp_nec_prioridad number,
    desp_nec_justificacion varchar2(250),
    desp_nec_obs varchar2(250),
    desp_nec_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_recup_capacidades 
  (
    rec_id number,
    rec_nom_proy varchar2(250),
    rec_fecha date,
    rec_periodo number,
    rec_dep number,
    rec_costo float,
    rec_modalidad number,
    rec_prioridad number,
    rec_justificacion varchar2(250),
    rec_obs varchar2(250),
    rec_situacion number,
    constraint pk_esip_recup_capacidades primary key (rec_id) 
  );
/
create table ADMIN.aud_esip_recup_capacidades 
  (
    rec_id number,
    rec_nom_proy varchar2(250),
    rec_fecha date,
    rec_periodo number,
    rec_dep number,
    rec_costo float,
    rec_modalidad number,
    rec_prioridad number,
    rec_justificacion varchar2(250),
    rec_obs varchar2(250),
    rec_situacion number,
    desp_rec_id number,
    desp_rec_nom_proy varchar2(250),
    desp_rec_fecha date,
    desp_rec_periodo number,
    desp_rec_dep number,
    desp_rec_costo float,
    desp_rec_modalidad number,
    desp_rec_prioridad number,
    desp_rec_justificacion varchar2(250),
    desp_rec_obs varchar2(250),
    desp_rec_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_esip_doc_pdf2 
  (
    docs_registro number,
    docs_necesidad number,
    docs_ruta varchar2(250),
    docs_sit char(1),
    desp_docs_registro number,
    desp_docs_necesidad number,
    desp_docs_ruta varchar2(250),
    desp_docs_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_esip_doc_pdf 
  (
    doc_registro number,
    doc_necesidad number,
    doc_ruta varchar2(250),
    doc_sit char(1),
    desp_doc_registro number,
    desp_doc_necesidad number,
    desp_doc_ruta varchar2(250),
    desp_doc_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sie_inventarioclase2 
  (
    inv_id number not null ,
    inv_correlativo char(11),
    inv_articulo number,
    inv_talla number,
    inv_cantidad number,
    inv_movimiento char(1),
    inv_cat_ingreso number,
    inv_cat_recibio number,
    inv_fec_movimiento date,
    inv_dependencia number,
    inv_obs varchar2(200),
    inv_situacion char(1)
  );
/
create table ADMIN.aud_sie_inventarioclase2 
  (
    inv_id number,
    inv_correlativo char(11),
    inv_articulo number,
    inv_talla number,
    inv_cantidad number,
    inv_movimiento char(1),
    inv_cat_ingreso number,
    inv_cat_recibio number,
    inv_fec_movimiento date,
    inv_dependencia number,
    inv_obs varchar2(200),
    inv_situacion char(1),
    desp_inv_id number,
    desp_inv_correlativo char(11),
    desp_inv_articulo number,
    desp_inv_talla number,
    desp_inv_cantidad number,
    desp_inv_movimiento char(1),
    desp_inv_cat_ingreso number,
    desp_inv_cat_recibio number,
    desp_inv_fec_movimiento date,
    desp_inv_dependencia number,
    desp_inv_obs varchar2(200),
    desp_inv_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_doc_pdf 
  (
    doc_registro number not null ,
    doc_necesidad number,
    doc_ruta varchar2(250),
    doc_sit char(1),
    constraint pk_esip_doc_pdf primary key (doc_registro
  );
/
create table ADMIN.esip_doc_pdf2 
  (
    docs_registro number not null ,
    docs_necesidad number,
    docs_ruta varchar2(250),
    docs_sit char(1),
    constraint pk_esip_doc_pdf2 primary key (docs_registro)  
  );
/
create table ADMIN.tropa_movimientos 
  (
    mov_id number not null ,
    mov_catalogo number,
    mov_dependencia number,
    mov_accion char(4),
    mov_fecha date,
    mov_situacion number,
    constraint pk_tropa_movimientos primary key (mov_id) 
  );
/
create table ADMIN.tropa_disponibilidad 
  (
    disp_id number not null ,
    disp_catalogo number,
    disp_dependencia number,
    disp_situaicon number,
    constraint pk_tropa_disponibilidad primary key (disp_id) 
  );
/
create table ADMIN.aud_tropa_movimientos 
  (
    mov_id number,
    mov_catalogo number,
    mov_dependencia number,
    mov_accion char(4),
    mov_fecha date,
    mov_situacion number,
    desp_mov_id number,
    desp_mov_catalogo number,
    desp_mov_dependencia number,
    desp_mov_accion char(4),
    desp_mov_fecha date,
    desp_mov_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tropa_foto 
  (
    fot_id number,
    fot_catalogo number,
    fot_descr char(25),
    fot_doc blob,
    fot_tipo varchar2(255),
    fot_situacion number,
    desp_fot_id number,
    desp_fot_catalogo number,
    desp_fot_descr char(25),
    desp_fot_doc blob,
    desp_fot_tipo varchar2(255),
    desp_fot_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tropa_disponibilidad 
  (
    disp_id number,
    disp_catalogo number,
    disp_dependencia number,
    disp_situaicon number,
    desp_disp_id number,
    desp_disp_catalogo number,
    desp_disp_dependencia number,
    desp_disp_situaicon number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.solicitud_usuarios 
  (
    usu_id number not null ,
    usu_mensaje char(150) not null ,
    usu_fechadoc date,
    usu_fechaac date not null ,
    usu_fechaautori date,
    usu_catusuario number not null ,
    usu_usuario char(20) not null ,
    usu_observa char(150),
    usu_comando number,
    usu_catrecibe number,
    usu_fecharecibe date,
    usu_situacion number not null ,
    constraint pk_solicitud_usuarios primary key (usu_id) 
  );
/
create table ADMIN.aud_solicitud_usuarios 
  (
    usu_id number,
    usu_mensaje char(150),
    usu_fechadoc date,
    usu_fechaac date,
    usu_fechaautori date,
    usu_catusuario number,
    usu_usuario char(20),
    usu_observa char(150),
    usu_comando number,
    usu_catrecibe number,
    usu_fecharecibe date,
    usu_situacion number,
    desp_usu_id number,
    desp_usu_mensaje char(150),
    desp_usu_fechadoc date,
    desp_usu_fechaac date,
    desp_usu_fechaautori date,
    desp_usu_catusuario number,
    desp_usu_usuario char(20),
    desp_usu_observa char(150),
    desp_usu_comando number,
    desp_usu_catrecibe number,
    desp_usu_fecharecibe date,
    desp_usu_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tropa_foto 
  (
    fot_id number not null ,
    fot_catalogo number,
    fot_descr char(25),
    fot_doc byte in blobdbs,
    fot_tipo varchar2(255),
    fot_situacion number,
    primary key (fot_id) 
  );
/
create table ADMIN.aud_fag_metodo_adquisicion 
  (
    met_id number,
    met_metodo varchar2(10),
    met_sit number,
    desp_met_id number,
    desp_met_metodo varchar2(10),
    desp_met_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_dependencia 
  (
    dep_id number,
    dep_desc varchar2(10),
    dep_sit number,
    desp_dep_id number,
    desp_dep_desc varchar2(10),
    desp_dep_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_condicion_rep 
  (
    con_id number,
    con_desc varchar2(10),
    con_sit number,
    desp_con_id number,
    desp_con_desc varchar2(10),
    desp_con_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_unidad_medida 
  (
    uni_id number,
    uni_desc varchar2(10),
    uni_sit number,
    desp_uni_id number,
    desp_uni_desc varchar2(10),
    desp_uni_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_tipo_articulos 
  (
    tip_id number,
    tip_desc varchar2(10),
    tip_sit number,
    desp_tip_id number,
    desp_tip_desc varchar2(10),
    desp_tip_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_seccion 
  (
    sec_id number,
    sec_desc varchar2(10),
    sec_sit number,
    desp_sec_id number,
    desp_sec_desc varchar2(10),
    desp_sec_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_estanterias 
  (
    est_id number,
    est_desc varchar2(10),
    est_sit number,
    desp_est_id number,
    desp_est_desc varchar2(10),
    desp_est_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_columnas 
  (
    col_id number,
    col_desc varchar2(10),
    col_sit number,
    desp_col_id number,
    desp_col_desc varchar2(10),
    desp_col_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_niveles 
  (
    niv_id number,
    niv_desc varchar2(10),
    niv_sit number,
    desp_niv_id number,
    desp_niv_desc varchar2(10),
    desp_niv_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_caja 
  (
    caj_id number,
    caj_desc varchar2(10),
    caj_sit number,
    desp_caj_id number,
    desp_caj_desc varchar2(10),
    desp_caj_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_almacen 
  (
    alm_id number,
    alm_nom varchar2(10),
    alm_num number,
    alm_sit number,
    desp_alm_id number,
    desp_alm_nom varchar2(10),
    desp_alm_num number,
    desp_alm_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_articulos 
  (
    art_id number,
    art_desc varchar2(30),
    art_part_num varchar2(50),
    art_nat_stock_number varchar2(50),
    art_sit number,
    desp_art_id number,
    desp_art_desc varchar2(30),
    desp_art_part_num varchar2(50),
    desp_art_nat_stock_number varchar2(50),
    desp_art_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fag_inventario 
  (
    inv_id number,
    inv_formulario varchar2(20),
    inv_registros varchar2(20),
    inv_autorizo number,
    inv_reviso number,
    inv_entrego number,
    inv_asigno number,
    inv_solicito number,
    inv_recibio number,
    inv_articulo number,
    inv_numero_serie varchar2(60),
    inv_alterno varchar2(60),
    inv_unidad_medida number,
    inv_cantidad number,
    inv_metodo_adquisicion number,
    inv_condicion number,
    inv_tipo_repuesto number,
    inv_fecha_venc date,
    inv_fech_ing date,
    inv_fech_egre date,
    inv_aeronave number,
    inv_factura varchar2(50),
    inv_nit_proveedor varchar2(20),
    inv_almacen number,
    inv_seccion number,
    inv_estanteria number,
    inv_columna number,
    inv_nivel number,
    inv_caja number,
    inv_obs varchar2(200),
    inv_orden_trab varchar2(100),
    inv_dependencia number,
    inv_proceso varchar2(10),
    inv_sit number,
    desp_inv_id number,
    desp_inv_formulario varchar2(20),
    desp_inv_registros varchar2(20),
    desp_inv_autorizo number,
    desp_inv_reviso number,
    desp_inv_entrego number,
    desp_inv_asigno number,
    desp_inv_solicito number,
    desp_inv_recibio number,
    desp_inv_articulo number,
    desp_inv_numero_serie varchar2(60),
    desp_inv_alterno varchar2(60),
    desp_inv_unidad_medida number,
    desp_inv_cantidad number,
    desp_inv_metodo_adquisicion number,
    desp_inv_condicion number,
    desp_inv_tipo_repuesto number,
    desp_inv_fecha_venc date,
    desp_inv_fech_ing date,
    desp_inv_fech_egre date,
    desp_inv_aeronave number,
    desp_inv_factura varchar2(50),
    desp_inv_nit_proveedor varchar2(20),
    desp_inv_almacen number,
    desp_inv_seccion number,
    desp_inv_estanteria number,
    desp_inv_columna number,
    desp_inv_nivel number,
    desp_inv_caja number,
    desp_inv_obs varchar2(200),
    desp_inv_orden_trab varchar2(100),
    desp_inv_dependencia number,
    desp_inv_proceso varchar2(10),
    desp_inv_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cov_oficios 
  (
    ofi_id number not null ,
    ofi_cat number not null ,
    ofi_ruta varchar2(150) not null ,
    ofi_sit number not null ,
    constraint pk_cov_oficios primary key (ofi_id) 
  );
/
create table ADMIN.aud_cov_oficios 
  (
    ofi_id number,
    ofi_cat number,
    ofi_ruta varchar2(150),
    ofi_sit number,
    desp_ofi_id number,
    desp_ofi_cat number,
    desp_ofi_ruta varchar2(150),
    desp_ofi_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cov_registro 
  (
    reg_id number not null ,
    reg_catalogo number not null ,
    reg_vacuna number,
    reg_dosis number,
    reg_situacion number,
    constraint pk_cov_registro primary key (reg_id) 
  );
/
create table ADMIN.aud_cov_registro 
  (
    reg_id number,
    reg_catalogo number,
    reg_vacuna number,
    reg_dosis number,
    reg_situacion number,
    desp_reg_id number,
    desp_reg_catalogo number,
    desp_reg_vacuna number,
    desp_reg_dosis number,
    desp_reg_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cov_vacunas 
  (
    vac_cod number not null ,
    vac_nombre char(25) not null ,
    vac_dosis number not null ,
    vac_situacion number not null ,
    constraint pk_cov_vacunas primary key (vac_cod) 
  );
/
create table ADMIN.aud_cov_vacunas 
  (
    vac_cod number,
    vac_nombre char(25),
    vac_dosis number,
    vac_situacion number,
    desp_vac_cod number,
    desp_vac_nombre char(25),
    desp_vac_dosis number,
    desp_vac_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dfdes_bindustrial 
  (
    dfdi_catalogo number not null ,
    dfdi_codigo number not null ,
    dfdi_nu_reg number not null ,
    dfdi_tipo_desc char(1) not null ,
    dfdi_fec_ini date,
    dfdi_mes_act date,
    dfdi_fin_pres date,
    dfdi_monto number(16,2) not null ,
    dfdi_saldo number(16,2) not null ,
    dfdi_mensual number(16,2) not null ,
    dfdi_tot_cuotas number,
    dfdi_num_cuotas number,
    dfdi_nom_banco char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_no_prest char(50) not null ,
    dfdi_si_no char(1),
    constraint pk_dfdes_bindustrial primary key (dfdi_no_prest) 
  );
/
create table ADMIN.aud_dfdes_bindustrial 
  (
    dfdi_catalogo number,
    dfdi_codigo number,
    dfdi_nu_reg number,
    dfdi_tipo_desc char(1),
    dfdi_fec_ini date,
    dfdi_mes_act date,
    dfdi_fin_pres date,
    dfdi_monto number(16,2),
    dfdi_saldo number(16,2),
    dfdi_mensual number(16,2),
    dfdi_tot_cuotas number,
    dfdi_num_cuotas number,
    dfdi_nom_banco char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_no_prest char(50),
    dfdi_si_no char(1),
    desp_dfdi_catalogo number,
    desp_dfdi_codigo number,
    desp_dfdi_nu_reg number,
    desp_dfdi_tipo_desc char(1),
    desp_dfdi_fec_ini date,
    desp_dfdi_mes_act date,
    desp_dfdi_fin_pres date,
    desp_dfdi_monto number(16,2),
    desp_dfdi_saldo number(16,2),
    desp_dfdi_mensual number(16,2),
    desp_dfdi_tot_cuotas number,
    desp_dfdi_num_cuotas number,
    desp_dfdi_nom_banco char(6),
    desp_dfdi_codeudor number,
    desp_dfdi_nom_bene char(50),
    desp_dfdi_no_prest char(50),
    desp_dfdi_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_psan_sanciones 
  (
    san_codigo number,
    san_descripcion varchar2(255),
    san_clasificacion char(2),
    san_tipo char(2),
    san_cantidad number,
    san_reglamento number,
    san_articulo number,
    san_literal char(1),
    san_numeral number,
    san_inciso char(2),
    desp_san_codigo number,
    desp_san_descripcion varchar2(255),
    desp_san_clasificacion char(2),
    desp_san_tipo char(2),
    desp_san_cantidad number,
    desp_san_reglamento number,
    desp_san_articulo number,
    desp_san_literal char(1),
    desp_san_numeral number,
    desp_san_inciso char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.re22_cuentas 
  (
    cue_id number not null ,
    cue_cat number,
    cue_cuenta varchar2(25),
    cue_banco number,
    cue_sit number,
    constraint pk_re22_cuentas primary key (cue_id) 
  );
/
create table ADMIN.aud_re22_cuentas 
  (
    cue_id number,
    cue_cat number,
    cue_cuenta varchar2(25),
    cue_banco number,
    cue_sit number,
    desp_cue_id number,
    desp_cue_cat number,
    desp_cue_cuenta varchar2(25),
    desp_cue_banco number,
    desp_cue_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.psan_boleta_restore 
  (
    bol_det_catalogo number not null  disabled ,
    bol_det_fecha date not null  disabled ,
    bol_det_sancion number not null  disabled ,
    bol_det_grado number,
    bol_dependencia number,
    bol_desc_empleo char(45) not null  disabled ,
    bol_jerarquia_sancionado char(100) not null  disabled ,
    bol_sancionador number not null  disabled ,
    bol_gra_sancionador number not null  disabled ,
    bol_empleo_sancionador char(45) not null  disabled ,
    bol_justicia number not null  disabled ,
    bol_gra_justicia number not null  disabled ,
    bol_comte number not null  disabled ,
    bol_gra_comte number not null  disabled ,
    bol_fech_cumple TIMESTAMP,
    bol_det_status number,
    constraint pk_psan_boleta_restore primary key (bol_det_catalogo,bol_det_fecha,bol_det_sancion)  disabled 
  );
/
create table ADMIN.dot_asignadas 
  (
    asig_catalogo number not null ,
    asig_num_dotacion number not null ,
    asig_year_dotacion number not null ,
    asig_cat_entrego number,
    asig_fec_entrego date,
    asig_situacion char(1),
    constraint pk_dot_asignadas primary key (asig_catalogo,asig_num_dotacion,asig_year_dotacion) 
  );
/
create table ADMIN.dot_asignadas_cadtropa 
  (
    asig_plaza number not null ,
    asig_num_dotacion2 number not null ,
    asig_year_dotacion2 number not null ,
    asig_cat_entrego2 number,
    asig_fec_entrego2 date,
    asig_situacion2 char(1),
    constraint pk_dot_asignadas_cadtropa primary key (asig_plaza,asig_num_dotacion2,asig_year_dotacion2) 
  );
/
create table ADMIN.aud_dot_asignadas 
  (
    asig_catalogo number,
    asig_num_dotacion number,
    asig_year_dotacion number,
    asig_cat_entrego number,
    asig_fec_entrego date,
    asig_situacion char(1),
    desp_asig_catalogo number,
    desp_asig_num_dotacion number,
    desp_asig_year_dotacion number,
    desp_asig_cat_entrego number,
    desp_asig_fec_entrego date,
    desp_asig_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dot_asignadas_cadtropa 
  (
    asig_plaza number,
    asig_num_dotacion2 number,
    asig_year_dotacion2 number,
    asig_cat_entrego2 number,
    asig_fec_entrego2 date,
    asig_situacion2 char(1),
    desp_asig_plaza number,
    desp_asig_num_dotacion2 number,
    desp_asig_year_dotacion2 number,
    desp_asig_cat_entrego2 number,
    desp_asig_fec_entrego2 date,
    desp_asig_situacion2 char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fdes_fund_sold 
  (
    sold_catalogo number,
    sold_codigo number,
    sold_fec_ini date,
    sold_fec_fin date,
    sold_registro varchar2(20),
    sold_mensual number(16,2),
    sold_saldo number(16,2),
    sold_control char(1),
    constraint pk_fdes_fund_sold primary key (sold_catalogo) 
  );
/
create table ADMIN.aud_fdes_fund_sold 
  (
    sold_catalogo number,
    sold_codigo number,
    sold_fec_ini date,
    sold_fec_fin date,
    sold_registro varchar2(20),
    sold_mensual number(16,2),
    sold_saldo number(16,2),
    sold_control char(1),
    desp_sold_catalogo number,
    desp_sold_codigo number,
    desp_sold_fec_ini date,
    desp_sold_fec_fin date,
    desp_sold_registro varchar2(20),
    desp_sold_mensual number(16,2),
    desp_sold_saldo number(16,2),
    desp_sold_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sat_duca 
  (
    duc_id number not null ,
    duc_nom varchar2(35),
    duc_nit varchar2(35),
    duc_domicilio varchar2(150),
    duc_linea number,
    duc_inc_aran varchar2(10),
    duc_merca varchar2(100),
    duc_cant_bul number(10,2),
    duc_cla_bul number(10,2),
    duc_bruto number(10,2),
    duc_neto number(10,2),
    duc_uni_med char(3),
    duc_pais_or char(2),
    duc_manifiesto varchar2(15),
    duc_marca varchar2(3),
    duc_emb_tip char(3),
    duc_emb_tip_desc varchar2(50),
    duc_linea_emb varchar2(50),
    duc_anio number,
    duc_motores number,
    duc_mot1 varchar2(50),
    duc_mot2 varchar2(50),
    duc_mot3 varchar2(50),
    duc_mot4 varchar2(50),
    duc_serie_hin varchar2(17),
    duc_eslora number,
    duc_cant_mot_fb char(2),
    duc_fecha_ing TIMESTAMP,
    duc_user_ing varchar2(50),
    constraint pk_sat_duca primary key (duc_manifiesto) 
  );
/
create table ADMIN.aud_sat_duca 
  (
    duc_id number,
    duc_nom varchar2(35),
    duc_nit varchar2(35),
    duc_domicilio varchar2(150),
    duc_linea number,
    duc_inc_aran varchar2(10),
    duc_merca varchar2(100),
    duc_cant_bul number(10,2),
    duc_cla_bul number(10,2),
    duc_bruto number(10,2),
    duc_neto number(10,2),
    duc_uni_med char(3),
    duc_pais_or char(2),
    duc_manifiesto varchar2(15),
    duc_marca varchar2(3),
    duc_emb_tip char(3),
    duc_emb_tip_desc varchar2(50),
    duc_linea_emb varchar2(50),
    duc_anio number,
    duc_motores number,
    duc_mot1 varchar2(50),
    duc_mot2 varchar2(50),
    duc_mot3 varchar2(50),
    duc_mot4 varchar2(50),
    duc_serie_hin varchar2(17),
    duc_eslora number,
    duc_cant_mot_fb char(2),
    duc_fecha_ing TIMESTAMP,
    duc_user_ing varchar2(50),
    desp_duc_id number,
    desp_duc_nom varchar2(35),
    desp_duc_nit varchar2(35),
    desp_duc_domicilio varchar2(150),
    desp_duc_linea number,
    desp_duc_inc_aran varchar2(10),
    desp_duc_merca varchar2(100),
    desp_duc_cant_bul number(10,2),
    desp_duc_cla_bul number(10,2),
    desp_duc_bruto number(10,2),
    desp_duc_neto number(10,2),
    desp_duc_uni_med char(3),
    desp_duc_pais_or char(2),
    desp_duc_manifiesto varchar2(15),
    desp_duc_marca varchar2(3),
    desp_duc_emb_tip char(3),
    desp_duc_emb_tip_desc varchar2(50),
    desp_duc_linea_emb varchar2(50),
    desp_duc_anio number,
    desp_duc_motores number,
    desp_duc_mot1 varchar2(50),
    desp_duc_mot2 varchar2(50),
    desp_duc_mot3 varchar2(50),
    desp_duc_mot4 varchar2(50),
    desp_duc_serie_hin varchar2(17),
    desp_duc_eslora number,
    desp_duc_cant_mot_fb char(2),
    desp_duc_fecha_ing TIMESTAMP,
    desp_duc_user_ing varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.api_keys 
  (
    api_id number not null ,
    api_nombre varchar2(50),
    api_key varchar2(100),
    api_fecha_generacion TIMESTAMP,
    api_sit number,
    api_tipo number,
    constraint pk_api_keys primary key (api_id) 
  );
/
create table ADMIN.aud_api_keys 
  (
    api_id number,
    api_nombre varchar2(50),
    api_key varchar2(100),
    api_fecha_generacion TIMESTAMP,
    api_sit number,
    api_tipo number,
    desp_api_id number,
    desp_api_nombre varchar2(50),
    desp_api_key varchar2(100),
    desp_api_fecha_generacion TIMESTAMP,
    desp_api_sit number,
    desp_api_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sat_cuscar 
  (
    cus_id number not null ,
    cus_manifiesto varchar2(150),
    cus_cuscar varchar2,
    cus_fech_envio date,
    cus_fecha_ing TIMESTAMP,
    cus_user_ing varchar2(50),
    constraint pk_sat_cuscar primary key (cus_manifiesto) 
  );
/
create table ADMIN.aud_sat_cuscar 
  (
    cus_id number,
    cus_manifiesto varchar2(150),
    cus_cuscar varchar2,
    cus_fech_envio date,
    cus_fecha_ing TIMESTAMP,
    cus_user_ing varchar2(50),
    desp_cus_id number,
    desp_cus_manifiesto varchar2(150),
    desp_cus_cuscar varchar2,
    desp_cus_fech_envio date,
    desp_cus_fecha_ing TIMESTAMP,
    desp_cus_user_ing varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.veteranos_comparacion 
  (
    vet_id number not null ,
    vet_nom_real varchar2(250) not null ,
    vet_fec_alta varchar2(10),
    vet_fec_baja varchar2(10),
    vet_dpi char(15),
    vet_cedula char(25),
    vet_beneficiario varchar2(250),
    vet_dependencia char(200),
    vet_num_listado number not null ,
    vet_nom1 varchar2(50),
    vet_nom2 varchar2(50),
    vet_nom3 varchar2(50),
    vet_ape1 varchar2(50),
    vet_ape2 varchar2(50),
    vet_ape3 varchar2(50),
    vet_fam_nom1 varchar2(20),
    vet_fam_nom2 varchar2(20),
    vet_fam_ape1 varchar2(20),
    vet_fam_ape2 varchar2(20),
    vet_coin_nom number,
    vet_coin_fec_alta number,
    vet_coin_fec_baja number,
    vet_coin_2fechas number,
    vet_coin_cedula number,
    vet_coin_dpi number,
    vet_coin_beneficiario number,
    vet_cat_coincidencia number,
    vet_vac2 number,
    vet_vac3 number,
    vet_situacion char(5),
    constraint pk_veteranos_comparacion primary key (vet_id) 
  );
/
create table ADMIN.bin_estado 
  (
    est_id number not null ,
    est_desc varchar2(100),
    est_situacion number,
    constraint pk_bin_estado primary key (est_id) 
  );
/
create table ADMIN.bin_inventariado 
  (
    inv_id number not null ,
    inv_desc varchar2(100),
    inv_situacion number,
    constraint pk_bin_inventariado primary key (inv_id) 
  );
/
create table ADMIN.bin_valor_inmueble 
  (
    val_id number not null ,
    val_id_inm number,
    val_valor number(20,2),
    val_situacion number,
    constraint pk_bin_valor_inmueble primary key (val_id) 
  );
/
create table ADMIN.bin_edificaciones 
  (
    edi_id number not null ,
    edi_nombre varchar2(250),
    edi_desc varchar2(2000),
    edi_dep number,
    edi_uso number,
    edi_valor number(20,2),
    edi_inv number,
    edi_adqui number,
    edi_estado number,
    edi_obs_estado varchar2(2000),
    edi_departamento char(4),
    edi_mun char(4),
    edi_direccion varchar2(250),
    edi_situacion number,
    edi_situacion_bi number,
    edi_situacion_ige number,
    edi_situacion_fin number,
    edi_situacion_jur number,
    edi_remozamiento varchar2(250),
    edi_fecha_remozamiento date,
    edi_valor_remozamiento number(20,2),
    constraint pk_bin_edificaciones primary key (edi_id) 
  );
/
create table ADMIN.bin_obs_aprobaciones 
  (
    apro_id number not null ,
    apro_edi_id number,
    apro_obs_bi varchar2(250),
    apro_obs_ige varchar2(250),
    apro_obs_fin varchar2(250),
    apro_obs_jur varchar2(250),
    apro_situacion number,
    constraint pk_bin_obs_aprobaciones primary key (apro_id) 
  );
/
create table ADMIN.bin_pdf_edificaciones 
  (
    pdf_registro_edi number not null ,
    pdf_catalogo_edi number,
    pdf_ruta_edi varchar2(250),
    pdf_sit_edi number,
    constraint pk_bin_pdf_edificaciones primary key (pdf_registro_edi) 
  );
/
create table ADMIN.bin_solicitudes 
  (
    sol_id number not null ,
    sol_edi_id number,
    sol_desc varchar2(250),
    sol_obs varchar2(250),
    constraint pk_bin_solicitudes primary key (sol_id) 
  );
/
create table ADMIN.com_vales 
  (
    val_codigo number not null ,
    val_es number not null ,
    val_vehiculo varchar2(15) not null ,
    val_cat_autoriza number not null ,
    val_cat_entrego number not null ,
    val_cat_recibio number not null ,
    val_recibio_nombre char(50) not null ,
    val_uso number not null ,
    val_despacho number not null ,
    val_mision number not null ,
    val_situacion number not null ,
    val_razon varchar2(250),
    val_tipo number,
    constraint pk_com_vales primary key (val_codigo) 
  );
/
create table ADMIN.aud_com_vales 
  (
    val_codigo number,
    val_es number,
    val_vehiculo varchar2(15),
    val_cat_autoriza number,
    val_cat_entrego number,
    val_cat_recibio number,
    val_recibio_nombre char(50),
    val_uso number,
    val_despacho number,
    val_mision number,
    val_situacion number,
    val_razon varchar2(250),
    val_tipo number,
    desp_val_codigo number,
    desp_val_es number,
    desp_val_vehiculo varchar2(15),
    desp_val_cat_autoriza number,
    desp_val_cat_entrego number,
    desp_val_cat_recibio number,
    desp_val_recibio_nombre char(50),
    desp_val_uso number,
    desp_val_despacho number,
    desp_val_mision number,
    desp_val_situacion number,
    desp_val_razon varchar2(250),
    desp_val_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_obs_aprobaciones 
  (
    apro_id number,
    apro_edi_id number,
    apro_obs_bi varchar2(250),
    apro_obs_ige varchar2(250),
    apro_obs_fin varchar2(250),
    apro_obs_jur varchar2(250),
    apro_situacion number,
    desp_apro_id number,
    desp_apro_edi_id number,
    desp_apro_obs_bi varchar2(250),
    desp_apro_obs_ige varchar2(250),
    desp_apro_obs_fin varchar2(250),
    desp_apro_obs_jur varchar2(250),
    desp_apro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_pdf_edificaciones 
  (
    pdf_registro_edi number,
    pdf_catalogo_edi number,
    pdf_ruta_edi varchar2(250),
    pdf_sit_edi number,
    desp_pdf_registro_edi number,
    desp_pdf_catalogo_edi number,
    desp_pdf_ruta_edi varchar2(250),
    desp_pdf_sit_edi number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_solicitudes 
  (
    sol_id number,
    sol_edi_id number,
    sol_desc varchar2(250),
    sol_obs varchar2(250),
    desp_sol_id number,
    desp_sol_edi_id number,
    desp_sol_desc varchar2(250),
    desp_sol_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_inventariado 
  (
    inv_id number,
    inv_desc varchar2(100),
    inv_situacion number,
    desp_inv_id number,
    desp_inv_desc varchar2(100),
    desp_inv_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_valor_inmueble 
  (
    val_id number,
    val_id_inm number,
    val_valor number(20,2),
    val_situacion number,
    desp_val_id number,
    desp_val_id_inm number,
    desp_val_valor number(20,2),
    desp_val_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_estado 
  (
    est_id number,
    est_desc varchar2(100),
    est_situacion number,
    desp_est_id number,
    desp_est_desc varchar2(100),
    desp_est_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_edificaciones 
  (
    edi_id number,
    edi_nombre varchar2(250),
    edi_desc varchar2(2000),
    edi_dep number,
    edi_uso number,
    edi_valor number(20,2),
    edi_inv number,
    edi_adqui number,
    edi_estado number,
    edi_obs_estado varchar2(2000),
    edi_departamento char(4),
    edi_mun char(4),
    edi_direccion varchar2(250),
    edi_situacion number,
    edi_situacion_bi number,
    edi_situacion_ige number,
    edi_situacion_fin number,
    edi_situacion_jur number,
    edi_remozamiento varchar2(250),
    edi_fecha_remozamiento date,
    edi_valor_remozamiento number(20,2),
    desp_edi_id number,
    desp_edi_nombre varchar2(250),
    desp_edi_desc varchar2(2000),
    desp_edi_dep number,
    desp_edi_uso number,
    desp_edi_valor number(20,2),
    desp_edi_inv number,
    desp_edi_adqui number,
    desp_edi_estado number,
    desp_edi_obs_estado varchar2(2000),
    desp_edi_departamento char(4),
    desp_edi_mun char(4),
    desp_edi_direccion varchar2(250),
    desp_edi_situacion number,
    desp_edi_situacion_bi number,
    desp_edi_situacion_ige number,
    desp_edi_situacion_fin number,
    desp_edi_situacion_jur number,
    desp_edi_remozamiento varchar2(250),
    desp_edi_fecha_remozamiento date,
    desp_edi_valor_remozamiento number(20,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluacion_docente_clase 
  (
    eva_id number not null ,
    eva_extencion number,
    eva_docente number,
    eva_materia number,
    eva_fecha varchar2(30),
    eva_planificacion_general number,
    eva_motivacion number,
    eva_presentacion number,
    eva_recursos_educativos number,
    eva_dominio_del_tema number,
    eva_capta_atencion_alumno number,
    eva_comunicacion number,
    eva_organizacion number,
    eva_fijacion number,
    eva_evaluacion_constante number,
    eva_promueve_expresion_estudiante number,
    eva_resuelve_dudas number,
    eva_metodologia number,
    eva_resuelve_evaluaciones_con_alumno number,
    eva_informa_zona_acumulada number,
    eva_dosificacion_de_los_temas number,
    eva_puntualidad number,
    eva_higiene_personal number,
    eva_infunde_respeto number,
    eva_informa_acerca_evaluaciones_mineduc number,
    eva_situacion number,
    constraint pk_evaluacion_docente_clase primary key (eva_id) 
  );
/
create table ADMIN.aud_evaluacion_docente_clase 
  (
    eva_id number,
    eva_extencion number,
    eva_docente number,
    eva_materia number,
    eva_fecha varchar2(30),
    eva_planificacion_general number,
    eva_motivacion number,
    eva_presentacion number,
    eva_recursos_educativos number,
    eva_dominio_del_tema number,
    eva_capta_atencion_alumno number,
    eva_comunicacion number,
    eva_organizacion number,
    eva_fijacion number,
    eva_evaluacion_constante number,
    eva_promueve_expresion_estudiante number,
    eva_resuelve_dudas number,
    eva_metodologia number,
    eva_resuelve_evaluaciones_con_alumno number,
    eva_informa_zona_acumulada number,
    eva_dosificacion_de_los_temas number,
    eva_puntualidad number,
    eva_higiene_personal number,
    eva_infunde_respeto number,
    eva_informa_acerca_evaluaciones_mineduc number,
    eva_situacion number,
    desp_id number,
    desp_extencion number,
    desp_docente number,
    desp_materia number,
    desp_fecha varchar2(30),
    desp_planificacion_general number,
    desp_motivacion number,
    desp_presentacion number,
    desp_recursos_educativos number,
    desp_dominio_del_tema number,
    desp_capta_atencion_alumno number,
    desp_comunicacion number,
    desp_organizacion number,
    desp_fijacion number,
    desp_evaluacion_constante number,
    desp_promueve_expresion_estudiante number,
    desp_resuelve_dudas number,
    desp_metodologia number,
    desp_resuelve_evaluaciones_con_alumno number,
    desp_informa_zona_acumulada number,
    desp_dosificacion_de_los_temas number,
    desp_puntualidad number,
    desp_higiene_personal number,
    desp_infunde_respeto number,
    desp_informa_acerca_evaluaciones_mineduc number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.informacion_general_peisol 
  (
    info_id number not null ,
    info_extencion number,
    info_plan varchar2(15),
    info_jornada varchar2(15),
    info_semestre varchar2(5),
    info_codigo varchar2(15),
    info_tipo number,
    info_catalogo number,
    info_nom1 varchar2(20),
    info_nom2 varchar2(20),
    info_ape1 varchar2(20),
    info_ape2 varchar2(20),
    info_dpi varchar2(20),
    info_fecha_nac date,
    info_sexo varchar2(5),
    info_encargado varchar2(25),
    info_telefono_encar number,
    info_antes_estudios number,
    info_extencion_antes number,
    info_semestre_antes varchar2(15),
    info_ano_antes date,
    info_especialidad varchar2(30),
    info_tele_pers number,
    info_correo varchar2(20),
    info_fecha_inscrip date,
    info_situacion number,
    constraint pk_informacion_general_peisol primary key (info_id) 
  );
/
create table ADMIN.aud_informacion_general_peisol 
  (
    info_id number,
    info_extencion number,
    info_plan varchar2(15),
    info_jornada varchar2(15),
    info_semestre varchar2(5),
    info_codigo varchar2(15),
    info_tipo number,
    info_catalogo number,
    info_nom1 varchar2(20),
    info_nom2 varchar2(20),
    info_ape1 varchar2(20),
    info_ape2 varchar2(20),
    info_dpi varchar2(20),
    info_fecha_nac date,
    info_sexo varchar2(5),
    info_encargado varchar2(25),
    info_telefono_encar number,
    info_antes_estudios number,
    info_extencion_antes number,
    info_semestre_antes varchar2(15),
    info_ano_antes date,
    info_especialidad varchar2(30),
    info_tele_pers number,
    info_correo varchar2(20),
    info_fecha_inscrip date,
    info_situacion number,
    desp_id number,
    desp_extencion number,
    desp_plan varchar2(15),
    desp_jornada varchar2(15),
    desp_semestre varchar2(5),
    desp_codigo varchar2(15),
    desp_tipo number,
    desp_catalogo number,
    desp_nom1 varchar2(20),
    desp_nom2 varchar2(20),
    desp_ape1 varchar2(20),
    desp_ape2 varchar2(20),
    desp_dpi varchar2(20),
    desp_fecha_nac date,
    desp_sexo varchar2(5),
    desp_encargado varchar2(25),
    desp_telefono_encar number,
    desp_antes_estudios number,
    desp_extencion_antes number,
    desp_semestre_antes varchar2(15),
    desp_ano_antes date,
    desp_especialidad varchar2(30),
    desp_tele_pers number,
    desp_correo varchar2(20),
    desp_fecha_inscrip date,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluacion_docente 
  (
    eva_id number not null ,
    eva_extencion number,
    eva_docente number,
    eva_fecha varchar2(30),
    eva_programa_convenientemente_sus_actividades number,
    eva_demuestra_seguridad_habilidad_en_su_trabajo number,
    eva_planeamientos_bien_definidos number,
    eva_fomenta_en_los_estudiantes_reflexion_critica number,
    eva_promueve_interaccion_entre_estudiantes number,
    eva_utiliza_materiales_ayudas_para_impartir_clase number,
    eva_demuestra_interes_entusiasmo_al_impartir_clases number,
    eva_promueve_participacion_de_los_estudiantes number,
    eva_se_comunica_con_fluidez_propiedad number,
    eva_mantiene_orden_disciplina_en_clase number,
    eva_relaciones_humanas number,
    eva_puntualidad number,
    eva_presentacion_personal number,
    eva_cumplimiento_procedimientos_administrativos number,
    eva_se_ausenta_frecuentemente_con_sin_justificacion number,
    eva_interes_colaborar_actividades_extra_aula number,
    eva_interes_aprender_cosas_nuevas number,
    eva_acepta_sugerencia_o_recomendacion number,
    eva_capacidad_integracion_colaboracion number,
    eva_demuestra_hablidad_organizar_dirigir_actividades number,
    eva_muestra_interes_por_el_manteniemiento_area_de_trabajo number,
    eva_situacion number,
    constraint pk_evaluacion_docente  primary key (eva_id) 
  );
/
create table ADMIN.aud_evaluacion_docente 
  (
    eva_id number,
    eva_extencion number,
    eva_docente number,
    eva_fecha varchar2(30),
    eva_programa_convenientemente_sus_actividades number,
    eva_demuestra_seguridad_habilidad_en_su_trabajo number,
    eva_planeamientos_bien_definidos number,
    eva_fomenta_en_los_estudiantes_reflexion_critica number,
    eva_promueve_interaccion_entre_estudiantes number,
    eva_utiliza_materiales_ayudas_para_impartir_clase number,
    eva_demuestra_interes_entusiasmo_al_impartir_clases number,
    eva_promueve_participacion_de_los_estudiantes number,
    eva_se_comunica_con_fluidez_propiedad number,
    eva_mantiene_orden_disciplina_en_clase number,
    eva_relaciones_humanas number,
    eva_puntualidad number,
    eva_presentacion_personal number,
    eva_cumplimiento_procedimientos_administrativos number,
    eva_se_ausenta_frecuentemente_con_sin_justificacion number,
    eva_interes_colaborar_actividades_extra_aula number,
    eva_interes_aprender_cosas_nuevas number,
    eva_acepta_sugerencia_o_recomendacion number,
    eva_capacidad_integracion_colaboracion number,
    eva_demuestra_hablidad_organizar_dirigir_actividades number,
    eva_muestra_interes_por_el_manteniemiento_area_de_trabajo number,
    eva_situacion number,
    desp_id number,
    desp_extencion number,
    desp_docente number,
    desp_fecha varchar2(30),
    desp_programa_convenientemente_sus_actividades number,
    desp_demuestra_seguridad_habilidad_en_su_trabajo number,
    desp_planeamientos_bien_definidos number,
    desp_fomenta_en_los_estudiantes_reflexion_critica number,
    desp_promueve_interaccion_entre_estudiantes number,
    desp_utiliza_materiales_ayudas_para_impartir_clase number,
    desp_demuestra_interes_entusiasmo_al_impartir_clases number,
    desp_promueve_participacion_de_los_estudiantes number,
    desp_se_comunica_con_fluidez_propiedad number,
    desp_mantiene_orden_disciplina_en_clase number,
    desp_relaciones_humanas number,
    desp_puntualidad number,
    desp_presentacion_personal number,
    desp_cumplimiento_procedimientos_administrativos number,
    desp_se_ausenta_frecuentemente_con_sin_justificacion number,
    desp_interes_colaborar_actividades_extra_aula number,
    desp_interes_aprender_cosas_nuevas number,
    desp_acepta_sugerencia_o_recomendacion number,
    desp_capacidad_integracion_colaboracion number,
    desp_demuestra_hablidad_organizar_dirigir_actividades number,
    desp_muestra_interes_por_el_manteniemiento_area_de_trabajo number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.notas_finales_peisol 
  (
    not_id number not null ,
    not_extencion number,
    not_docente number,
    not_alumno number,
    not_semestre float,
    not_clase1 float,
    not_clase2 float,
    not_clase3 float,
    not_clase4 float,
    not_clase5 float,
    not_clase6 float,
    not_fecha varchar2(40),
    not_situacion number,
    constraint pk_notas_finales_peisol primary key (not_id) 
  );
/
create table ADMIN.aud_notas_finales_peisol 
  (
    not_id number,
    not_extencion number,
    not_docente number,
    not_alumno number,
    not_semestre float,
    not_clase1 float,
    not_clase2 float,
    not_clase3 float,
    not_clase4 float,
    not_clase5 float,
    not_clase6 float,
    not_fecha varchar2(40),
    not_situacion number,
    desp_not_id number,
    desp_not_extencion number,
    desp_not_docente number,
    desp_not_alumno number,
    desp_not_semestre float,
    desp_not_clase1 float,
    desp_not_clase2 float,
    desp_not_clase3 float,
    desp_not_clase4 float,
    desp_not_clase5 float,
    desp_not_clase6 float,
    desp_not_fecha varchar2(40),
    desp_not_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.maga_actividades 
  (
    com_id number not null ,
    com_desc varchar2(50),
    com_lugar varchar2(50),
    com_doc varchar2(50),
    com_fec_inicio TIMESTAMP(0),
    com_fec_fin TIMESTAMP(0),
    com_detalle varchar2(150),
    com_info varchar2(150),
    com_sit number,
    com_ing TIMESTAMP(0),
    com_dep number,
    constraint pk_maga_actividades primary key (com_id) 
  );
/
create table ADMIN.aud_maga_actividades 
  (
    com_id number,
    com_desc varchar2(50),
    com_lugar varchar2(50),
    com_doc varchar2(50),
    com_fec_inicio TIMESTAMP(0),
    com_fec_fin TIMESTAMP(0),
    com_detalle varchar2(150),
    com_info varchar2(150),
    com_sit number,
    com_ing TIMESTAMP(0),
    com_dep number,
    desp_com_id number,
    desp_com_desc varchar2(50),
    desp_com_lugar varchar2(50),
    desp_com_doc varchar2(50),
    desp_com_fec_inicio TIMESTAMP(0),
    desp_com_fec_fin TIMESTAMP(0),
    desp_com_detalle varchar2(150),
    desp_com_info varchar2(150),
    desp_com_sit number,
    desp_com_ing TIMESTAMP(0),
    desp_com_dep number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.materi_peisol 
  (
    mat_id number not null ,
    mat_semestre number,
    mat_clase_1 varchar2(25),
    mat_clase_2 varchar2(25),
    mat_clase_3 varchar2(25),
    mat_clase_4 varchar2(25),
    mat_clase_5 varchar2(25),
    mat_clase_6 varchar2(25),
    mat_situacion number,
    constraint pk_materi_peisol primary key (mat_id) 
  );
/
create table ADMIN.aud_materi_peisol 
  (
    mat_id number,
    mat_semestre number,
    mat_clase_1 varchar2(25),
    mat_clase_2 varchar2(25),
    mat_clase_3 varchar2(25),
    mat_clase_4 varchar2(25),
    mat_clase_5 varchar2(25),
    mat_clase_6 varchar2(25),
    mat_situacion number,
    desp_mat_id number,
    desp_mat_semestre number,
    desp_mat_clase_1 varchar2(25),
    desp_mat_clase_2 varchar2(25),
    desp_mat_clase_3 varchar2(25),
    desp_mat_clase_4 varchar2(25),
    desp_mat_clase_5 varchar2(25),
    desp_mat_clase_6 varchar2(25),
    desp_mat_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.maga_personal_asignado 
  (
    asi_id number not null ,
    asi_com number,
    asi_asig number,
    asi_sit number,
    constraint pk_maga_personal_asignado primary key (asi_id) 
  );
/
create table ADMIN.aud_maga_personal_asignado 
  (
    asi_id number,
    asi_com number,
    asi_asig number,
    asi_sit number,
    desp_asi_id number,
    desp_asi_com number,
    desp_asi_asig number,
    desp_asi_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_maquinaria 
  (
    maqu_id number not null ,
    maqu_catalogo number,
    maqu_tanque number(10,2),
    maqu_tipo_combustible varchar2(250),
    maqu_consumo_hora number(10,2),
    maqu_dependencia number,
    maqu_caballos_fuerza number,
    maqu_tipo_maquinaria varchar2(250),
    maqu_serie varchar2(250),
    maqu_modelo number,
    maqu_estado number,
    maqu_obser varchar2(2000),
    maqu_situacion number,
    maqu_obser1 varchar2(250),
    maqu_obser2 varchar2(250),
    constraint pk_vlh_maquinaria primary key (maqu_id) 
  );
/
create table ADMIN.aud_vlh_maquinaria 
  (
    maqu_id number,
    maqu_catalogo number,
    maqu_tanque number(10,2),
    maqu_tipo_combustible varchar2(250),
    maqu_consumo_hora number(10,2),
    maqu_dependencia number,
    maqu_caballos_fuerza number,
    maqu_tipo_maquinaria varchar2(250),
    maqu_serie varchar2(250),
    maqu_modelo number,
    maqu_estado number,
    maqu_obser varchar2(2000),
    maqu_situacion number,
    maqu_obser1 varchar2(250),
    maqu_obser2 varchar2(250),
    desp_maqu_id number,
    desp_maqu_catalogo number,
    desp_maqu_tanque number(10,2),
    desp_maqu_tipo_combustible varchar2(250),
    desp_maqu_consumo_hora number(10,2),
    desp_maqu_dependencia number,
    desp_maqu_caballos_fuerza number,
    desp_maqu_tipo_maquinaria varchar2(250),
    desp_maqu_serie varchar2(250),
    desp_maqu_modelo number,
    desp_maqu_estado number,
    desp_maqu_obser varchar2(2000),
    desp_maqu_situacion number,
    desp_maqu_obser1 varchar2(250),
    desp_maqu_obser2 varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_validaciones_fag 
  (
    val_id_fag number not null ,
    val_catalogo_fag varchar2(30),
    val_catalogo_equ_fag number,
    val_revisor_fag number,
    val_comte_fag number,
    val_fecha_fag date,
    val_situacion_fag varchar2(1),
    val_dependencia_fag number,
    val_fecha_emision_fag date,
    val_tipo_fag varchar2(2),
    constraint pk_vlh_validaciones_fag primary key (val_id_fag) 
  );
/
create table ADMIN.aud_vlh_validaciones_fag 
  (
    val_id_fag number,
    val_catalogo_fag varchar2(30),
    val_catalogo_equ_fag number,
    val_revisor_fag number,
    val_comte_fag number,
    val_fecha_fag date,
    val_situacion_fag varchar2(1),
    val_dependencia_fag number,
    val_fecha_emision_fag date,
    val_tipo_fag varchar2(2),
    desp_val_id_fag number,
    desp_val_catalogo_fag varchar2(30),
    desp_val_catalogo_equ_fag number,
    desp_val_revisor_fag number,
    desp_val_comte_fag number,
    desp_val_fecha_fag date,
    desp_val_situacion_fag varchar2(1),
    desp_val_dependencia_fag number,
    desp_val_fecha_emision_fag date,
    desp_val_tipo_fag varchar2(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_desc_elimina 
  (
    eli_id number not null ,
    eli_catalogo number,
    eli_matricula varchar2(30),
    eli_tipo_trasporte varchar2(10),
    eli_descripcion varchar2(2000),
    eli_fecha date,
    eli_tipo_transaccion varchar2(10),
    eli_situacion number,
    eli_obs varchar2(250),
    constraint pk_vlh_desc_elimina primary key (eli_id) 
  );
/
create table ADMIN.aud_vlh_desc_elimina 
  (
    eli_id number,
    eli_catalogo number,
    eli_matricula varchar2(30),
    eli_tipo_trasporte varchar2(10),
    eli_descripcion varchar2(2000),
    eli_fecha date,
    eli_tipo_transaccion varchar2(10),
    eli_situacion number,
    eli_obs varchar2(250),
    desp_eli_id number,
    desp_eli_catalogo number,
    desp_eli_matricula varchar2(30),
    desp_eli_tipo_trasporte varchar2(10),
    desp_eli_descripcion varchar2(2000),
    desp_eli_fecha date,
    desp_eli_tipo_transaccion varchar2(10),
    desp_eli_situacion number,
    desp_eli_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_retorno_cal 
  (
    ret_id number not null ,
    ret_fecha date,
    ret_catalogo_vehiculo number,
    ret_catalogo_carreton number,
    ret_descripcion varchar2(1500),
    ret_user number,
    ret_situacion number,
    constraint pk_vlh_retorno_cal primary key (ret_id) 
  );
/
create table ADMIN.aud_vlh_retorno_cal 
  (
    ret_id number,
    ret_fecha date,
    ret_catalogo_vehiculo number,
    ret_catalogo_carreton number,
    ret_descripcion varchar2(1500),
    ret_user number,
    ret_situacion number,
    desp_ret_id number,
    desp_ret_fecha date,
    desp_ret_catalogo_vehiculo number,
    desp_ret_catalogo_carreton number,
    desp_ret_descripcion varchar2(1500),
    desp_ret_user number,
    desp_ret_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_pdf 
  (
    pdf_registro number not null ,
    pdf_catalogo number,
    pdf_ruta varchar2(250),
    pdf_sit number,
    constraint pk_vlh_pdf primary key (pdf_registro) 
  );
/
create table ADMIN.aud_vlh_pdf 
  (
    pdf_registro number,
    pdf_catalogo number,
    pdf_ruta varchar2(250),
    pdf_sit number,
    desp_pdf_registro number,
    desp_pdf_catalogo number,
    desp_pdf_ruta varchar2(250),
    desp_pdf_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_pdf_embarcaciones 
  (
    pdf_registro_emb number,
    pdf_catalogo_emb number,
    pdf_ruta_emb varchar2(250),
    pdf_sit_emb number,
    constraint pk_vlh_pdf_embarcaciones primary key (pdf_registro_emb) 
  );
/
create table ADMIN.aud_vlh_pdf_embarcaciones 
  (
    pdf_registro_emb number,
    pdf_catalogo_emb number,
    pdf_ruta_emb varchar2(250),
    pdf_sit_emb number,
    desp_pdf_registro_emb number,
    desp_pdf_catalogo_emb number,
    desp_pdf_ruta_emb varchar2(250),
    desp_pdf_sit_emb number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_pdf_fag 
  (
    pdf_registro_fag number not null ,
    pdf_catalogo_fag varchar2(30),
    pdf_ruta_fag varchar2(250),
    pdf_sit_fag number,
    constraint pk_vlh_pdf_fag primary key (pdf_registro_fag) 
  );
/
create table ADMIN.aud_vlh_pdf_fag 
  (
    pdf_registro_fag number,
    pdf_catalogo_fag number,
    pdf_ruta_fag varchar2(250),
    pdf_sit_fag number,
    desp_pdf_registro_fag number,
    desp_pdf_catalogo_fag number,
    desp_pdf_ruta_fag varchar2(250),
    desp_pdf_sit_fag number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_pdf_maquinaria 
  (
    pdf_registro_maqu number not null ,
    pdf_catalogo_maqu varchar2(30),
    pdf_ruta_maqu varchar2(250),
    pdf_sit_maqu number,
    constraint pk_vlh_pdf_maquinaria primary key (pdf_registro_maqu) 
  );
/
create table ADMIN.aud_vlh_pdf_maquinaria 
  (
    pdf_registro_maqu number,
    pdf_catalogo_maqu number,
    pdf_ruta_maqu varchar2(250),
    pdf_sit_maqu number,
    desp_pdf_registro_maqu number,
    desp_pdf_catalogo_maqu number,
    desp_pdf_ruta_maqu varchar2(250),
    desp_pdf_sit_maqu number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vt_mper1 
  (
    vt_catalogo number not null ,
    vt_grado char(100),
    vt_ape1 char(100),
    vt_ape2 char(100),
    vt_nom1 char(100),
    vt_nom2 char(100),
    vt_ord_cel char(10),
    vt_no_ced number,
    vt_fecha date,
    constraint pk_vt_mper1 primary key (vt_catalogo) 
  );
/
create table ADMIN.vt_tab_ls_12 
  (
    vt12_nombre varchar2(200)
  );
/
create table ADMIN.vt_mper3 
  (
    vt_cat number,
    vt_grado varchar2(100),
    vt_nombre varchar2(410)
  );
/
create table ADMIN.vt_tab_ls_1 
  (
    vt1_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_2 
  (
    vt2_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_3 
  (
    vt3_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_4 
  (
    vt4_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_5 
  (
    vt5_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_6 
  (
    vt6_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_7 
  (
    vt7_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_8 
  (
    vt8_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_9 
  (
    vt9_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_10 
  (
    vt10_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_11 
  (
    vt11_nombre varchar2(200)
  );
/
create table ADMIN.vt_tab_ls_13 
  (
    vt13_nombre varchar2(200)
  );
/
create table ADMIN.aud_fin_programa 
  (
    pro_id number,
    pro_nombre varchar2(1),
    pro_fecha date,
    pro_situacion number,
    desp_pro_id number,
    desp_pro_nombre varchar2(1),
    desp_pro_fecha date,
    desp_pro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fin_subproducto 
  (
    subp_id number,
    subp_nombre varchar2(1),
    subp_fecha date,
    subp_producto number,
    subp_politica varchar2(15),
    subp_situacion number,
    desp_subp_id number,
    desp_subp_nombre varchar2(1),
    desp_subp_fecha date,
    desp_subp_producto number,
    desp_subp_politica varchar2(15),
    desp_subp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fin_producto 
  (
    prod_id number,
    prod_nombre varchar2(1),
    prod_fecha date,
    prod_actividades number,
    prod_situacion number,
    desp_prod_id number,
    desp_prod_nombre varchar2(1),
    desp_prod_fecha date,
    desp_prod_actividades number,
    desp_prod_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fin_actividades 
  (
    act_id number,
    act_nombre varchar2(1),
    act_fecha date,
    act_programa number,
    act_situacion number,
    desp_act_id number,
    desp_act_nombre varchar2(1),
    desp_act_fecha date,
    desp_act_programa number,
    desp_act_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fin_subpro_desc 
  (
    subpro_plaza number,
    subpro_politica varchar2(15),
    subpro_situacion number,
    subpro_fecha date,
    subpro_subproducto number,
    desp_subpro_plaza number,
    desp_subpro_politica varchar2(15),
    desp_subpro_situacion number,
    desp_subpro_fecha date,
    desp_subpro_subproducto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fin_subpro_desc 
  (
    subpro_plaza number,
    subpro_politica varchar2(15),
    subpro_situacion number,
    subpro_fecha date,
    subpro_subproducto number,
    constraint pk_fin_subpro_desc primary key (subpro_plaza) 
  );
/
create table ADMIN.fin_programa 
  (
    pro_id number,
    pro_nombre varchar2(250),
    pro_fecha date,
    pro_situacion number,
    constraint pk_fin_programa primary key (pro_id) 
  );
/
create table ADMIN.fin_actividades 
  (
    act_id number,
    act_nombre varchar2(250),
    act_fecha date,
    act_programa number,
    act_situacion number,
    constraint pk_fin_actividades primary key (act_id) 
  );
/
create table ADMIN.fin_producto 
  (
    prod_id number,
    prod_nombre varchar2(250),
    prod_fecha date,
    prod_actividades number,
    prod_situacion number,
    constraint pk_fin_producto primary key (prod_id) 
  );
/
create table ADMIN.fin_subproducto 
  (
    subp_id number,
    subp_nombre varchar2(250),
    subp_fecha date,
    subp_producto number,
    subp_politica varchar2(15),
    subp_situacion number,
    constraint pk_fin_subproducto primary key (subp_id) 
  );
/
create table ADMIN.sig_asig_grupos 
  (
    asi_id number not null ,
    asi_cat number,
    asi_grupo char(1),
    asi_sit number,
    constraint pk_sig_asig_grupos primary key (asi_id) 
  );
/
create table ADMIN.cau_situaciones 
  (
    sit_id number,
    sit_descripcion varchar2(100),
    constraint pk_cau_situaciones primary key (sit_id) 
  );
/
create table ADMIN.aud_cau_situaciones 
  (
    sit_id number,
    sit_descripcion varchar2(100),
    desp_sit_id number,
    desp_sit_descripcion varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cau_permisos 
  (
    per_id number,
    per_catalogo_usuario number,
    per_contrasena varchar2(230),
    per_fecha date,
    per_aplicaciones varchar2(250),
    per_observaciones varchar2(250),
    per_mensaje varchar2(250),
    per_dependencia number,
    per_situacion_permiso number,
    per_usuario char(5),
    constraint pk_cau_permisos primary key (per_id) 
  );
/
create table ADMIN.aud_cau_permisos 
  (
    per_id number,
    per_catalogo_usuario number,
    per_contrasena varchar2(230),
    per_fecha date,
    per_aplicaciones varchar2(250),
    per_observaciones varchar2(250),
    per_mensaje varchar2(250),
    per_dependencia number,
    per_situacion_permiso number,
    per_usuario char(5),
    desp_per_id number,
    desp_per_catalogo_usuario number,
    desp_per_contrasena varchar2(230),
    desp_per_fecha date,
    desp_per_aplicaciones varchar2(250),
    desp_per_observaciones varchar2(250),
    desp_per_mensaje varchar2(250),
    desp_per_dependencia number,
    desp_per_situacion_permiso number,
    desp_per_usuario char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_notas1 
  (
    not_catalogo number,
    not_fecha date,
    not_dominadas number,
    not_punteo_dom number,
    not_abdominales number,
    not_punteo_abd number,
    not_carrera datetime minute to second,
    not_punteo_car number,
    not_promedio number(5,2),
    not_obs varchar2(255),
    not_tipo varchar2(1),
    not_revisado number,
    not_dependencia number,
    not_peso number,
    not_estatura number(3,2),
    not_imc number(4,2),
    not_perfil varchar2(15),
    not_fec_certi date,
    not_grado number,
    not_usuario number,
    not_acta varchar2(100),
    not_extemporaneo number,
    not_evento number,
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_dominadas number,
    desp_not_punteo_dom number,
    desp_not_abdominales number,
    desp_not_punteo_abd number,
    desp_not_carrera datetime minute to second,
    desp_not_punteo_car number,
    desp_not_promedio number(5,2),
    desp_not_obs varchar2(255),
    desp_not_tipo varchar2(1),
    desp_not_revisado number,
    desp_not_dependencia number,
    desp_not_peso number,
    desp_not_estatura number(3,2),
    desp_not_imc number(4,2),
    desp_not_perfil varchar2(15),
    desp_not_fec_certi date,
    desp_not_grado number,
    desp_not_usuario number,
    desp_not_acta varchar2(100),
    desp_not_extemporaneo number,
    desp_not_evento number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cat_permisos 
  (
    p_emisor varchar2(100),
    p_receptor number,
    p_t_id number,
    p_permiso varchar2(100)
  );
/
create table ADMIN.sol_tarjetaunica 
  (
    sol_id number not null ,
    sol_fecha date,
    sol_catalogo number not null ,
    sol_cat_reviso number,
    sol_cat_autoriza number,
    sol_dep number,
    sol_motivo char(1),
    sol_desc varchar2(200),
    sol_obs_denegada varchar2(200),
    sol_ruta varchar2(150),
    sol_situacion char(3),
    constraint pk_sol_tarjetaunica primary key (sol_id) 
  );
/
create table ADMIN.aud_sol_tarjetaunica 
  (
    sol_id number,
    sol_fecha date,
    sol_catalogo number,
    sol_cat_reviso number,
    sol_cat_autoriza number,
    sol_dep number,
    sol_motivo char(1),
    sol_desc varchar2(200),
    sol_obs_denegada varchar2(200),
    sol_ruta varchar2(150),
    sol_situacion char(3),
    desp_sol_id number,
    desp_sol_fecha date,
    desp_sol_catalogo number,
    desp_sol_cat_reviso number,
    desp_sol_cat_autoriza number,
    desp_sol_dep number,
    desp_sol_motivo char(1),
    desp_sol_desc varchar2(200),
    desp_sol_obs_denegada varchar2(200),
    desp_sol_ruta varchar2(150),
    desp_sol_situacion char(3),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tropa_cuenta 
  (
    cuenta_id number not null ,
    cuenta_usu number,
    cuenta_cat number,
    cuenta_fech date,
    cuenta_ban number,
    cuenta_no char(25),
    cuenta_doc byte,
    cuenta_sit number,
    constraint pk_tropa_cuenta primary key (cuenta_id) 
  );
/
create table ADMIN.aud_tropa_cuenta 
  (
    cuenta_id number,
    cuenta_usu number,
    cuenta_cat number,
    cuenta_fech date,
    cuenta_ban number,
    cuenta_no char(25),
    cuenta_doc blob,
    cuenta_sit number,
    desp_cuenta_id number,
    desp_cuenta_usu number,
    desp_cuenta_cat number,
    desp_cuenta_fech date,
    desp_cuenta_ban number,
    desp_cuenta_no char(25),
    desp_cuenta_doc blob,
    desp_cuenta_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sig_rancho 
  (
    rancho_id number not null ,
    rancho_compania number,
    rancho_grado number,
    rancho_fecha date,
    rancho_tiempo number,
    rancho_cantidad number,
    rancho_situacion number,
    constraint pk_sig_rancho primary key (rancho_id) 
  );
/
create table ADMIN.aud_sig_rancho 
  (
    rancho_id number,
    rancho_compania number,
    rancho_grado number,
    rancho_fecha date,
    rancho_tiempo number,
    rancho_cantidad number,
    rancho_situacion number,
    desp_rancho_id number,
    desp_rancho_compania number,
    desp_rancho_grado number,
    desp_rancho_fecha date,
    desp_rancho_tiempo number,
    desp_rancho_cantidad number,
    desp_rancho_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rm_registros 
  (
    reg_catalogo number not null ,
    reg_dpi char(15) not null ,
    reg_nombre1 char(15),
    reg_nombre2 char(15),
    reg_nombre3 char(15),
    reg_apellido1 char(15),
    reg_apellido2 char(15),
    reg_direccion char(50),
    reg_estado_civil char(1),
    reg_sexo char(1),
    reg_sangre number,
    reg_celular number,
    reg_email varchar2(50),
    reg_fecha_nacimiento date,
    reg_dep_nacimiento char(4),
    reg_muni_nacimiento char(4),
    reg_religion number,
    reg_nit varchar2(12),
    reg_grado_escolar number,
    reg_fech_ingreso date,
    reg_lugar_entrenamiento number,
    reg_profesion number,
    reg_situacion number,
    reg_fecha_baja date,
    reg_etnia number,
    reg_grado number,
    reg_fuerza number,
    reg_edad number,
    reg_plaza number,
    reg_arma number,
    constraint PK_rm_registros primary key (reg_catalogo) 
  );
/
create table ADMIN.aud_rm_registros 
  (
    reg_catalogo number,
    reg_dpi char(15),
    reg_nombre1 char(15),
    reg_nombre2 char(15),
    reg_nombre3 char(15),
    reg_apellido1 char(15),
    reg_apellido2 char(15),
    reg_direccion char(50),
    reg_estado_civil char(1),
    reg_sexo char(1),
    reg_sangre number,
    reg_celular number,
    reg_email varchar2(50),
    reg_fecha_nacimiento date,
    reg_dep_nacimiento char(4),
    reg_muni_nacimiento char(4),
    reg_religion number,
    reg_nit varchar2(12),
    reg_grado_escolar number,
    reg_fech_ingreso date,
    reg_lugar_entrenamiento number,
    reg_profesion number,
    reg_situacion number,
    reg_fecha_baja date,
    reg_etnia number,
    reg_grado number,
    reg_fuerza number,
    reg_edad number,
    reg_plaza number,
    reg_arma number,
    desp_reg_catalogo number,
    desp_reg_dpi char(15),
    desp_reg_nombre1 char(15),
    desp_reg_nombre2 char(15),
    desp_reg_nombre3 char(15),
    desp_reg_apellido1 char(15),
    desp_reg_apellido2 char(15),
    desp_reg_direccion char(50),
    desp_reg_estado_civil char(1),
    desp_reg_sexo char(1),
    desp_reg_sangre number,
    desp_reg_celular number,
    desp_reg_email varchar2(50),
    desp_reg_fecha_nacimiento date,
    desp_reg_dep_nacimiento char(4),
    desp_reg_muni_nacimiento char(4),
    desp_reg_religion number,
    desp_reg_nit varchar2(12),
    desp_reg_grado_escolar number,
    desp_reg_fech_ingreso date,
    desp_reg_lugar_entrenamiento number,
    desp_reg_profesion number,
    desp_reg_situacion number,
    desp_reg_fecha_baja date,
    desp_reg_etnia number,
    desp_reg_grado number,
    desp_reg_fuerza number,
    desp_reg_edad number,
    desp_reg_plaza number,
    desp_reg_arma number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rm_beneficiarios 
  (
    ben_catalogo number not null ,
    ben_dpi char(15) not null ,
    ben_nombre1 char(15),
    ben_nombre2 char(15),
    ben_apellido1 char(15),
    ben_apellido2 char(15),
    ben_direccion char(50),
    ben_celular number,
    ben_parentesco number
  );
/
create table ADMIN.aud_rm_beneficiarios 
  (
    ben_catalogo number,
    ben_dpi char(15),
    ben_nombre1 char(15),
    ben_nombre2 char(15),
    ben_apellido1 char(15),
    ben_apellido2 char(15),
    ben_direccion char(50),
    ben_celular number,
    ben_parentesco number,
    desp_ben_catalogo number,
    desp_ben_dpi char(15),
    desp_ben_nombre1 char(15),
    desp_ben_nombre2 char(15),
    desp_ben_apellido1 char(15),
    desp_ben_apellido2 char(15),
    desp_ben_direccion char(50),
    desp_ben_celular number,
    desp_ben_parentesco number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rm_cuenta 
  (
    cuenta_id number not null ,
    cuenta_usu number,
    cuenta_cat number,
    cuenta_fech date,
    cuenta_ban number,
    cuenta_no char(25),
    cuenta_doc byte,
    cuenta_sit number,
    cuenta_obs char(50),
    constraint pk_rm_cuenta primary key (cuenta_id) 
  );
/
create table ADMIN.aud_rm_cuenta 
  (
    cuenta_id number,
    cuenta_usu number,
    cuenta_cat number,
    cuenta_fech date,
    cuenta_ban number,
    cuenta_no char(25),
    cuenta_doc byte,
    cuenta_sit number,
    cuenta_obs char(50),
    desp_cuenta_id number,
    desp_cuenta_usu number,
    desp_cuenta_cat number,
    desp_cuenta_fech date,
    desp_cuenta_ban number,
    desp_cuenta_no char(25),
    desp_cuenta_doc byte,
    desp_cuenta_sit number,
    desp_cuenta_obs char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rm_asistencia 
  (
    asi_catalogo number not null ,
    asi_fecha date,
    asi_horas number,
    asi_situacion number
  );
/
create table ADMIN.aud_rm_asistencia 
  (
    asi_catalogo number,
    asi_fecha date,
    asi_horas number,
    asi_situacion number,
    desp_asi_catalogo number,
    desp_asi_fecha date,
    desp_asi_horas number,
    desp_asi_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_office 
  (
    off_id number not null ,
    off_desc_2 varchar2(100) not null ,
    off_situacion number not null ,
    constraint pk_ciber_office primary key (off_id) 
  );
/
create table ADMIN.aud_ciber_office 
  (
    off_id number,
    off_desc_2 varchar2(100),
    off_situacion number,
    desp_off_id number,
    desp_off_desc_2 varchar2(100),
    desp_off_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_ram 
  (
    ram_id number not null ,
    ram_desc varchar2(50) not null ,
    ram_situacion number not null ,
    constraint pk_ciber_ram primary key (ram_id) 
  );
/
create table ADMIN.aud_ciber_ram 
  (
    ram_id number,
    ram_desc varchar2(50),
    ram_situacion number,
    desp_ram_id number,
    desp_ram_desc varchar2(50),
    desp_ram_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_antivirus 
  (
    ant_id number not null ,
    ant_desc_3 varchar2(100) not null ,
    ant_situacion number not null ,
    constraint pk_ciber_antivirus primary key (ant_id) 
  );
/
create table ADMIN.aud_ciber_antivirus 
  (
    ant_id number,
    ant_desc_3 varchar2(100),
    ant_situacion number,
    desp_ant_id number,
    desp_ant_desc_3 varchar2(100),
    desp_ant_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_disco_duro 
  (
    disc_id number not null ,
    disc_desc varchar2(100) not null ,
    disc_situacion number not null ,
    constraint pk_ciber_disco_duro primary key (disc_id) 
  );
/
create table ADMIN.aud_ciber_disco_duro 
  (
    disc_id number,
    disc_desc varchar2(100),
    disc_situacion number,
    desp_disc_id number,
    desp_disc_desc varchar2(100),
    desp_disc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_procesador 
  (
    proc_id number not null ,
    proc_desc varchar2(100) not null ,
    proc_situacion number not null ,
    constraint pk_ciber_procesador primary key (proc_id) 
  );
/
create table ADMIN.aud_ciber_procesador 
  (
    proc_id number,
    proc_desc varchar2(100),
    proc_situacion number,
    desp_proc_id number,
    desp_proc_desc varchar2(100),
    desp_proc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_sistema_operativo 
  (
    so_id number not null ,
    so_desc_1 varchar2(100) not null ,
    so_situacion number not null ,
    constraint pk_ciber_sistema_operativo primary key (so_id) 
  );
/
create table ADMIN.aud_ciber_sistema_operativo 
  (
    so_id number,
    so_desc_1 varchar2(100),
    so_situacion number,
    desp_so_id number,
    desp_so_desc_1 varchar2(100),
    desp_so_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_evento 
  (
    evento_id number not null ,
    evento_dia date,
    evento_numero number not null ,
    evento_ident varchar2(50) not null ,
    evento_catalogo number not null ,
    evento_grado number not null ,
    evento_telefono number not null ,
    evento_correo varchar2(50) not null ,
    evento_observacion char(2000) not null ,
    evento_ocurriofecha TIMESTAMP(0),
    evento_descubriofecha TIMESTAMP(0),
    evento_informofecha TIMESTAMP(0),
    evento_si varchar2(5) not null ,
    evento_duracion varchar2(100) not null ,
    evento_dependencia number not null ,
    evento_situacion number not null ,
    constraint pk_ciber_evento primary key (evento_id) 
  );
/
create table ADMIN.aud_ciber_evento 
  (
    evento_id number,
    evento_dia date,
    evento_numero number,
    evento_ident varchar2(50),
    evento_catalogo number,
    evento_grado number,
    evento_telefono number,
    evento_correo varchar2(50),
    evento_observacion char(2000),
    evento_ocurriofecha TIMESTAMP(0),
    evento_descubriofecha TIMESTAMP(0),
    evento_informofecha TIMESTAMP(0),
    evento_si varchar2(5),
    evento_duracion varchar2(100),
    evento_dependencia number,
    evento_situacion number,
    desp_evento_id number,
    desp_evento_dia date,
    desp_evento_numero number,
    desp_evento_ident varchar2(50),
    desp_evento_catalogo number,
    desp_evento_grado number,
    desp_evento_telefono number,
    desp_evento_correo varchar2(50),
    desp_evento_observacion char(2000),
    desp_evento_ocurriofecha TIMESTAMP(0),
    desp_evento_descubriofecha TIMESTAMP(0),
    desp_evento_informofecha TIMESTAMP(0),
    desp_evento_si varchar2(5),
    desp_evento_duracion varchar2(100),
    desp_evento_dependencia number,
    desp_evento_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_inventario 
  (
    inv_id number,
    inv_catalogo number,
    inv_oficina number,
    inv_nombre varchar2(50),
    inv_mac varchar2(50),
    inv_catresp number,
    inv_detalle char(2000),
    inv_pertenece varchar2(50),
    inv_so number,
    inv_solic varchar2(5),
    inv_procesador number,
    inv_almacenamiento number,
    inv_ram number,
    inv_office number,
    inv_officelic varchar2(5),
    inv_antivirus number,
    inv_antiviruslic varchar2(5),
    inv_dependencia number,
    inv_situacion number,
    constraint pk_ciber_inventario primary key (inv_id) 
  );
/
create table ADMIN.aud_ciber_inventario 
  (
    inv_id number,
    inv_catalogo number,
    inv_oficina number,
    inv_nombre varchar2(50),
    inv_mac varchar2(50),
    inv_catresp number,
    inv_detalle char(2000),
    inv_pertenece varchar2(50),
    inv_so number,
    inv_solic varchar2(5),
    inv_procesador number,
    inv_almacenamiento number,
    inv_ram number,
    inv_office number,
    inv_officelic varchar2(5),
    inv_antivirus number,
    inv_antiviruslic varchar2(5),
    inv_dependencia number,
    inv_situacion number,
    desp_inv_id number,
    desp_inv_catalogo number,
    desp_inv_oficina number,
    desp_inv_nombre varchar2(50),
    desp_inv_mac varchar2(50),
    desp_inv_catresp number,
    desp_inv_detalle char(2000),
    desp_inv_pertenece varchar2(50),
    desp_inv_so number,
    desp_inv_solic varchar2(5),
    desp_inv_procesador number,
    desp_inv_almacenamiento number,
    desp_inv_ram number,
    desp_inv_office number,
    desp_inv_officelic varchar2(5),
    desp_inv_antivirus number,
    desp_inv_antiviruslic varchar2(5),
    desp_inv_dependencia number,
    desp_inv_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tropa_beneficiarios 
  (
    ben_id number not null ,
    ben_catalogo number not null ,
    ben_dpi char(15) not null ,
    ben_nombre char(150),
    ben_direccion char(50),
    ben_celular number,
    ben_parentesco number,
    ben_porcentaje number,
    ben_situacion number,
    constraint PK_tropa_beneficiarios primary key (ben_id) 
  );
/
create table ADMIN.aud_tropa_beneficiarios 
  (
    ben_id number,
    ben_catalogo number,
    ben_dpi char(15),
    ben_nombre char(150),
    ben_direccion char(50),
    ben_celular number,
    ben_parentesco number,
    ben_porcentaje number,
    ben_situacion number,
    desp_ben_id number,
    desp_ben_catalogo number,
    desp_ben_dpi char(15),
    desp_ben_nombre char(150),
    desp_ben_direccion char(50),
    desp_ben_celular number,
    desp_ben_parentesco number,
    desp_ben_porcentaje number,
    desp_ben_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rm_historial_pagos 
  (
    pago_id number not null ,
    pago_cat number,
    pago_fecha date,
    pago_estipendio number(16,2),
    pago_cat_valido number,
    pago_situacion number,
    constraint PK_rm_historial_pagos primary key (pago_id) 
  );
/
create table ADMIN.aud_rm_historial_pagos 
  (
    pago_id number,
    pago_cat number,
    pago_fecha date,
    pago_estipendio number(16,2),
    pago_cat_valido number,
    pago_situacion number,
    desp_pago_id number,
    desp_pago_cat number,
    desp_pago_fecha date,
    desp_pago_estipendio number(16,2),
    desp_pago_cat_valido number,
    desp_pago_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bd_permisos 
  (
    grantor char(32),
    grantee char(32),
    tabauth char(9),
    tabid number,
    tabname varchar2(128),
    nrows number,
    desp_grantor char(32),
    desp_grantee char(32),
    desp_tabauth char(9),
    desp_tabid number,
    desp_tabname varchar2(128),
    desp_nrows number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_unidades_ejecutoras 
  (
    ue_id number,
    ue_numero number,
    ue_desc_lg varchar2(250),
    ue_desc_md varchar2(250),
    ue_desc_ct varchar2(250),
    ue_dep number,
    ue_obs varchar2(250),
    ue_fecha date,
    ue_situacion number,
    constraint pk_esip_unidades_ejecutoras primary key (ue_id) 
  );
/
create table ADMIN.aud_esip_unidades_ejecutoras 
  (
    ue_id number,
    ue_numero number,
    ue_desc_lg varchar2(250),
    ue_desc_md varchar2(250),
    ue_desc_ct varchar2(250),
    ue_dep number,
    ue_obs varchar2(250),
    ue_fecha date,
    ue_situacion number,
    desp_ue_id number,
    desp_ue_numero number,
    desp_ue_desc_lg varchar2(250),
    desp_ue_desc_md varchar2(250),
    desp_ue_desc_ct varchar2(250),
    desp_ue_dep number,
    desp_ue_obs varchar2(250),
    desp_ue_fecha date,
    desp_ue_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_registro_puestos_vacunacion 
  (
    reg_id number,
    reg_comando number,
    reg_puesto number,
    reg_dep number,
    reg_mun number,
    reg_situacion number,
    desp_reg_id number,
    desp_reg_comando number,
    desp_reg_puesto number,
    desp_reg_dep number,
    desp_reg_mun number,
    desp_reg_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_resumen_vacuna_ssm 
  (
    res_id number,
    res_fecha date,
    res_comando number,
    res_vacuna number,
    res_dosis number,
    res_cantidad number,
    res_situacion number,
    desp_res_id number,
    desp_res_fecha date,
    desp_res_comando number,
    desp_res_vacuna number,
    desp_res_dosis number,
    desp_res_cantidad number,
    desp_res_situacion number,
    accion char(1) not null ,
    usuario char(14) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.registro_puestos_vacunacion 
  (
    reg_id number not null ,
    reg_comando number,
    reg_puesto varchar2(100),
    reg_dep number,
    reg_mun number,
    reg_region number,
    reg_situacion number,
    constraint pk_registro_puestos_vacunacion primary key (reg_id) 
  );
/
create table ADMIN.resumen_vacuna_ssm 
  (
    res_id number not null ,
    res_fecha date,
    res_comando number,
    res_puesto number,
    res_region number,
    res_vacuna number,
    res_dosis number,
    res_cantidad number,
    res_situacion number,
    constraint pk_resumen_vacuna_ssm primary key (res_id) 
  );
/
create table ADMIN.psan_sanciones 
  (
    san_codigo number not null ,
    san_descripcion varchar2(800),
    san_clasificacion char(2),
    san_tipo char(2),
    san_cantidad number not null ,
    san_reglamento number,
    san_articulo number,
    san_literal char(1),
    san_numeral number,
    san_inciso char(2),
    constraint pk_psan_sanciones primary key (san_codigo)
  );
/
create table ADMIN.sub18_acciones 
  (
    sub18_ac_id number not null ,
    sub18_id_contrato number not null ,
    sub_18_cat_ingreso number not null ,
    sub18_ac_catg1 number,
    sub18_ac_cat_uejec number,
    sub18_ac_cat_d1 number,
    sub18_ac_cat_juridico number,
    sub18_ac_cat_dgamdn number,
    sub18_ac_situacion char(5) not null ,
    constraint pk_sub18_acciones primary key (sub18_ac_id) 
  );
/
create table ADMIN.aud_sub18_acciones 
  (
    sub18_ac_id number,
    sub18_id_contrato number,
    sub_18_cat_ingreso number,
    sub18_ac_catg1 number,
    sub18_ac_cat_uejec number,
    sub18_ac_cat_d1 number,
    sub18_ac_cat_juridico number,
    sub18_ac_cat_dgamdn number,
    sub18_ac_situacion char(5),
    desp_sub18_ac_id number,
    desp_sub18_id_contrato number,
    desp_sub_18_cat_ingreso number,
    desp_sub18_ac_catg1 number,
    desp_sub18_ac_cat_uejec number,
    desp_sub18_ac_cat_d1 number,
    desp_sub18_ac_cat_juridico number,
    desp_sub18_ac_cat_dgamdn number,
    desp_sub18_ac_situacion char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sub18_boleta 
  (
    sub18_bol_id number not null ,
    sub18_bol_id_contrato number not null ,
    sub18_bol_fecha_emi date not null ,
    sub18_bol_fecha_rev date not null ,
    sub18_bol_cat_revisor number not null ,
    sub18_bol_cat_comandante number not null ,
    sub18_bol_anotaciones varchar2 not null ,
    sub18_bol_situacion char(1) not null ,
    constraint pk_sub18_boleta primary key (sub18_bol_id) 
  );
/
create table ADMIN.aud_sub18_boleta 
  (
    sub18_bol_id number,
    sub18_bol_id_contrato number,
    sub18_bol_fecha_emi date,
    sub18_bol_fecha_rev date,
    sub18_bol_cat_revisor number,
    sub18_bol_cat_comandante number,
    sub18_bol_anotaciones varchar2,
    sub18_bol_situacion char(1),
    desp_sub18_bol_id number,
    desp_sub18_bol_id_contrato number,
    desp_sub18_bol_fecha_emi date,
    desp_sub18_bol_fecha_rev date,
    desp_sub18_bol_cat_revisor number,
    desp_sub18_bol_cat_comandante number,
    desp_sub18_bol_anotaciones varchar2,
    desp_sub18_bol_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sub18_detalles 
  (
    sub18_det_id number not null ,
    sub18_det_id_contrato number not null ,
    sub18_det_fecha date not null ,
    sub18_det_obs varchar2(250) not null ,
    sub18_det_situacion char(1) not null ,
    constraint pk_sub18_detalles primary key (sub18_det_id) 
  );
/
create table ADMIN.aud_sub18_detalles 
  (
    sub18_det_id number,
    sub18_det_id_contrato number,
    sub18_det_fecha date,
    sub18_det_obs varchar2(250),
    sub18_det_situacion char(1),
    desp_sub18_det_id number,
    desp_sub18_det_id_contrato number,
    desp_sub18_det_fecha date,
    desp_sub18_det_obs varchar2(250),
    desp_sub18_det_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_area_mision 
  (
    are_codigo number,
    are_descripcion varchar2(50),
    are_responsabilidad varchar2(250),
    are_tipo_seg varchar2(50),
    are_situacion number,
    desp_are_codigo number,
    desp_are_descripcion varchar2(50),
    desp_are_responsabilidad varchar2(250),
    desp_are_tipo_seg varchar2(50),
    desp_are_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_ope_planificada 
  (
    ope_pla_codigo number,
    ope_pla_planificar number,
    ope_pla_area number,
    ope_pla_operacion number,
    ope_pla_proposito number,
    ope_pla_met_ejec number,
    ope_pla_uni_org number,
    ope_pla_cat_responsable number,
    ope_pla_fecha TIMESTAMP,
    ope_pla_tel_resp number,
    ope_pla_inicia TIMESTAMP,
    ope_pla_termina TIMESTAMP,
    ope_pla_usuario number,
    ope_pla_dependencia number,
    ope_pla_situacion number,
    ope_pla_observacion char(1000),
    desp_ope_pla_codigo number,
    desp_ope_pla_planificar number,
    desp_ope_pla_area number,
    desp_ope_pla_operacion number,
    desp_ope_pla_proposito number,
    desp_ope_pla_met_ejec number,
    desp_ope_pla_uni_org number,
    desp_ope_pla_cat_responsable number,
    desp_ope_pla_fecha TIMESTAMP,
    desp_ope_pla_tel_resp number,
    desp_ope_pla_inicia TIMESTAMP,
    desp_ope_pla_termina TIMESTAMP,
    desp_ope_pla_usuario number,
    desp_ope_pla_dependencia number,
    desp_ope_pla_situacion number,
    desp_ope_pla_observacion char(1000),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_coordenadas2 
  (
    coo_reporte number,
    coo_anio number,
    coo_dep number,
    coo_id number,
    coo_lat_gra number,
    coo_lat_min number,
    coo_lat_seg number,
    coo_long_gra number,
    coo_long_min number,
    coo_long_seg number,
    coo_number_lat number(20,18),
    coo_number_long number(20,18),
    coo_utm_x number,
    coo_utm_y number,
    coo_lugar varchar2(150),
    desp_coo_reporte number,
    desp_coo_anio number,
    desp_coo_dep number,
    desp_coo_id number,
    desp_coo_lat_gra number,
    desp_coo_lat_min number,
    desp_coo_lat_seg number,
    desp_coo_long_gra number,
    desp_coo_long_min number,
    desp_coo_long_seg number,
    desp_coo_number_lat number(20,18),
    desp_coo_number_long number(20,18),
    desp_coo_utm_x number,
    desp_coo_utm_y number,
    desp_coo_lugar varchar2(150),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_control 
  (
    con_codigo number,
    con_catalogo number,
    con_grado number,
    con_arma number,
    con_nombre char(50),
    con_dependencia number,
    con_hora_ingreso TIMESTAMP,
    desp_con_codigo number,
    desp_con_catalogo number,
    desp_con_grado number,
    desp_con_arma number,
    desp_con_nombre char(50),
    desp_con_dependencia number,
    desp_con_hora_ingreso TIMESTAMP,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_dep_orden 
  (
    dep_ord_codigo number,
    dep_ord_orden number,
    dep_ord_dependencia number,
    dep_ord_situacion number,
    desp_dep_ord_codigo number,
    desp_dep_ord_orden number,
    desp_dep_ord_dependencia number,
    desp_dep_ord_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_mensaje 
  (
    men_codigo number,
    men_ope_pla_cod number,
    men_dependencia number,
    men_fecha TIMESTAMP,
    men_lugar varchar2(50),
    men_numero_men varchar2(50),
    men_contenido char(1500),
    men_cat_comte number,
    men_comte_empleo varchar2(50),
    men_cat_resp number,
    men_resp_empleo varchar2(50),
    men_situacion number,
    men_observacion varchar2(230),
    desp_men_codigo number,
    desp_men_ope_pla_cod number,
    desp_men_dependencia number,
    desp_men_fecha TIMESTAMP,
    desp_men_lugar varchar2(50),
    desp_men_numero_men varchar2(50),
    desp_men_contenido char(1500),
    desp_men_cat_comte number,
    desp_men_comte_empleo varchar2(50),
    desp_men_cat_resp number,
    desp_men_resp_empleo varchar2(50),
    desp_men_situacion number,
    desp_men_observacion varchar2(230),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_metas 
  (
    met_codigo number,
    met_anio number,
    met_dep number,
    met_mes number,
    met_cantidad number,
    met_situacion number,
    desp_met_codigo number,
    desp_met_anio number,
    desp_met_dep number,
    desp_met_mes number,
    desp_met_cantidad number,
    desp_met_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_metodo_ejec 
  (
    met_ejec_codigo number,
    met_ejec_descripcion varchar2(50),
    met_ejec_situacion number,
    desp_met_ejec_codigo number,
    desp_met_ejec_descripcion varchar2(50),
    desp_met_ejec_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_operaciones 
  (
    ope_codigo number,
    ope_area_codigo number,
    ope_descripcion varchar2(200),
    ope_observacion varchar2(230),
    ope_situacion number,
    desp_ope_codigo number,
    desp_ope_area_codigo number,
    desp_ope_descripcion varchar2(200),
    desp_ope_observacion varchar2(230),
    desp_ope_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_ordenes 
  (
    ord_codigo number,
    ord_referencia varchar2(250),
    ord_descripcion varchar2(250),
    ord_situacion number,
    desp_ord_codigo number,
    desp_ord_referencia varchar2(250),
    desp_ord_descripcion varchar2(250),
    desp_ord_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_personal2 
  (
    per_id number,
    per_reporte number,
    per_anio number,
    per_dep number,
    per_tipo number,
    per_cantidad number,
    desp_per_id number,
    desp_per_reporte number,
    desp_per_anio number,
    desp_per_dep number,
    desp_per_tipo number,
    desp_per_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_proposito 
  (
    prop_codigo number,
    prop_ope_codigo number,
    prop_descripcion varchar2(150),
    prop_situacion number,
    desp_prop_codigo number,
    desp_prop_ope_codigo number,
    desp_prop_descripcion varchar2(150),
    desp_prop_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_unidad_organica 
  (
    uni_org_codigo number,
    uni_org_descripcion varchar2(50),
    uni_org_situacion number,
    desp_uni_org_codigo number,
    desp_uni_org_descripcion varchar2(50),
    desp_uni_org_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_vehiculo_rep2 
  (
    veh_id number,
    veh_reporte number,
    veh_anio number,
    veh_dep number,
    veh_tipo number,
    veh_propiedad number,
    veh_cantidad number,
    desp_veh_id number,
    desp_veh_reporte number,
    desp_veh_anio number,
    desp_veh_dep number,
    desp_veh_tipo number,
    desp_veh_propiedad number,
    desp_veh_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_carrera2 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo datetime hour to minute,
    car_punteo number,
    desp_car_edad number,
    desp_car_sexo char(1),
    desp_car_tiempo datetime hour to minute,
    desp_car_punteo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.certificaciones 
  (
    cert_id number,
    cert_dpi varchar2(15) not null ,
    cert_nom1 varchar2(20) not null ,
    cert_nom2 varchar2(20),
    cert_nom3 varchar2(20),
    cert_ape1 varchar2(20) not null ,
    cert_ape2 varchar2(20),
    cert_ape3 varchar2(20),
    cert_sexo varchar2(2) not null ,
    cert_catalogo varchar2(10) not null ,
    cert_empleo varchar2(200),
    cert_fecha_alta date not null ,
    cert_grado_alta varchar2(30),
    cert_dep_alta varchar2(200),
    cert_fecha_baja date not null ,
    cert_grado_baja varchar2(30),
    cert_dep_baja varchar2(200),
    cert_motivo_baja varchar2(200),
    cert_doc_respaldo varchar2(60),
    cert_num_referencia varchar2(10),
    cert_cat_jefecerti varchar2(10) not null ,
    cert_graarm_certi varchar2(40),
    cert_nom_certi varchar2(60),
    cert_cat_jefesage varchar2(10) not null ,
    cert_graarm_jefesage varchar2(40),
    cert_nom_jefesage varchar2(60),
    cert_fecha_transac date not null ,
    cert_plaza_certi varchar2(20) not null ,
    cert_plaza_jefe varchar2(20) not null ,
    cert_cat_hizo varchar2(8) not null ,
    cert_motivo_cambio varchar2(250),
    cert_gen_solicito varchar2(1),
    cert_situacion char(1),
    constraint pk_certificaciones primary key (cert_id) 
  );
/
create table ADMIN.aud_certificaciones 
  (
    cert_id number,
    cert_dpi varchar2(15),
    cert_nom1 varchar2(20),
    cert_nom2 varchar2(20),
    cert_nom3 varchar2(20),
    cert_ape1 varchar2(20),
    cert_ape2 varchar2(20),
    cert_ape3 varchar2(20),
    cert_sexo varchar2(2),
    cert_catalogo varchar2(10),
    cert_empleo varchar2(200),
    cert_fecha_alta date,
    cert_grado_alta varchar2(30),
    cert_dep_alta varchar2(200),
    cert_fecha_baja date,
    cert_grado_baja varchar2(30),
    cert_dep_baja varchar2(200),
    cert_motivo_baja varchar2(200),
    cert_doc_respaldo varchar2(60),
    cert_num_referencia varchar2(10),
    cert_cat_jefecerti varchar2(10),
    cert_graarm_certi varchar2(40),
    cert_nom_certi varchar2(60),
    cert_cat_jefesage varchar2(10),
    cert_graarm_jefesage varchar2(40),
    cert_nom_jefesage varchar2(60),
    cert_fecha_transac date,
    cert_plaza_certi varchar2(20),
    cert_plaza_jefe varchar2(20),
    cert_cat_hizo varchar2(8),
    cert_motivo_cambio varchar2(250),
    cert_gen_solicito varchar2(1),
    cert_situacion char(1),
    desp_cert_id number,
    desp_cert_dpi varchar2(15),
    desp_cert_nom1 varchar2(20),
    desp_cert_nom2 varchar2(20),
    desp_cert_nom3 varchar2(20),
    desp_cert_ape1 varchar2(20),
    desp_cert_ape2 varchar2(20),
    desp_cert_ape3 varchar2(20),
    desp_cert_sexo varchar2(2),
    desp_cert_catalogo varchar2(10),
    desp_cert_empleo varchar2(200),
    desp_cert_fecha_alta date,
    desp_cert_grado_alta varchar2(30),
    desp_cert_dep_alta varchar2(200),
    desp_cert_fecha_baja date,
    desp_cert_grado_baja varchar2(30),
    desp_cert_dep_baja varchar2(200),
    desp_cert_motivo_baja varchar2(200),
    desp_cert_doc_respaldo varchar2(60),
    desp_cert_num_referencia varchar2(10),
    desp_cert_cat_jefecerti varchar2(10),
    desp_cert_graarm_certi varchar2(40),
    desp_cert_nom_certi varchar2(60),
    desp_cert_cat_jefesage varchar2(10),
    desp_cert_graarm_jefesage varchar2(40),
    desp_cert_nom_jefesage varchar2(60),
    desp_cert_fecha_transac date,
    desp_cert_plaza_certi varchar2(20),
    desp_cert_plaza_jefe varchar2(20),
    desp_cert_cat_hizo varchar2(8),
    desp_cert_motivo_cambio varchar2(250),
    desp_cert_gen_solicito varchar2(1),
    desp_cert_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fag_compras 
  (
    com_id number not null ,
    com_registro varchar2(20),
    com_cat_solicito number not null ,
    com_no_parte varchar2(30) not null ,
    com_nombre_articulo varchar2(50),
    com_no_nac_existencia varchar2(50),
    com_no_alterno varchar2(50),
    com_unidad_medida number not null ,
    com_matricula number,
    com_dependencia number not null ,
    com_orden_trabajo varchar2(30),
    com_cantidad number not null ,
    com_fecha date,
    com_obs varchar2(100),
    com_proceso varchar2(10) not null ,
    com_sit number not null ,
    constraint pk_fag_compras primary key (com_id) 
  );
/
create table ADMIN.aud_fag_compras 
  (
    com_id number,
    com_registro varchar2(20),
    com_cat_solicito number,
    com_no_parte varchar2(30),
    com_nombre_articulo varchar2(50),
    com_no_nac_existencia varchar2(50),
    com_no_alterno varchar2(50),
    com_unidad_medida number,
    com_matricula number,
    com_dependencia number,
    com_orden_trabajo varchar2(30),
    com_cantidad number,
    com_fecha date,
    com_obs varchar2(100),
    com_proceso varchar2(10),
    com_sit number,
    desp_com_id number,
    desp_com_registro varchar2(20),
    desp_com_cat_solicito number,
    desp_com_no_parte varchar2(30),
    desp_com_nombre_articulo varchar2(50),
    desp_com_no_nac_existencia varchar2(50),
    desp_com_no_alterno varchar2(50),
    desp_com_unidad_medida number,
    desp_com_matricula number,
    desp_com_dependencia number,
    desp_com_orden_trabajo varchar2(30),
    desp_com_cantidad number,
    desp_com_fecha date,
    desp_com_obs varchar2(100),
    desp_com_proceso varchar2(10),
    desp_com_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sub_18_contrato 
  (
    sub18_id number not null ,
    sub18_num_contrato varchar2(30) not null ,
    sub18_renglon number not null ,
    sub18_fuentefin number not null ,
    sub18_minuta number not null ,
    sub18_cuentadancia varchar2(30) not null ,
    sub18_colegiado number not null ,
    sub18_nombres varchar2(80) not null ,
    sub18_apellidos varchar2(80) not null ,
    sub18_dpi char(15) not null ,
    sub18_dependencia_con_dep number not null ,
    sub18_uejec_con_unidades number not null ,
    sub18_sexo char(1) not null ,
    sub18_fec_creacion date,
    sub18_fec_inicio date,
    sub18_fec_fin date,
    sub18_mesestrabaja number not null ,
    sub18_sueldo number(16,2) not null ,
    sub18_observaciones varchar2(150) not null ,
    sub18_rutapdf_contrato varchar2(150) not null ,
    sub18_rutapdf_documentos varchar2(150) not null ,
    sub18_dependencia_mdep number not null ,
    sub18_situacion char(5) not null ,
    constraint pk_sub_18_contrato primary key (sub18_id) 
  );
/
create table ADMIN.aud_sub_18_contrato 
  (
    sub18_id number,
    sub18_num_contrato varchar2(30),
    sub18_renglon number,
    sub18_fuentefin number,
    sub18_minuta number,
    sub18_cuentadancia varchar2(30),
    sub18_colegiado number,
    sub18_nombres varchar2(80),
    sub18_apellidos varchar2(80),
    sub18_dpi char(15),
    sub18_dependencia_con_dep number,
    sub18_uejec_con_unidades number,
    sub18_sexo char(1),
    sub18_fec_creacion date,
    sub18_fec_inicio date,
    sub18_fec_fin date,
    sub18_mesestrabaja number,
    sub18_sueldo number(16,2),
    sub18_observaciones varchar2(150),
    sub18_rutapdf_contrato varchar2(150),
    sub18_rutapdf_documentos varchar2(150),
    sub18_dependencia_mdep number,
    sub18_situacion char(5),
    desp_sub18_id number,
    desp_sub18_num_contrato varchar2(30),
    desp_sub18_renglon number,
    desp_sub18_fuentefin number,
    desp_sub18_minuta number,
    desp_sub18_cuentadancia varchar2(30),
    desp_sub18_colegiado number,
    desp_sub18_nombres varchar2(80),
    desp_sub18_apellidos varchar2(80),
    desp_sub18_dpi char(15),
    desp_sub18_dependencia_con_dep number,
    desp_sub18_uejec_con_unidades number,
    desp_sub18_sexo char(1),
    desp_sub18_fec_creacion date,
    desp_sub18_fec_inicio date,
    desp_sub18_fec_fin date,
    desp_sub18_mesestrabaja number,
    desp_sub18_sueldo number(16,2),
    desp_sub18_observaciones varchar2(150),
    desp_sub18_rutapdf_contrato varchar2(150),
    desp_sub18_rutapdf_documentos varchar2(150),
    desp_sub18_dependencia_mdep number,
    desp_sub18_situacion char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fag_metodo_adquisicion 
  (
    met_id number not null ,
    met_metodo varchar2(10) not null ,
    met_sit number not null ,
    constraint pk_fag_metodo_adquisicion primary key (met_id) 
  );
/
create table ADMIN.fag_dependencia 
  (
    dep_id number not null ,
    dep_desc varchar2(40) not null ,
    dep_sit number not null ,
    constraint pk_fag_dependencia primary key (dep_id) 
  );
/
create table ADMIN.fag_condicion_rep 
  (
    con_id number not null ,
    con_desc varchar2(30) not null ,
    con_sit number not null ,
    constraint pk_fag_condicion_rep primary key (con_id) 
  );
/
create table ADMIN.fag_unidad_medida 
  (
    uni_id number not null ,
    uni_desc varchar2(30) not null ,
    uni_sit number not null ,
    constraint pk_fag_unidad_medida primary key (uni_id) 
  );
/
create table ADMIN.fag_tipo_articulos 
  (
    tip_id number not null ,
    tip_desc varchar2(50),
    tip_sit number not null ,
    constraint pk_fag_tipo_articulos primary key (tip_id) 
  );
/
create table ADMIN.fag_articulos 
  (
    art_id number not null ,
    art_desc varchar2(30) not null ,
    art_part_num varchar2(50) not null ,
    art_nat_stock_number varchar2(50),
    art_sit number not null ,
    constraint pk_fag_articulos primary key (art_id) 
  );
/
create table ADMIN.fag_almacen 
  (
    alm_id number not null ,
    alm_nom varchar2(15) not null ,
    alm_num number not null ,
    alm_sit number not null ,
    constraint pk_fag_almacen primary key (alm_id) 
  );
/
create table ADMIN.fag_seccion 
  (
    sec_id number not null ,
    sec_desc varchar2(20) not null ,
    sec_sit number not null ,
    constraint pk_fag_seccion primary key (sec_id) 
  );
/
create table ADMIN.fag_estanterias 
  (
    est_id number not null ,
    est_desc varchar2(10) not null ,
    est_sit number not null ,
    constraint pk_fag_estanterias primary key (est_id) 
  );
/
create table ADMIN.fag_columnas 
  (
    col_id number not null ,
    col_desc varchar2(10) not null ,
    col_sit number not null ,
    constraint pk_fag_columnas constraint pk_ primary key (col_id) 
  );
/
create table ADMIN.fag_niveles 
  (
    niv_id number not null ,
    niv_desc varchar2(10) not null ,
    niv_sit number not null ,
    constraint pk_fag_niveles primary key (niv_id) 
  );
/
create table ADMIN.fag_caja 
  (
    caj_id number not null ,
    caj_desc varchar2(20) not null ,
    caj_sit number not null ,
    constraint pk_fag_caja primary key (caj_id) 
  );
/
create table ADMIN.fag_inventario 
  (
    inv_id number not null ,
    inv_formulario varchar2(20),
    inv_registros varchar2(20) not null ,
    inv_autorizo number,
    inv_reviso number,
    inv_entrego number,
    inv_asigno number,
    inv_solicito number,
    inv_recibio number,
    inv_articulo number not null ,
    inv_numero_serie varchar2(60),
    inv_alterno varchar2(60),
    inv_unidad_medida number not null ,
    inv_cantidad number not null ,
    inv_metodo_adquisicion number,
    inv_condicion number not null ,
    inv_tipo_repuesto number,
    inv_fecha_venc date,
    inv_fech_ing date,
    inv_fech_egre date,
    inv_aeronave number,
    inv_factura varchar2(50),
    inv_nit_proveedor varchar2(20),
    inv_almacen number,
    inv_seccion number,
    inv_estanteria number,
    inv_columna number,
    inv_nivel number,
    inv_caja number,
    inv_obs varchar2(200),
    inv_orden_trab varchar2(100),
    inv_dependencia number,
    inv_proceso varchar2(10) not null ,
    inv_sit number not null ,
    constraint pk_fag_inventario primary key (inv_id) 
  );
/
create table ADMIN.mdep_otros 
  (
    odep_codigo number not null ,
    odep_direccion varchar2(255),
    odep_telefono number,
    odep_email char(40),
    odep_fec_crea date,
    constraint pk_mdep_otros primary key (odep_codigo) 
  );
/
create table ADMIN.aud_mdep_otros 
  (
    odep_codigo number,
    odep_direccion varchar2(255),
    odep_telefono number,
    odep_email char(40),
    odep_fec_crea date,
    desp_odep_codigo number,
    desp_odep_direccion varchar2(255),
    desp_odep_telefono number,
    desp_odep_email char(40),
    desp_odep_fec_crea date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.permisos_bdmdn 
  (
    perm_usuario number,
    perm_id_tab number,
    perm_permiso char(9)
  );
/
create table ADMIN.far_insumos_dependencias 
  (
    ins_id_depen number not null ,
    ins_id_datos_depen number not null ,
    ins_nombre_farmaco_depen number,
    ins_presentacion_farmaco_depen number,
    ins_cantidad_depen number,
    ins_cantidad_existente_lote_depen number,
    ins_cantidad_existente_depen number,
    ins_id_tabla_suma number,
    ins_lote_depen varchar2(250),
    ins_fecha_vence_depen date,
    ins_dependencia_depen number,
    ins_asig_prec_depen varchar2(250),
    ins_asig_total_depend number(20,5),
    ins_tipo_movimiento_depend char(5),
    ins_obser1_depend varchar2(250),
    ins_obser2_depend varchar2(2000),
    ins_situacion_depend number,
    constraint pk_far_insumos_dependencias primary key (ins_id_depen) 
  );
/
create table ADMIN.aud_far_insumos_dependencias 
  (
    ins_id_depen number,
    ins_id_datos_depen number,
    ins_nombre_farmaco_depen number,
    ins_presentacion_farmaco_depen number,
    ins_cantidad_depen number,
    ins_cantidad_existente_lote_depen number,
    ins_cantidad_existente_depen number,
    ins_id_tabla_suma number,
    ins_lote_depen varchar2(250),
    ins_fecha_vence_depen date,
    ins_dependencia_depen number,
    ins_asig_prec_depen varchar2(250),
    ins_asig_total_depend number(20,5),
    ins_tipo_movimiento_depend char(5),
    ins_obser1_depend varchar2(250),
    ins_obser2_depend varchar2(2000),
    ins_situacion_depend number,
    desp_ins_id_depen number,
    desp_ins_id_datos_depen number,
    desp_ins_nombre_farmaco_depen number,
    desp_ins_presentacion_farmaco_depen number,
    desp_ins_cantidad_depen number,
    desp_ins_cantidad_existente_lote_depen number,
    desp_ins_cantidad_existente_depen number,
    desp_ins_id_tabla_suma number,
    desp_ins_lote_depen varchar2(250),
    desp_ins_fecha_vence_depen date,
    desp_ins_dependencia_depen number,
    desp_ins_asig_prec_depen varchar2(250),
    desp_ins_asig_total_depend number(20,5),
    desp_ins_tipo_movimiento_depend char(5),
    desp_ins_obser1_depend varchar2(250),
    desp_ins_obser2_depend varchar2(2000),
    desp_ins_situacion_depend number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_insumos_datos_dependencias 
  (
    ins_id_dat_depend number not null ,
    ins_fecha_dat_depend date,
    ins_cat_entrega_depend number,
    ins_grado_entrega_depend number,
    ins_arma_entrega_depend number,
    ins_cat_recibe_depend number,
    ins_grado_recibe_depend number,
    ins_arma_recibe_depend number,
    ins_tipo_enfermedad_depend number,
    ins_categoria_enfermedad_depend number,
    ins_enfermedad_depend number,
    ins_total_dat_depens number(20,5),
    ins_dependencia_dat_depend number,
    ins_observacion_dat_depend varchar2(2000),
    ins_situacion_dat_depend number,
    ins_obser1_dat_depend varchar2(250),
    ins_obser2_dat_depend varchar2(250),
    ins_tipo_mov_dat_depend char(5),
    ins_id_tabla_suma_depend number,
    constraint pk_far_insumos_datos_dependencias primary key (ins_id_dat_depend) 
  );
/
create table ADMIN.aud_far_insumos_datos_dependencias 
  (
    ins_id_dat_depend number,
    ins_fecha_dat_depend date,
    ins_cat_entrega_depend number,
    ins_grado_entrega_depend number,
    ins_arma_entrega_depend number,
    ins_cat_recibe_depend number,
    ins_grado_recibe_depend number,
    ins_arma_recibe_depend number,
    ins_tipo_enfermedad_depend number,
    ins_categoria_enfermedad_depend number,
    ins_enfermedad_depend number,
    ins_total_dat_depens number(20,5),
    ins_dependencia_dat_depend number,
    ins_observacion_dat_depend varchar2(2000),
    ins_situacion_dat_depend number,
    ins_obser1_dat_depend varchar2(250),
    ins_obser2_dat_depend varchar2(250),
    ins_tipo_mov_dat_depend char(5),
    ins_id_tabla_suma_depend number,
    desp_ins_id_dat_depend number,
    desp_ins_fecha_dat_depend date,
    desp_ins_cat_entrega_depend number,
    desp_ins_grado_entrega_depend number,
    desp_ins_arma_entrega_depend number,
    desp_ins_cat_recibe_depend number,
    desp_ins_grado_recibe_depend number,
    desp_ins_arma_recibe_depend number,
    desp_ins_tipo_enfermedad_depend number,
    desp_ins_categoria_enfermedad_depend number,
    desp_ins_enfermedad_depend number,
    desp_ins_total_dat_depens number(20,5),
    desp_ins_dependencia_dat_depend number,
    desp_ins_observacion_dat_depend varchar2(2000),
    desp_ins_situacion_dat_depend number,
    desp_ins_obser1_dat_depend varchar2(250),
    desp_ins_obser2_dat_depend varchar2(250),
    desp_ins_tipo_mov_dat_depend char(5),
    desp_ins_id_tabla_suma_depend number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_enfermedades 
  (
    enferm_id number not null ,
    enferm_cod char(20),
    enferm_id_cat_enf number not null ,
    enferm_nomb varchar2(250),
    enferm_descripcion varchar2(2000),
    enferm_situacion number,
    primary key (enferm_id) 
  );
/
create table ADMIN.aud_far_enfermedades 
  (
    enferm_id number,
    enferm_cod char(20),
    enferm_id_cat_enf number,
    enferm_nomb varchar2(250),
    enferm_descripcion varchar2(2000),
    enferm_situacion number,
    desp_enferm_id number,
    desp_enferm_cod char(20),
    desp_enferm_id_cat_enf number,
    desp_enferm_nomb varchar2(250),
    desp_enferm_descripcion varchar2(2000),
    desp_enferm_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_categorias_enfermedades 
  (
    cat_enf_id number not null ,
    cat_enf_cod char(20),
    cat_enf_id_tip_enf number not null ,
    cat_enf_nomb varchar2(250),
    cat_enf_descripcion varchar2(2000),
    cat_enf_situacion number,
    constraint pk_far_categorias_enfermedades primary key (cat_enf_id) 
  );
/
create table ADMIN.aud_far_categorias_enfermedades 
  (
    cat_enf_id number,
    cat_enf_cod char(20),
    cat_enf_id_tip_enf number,
    cat_enf_nomb varchar2(250),
    cat_enf_descripcion varchar2(2000),
    cat_enf_situacion number,
    desp_cat_enf_id number,
    desp_cat_enf_cod char(20),
    desp_cat_enf_id_tip_enf number,
    desp_cat_enf_nomb varchar2(250),
    desp_cat_enf_descripcion varchar2(2000),
    desp_cat_enf_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.far_tipos_enfermedades 
  (
    tip_enf_id number not null ,
    tip_enf_cod char(20),
    tip_enf_nomb varchar2(250),
    tip_enf_descripcion varchar2(2000),
    tip_enf_situacion number,
    constraint pk_far_tipos_enfermedades primary key (tip_enf_id) 
  );
/
create table ADMIN.aud_far_tipos_enfermedades 
  (
    tip_enf_id number,
    tip_enf_cod char(20),
    tip_enf_nomb varchar2(250),
    tip_enf_descripcion varchar2(2000),
    tip_enf_situacion number,
    desp_tip_enf_id number,
    desp_tip_enf_cod char(20),
    desp_tip_enf_nomb varchar2(250),
    desp_tip_enf_descripcion varchar2(2000),
    desp_tip_enf_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.constancias_sage 
  (
    cons_id number,
    cons_dpi varchar2(15),
    cons_nom1 varchar2(20) not null ,
    cons_nom2 varchar2(40),
    cons_ape1 varchar2(20) not null ,
    cons_ape2 varchar2(40),
    cons_sexo varchar2(1) not null ,
    cons_fecha_doc date not null ,
    cons_nombre_not varchar2(250) not null ,
    cons_numero_col varchar2(20) not null ,
    cons_sexo_not char(2) not null ,
    cons_fecha_alta date not null ,
    cons_grado_alta varchar2(90) not null ,
    cons_dep_alta varchar2(200) not null ,
    cons_fecha_baja date not null ,
    cons_grado_baja varchar2(30) not null ,
    cons_dep_baja varchar2(200) not null ,
    cons_motivo_baja varchar2(200) not null ,
    cons_doc_respaldo varchar2(60),
    cons_num_recibo varchar2(10),
    cons_cat_jefecerti varchar2(10) not null ,
    cons_graarm_certi varchar2(80),
    cons_nom_certi varchar2(100) not null ,
    cons_cat_jefesage varchar2(10) not null ,
    cons_graarm_jefesage varchar2(80) not null ,
    cons_nom_jefesage varchar2(100) not null ,
    cons_fecha_transac date not null ,
    cons_plaza_certi varchar2(20) not null ,
    cons_plaza_jefe varchar2(20) not null ,
    cons_cat_hizo varchar2(10) not null ,
    cons_motivo_cambio varchar2(250) not null ,
    cons_tip_documento char(1) not null ,
    cons_situacion char(1) not null ,
    constraint pk_constancias_sage primary key (cons_id) 
  );
/
create table ADMIN.aud_constancias_sage 
  (
    cons_id number,
    cons_dpi varchar2(15),
    cons_nom1 varchar2(20),
    cons_nom2 varchar2(40),
    cons_ape1 varchar2(20),
    cons_ape2 varchar2(40),
    cons_sexo varchar2(1),
    cons_fecha_doc date,
    cons_nombre_not varchar2(250),
    cons_numero_col varchar2(20),
    cons_sexo_not char(2),
    cons_fecha_alta date,
    cons_grado_alta varchar2(90),
    cons_dep_alta varchar2(200),
    cons_fecha_baja date,
    cons_grado_baja varchar2(30),
    cons_dep_baja varchar2(200),
    cons_motivo_baja varchar2(200),
    cons_doc_respaldo varchar2(60),
    cons_num_recibo varchar2(10),
    cons_cat_jefecerti varchar2(10),
    cons_graarm_certi varchar2(80),
    cons_nom_certi varchar2(100),
    cons_cat_jefesage varchar2(10),
    cons_graarm_jefesage varchar2(80),
    cons_nom_jefesage varchar2(100),
    cons_fecha_transac date,
    cons_plaza_certi varchar2(20),
    cons_plaza_jefe varchar2(20),
    cons_cat_hizo varchar2(10),
    cons_motivo_cambio varchar2(250),
    cons_tip_documento char(1),
    cons_situacion char(1),
    desp_cons_id number,
    desp_cons_dpi varchar2(15),
    desp_cons_nom1 varchar2(20),
    desp_cons_nom2 varchar2(40),
    desp_cons_ape1 varchar2(20),
    desp_cons_ape2 varchar2(40),
    desp_cons_sexo varchar2(1),
    desp_cons_fecha_doc date,
    desp_cons_nombre_not varchar2(250),
    desp_cons_numero_col varchar2(20),
    desp_cons_sexo_not char(2),
    desp_cons_fecha_alta date,
    desp_cons_grado_alta varchar2(90),
    desp_cons_dep_alta varchar2(200),
    desp_cons_fecha_baja date,
    desp_cons_grado_baja varchar2(30),
    desp_cons_dep_baja varchar2(200),
    desp_cons_motivo_baja varchar2(200),
    desp_cons_doc_respaldo varchar2(60),
    desp_cons_num_recibo varchar2(10),
    desp_cons_cat_jefecerti varchar2(10),
    desp_cons_graarm_certi varchar2(80),
    desp_cons_nom_certi varchar2(100),
    desp_cons_cat_jefesage varchar2(10),
    desp_cons_graarm_jefesage varchar2(80),
    desp_cons_nom_jefesage varchar2(100),
    desp_cons_fecha_transac date,
    desp_cons_plaza_certi varchar2(20),
    desp_cons_plaza_jefe varchar2(20),
    desp_cons_cat_hizo varchar2(10),
    desp_cons_motivo_cambio varchar2(250),
    desp_cons_tip_documento char(1),
    desp_cons_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fmper 
  (
    per_catalogo number,
    per_serie char(8),
    per_grado number,
    per_arma number,
    per_nom1 char(15),
    per_nom2 char(15),
    per_ape1 char(15),
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4),
    per_ced_reg number,
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4),
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4),
    per_telefono number,
    per_sexo char(1),
    per_fec_nac date,
    per_nac_lugar char(4),
    per_promocion number,
    per_afil_ipm char(1),
    per_sangre char(3),
    per_antiguedad number,
    per_bienal number,
    per_plaza number,
    per_desc_empleo char(45),
    per_fec_nomb date,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2),
    per_prima_prof number,
    per_dpi char(15),
    desp_per_catalogo number,
    desp_per_serie char(8),
    desp_per_grado number,
    desp_per_arma number,
    desp_per_nom1 char(15),
    desp_per_nom2 char(15),
    desp_per_ape1 char(15),
    desp_per_ape2 char(15),
    desp_per_ape3 char(15),
    desp_per_ced_ord char(4),
    desp_per_ced_reg number,
    desp_per_fec_ext_ced date,
    desp_per_ext_ced_lugar char(4),
    desp_per_est_civil char(1),
    desp_per_direccion char(50),
    desp_per_zona number,
    desp_per_dir_lugar char(4),
    desp_per_telefono number,
    desp_per_sexo char(1),
    desp_per_fec_nac date,
    desp_per_nac_lugar char(4),
    desp_per_promocion number,
    desp_per_afil_ipm char(1),
    desp_per_sangre char(3),
    desp_per_antiguedad number,
    desp_per_bienal number,
    desp_per_plaza number,
    desp_per_desc_empleo char(45),
    desp_per_fec_nomb date,
    desp_per_ord_gral char(7),
    desp_per_punto_og number,
    desp_per_situacion char(2),
    desp_per_prima_prof number,
    desp_per_dpi char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_cat_eliminados 
  (
    fin_elim_id number,
    fin_elim_cat_finanzas number,
    fin_elim_fecha date,
    fin_elim_observaciones varchar2(250),
    fin_elim_cat_quitado number,
    constraint pk_f_cat_eliminados primary key (fin_elim_id) 
  );
/
create table ADMIN.aud_f_cat_eliminados 
  (
    fin_elim_id number,
    fin_elim_cat_finanzas number,
    fin_elim_fecha date,
    fin_elim_observaciones varchar2(250),
    fin_elim_cat_quitado number,
    desp_fin_elim_id number,
    desp_fin_elim_cat_finanzas number,
    desp_fin_elim_fecha date,
    desp_fin_elim_observaciones varchar2(250),
    desp_fin_elim_cat_quitado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_conocimiento 
  (
    con_codigo number,
    con_dep_llave number,
    con_numero_libro varchar2(255),
    con_folio_libro varchar2(255),
    con_conocimiento_libro varchar2(255),
    con_tipo_libro number,
    con_grado_entrego number,
    con_catalogo_entrego number,
    con_dep_llave_entrego number,
    con_org_plaza_entrego number,
    con_grado_recibio number,
    con_catalogo_recibio number,
    con_dep_llave_recibio number,
    con_org_plaza_recibio number,
    con_grado_autorizo number,
    con_catalogo_autorizo number,
    con_dep_llave_autorizo number,
    con_org_plaza_autorizo number,
    con_mensaje varchar2(255),
    con_fecha_mensaje date,
    con_fecha_conocimiento date,
    con_situacion number,
    desp_con_codigo number,
    desp_con_dep_llave number,
    desp_con_numero_libro varchar2(255),
    desp_con_folio_libro varchar2(255),
    desp_con_conocimiento_libro varchar2(255),
    desp_con_tipo_libro number,
    desp_con_grado_entrego number,
    desp_con_catalogo_entrego number,
    desp_con_dep_llave_entrego number,
    desp_con_org_plaza_entrego number,
    desp_con_grado_recibio number,
    desp_con_catalogo_recibio number,
    desp_con_dep_llave_recibio number,
    desp_con_org_plaza_recibio number,
    desp_con_grado_autorizo number,
    desp_con_catalogo_autorizo number,
    desp_con_dep_llave_autorizo number,
    desp_con_org_plaza_autorizo number,
    desp_con_mensaje varchar2(255),
    desp_con_fecha_mensaje date,
    desp_con_fecha_conocimiento date,
    desp_con_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tiro_totales 
  (
    tir_id number,
    tir_catalogo number,
    tir_total_disparo number,
    tir_total_tiempo number(20,5),
    tir_total number(20,5),
    tir_situacion number,
    tir_montaje number(20,5),
    tir_precision number(20,5),
    tir_sit number(20,5),
    constraint pk_tiro_totales primary key (tir_id) 
  );
/
create table ADMIN.aud_tiro_totales 
  (
    tir_id number,
    tir_catalogo number,
    tir_total_disparo number,
    tir_total_tiempo number(20,5),
    tir_total number(20,5),
    tir_situacion number,
    tir_montaje number,
    tir_precision number(20,5),
    tir_sit number(20,5),
    desp_tir_id number,
    desp_tir_catalogo number,
    desp_tir_total_disparo number,
    desp_tir_total_tiempo number(20,5),
    desp_tir_total number(20,5),
    desp_tir_situacion number,
    desp_tir_montaje number,
    desp_tir_precision number(20,5),
    desp_tir_sit number(20,5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tiro_equipos 
  (
    equip_id number,
    equip_equipo number,
    equip_cantidad number,
    equip_situacion number,
    constraint pk_tiro_equipos primary key (equip_id) 
  );
/
create table ADMIN.aud_tiro_equipos 
  (
    equip_id number,
    equip_equipo number,
    equip_cantidad number,
    equip_situacion number,
    desp_equip_id number,
    desp_equip_equipo number,
    desp_equip_cantidad number,
    desp_equip_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tiro_resultados_equipo 
  (
    resul_id number,
    resul_punteo number(20,5),
    resul_equipo number,
    resul_situacion number,
    constraint pk_tiro_resultados_equipo primary key (resul_id) 
  );
/
create table ADMIN.aud_tiro_resultados_equipo 
  (
    resul_id number,
    resul_punteo number(20,5),
    resul_equipo number,
    resul_situacion number,
    desp_resul_id number,
    desp_resul_punteo number(20,5),
    desp_resul_equipo number,
    desp_resul_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_boleta_dp 
  (
    bol_id number not null ,
    bol_id_con number not null ,
    bol_id_foto varchar2(100) not null ,
    bol_ue number not null ,
    bol_fecha_revision date,
    bol_tipo number not null ,
    bol_fuente number not null ,
    bol_situacion char(1) not null ,
    constraint pk_con_boleta_dp primary key (bol_id) 
  );
/
create table ADMIN.aud_con_boleta_dp 
  (
    bol_id number,
    bol_id_con number,
    bol_id_foto varchar2(100),
    bol_ue number,
    bol_fecha_revision date,
    bol_tipo number,
    bol_fuente number,
    bol_situacion char(1),
    desp_bol_id number,
    desp_bol_id_con number,
    desp_bol_id_foto varchar2(100),
    desp_bol_ue number,
    desp_bol_fecha_revision date,
    desp_bol_tipo number,
    desp_bol_fuente number,
    desp_bol_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.emer_julia 
  (
    emer_id number not null ,
    emer_comando number,
    emer_municipio char(4),
    emer_latitud number(12,10),
    emer_longitud number(17,14),
    emer_lluvia number,
    emer_viento number,
    emer_inundaciones number,
    emer_derrumbe number,
    emer_carretera number,
    emer_desbordamiento number,
    emer_evacuacion number,
    emer_puentes number 
        default 0,
    emer_situacion number 
        default 1,
    constraint pk_emer_julia primary key (emer_id) 
  );
/
create table ADMIN.aud_emer_julia 
  (
    emer_id number,
    emer_comando number,
    emer_municipio char(4),
    emer_latitud number(12,10),
    emer_longitud number(17,14),
    emer_lluvia number,
    emer_viento number,
    emer_inundaciones number,
    emer_derrumbe number,
    emer_carretera number,
    emer_desbordamiento number,
    emer_evacuacion number,
    emer_puentes number 
        default 0,
    emer_situacion number,
    desp_emer_id number,
    desp_emer_comando number,
    desp_emer_municipio char(4),
    desp_emer_latitud number(12,10),
    desp_emer_longitud number(17,14),
    desp_emer_lluvia number,
    desp_emer_viento number,
    desp_emer_inundaciones number,
    desp_emer_derrumbe number,
    desp_emer_carretera number,
    desp_emer_desbordamiento number,
    desp_emer_evacuacion number,
    desp_emer_puentes number 
        default 0,
    desp_emer_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pro_ord_gral 
  (
    pro_id number not null ,
    pro_catalogo varchar2(100),
    pro_grado number,
    pro_fechanomb date not null ,
    pro_arma number,
    pro_plazacese varchar2(100),
    pro_motivo varchar2(150) not null ,
    pro_plazapropuesta varchar2(100),
    pro_fuerza number,
    pro_cese number,
    pro_p number,
    pro_nombra number,
    pro_punto number,
    constraint pk_pro_ord_gral primary key (pro_id) 
  );
/
create table ADMIN.aud_pro_ord_gral 
  (
    pro_id number,
    pro_catalogo varchar2(100),
    pro_grado number,
    pro_fechanomb date,
    pro_arma number,
    pro_plazacese varchar2(100),
    pro_motivo varchar2(150),
    pro_plazapropuesta varchar2(100),
    pro_fuerza number,
    pro_cese number,
    pro_nombra number,
    pro_punto number,
    desp_pro_id number,
    desp_pro_catalogo varchar2(100),
    desp_pro_grado number,
    desp_pro_fechanomb date,
    desp_pro_arma number,
    desp_pro_plazacese varchar2(100),
    desp_pro_motivo varchar2(150),
    desp_pro_plazapropuesta varchar2(100),
    desp_pro_fuerza number,
    desp_pro_cese number,
    desp_pro_nombra number,
    desp_pro_punto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.per_plazas_orden 
  (
    plaza_num number not null ,
    plaza_desc_ct varchar2(100),
    plaza_desc_lg varchar2,
    constraint pk_per_plazas_orden primary key (plaza_num) 
  );
/
create table ADMIN.aud_per_plazas_orden 
  (
    plaza_num number,
    plaza_desc_ct varchar2(100),
    plaza_desc_lg varchar2,
    desp_plaza_num number,
    desp_plaza_desc_ct varchar2(100),
    desp_plaza_desc_lg varchar2,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pro_ord_gral_h 
  (
    prh_id number not null ,
    prh_catalogo varchar2(100),
    prh_fechanomb date not null ,
    prh_plazacese varchar2(100),
    prh_punto number,
    prh_situacion number,
    constraint pk_pro_ord_gral_h primary key (prh_id) 
  );
/
create table ADMIN.aud_pro_ord_gral_h 
  (
    prh_id number,
    prh_catalogo varchar2(100),
    prh_fechanomb date,
    prh_plazacese varchar2(100),
    prh_punto number,
    prh_situacion number,
    desp_prh_id number,
    desp_prh_catalogo varchar2(100),
    desp_prh_fechanomb date,
    desp_prh_plazacese varchar2(100),
    desp_prh_punto number,
    desp_prh_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dfdes_vivibanco 
  (
    dfvivi_catalogo number,
    dfvivi_codigo number,
    dfvivi_nu_reg number,
    dfvivi_cod_control number,
    dfvivi_tipo_desc number,
    dfvivi_fec_ini date,
    dfvivi_ult_act date,
    dfvivi_fec_cer date,
    dfvivi_monto number(16,2),
    dfvivi_saldo number(16,2),
    dfvivi_mensual number(16,2),
    dfvivi_tot_cuotas number,
    dfvivi_num_cuotas number,
    dfvivi_documen varchar2(25),
    dfvivi_codeudor number,
    dfvivi_nom_bene varchar2(250),
    dfvivi_juz_con varchar2(50),
    dfvivi_si_no char(1),
    constraint pk_dfdes_vivibanco primary key (dfvivi_catalogo) 
  );
/
create table ADMIN.aud_dfdes_vivibanco 
  (
    dfvivi_catalogo number,
    dfvivi_codigo number,
    dfvivi_nu_reg number,
    dfvivi_cod_control number,
    dfvivi_tipo_desc number,
    dfvivi_fec_ini date,
    dfvivi_ult_act date,
    dfvivi_fec_cer date,
    dfvivi_monto number(16,2),
    dfvivi_saldo number(16,2),
    dfvivi_mensual number(16,2),
    dfvivi_tot_cuotas number,
    dfvivi_num_cuotas number,
    dfvivi_documen varchar2(25),
    dfvivi_codeudor number,
    dfvivi_nom_bene varchar2(250),
    dfvivi_juz_con varchar2(50),
    dfvivi_si_no char(1),
    desp_dfvivi_catalogo number,
    desp_dfvivi_codigo number,
    desp_dfvivi_nu_reg number,
    desp_dfvivi_cod_control number,
    desp_dfvivi_tipo_desc number,
    desp_dfvivi_fec_ini date,
    desp_dfvivi_ult_act date,
    desp_dfvivi_fec_cer date,
    desp_dfvivi_monto number(16,2),
    desp_dfvivi_saldo number(16,2),
    desp_dfvivi_mensual number(16,2),
    desp_dfvivi_tot_cuotas number,
    desp_dfvivi_num_cuotas number,
    desp_dfvivi_documen varchar2(25),
    desp_dfvivi_codeudor number,
    desp_dfvivi_nom_bene varchar2(250),
    desp_dfvivi_juz_con varchar2(50),
    desp_dfvivi_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.emer_lisa 
  (
    emer_id number not null ,
    emer_comando number,
    emer_municipio char(4),
    emer_latitud number(12,10),
    emer_longitud number(17,14),
    emer_lluvia number,
    emer_viento number,
    emer_inundaciones number,
    emer_derrumbe number,
    emer_carretera number,
    emer_desbordamiento number,
    emer_evacuacion number,
    emer_puentes number,
    emer_situacion number 
        default 1,
    constraint pk_emer_lisa primary key (emer_id) 
  );
/
create table ADMIN.aud_emer_lisa 
  (
    emer_id number,
    emer_comando number,
    emer_municipio char(4),
    emer_latitud number(12,10),
    emer_longitud number(17,14),
    emer_lluvia number,
    emer_viento number,
    emer_inundaciones number,
    emer_derrumbe number,
    emer_carretera number,
    emer_desbordamiento number,
    emer_evacuacion number,
    emer_puentes number,
    emer_situacion number 
        default 1,
    desp_emer_id number,
    desp_emer_comando number,
    desp_emer_municipio char(4),
    desp_emer_latitud number(12,10),
    desp_emer_longitud number(17,14),
    desp_emer_lluvia number,
    desp_emer_viento number,
    desp_emer_inundaciones number,
    desp_emer_derrumbe number,
    desp_emer_carretera number,
    desp_emer_desbordamiento number,
    desp_emer_evacuacion number,
    desp_emer_puentes number,
    desp_emer_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hisfin 
  (
    omeses char(4),
    oprograma char(2),
    ogrupo char(2),
    ounidad char(8),
    odepen char(2),
    obatallon char(2),
    ocompa�ia char(2),
    opeloton char(2),
    oseccion char(2),
    oescuadra char(2),
    otipo char(1),
    ogrado char(2),
    ocatalogo number,
    onombres char(45),
    oempleo char(30),
    oorden char(7),
    osueldo number(16,2),
    oalimentacion number(16,2),
    omontepio number(16,2),
    oipm1 number(16,2),
    otimbres1 number(16,2),
    ofianza number(16,2),
    oliquido1 number(16,2),
    odias char(2),
    oa�os char(2),
    obienal number(16,2),
    oespecialidad number(16,2),
    orepresenta number(16,2),
    oresponsabili number(16,2),
    ototal2 number(16,2),
    oalimenpc number(16,2),
    oipm2 number(16,2),
    otimbres2 number(16,2),
    oliquido2 number(16,2),
    oemergencia number(16,2),
    bil100 char(3),
    bil50 char(3),
    bil20 char(3),
    bil10 char(3),
    bil5 char(3),
    bil1 char(3),
    bil05 char(3),
    mon25 char(3),
    mon10 char(3),
    mon5 char(3),
    mon1 char(3),
    tota_liqui number(16,2),
    osueldopc number(16,2),
    omontepiopc number(16,2),
    obienalpc number(16,2),
    oipm1pc number(16,2),
    ofianzapc number(16,2),
    oliquido1pc number(16,2),
    oalimentr number(16,2),
    oprimapc number(16,2),
    orepresenpc number(16,2),
    oresponsapc number(16,2),
    ototal2pc number(16,2),
    ocontruccion number(16,2),
    oipm2pc number(16,2),
    oliquido2pc number(16,2),
    obonemerg number(16,2),
    ocomplemento number(16,2),
    oipmcomple number(16,2),
    oliquicomple number(16,2),
    onomcorto char(45),
    oprimaings number(16,2),
    oprimaprofe number(16,2),
    oaguinaldo number(16,2),
    obon50 number(16,2),
    opar char(1),
    ohoras char(1),
    oaumento number(16,2),
    ovaciones number(16,2),
    oplaza char(9),
    omes char(2),
    omonte char(1),
    osaldoase char(8),
    oceom char(5),
    oarma char(2),
    osexo char(1),
    omeomserie char(3),
    obtaop number(16,2),
    omeomnivel char(1),
    ovarios char(15),
    desp_omeses char(4),
    desp_oprograma char(2),
    desp_ogrupo char(2),
    desp_ounidad char(8),
    desp_odepen char(2),
    desp_obatallon char(2),
    desp_ocompa�ia char(2),
    desp_opeloton char(2),
    desp_oseccion char(2),
    desp_oescuadra char(2),
    desp_otipo char(1),
    desp_ogrado char(2),
    desp_ocatalogo number,
    desp_onombres char(45),
    desp_oempleo char(30),
    desp_oorden char(7),
    desp_osueldo number(16,2),
    desp_oalimentacion number(16,2),
    desp_omontepio number(16,2),
    desp_oipm1 number(16,2),
    desp_otimbres1 number(16,2),
    desp_ofianza number(16,2),
    desp_oliquido1 number(16,2),
    desp_odias char(2),
    desp_oa�os char(2),
    desp_obienal number(16,2),
    desp_oespecialidad number(16,2),
    desp_orepresenta number(16,2),
    desp_oresponsabili number(16,2),
    desp_ototal2 number(16,2),
    desp_oalimenpc number(16,2),
    desp_oipm2 number(16,2),
    desp_otimbres2 number(16,2),
    desp_oliquido2 number(16,2),
    desp_oemergencia number(16,2),
    desp_bil100 char(3),
    desp_bil50 char(3),
    desp_bil20 char(3),
    desp_bil10 char(3),
    desp_bil5 char(3),
    desp_bil1 char(3),
    desp_bil05 char(3),
    desp_mon25 char(3),
    desp_mon10 char(3),
    desp_mon5 char(3),
    desp_mon1 char(3),
    desp_tota_liqui number(16,2),
    desp_osueldopc number(16,2),
    desp_omontepiopc number(16,2),
    desp_obienalpc number(16,2),
    desp_oipm1pc number(16,2),
    desp_ofianzapc number(16,2),
    desp_oliquido1pc number(16,2),
    desp_oalimentr number(16,2),
    desp_oprimapc number(16,2),
    desp_orepresenpc number(16,2),
    desp_oresponsapc number(16,2),
    desp_ototal2pc number(16,2),
    desp_ocontruccion number(16,2),
    desp_oipm2pc number(16,2),
    desp_oliquido2pc number(16,2),
    desp_obonemerg number(16,2),
    desp_ocomplemento number(16,2),
    desp_oipmcomple number(16,2),
    desp_oliquicomple number(16,2),
    desp_onomcorto char(45),
    desp_oprimaings number(16,2),
    desp_oprimaprofe number(16,2),
    desp_oaguinaldo number(16,2),
    desp_obon50 number(16,2),
    desp_opar char(1),
    desp_ohoras char(1),
    desp_oaumento number(16,2),
    desp_ovaciones number(16,2),
    desp_oplaza char(9),
    desp_omes char(2),
    desp_omonte char(1),
    desp_osaldoase char(8),
    desp_oceom char(5),
    desp_oarma char(2),
    desp_osexo char(1),
    desp_omeomserie char(3),
    desp_obtaop number(16,2),
    desp_omeomnivel char(1),
    desp_ovarios char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tmper 
  (
    tper_catalogo number,
    tper_serie char(8),
    tper_grado number,
    tper_arma number,
    tper_nom1 char(15),
    tper_nom2 char(15),
    tper_ape1 char(15),
    tper_ape2 char(15),
    tper_ape3 char(15),
    tper_ced_ord char(4),
    tper_ced_reg number,
    tper_fec_ext_ced date,
    tper_ext_ced_lugar char(4),
    tper_est_civil char(1),
    tper_direccion char(50),
    tper_zona number,
    tper_dir_lugar char(4),
    tper_telefono number,
    tper_sexo char(1),
    tper_fec_nac date,
    tper_nac_lugar char(4),
    tper_promocion number,
    tper_afil_ipm char(1),
    tper_sangre char(3),
    tper_antiguedad number,
    tper_bienal number,
    tper_plaza number,
    tper_desc_empleo char(45),
    tper_fec_nomb date,
    tper_ord_gral char(7),
    tper_punto_og number,
    tper_situacion char(2),
    tper_prima_prof number,
    tper_usuario char(8),
    tper_cat_usuario number,
    tper_fec_hora TIMESTAMP(0),
    tper_terminal char(5),
    tper_accion char(1),
    desp_tper_catalogo number,
    desp_tper_serie char(8),
    desp_tper_grado number,
    desp_tper_arma number,
    desp_tper_nom1 char(15),
    desp_tper_nom2 char(15),
    desp_tper_ape1 char(15),
    desp_tper_ape2 char(15),
    desp_tper_ape3 char(15),
    desp_tper_ced_ord char(4),
    desp_tper_ced_reg number,
    desp_tper_fec_ext_ced date,
    desp_tper_ext_ced_lugar char(4),
    desp_tper_est_civil char(1),
    desp_tper_direccion char(50),
    desp_tper_zona number,
    desp_tper_dir_lugar char(4),
    desp_tper_telefono number,
    desp_tper_sexo char(1),
    desp_tper_fec_nac date,
    desp_tper_nac_lugar char(4),
    desp_tper_promocion number,
    desp_tper_afil_ipm char(1),
    desp_tper_sangre char(3),
    desp_tper_antiguedad number,
    desp_tper_bienal number,
    desp_tper_plaza number,
    desp_tper_desc_empleo char(45),
    desp_tper_fec_nomb date,
    desp_tper_ord_gral char(7),
    desp_tper_punto_og number,
    desp_tper_situacion char(2),
    desp_tper_prima_prof number,
    desp_tper_usuario char(8),
    desp_tper_cat_usuario number,
    desp_tper_fec_hora TIMESTAMP(0),
    desp_tper_terminal char(5),
    desp_tper_accion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ep_mper 
  (
    per_control number,
    per_catalogo char(6),
    per_serie char(8),
    per_grado number,
    per_arma number,
    per_nom1 char(15),
    per_nom2 char(15),
    per_ape1 char(15),
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4),
    per_ced_reg char(20),
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4),
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4),
    per_telefono number,
    per_sexo char(1),
    per_fec_nac date,
    per_nac_lugar char(4),
    per_promocion number,
    per_afil_ipm char(1),
    per_sangre char(3),
    per_antiguedad number,
    per_bienal number,
    per_plaza number,
    per_desc_empleo char(45),
    per_fec_nomb date,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2),
    per_prima_prof number,
    per_dpi char(15),
    per_cambio number,
    per_fecambio date,
    desp_per_control number,
    desp_per_catalogo char(6),
    desp_per_serie char(8),
    desp_per_grado number,
    desp_per_arma number,
    desp_per_nom1 char(15),
    desp_per_nom2 char(15),
    desp_per_ape1 char(15),
    desp_per_ape2 char(15),
    desp_per_ape3 char(15),
    desp_per_ced_ord char(4),
    desp_per_ced_reg char(20),
    desp_per_fec_ext_ced date,
    desp_per_ext_ced_lugar char(4),
    desp_per_est_civil char(1),
    desp_per_direccion char(50),
    desp_per_zona number,
    desp_per_dir_lugar char(4),
    desp_per_telefono number,
    desp_per_sexo char(1),
    desp_per_fec_nac date,
    desp_per_nac_lugar char(4),
    desp_per_promocion number,
    desp_per_afil_ipm char(1),
    desp_per_sangre char(3),
    desp_per_antiguedad number,
    desp_per_bienal number,
    desp_per_plaza number,
    desp_per_desc_empleo char(45),
    desp_per_fec_nomb date,
    desp_per_ord_gral char(7),
    desp_per_punto_og number,
    desp_per_situacion char(2),
    desp_per_prima_prof number,
    desp_per_dpi char(15),
    desp_per_cambio number,
    desp_per_fecambio date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_tow 
  (
    tow_id number,
    tow_sicoin varchar2(50),
    tow_catalogo number,
    tow_ubicacion number,
    tow_adquisicion number,
    tow_modelo number,
    tow_serie varchar2(80),
    tow_pais number,
    tow_proposito varchar2(50),
    tow_dependencia number,
    tow_tipo varchar2(80),
    tow_estado number,
    tow_marca number,
    tow_linea number,
    tow_cap_libras number,
    tow_traccion varchar2(50),
    tow_cant_motor number,
    tow_t_motor varchar2(50),
    tow_marca_motor varchar2(80),
    tow_serie_motor varchar2(80),
    tow_actuadores varchar2(80),
    tow_cant_bat number,
    tow_t_bat varchar2(80),
    tow_amperaje number,
    tow_voltaje number,
    tow_placas number,
    tow_acum varchar2(80),
    tow_fuentes varchar2(80),
    tow_tiempo varchar2(80),
    tow_combustible varchar2(80),
    tow_neumaticos number,
    tow_lubri varchar2(255),
    tow_lubri_esp varchar2(255),
    tow_situacion number,
    desp_tow_id number,
    desp_tow_sicoin varchar2(50),
    desp_tow_catalogo number,
    desp_tow_ubicacion number,
    desp_tow_adquisicion number,
    desp_tow_modelo number,
    desp_tow_serie varchar2(80),
    desp_tow_pais number,
    desp_tow_proposito varchar2(50),
    desp_tow_dependencia number,
    desp_tow_tipo varchar2(80),
    desp_tow_estado number,
    desp_tow_marca number,
    desp_tow_linea number,
    desp_tow_cap_libras number,
    desp_tow_traccion varchar2(50),
    desp_tow_cant_motor number,
    desp_tow_t_motor varchar2(50),
    desp_tow_marca_motor varchar2(80),
    desp_tow_serie_motor varchar2(80),
    desp_tow_actuadores varchar2(80),
    desp_tow_cant_bat number,
    desp_tow_t_bat varchar2(80),
    desp_tow_amperaje number,
    desp_tow_voltaje number,
    desp_tow_placas number,
    desp_tow_acum varchar2(80),
    desp_tow_fuentes varchar2(80),
    desp_tow_tiempo varchar2(80),
    desp_tow_combustible varchar2(80),
    desp_tow_neumaticos number,
    desp_tow_lubri varchar2(255),
    desp_tow_lubri_esp varchar2(255),
    desp_tow_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_veteranos_comparacion 
  (
    vet_id number,
    vet_nom_real varchar2(250),
    vet_fec_alta varchar2(10),
    vet_fec_baja varchar2(10),
    vet_dpi char(15),
    vet_cedula char(25),
    vet_beneficiario varchar2(250),
    vet_dependencia char(200),
    vet_num_listado number,
    vet_nom1 varchar2(50),
    vet_nom2 varchar2(50),
    vet_nom3 varchar2(50),
    vet_ape1 varchar2(50),
    vet_ape2 varchar2(50),
    vet_ape3 varchar2(50),
    vet_fam_nom1 varchar2(20),
    vet_fam_nom2 varchar2(20),
    vet_fam_ape1 varchar2(20),
    vet_fam_ape2 varchar2(20),
    vet_coin_nom number,
    vet_coin_fec_alta number,
    vet_coin_fec_baja number,
    vet_coin_2fechas number,
    vet_coin_cedula number,
    vet_coin_dpi number,
    vet_coin_beneficiario number,
    vet_cat_coincidencia number,
    vet_vac2 number,
    vet_vac3 number,
    vet_situacion char(5),
    desp_vet_id number not null ,
    desp_vet_nom_real varchar2(250),
    desp_vet_fec_alta varchar2(10),
    desp_vet_fec_baja varchar2(10),
    desp_vet_dpi char(15),
    desp_vet_cedula char(25),
    desp_vet_beneficiario varchar2(250),
    desp_vet_dependencia char(200),
    desp_vet_num_listado number,
    desp_vet_nom1 varchar2(50),
    desp_vet_nom2 varchar2(50),
    desp_vet_nom3 varchar2(50),
    desp_vet_ape1 varchar2(50),
    desp_vet_ape2 varchar2(50),
    desp_vet_ape3 varchar2(50),
    desp_vet_fam_nom1 varchar2(20),
    desp_vet_fam_nom2 varchar2(20),
    desp_vet_fam_ape1 varchar2(20),
    desp_vet_fam_ape2 varchar2(20),
    desp_vet_coin_nom number,
    desp_vet_coin_fec_alta number,
    desp_vet_coin_fec_baja number,
    desp_vet_coin_2fechas number,
    desp_vet_coin_cedula number,
    desp_vet_coin_dpi number,
    desp_vet_coin_beneficiario number,
    desp_vet_cat_coincidencia number,
    desp_vet_vac2 number,
    desp_vet_vac3 number,
    desp_vet_situacion char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_n_mper 
  (
    per_catalogo number,
    per_serie char(8),
    per_grado number,
    per_arma number,
    per_nom1 char(15),
    per_nom2 char(15),
    per_ape1 char(15),
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4),
    per_ced_reg number,
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4),
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4),
    per_telefono number,
    per_sexo char(1),
    per_fec_nac date,
    per_nac_lugar char(4),
    per_promocion number,
    per_afil_ipm char(1),
    per_sangre char(3),
    per_antiguedad number,
    per_bienal number,
    per_plaza number,
    per_desc_empleo char(45),
    per_fec_nomb date,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2),
    per_prima_prof number,
    desp_per_catalogo number,
    desp_per_serie char(8),
    desp_per_grado number,
    desp_per_arma number,
    desp_per_nom1 char(15),
    desp_per_nom2 char(15),
    desp_per_ape1 char(15),
    desp_per_ape2 char(15),
    desp_per_ape3 char(15),
    desp_per_ced_ord char(4),
    desp_per_ced_reg number,
    desp_per_fec_ext_ced date,
    desp_per_ext_ced_lugar char(4),
    desp_per_est_civil char(1),
    desp_per_direccion char(50),
    desp_per_zona number,
    desp_per_dir_lugar char(4),
    desp_per_telefono number,
    desp_per_sexo char(1),
    desp_per_fec_nac date,
    desp_per_nac_lugar char(4),
    desp_per_promocion number,
    desp_per_afil_ipm char(1),
    desp_per_sangre char(3),
    desp_per_antiguedad number,
    desp_per_bienal number,
    desp_per_plaza number,
    desp_per_desc_empleo char(45),
    desp_per_fec_nomb date,
    desp_per_ord_gral char(7),
    desp_per_punto_og number,
    desp_per_situacion char(2),
    desp_per_prima_prof number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_temp_fin_personal 
  (
    fper_catalogo number,
    fper_grado number,
    fper_arma number,
    fper_nom1 char(15),
    fper_nom2 char(15),
    fper_ape1 char(15),
    fper_ape2 char(15),
    fper_ape3 char(15),
    fper_ced_ord char(4),
    fper_ced_reg char(20),
    fper_fec_ext_ced date,
    fper_ext_ced_lugar char(4),
    fper_est_civil char(1),
    fper_direccion varchar2(75),
    fper_zona number,
    fper_dir_lugar char(4),
    fper_telefono number,
    fper_sexo char(1),
    fper_fec_nac date,
    fper_nac_lugar char(4),
    fper_sangre char(3),
    fper_profesion number,
    fper_banco number,
    fper_cuenta char(20),
    fper_tip_cuenta char(1),
    fper_situacion char(2),
    fper_dpi char(15),
    desp_fper_catalogo number,
    desp_fper_grado number,
    desp_fper_arma number,
    desp_fper_nom1 char(15),
    desp_fper_nom2 char(15),
    desp_fper_ape1 char(15),
    desp_fper_ape2 char(15),
    desp_fper_ape3 char(15),
    desp_fper_ced_ord char(4),
    desp_fper_ced_reg char(20),
    desp_fper_fec_ext_ced date,
    desp_fper_ext_ced_lugar char(4),
    desp_fper_est_civil char(1),
    desp_fper_direccion varchar2(75),
    desp_fper_zona number,
    desp_fper_dir_lugar char(4),
    desp_fper_telefono number,
    desp_fper_sexo char(1),
    desp_fper_fec_nac date,
    desp_fper_nac_lugar char(4),
    desp_fper_sangre char(3),
    desp_fper_profesion number,
    desp_fper_banco number,
    desp_fper_cuenta char(20),
    desp_fper_tip_cuenta char(1),
    desp_fper_situacion char(2),
    desp_fper_dpi char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ipm_cart 
  (
    ipm_credito char(9),
    ipm_catalogo number,
    ipm_nombre char(40),
    ipm_total_cuotas number,
    ipm_cuotas_van number,
    ipm_cod_unidad number,
    ipm_saldo_capital number(16,2),
    ipm_int_mora number(16,2),
    ipm_int_anio_ant number(16,2),
    ipm_int_mes_ant number(16,2),
    ipm_int_mes number(16,2),
    ipm_g_admon_ant number(16,2),
    ipm_seg_viv_ant number(16,2),
    ipm_g_admon number(16,2),
    ipm_seg_vivienda number(16,2),
    ipm_capital number(16,2),
    ipm_iva_mes_ant number(16,2),
    ipm_iva_mes number(16,2),
    ipm_total_desc number(16,2),
    ipm_fecha6 date,
    ipm_fecha8 date,
    ipm_hora8 char(10),
    ipm_usuario char(3),
    ipm_terminal char(3),
    ipm_cod number,
    ipm_paga1 char(1),
    ipm_paga2 char(1),
    desp_ipm_credito char(9),
    desp_ipm_catalogo number,
    desp_ipm_nombre char(40),
    desp_ipm_total_cuotas number,
    desp_ipm_cuotas_van number,
    desp_ipm_cod_unidad number,
    desp_ipm_saldo_capital number(16,2),
    desp_ipm_int_mora number(16,2),
    desp_ipm_int_anio_ant number(16,2),
    desp_ipm_int_mes_ant number(16,2),
    desp_ipm_int_mes number(16,2),
    desp_ipm_g_admon_ant number(16,2),
    desp_ipm_seg_viv_ant number(16,2),
    desp_ipm_g_admon number(16,2),
    desp_ipm_seg_vivienda number(16,2),
    desp_ipm_capital number(16,2),
    desp_ipm_iva_mes_ant number(16,2),
    desp_ipm_iva_mes number(16,2),
    desp_ipm_total_desc number(16,2),
    desp_ipm_fecha6 date,
    desp_ipm_fecha8 date,
    desp_ipm_hora8 char(10),
    desp_ipm_usuario char(3),
    desp_ipm_terminal char(3),
    desp_ipm_cod number,
    desp_ipm_paga1 char(1),
    desp_ipm_paga2 char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ipm_dfam_temp 
  (
    fam_cat_militar number,
    fam_cat_familiar number,
    fam_nom1 char(15),
    fam_nom2 char(15),
    fam_ape1 char(15),
    fam_ape2 char(15),
    fam_parentesco number,
    fam_sexo char(1),
    fam_sangre char(3),
    fam_est_civil char(1),
    fam_fec_nac date,
    fam_nac_lugar char(4),
    fam_ced_ord char(4),
    fam_ced_reg number,
    fam_fec_ext_ced date,
    fam_lugar_ext_ced char(4),
    fam_direccion char(50),
    fam_zona number,
    fam_dir_lugar char(4),
    fam_telefono number,
    fam_ocupacion char(30),
    fam_empresa char(30),
    fam_cheque number,
    fam_beneficiario number,
    fam_emergencia number,
    fam_clase_pasiva number,
    desp_fam_cat_militar number,
    desp_fam_cat_familiar number,
    desp_fam_nom1 char(15),
    desp_fam_nom2 char(15),
    desp_fam_ape1 char(15),
    desp_fam_ape2 char(15),
    desp_fam_parentesco number,
    desp_fam_sexo char(1),
    desp_fam_sangre char(3),
    desp_fam_est_civil char(1),
    desp_fam_fec_nac date,
    desp_fam_nac_lugar char(4),
    desp_fam_ced_ord char(4),
    desp_fam_ced_reg number,
    desp_fam_fec_ext_ced date,
    desp_fam_lugar_ext_ced char(4),
    desp_fam_direccion char(50),
    desp_fam_zona number,
    desp_fam_dir_lugar char(4),
    desp_fam_telefono number,
    desp_fam_ocupacion char(30),
    desp_fam_empresa char(30),
    desp_fam_cheque number,
    desp_fam_beneficiario number,
    desp_fam_emergencia number,
    desp_fam_clase_pasiva number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_exp_solicitud 
  (
    sol_codigo number,
    sol_dep_llave number,
    sol_solicito_dep_llave number,
    sol_solicito_grado number,
    sol_solicito_catalogo number,
    sol_solicito_mensaje varchar2(255),
    sol_solicito_fecha TIMESTAMP,
    sol_autorizo_dep_llave number,
    sol_autorizo_grado number,
    sol_autorizo_catalogo number,
    sol_autorizo_mensaje varchar2(255),
    sol_autorizo_fecha TIMESTAMP,
    sol_ordeno_dep_llave number,
    sol_ordeno_grado number,
    sol_ordeno_catalogo number,
    sol_ordeno_mensaje varchar2(255),
    sol_ordeno_fecha TIMESTAMP,
    sol_pro_codigo number,
    sol_dep_llave2 number,
    sol_situacion number,
    desp_sol_codigo number,
    desp_sol_dep_llave number,
    desp_sol_solicito_dep_llave number,
    desp_sol_solicito_grado number,
    desp_sol_solicito_catalogo number,
    desp_sol_solicito_mensaje varchar2(255),
    desp_sol_solicito_fecha TIMESTAMP,
    desp_sol_autorizo_dep_llave number,
    desp_sol_autorizo_grado number,
    desp_sol_autorizo_catalogo number,
    desp_sol_autorizo_mensaje varchar2(255),
    desp_sol_autorizo_fecha TIMESTAMP,
    desp_sol_ordeno_dep_llave number,
    desp_sol_ordeno_grado number,
    desp_sol_ordeno_catalogo number,
    desp_sol_ordeno_mensaje varchar2(255),
    desp_sol_ordeno_fecha TIMESTAMP,
    desp_sol_pro_codigo number,
    desp_sol_dep_llave2 number,
    desp_sol_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_exp_conocimiento 
  (
    con_dep_llave number,
    con_codigo number,
    con_libro_numero varchar2(255),
    con_libro_folio varchar2(255),
    con_libro_tipo varchar2(255),
    con_libro_conocimiento varchar2(255),
    con_libro_conocimiento_fecha date,
    con_mensaje varchar2(255),
    con_mensaje_fecha date,
    con_entrego_dep_llave number,
    con_entrego_grado number,
    con_entrego_catalogo number,
    con_recibio_dep_llave number,
    con_recibio_grado number,
    con_recibio_catalogo number,
    con_autorizo_dep_llave number,
    con_autorizo_grado number,
    con_autorizo_catalogo number,
    con_situacion number,
    desp_con_dep_llave number,
    desp_con_codigo number,
    desp_con_libro_numero varchar2(255),
    desp_con_libro_folio varchar2(255),
    desp_con_libro_tipo varchar2(255),
    desp_con_libro_conocimiento varchar2(255),
    desp_con_libro_conocimiento_fecha date,
    desp_con_mensaje varchar2(255),
    desp_con_mensaje_fecha date,
    desp_con_entrego_dep_llave number,
    desp_con_entrego_grado number,
    desp_con_entrego_catalogo number,
    desp_con_recibio_dep_llave number,
    desp_con_recibio_grado number,
    desp_con_recibio_catalogo number,
    desp_con_autorizo_dep_llave number,
    desp_con_autorizo_grado number,
    desp_con_autorizo_catalogo number,
    desp_con_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cgsifldd 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    seqno number,
    field_tag char(6),
    tabname char(18),
    fldname char(18),
    fldtype char(42),
    f_autonext char(1),
    f_comments char(74),
    f_default char(30),
    f_display_like char(42),
    f_downshift char(1),
    f_format char(50),
    f_include char(100),
    f_picture char(50),
    f_noentry char(1),
    f_required char(1),
    f_upshift char(1),
    f_valid_like char(42),
    f_verify char(1),
    f_trans char(10),
    f_skip char(1),
    desp_module char(8),
    desp_prog char(8),
    desp_scrid char(7),
    desp_cust_key char(12),
    desp_input_num number,
    desp_seqno number,
    desp_field_tag char(6),
    desp_tabname char(18),
    desp_fldname char(18),
    desp_fldtype char(42),
    desp_f_autonext char(1),
    desp_f_comments char(74),
    desp_f_default char(30),
    desp_f_display_like char(42),
    desp_f_downshift char(1),
    desp_f_format char(50),
    desp_f_include char(100),
    desp_f_picture char(50),
    desp_f_noentry char(1),
    desp_f_required char(1),
    desp_f_upshift char(1),
    desp_f_valid_like char(42),
    desp_f_verify char(1),
    desp_f_trans char(10),
    desp_f_skip char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tdfdes 
  (
    tdfd_catalogo number,
    tdfd_codigo number,
    tdfd_nu_reg number,
    tdfd_cod_control number,
    tdfd_tipo_desc char(1),
    tdfd_fec_ini date,
    tdfd_ult_act date,
    tdfd_fec_cer date,
    tdfd_monto number(16,2),
    tdfd_saldo number(16,2),
    tdfd_mensual number(16,2),
    tdfd_tot_cuotas number,
    tdfd_num_cuotas number,
    tdfd_documen char(6),
    tdfd_codeudor number,
    tdfd_nom_bene char(50),
    tdfd_juz_con char(50),
    tdfd_usuario char(8),
    tdfd_fec_hora TIMESTAMP(0),
    tdfd_terminal char(5),
    tdfd_accion char(1),
    desp_tdfd_catalogo number,
    desp_tdfd_codigo number,
    desp_tdfd_nu_reg number,
    desp_tdfd_cod_control number,
    desp_tdfd_tipo_desc char(1),
    desp_tdfd_fec_ini date,
    desp_tdfd_ult_act date,
    desp_tdfd_fec_cer date,
    desp_tdfd_monto number(16,2),
    desp_tdfd_saldo number(16,2),
    desp_tdfd_mensual number(16,2),
    desp_tdfd_tot_cuotas number,
    desp_tdfd_num_cuotas number,
    desp_tdfd_documen char(6),
    desp_tdfd_codeudor number,
    desp_tdfd_nom_bene char(50),
    desp_tdfd_juz_con char(50),
    desp_tdfd_usuario char(8),
    desp_tdfd_fec_hora TIMESTAMP(0),
    desp_tdfd_terminal char(5),
    desp_tdfd_accion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_psan_boleta_restore 
  (
    bol_det_catalogo number,
    bol_det_fecha date,
    bol_det_sancion number,
    bol_det_grado number,
    bol_dependencia number,
    bol_desc_empleo char(45),
    bol_jerarquia_sancionado char(100),
    bol_sancionador number,
    bol_gra_sancionador number,
    bol_empleo_sancionador char(45),
    bol_justicia number,
    bol_gra_justicia number,
    bol_comte number,
    bol_gra_comte number,
    bol_fech_cumple TIMESTAMP,
    bol_det_status number,
    desp_bol_det_catalogo number,
    desp_bol_det_fecha date,
    desp_bol_det_sancion number,
    desp_bol_det_grado number,
    desp_bol_dependencia number,
    desp_bol_desc_empleo char(45),
    desp_bol_jerarquia_sancionado char(100),
    desp_bol_sancionador number,
    desp_bol_gra_sancionador number,
    desp_bol_empleo_sancionador char(45),
    desp_bol_justicia number,
    desp_bol_gra_justicia number,
    desp_bol_comte number,
    desp_bol_gra_comte number,
    desp_bol_fech_cumple TIMESTAMP,
    desp_bol_det_status number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_stxparmd 
  (
    language char(3),
    module char(8),
    user_id char(8),
    access_key char(30),
    line_no number,
    userdef char(1),
    sbd_flag char(1),
    parm_desc char(30),
    is_rule char(1),
    is_fatal char(1),
    help_num number,
    val_table ADMIN.char(30),
    val_column char(60),
    val_filter char(60),
    val_join char(60),
    val_switchbox char(8),
    val_description char(18),
    zoom_filter char(60),
    zoom_switchbox char(8),
    parm_value char(32),
    desp_language char(3),
    desp_module char(8),
    desp_user_id char(8),
    desp_access_key char(30),
    desp_line_no number,
    desp_userdef char(1),
    desp_sbd_flag char(1),
    desp_parm_desc char(30),
    desp_is_rule char(1),
    desp_is_fatal char(1),
    desp_help_num number,
    desp_val_table ADMIN.char(30),
    desp_val_column char(60),
    desp_val_filter char(60),
    desp_val_join char(60),
    desp_val_switchbox char(8),
    desp_val_description char(18),
    desp_zoom_filter char(60),
    desp_zoom_switchbox char(8),
    desp_parm_value char(32),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_com_ent_sal2 
  (
    es_codigo number,
    es_documento varchar2(55),
    es_dep_llave_entrada number,
    es_dep_llave_salida number,
    es_forma number,
    es_fecha TIMESTAMP,
    es_galones number,
    es_cargo number,
    es_tipo number,
    es_saldo number(18,2),
    es_precio number(18,2),
    es_lugar number,
    es_situacion number,
    es_catalogo number,
    es_dependencia number,
    es_obs varchar2(250),
    desp_es_codigo number,
    desp_es_documento varchar2(55),
    desp_es_dep_llave_entrada number,
    desp_es_dep_llave_salida number,
    desp_es_forma number,
    desp_es_fecha TIMESTAMP,
    desp_es_galones number,
    desp_es_cargo number,
    desp_es_tipo number,
    desp_es_saldo number(18,2),
    desp_es_precio number(18,2),
    desp_es_lugar number,
    desp_es_situacion number,
    desp_es_catalogo number,
    desp_es_dependencia number,
    desp_es_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_matrimonio 
  (
    mat_id number not null ,
    mat_comando number not null ,
    mat_cat1 number not null ,
    mat_gra1 number,
    mat_arm1 number,
    mat_emp1 varchar2(250),
    mat_lugar_civil varchar2(250),
    mat_lugar_fecha1 TIMESTAMP,
    mat_lugar_religioso varchar2(125),
    mat_lugar_fecha2 TIMESTAMP,
    mat_cat2 number not null ,
    mat_gra2 number,
    mat_arm2 number,
    mat_emp2 varchar2(250),
    mat_cat3 number not null ,
    mat_gra3 number,
    mat_arm3 number,
    mat_emp3 varchar2(250),
    mat_con_prof varchar2(125),
    mat_comando2 number,
    mat_con_civil varchar2(250),
    mat_dias_fecha1 TIMESTAMP,
    mat_dias_fecha2 TIMESTAMP,
    mat_sit char(2),
    mat_obs varchar2(250),
    mat_phone number not null ,
    constraint pk_slc_matrimonio primary key (mat_id) 
  );
/
create table ADMIN.aud_slc_matrimonio 
  (
    mat_id number,
    mat_comando number,
    mat_cat1 number,
    mat_gra1 number,
    mat_arm1 number,
    mat_emp1 varchar2(250),
    mat_lugar_civil varchar2(250),
    mat_lugar_fecha1 TIMESTAMP,
    mat_lugar_religioso varchar2(125),
    mat_lugar_fecha2 TIMESTAMP,
    mat_cat2 number,
    mat_gra2 number,
    mat_arm2 number,
    mat_emp2 varchar2(250),
    mat_cat3 number,
    mat_gra3 number,
    mat_arm3 number,
    mat_emp3 varchar2(250),
    mat_con_prof varchar2(125),
    mat_comando2 number,
    mat_con_civil varchar2(250),
    mat_dias_fecha1 TIMESTAMP,
    mat_dias_fecha2 TIMESTAMP,
    mat_sit char(2),
    mat_obs varchar2(250),
    mat_phone number,
    desp_mat_id number,
    desp_mat_comando number,
    desp_mat_cat1 number,
    desp_mat_gra1 number,
    desp_mat_arm1 number,
    desp_mat_emp1 varchar2(250),
    desp_mat_lugar_civil varchar2(250),
    desp_mat_lugar_fecha1 TIMESTAMP,
    desp_mat_lugar_religioso varchar2(125),
    desp_mat_lugar_fecha2 TIMESTAMP,
    desp_mat_cat2 number,
    desp_mat_gra2 number,
    desp_mat_arm2 number,
    desp_mat_emp2 varchar2(250),
    desp_mat_cat3 number,
    desp_mat_gra3 number,
    desp_mat_arm3 number,
    desp_mat_emp3 varchar2(250),
    desp_mat_con_prof varchar2(125),
    desp_mat_comando2 number,
    desp_mat_con_civil varchar2(250),
    desp_mat_dias_fecha1 TIMESTAMP,
    desp_mat_dias_fecha2 TIMESTAMP,
    desp_mat_sit char(2),
    desp_mat_obs varchar2(250),
    desp_mat_phone number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_mb 
  (
    mb_id number not null ,
    mb_per varchar2(250),
    mb_cel number not null ,
    mb_direc varchar2(150),
    mb_fec TIMESTAMP,
    mb_ini varchar2(50),
    mb_fin varchar2(50),
    mb_just varchar2(250),
    mb_tipo number not null ,
    mb_cmv char(2),
    mb_sit char(2),
    constraint pk_slc_mb primary key (mb_id) 
  );
/
create table ADMIN.slc_cmv 
  (
    cmv_id number,
    cmv_desc varchar2(250),
    cmv_tip char(2),
    cmv_obs varchar2(250),
    cmv_sit char(2),
    constraint pk_slc_cmv primary key (cmv_id) 
  );
/
create table ADMIN.aud_slc_cmv 
  (
    cmv_id number,
    cmv_desc varchar2(250),
    cmv_tip char(2),
    cmv_obs varchar2(250),
    cmv_sit char(2),
    desp_cmv_id number,
    desp_cmv_desc varchar2(250),
    desp_cmv_tip char(2),
    desp_cmv_obs varchar2(250),
    desp_cmv_sit char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_autorizado 
  (
    aut_id number not null ,
    aut_tipo number not null ,
    aut_solicitud number not null ,
    aut_comando number not null ,
    aut_cat1 number not null ,
    aut_gra1 number not null ,
    aut_arm1 number not null ,
    aut_emp varchar2(125),
    aut_fecha_hora TIMESTAMP,
    aut_sit number,
    aut_obs varchar2(125),
    constraint pk_slc_autorizado primary key (aut_id,aut_tipo,aut_solicitud) 
  );
/
create table ADMIN.slc_licencia_temporal 
  (
    lit_id number not null ,
    lit_comando number,
    lit_cat1 number not null ,
    lit_cat2 number not null ,
    lit_gra1 number,
    lit_gra2 number,
    lit_arm1 number,
    lit_arm2 number,
    lit_emp varchar2(125),
    lit_emp2 varchar2(125),
    lit_mes_saldo number,
    lit_mes_sinsaldo number not null ,
    lit_fecha1 TIMESTAMP,
    lit_fecha2 TIMESTAMP,
    lit_legal number,
    lit_just varchar2(800),
    lit_salir char(2),
    lit_sit char(2),
    lit_obs varchar2(125),
    lit_phone number not null ,
    constraint pk_slc_licencia_temporal primary key (lit_id) 
  );
/
create table ADMIN.aud_slc_licencia_temporal 
  (
    lit_id number,
    lit_comando number,
    lit_cat1 number,
    lit_cat2 number,
    lit_gra1 number,
    lit_gra2 number,
    lit_arm1 number,
    lit_arm2 number,
    lit_emp varchar2(125),
    lit_emp2 varchar2(125),
    lit_mes_saldo number,
    lit_mes_sinsaldo number,
    lit_fecha1 TIMESTAMP,
    lit_fecha2 TIMESTAMP,
    lit_legal number,
    lit_just varchar2(800),
    lit_salir char(2),
    lit_sit char(2),
    lit_obs varchar2(125),
    lit_phone number,
    desp_lit_id number,
    desp_lit_comando number,
    desp_lit_cat1 number,
    desp_lit_cat2 number,
    desp_lit_gra1 number,
    desp_lit_gra2 number,
    desp_lit_arm1 number,
    desp_lit_arm2 number,
    desp_lit_emp varchar2(125),
    desp_lit_emp2 varchar2(125),
    desp_lit_mes_saldo number,
    desp_lit_mes_sinsaldo number,
    desp_lit_fecha1 TIMESTAMP,
    desp_lit_fecha2 TIMESTAMP,
    desp_lit_legal number,
    desp_lit_just varchar2(800),
    desp_lit_salir char(2),
    desp_lit_sit char(2),
    desp_lit_obs varchar2(125),
    desp_lit_phone number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_protocolo 
  (
    pco_id number not null ,
    pco_comando number not null ,
    pco_cat1 number not null ,
    pco_cat2 number not null ,
    pco_gra1 number,
    pco_gra2 number not null ,
    pco_arm1 number,
    pco_arm2 number not null ,
    pco_emp1 varchar2(250),
    pco_emp2 varchar2(250),
    pco_cmbv number not null ,
    pco_civil varchar2(250),
    pco_hr1 varchar2(250),
    pco_hr2 varchar2(250),
    pco_fecha TIMESTAMP,
    pco_dir varchar2(800),
    pco_just varchar2(800),
    pco_sit char(2),
    pco_obs varchar2(800),
    pco_phone number not null ,
    constraint pk_slc_protocolo primary key (pco_id) 
  );
/
create table ADMIN.aud_slc_autorizado 
  (
    aut_id number,
    aut_tipo number,
    aut_solicitud number,
    aut_comando number,
    aut_cat1 number,
    aut_gra1 number,
    aut_arm1 number,
    aut_emp varchar2(125),
    aut_fecha_hora TIMESTAMP,
    aut_sit number,
    aut_obs varchar2(125),
    desp_aut_id number,
    desp_aut_tipo number,
    desp_aut_solicitud number,
    desp_aut_comando number,
    desp_aut_cat1 number,
    desp_aut_gra1 number,
    desp_aut_arm1 number,
    desp_aut_emp varchar2(125),
    desp_aut_fecha_hora TIMESTAMP,
    desp_aut_sit number,
    desp_aut_obs varchar2(125),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_slc_protocolo 
  (
    pco_id number,
    pco_comando number,
    pco_cat1 number,
    pco_cat2 number,
    pco_gra1 number,
    pco_gra2 number,
    pco_arm1 number,
    pco_arm2 number,
    pco_emp1 varchar2(250),
    pco_emp2 varchar2(250),
    pco_cmbv number,
    pco_civil varchar2(250),
    pco_hr1 varchar2(250),
    pco_hr2 varchar2(250),
    pco_fecha TIMESTAMP,
    pco_dir varchar2(800),
    pco_just varchar2(800),
    pco_sit char(2),
    pco_obs varchar2(800),
    pco_phone number,
    desp_pco_id number,
    desp_pco_comando number,
    desp_pco_cat1 number,
    desp_pco_cat2 number,
    desp_pco_gra1 number,
    desp_pco_gra2 number,
    desp_pco_arm1 number,
    desp_pco_arm2 number,
    desp_pco_emp1 varchar2(250),
    desp_pco_emp2 varchar2(250),
    desp_pco_cmbv number,
    desp_pco_civil varchar2(250),
    desp_pco_hr1 varchar2(250),
    desp_pco_hr2 varchar2(250),
    desp_pco_fecha TIMESTAMP,
    desp_pco_dir varchar2(800),
    desp_pco_just varchar2(800),
    desp_pco_sit char(2),
    desp_pco_obs varchar2(800),
    desp_pco_phone number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_slc_mb 
  (
    mb_id number,
    mb_per varchar2(250),
    mb_cel number,
    mb_direc varchar2(150),
    mb_fec TIMESTAMP,
    mb_ini varchar2(50),
    mb_fin varchar2(50),
    mb_just varchar2(250),
    mb_tipo number,
    mb_cmv char(2),
    mb_sit char(2),
    desp_mb_id number,
    desp_mb_per varchar2(250),
    desp_mb_cel number,
    desp_mb_direc varchar2(150),
    desp_mb_fec TIMESTAMP,
    desp_mb_ini varchar2(50),
    desp_mb_fin varchar2(50),
    desp_mb_just varchar2(250),
    desp_mb_tipo number,
    desp_mb_cmv char(2),
    desp_mb_sit char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_slc_dsal_fechas 
  (
    dsal_id number,
    dsal_tip_uso char(2),
    dsal_sol_cod number,
    dsal_salida TIMESTAMP,
    dsal_ingreso TIMESTAMP,
    dsal_ciudad varchar2(125),
    dsal_pais number,
    dsal_via char(2),
    dsal_obs varchar2(125),
    dsal_sit char(1),
    desp_dsal_id number,
    desp_dsal_tip_uso char(2),
    desp_dsal_sol_cod number,
    desp_dsal_salida TIMESTAMP,
    desp_dsal_ingreso TIMESTAMP,
    desp_dsal_ciudad varchar2(125),
    desp_dsal_pais number,
    desp_dsal_via char(2),
    desp_dsal_obs varchar2(125),
    desp_dsal_sit char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_sal_pais 
  (
    sal_id number not null ,
    sal_comando number not null ,
    sal_cat1 number not null ,
    sal_cat2 number not null ,
    sal_gra1 number,
    sal_gra2 number,
    sal_arm1 number,
    sal_arm2 number,
    sal_emp varchar2(250),
    sal_emp2 varchar2(250),
    sal_sit char(2),
    sal_obs varchar2(800),
    sal_phone number not null ,
    sal_fecha_autorizado TIMESTAMP,
    sal_goce number,
    constraint pk_slc_sal_pais primary key (sal_id) 
  );
/
create table ADMIN.aud_slc_sal_pais 
  (
    sal_id number,
    sal_comando number,
    sal_cat1 number,
    sal_cat2 number,
    sal_gra1 number,
    sal_gra2 number,
    sal_arm1 number,
    sal_arm2 number,
    sal_emp varchar2(250),
    sal_emp2 varchar2(250),
    sal_sit char(2),
    sal_obs varchar2(800),
    sal_phone number,
    sal_fecha_autorizado TIMESTAMP,
    sal_goce number,
    desp_sal_id number,
    desp_sal_comando number,
    desp_sal_cat1 number,
    desp_sal_cat2 number,
    desp_sal_gra1 number,
    desp_sal_gra2 number,
    desp_sal_arm1 number,
    desp_sal_arm2 number,
    desp_sal_emp varchar2(250),
    desp_sal_emp2 varchar2(250),
    desp_sal_sit char(2),
    desp_sal_obs varchar2(800),
    desp_sal_phone number,
    desp_sal_fecha_autorizado TIMESTAMP,
    desp_sal_goce number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.slc_dsal_fechas 
  (
    dsal_id number not null ,
    dsal_tip_uso char(2) not null ,
    dsal_sol_cod number not null ,
    dsal_salida date,
    dsal_ingreso date,
    dsal_ciudad varchar2(125) not null ,
    dsal_pais number,
    dsal_via char(2) not null ,
    dsal_obs varchar2(125) not null ,
    dsal_sit char(1) not null 
  );
/
create table ADMIN.seg_aspirantes 
  (
    id number not null ,
    nombres varchar2(30) not null ,
    apellidos varchar2(30) not null ,
    nacionalidad number not null ,
    genero number not null ,
    documento_id varchar2(250) not null ,
    edad number not null ,
    profesion varchar2(30) not null ,
    entidad_laboral varchar2(250) not null ,
    departamento_laboral varchar2(250) not null ,
    fecha_registro date not null ,
    motivo varchar2(250) not null ,
    imagen byte not null ,
    usuario varchar2(30) not null ,
    password varchar2(50) not null ,
    conpassword varchar2(30) not null 
  );
/
create table ADMIN.seg_evaluacion 
  (
    id number not null ,
    id_aspirante number not null ,
    id_examen number not null ,
    evaluacion number not null ,
    total_preguntas number not null ,
    positivas number not null ,
    negativas number not null ,
    fecha date not null 
  );
/
create table ADMIN.seg_examen 
  (
    id_examen number not null ,
    id_tema number not null ,
    nombre varchar2(50) not null ,
    int_p number not null ,
    int_n number not null ,
    total_preguntas number not null ,
    duracion number not null 
  );
/
create table ADMIN.seg_genero 
  (
    id number not null ,
    genero varchar2(150) not null 
  );
/
create table ADMIN.seg_nacionalidad 
  (
    id number not null ,
    codigo varchar2(150) not null ,
    pais varchar2(150) not null 
  );
/
create table ADMIN.seg_preguntas 
  (
    id number not null ,
    id_examen number not null ,
    pregunta varchar2(500),
    num_preg number not null 
  );
/
create table ADMIN.seg_respuestas 
  (
    id number not null ,
    pregunta number not null ,
    respuesta varchar2(500)
  );
/
create table ADMIN.seg_respuesta_correcta 
  (
    id_pregunta number not null ,
    id_respuesta_correcta number not null 
  );
/
create table ADMIN.seg_subtemas 
  (
    id number not null ,
    tema number not null ,
    subtema varchar2(250) not null 
  );
/
create table ADMIN.seg_temas 
  (
    id number not null ,
    titulo varchar2(250) not null 
  );
/
create table ADMIN.usuarios_prueba 
  (
    id number not null ,
    usuario varchar2(30) not null ,
    pass varchar2(20) not null ,
    grado varchar2(20) not null ,
    nombre varchar2(20) not null 
  );
/
create table ADMIN.ciber_temas 
  (
    tema_id number not null ,
    tema_nombre varchar2(75),
    tema_situacion number 
        default 1,
    constraint pk_ciber_temas primary key (tema_id) 
  );
/
create table ADMIN.aud_ciber_temas 
  (
    tema_id number,
    tema_nombre varchar2(75),
    tema_situacion number,
    desp_tema_id number,
    desp_tema_nombre varchar2(75),
    desp_tema_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_subtemas 
  (
    subtema_id number not null ,
    subtema_tema number,
    subtema_nombre varchar2(75),
    subtema_situacion number 
        default 1,
    constraint pk_ciber_subtemas primary key (subtema_id) 
  );
/
create table ADMIN.aud_ciber_subtemas 
  (
    subtema_id number,
    subtema_tema number,
    subtema_nombre varchar2(75),
    subtema_situacion number,
    desp_subtema_id number,
    desp_subtema_tema number,
    desp_subtema_nombre varchar2(75),
    desp_subtema_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_preguntas 
  (
    pregunta_id number not null ,
    pregunta_subtema number,
    pregunta_descripcion varchar2,
    pregunta_situacion number 
        default 1,
    constraint pk_ciber_preguntas primary key (pregunta_id) 
  );
/
create table ADMIN.aud_ciber_preguntas 
  (
    pregunta_id number,
    pregunta_subtema number,
    pregunta_descripcion varchar2,
    pregunta_situacion number,
    desp_pregunta_id number,
    desp_pregunta_subtema number,
    desp_pregunta_descripcion varchar2,
    desp_pregunta_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_respuestas 
  (
    respuesta_id number not null ,
    respuesta_pregunta number,
    respuesta_descripcion varchar2,
    respuesta_correcta number,
    respuesta_situacion number 
        default 1,
    constraint pk_ciber_respuestas primary key (respuesta_id) 
  );
/
create table ADMIN.aud_ciber_respuestas 
  (
    respuesta_id number,
    respuesta_pregunta number,
    respuesta_descripcion varchar2,
    respuesta_correcta number,
    respuesta_situacion number,
    desp_respuesta_id number,
    desp_respuesta_pregunta number,
    desp_respuesta_descripcion varchar2,
    desp_respuesta_correcta number,
    desp_respuesta_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_evaluaciones 
  (
    evaluacion_id number not null ,
    evaluacion_usuario number,
    evaluacion_fecha TIMESTAMP(0) 
        default current year to minute not null ,
    evaluacion_modulo number,
    evaluacion_situacion number 
        default 1,
    constraint pk_ciber_evaluaciones primary key (evaluacion_id) 
  );
/
create table ADMIN.aud_ciber_evaluaciones 
  (
    evaluacion_id number,
    evaluacion_usuario number,
    evaluacion_fecha TIMESTAMP(0),
    evaluacion_modulo number,
    evaluacion_situacion number,
    desp_evaluacion_id number,
    desp_evaluacion_usuario number,
    desp_evaluacion_fecha TIMESTAMP(0),
    desp_evaluacion_modulo number,
    desp_evaluacion_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_detalle_evaluaciones 
  (
    detalle_id number not null ,
    detalle_evaluacion number,
    detalle_respuesta number,
    detalle_situacion number 
        default 1,
    constraint pk_ciber_detalle_evaluaciones primary key (detalle_id) 
  );
/
create table ADMIN.aud_ciber_detalle_evaluaciones 
  (
    detalle_id number,
    detalle_evaluacion number,
    detalle_respuesta number,
    detalle_situacion number,
    desp_detalle_id number,
    desp_detalle_evaluacion number,
    desp_detalle_respuesta number,
    desp_detalle_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ciber_usuarios 
  (
    usu_id number not null ,
    usu_correo varchar2(100),
    usu_password varchar2(60),
    usu_rol number 
        default 1,
    usu_catalogo number,
    usu_registro TIMESTAMP(0) 
        default current year to minute not null ,
    usu_token char(13),
    usu_diploma char(13) 
        default null,
    usu_fecha_diploma TIMESTAMP(0),
    usu_situacion number 
        default 1,
    constraint pk_ciber_usuarios primary key (usu_id) 
  );
/
create table ADMIN.aud_ciber_usuarios 
  (
    usu_id number,
    usu_correo varchar2(100),
    usu_password varchar2(60),
    usu_rol number,
    usu_catalogo number,
    usu_registro TIMESTAMP(0),
    usu_token char(13),
    usu_diploma char(13),
    usu_fecha_diploma TIMESTAMP(0),
    usu_situacion number,
    desp_usu_id number,
    desp_usu_correo varchar2(100),
    desp_usu_password varchar2(60),
    desp_usu_rol number,
    desp_usu_catalogo number,
    desp_usu_registro TIMESTAMP(0),
    desp_usu_token char(13),
    desp_usu_diploma char(13),
    desp_usu_fecha_diploma TIMESTAMP(0),
    desp_usu_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pruebas_tiempo 
  (
    pru_id number not null ,
    pru_d_yearminute TIMESTAMP(0),
    pru_d_yearfraction datetime year to fraction(3),
    pru_d_hoursecond datetime hour to second,
    pru_d_hourminute datetime hour to minute,
    pru_d_hourfraction datetime hour to fraction(3),
    pru_d_minutesecond datetime minute to second
  );
/
create table ADMIN.smm_banda 
  (
    smm_banda_id number not null ,
    smm_banda_banda char(150),
    smm_banda_situacion number,
    constraint pk_smm_banda primary key (smm_banda_id) 
  );
/
create table ADMIN.aud_smm_banda 
  (
    smm_banda_id number,
    smm_banda_banda char(150),
    smm_banda_situacion number,
    desp_smm_banda_id number,
    desp_smm_banda_banda char(150),
    desp_smm_banda_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.smm_actividad 
  (
    smm_actividad_id number not null ,
    smm_actividad_actividad char(150),
    smm_actividad_situacion number,
    constraint pk_smm_actividad primary key (smm_actividad_id) 
  );
/
create table ADMIN.aud_smm_actividad 
  (
    smm_actividad_id number,
    smm_actividad_actividad char(150),
    smm_actividad_situacion number,
    desp_smm_actividad_id number,
    desp_smm_actividad_actividad char(150),
    desp_smm_actividad_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opaf_carrera1 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo datetime minute to second,
    car_punteo number
  );
/
create table ADMIN.aud_opaf_carrera1 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo datetime minute to second,
    car_punteo number,
    desp_car_edad number,
    desp_car_sexo char(1),
    desp_car_tiempo datetime minute to second,
    desp_car_punteo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.smm_reporte 
  (
    smm_reporte_id number not null ,
    smm_reporte_nombre number,
    smm_reporte_comision number,
    smm_reporte_civil char(150),
    smm_reporte_motivo number,
    smm_reporte_cantidad number,
    smm_reporte_fecha date,
    smm_reporte_horain datetime hour to minute,
    smm_reporte_horafin datetime hour to minute,
    smm_reporte_situacion number
  );
/
create table ADMIN.aud_smm_reporte 
  (
    smm_reporte_id number,
    smm_reporte_nombre number,
    smm_reporte_comision number,
    smm_reporte_civil char(150),
    smm_reporte_motivo number,
    smm_reporte_cantidad number,
    smm_reporte_fecha date,
    smm_reporte_horain datetime hour to minute,
    smm_reporte_horafin datetime hour to minute,
    smm_reporte_situacion number,
    desp_smm_reporte_id number,
    desp_smm_reporte_nombre number,
    desp_smm_reporte_comision number,
    desp_smm_reporte_civil char(150),
    desp_smm_reporte_motivo number,
    desp_smm_reporte_cantidad number,
    desp_smm_reporte_fecha date,
    desp_smm_reporte_horain datetime hour to minute,
    desp_smm_reporte_horafin datetime hour to minute,
    desp_smm_reporte_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_fuente_financiamiento 
  (
    fuentefi_fuente number,
    fuentefi_descripcion varchar2(254),
    fuentefi_observaciones varchar2(254),
    fuentefi_situacion number,
    constraint pk_esip_fuente_financiamiento primary key (fuentefi_fuente) 
  );
/
create table ADMIN.aud_esip_fuente_financiamiento 
  (
    fuentefi_fuente number,
    fuentefi_descripcion varchar2(254),
    fuentefi_observaciones varchar2(254),
    fuentefi_situacion number,
    desp_fuentefi_fuente number,
    desp_fuentefi_descripcion varchar2(254),
    desp_fuentefi_observaciones varchar2(254),
    desp_fuentefi_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_grupo_gasto 
  (
    grupoga_grupo number,
    grupoga_descripcion varchar2(254),
    grupoga_observaciones varchar2(254),
    grupoga_situacion number,
    constraint pk_esip_grupo_gasto primary key (grupoga_grupo) 
  );
/
create table ADMIN.aud_esip_grupo_gasto 
  (
    grupoga_grupo number,
    grupoga_descripcion varchar2(254),
    grupoga_observaciones varchar2(254),
    grupoga_situacion number,
    desp_grupoga_grupo number,
    desp_grupoga_descripcion varchar2(254),
    desp_grupoga_observaciones varchar2(254),
    desp_grupoga_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_planes_basicos 
  (
    planb_id number,
    planb_nombre_proyecto varchar2(250),
    planb_fecha date,
    planb_periodo number,
    planb_dep number,
    planb_costo number(16,2),
    planb_prioridad number,
    planb_justificacion varchar2(250),
    planb_observaciones varchar2(250),
    planb_plan_basico number,
    planb_situacion number,
    constraint pk_esip_planes_basicos primary key (planb_id) 
  );
/
create table ADMIN.aud_esip_planes_basicos 
  (
    planb_id number,
    planb_nombre_proyecto varchar2(250),
    planb_fecha date,
    planb_periodo number,
    planb_dep number,
    planb_costo number(16,2),
    planb_prioridad number,
    planb_justificacion varchar2(250),
    planb_observaciones varchar2(250),
    planb_plan_basico number,
    planb_situacion number,
    desp_planb_id number,
    desp_planb_nombre_proyecto varchar2(250),
    desp_planb_fecha date,
    desp_planb_periodo number,
    desp_planb_dep number,
    desp_planb_costo number(16,2),
    desp_planb_prioridad number,
    desp_planb_justificacion varchar2(250),
    desp_planb_observaciones varchar2(250),
    desp_planb_plan_basico number,
    desp_planb_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_paquetes_logisticos 
  (
    paquetes_id number,
    paquetes_plan_basico varchar2(254),
    paquetes_unidad_tecnica number,
    paquetes_observaciones varchar2(254),
    paquetes_situacion number,
    constraint pk_esip_paquetes_logisticos primary key (paquetes_id) 
  );
/
create table ADMIN.aud_esip_paquetes_logisticos 
  (
    paquetes_id number,
    paquetes_plan_basico varchar2(254),
    paquetes_unidad_tecnica number,
    paquetes_observaciones varchar2(254),
    paquetes_situacion number,
    desp_paquetes_id number,
    desp_paquetes_plan_basico varchar2(254),
    desp_paquetes_unidad_tecnica number,
    desp_paquetes_observaciones varchar2(254),
    desp_paquetes_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_unidad_medida 
  (
    unidad_id number,
    unidad_descripcion_larga varchar2(90),
    unidad_descripcion_corta varchar2(20),
    unidad_observacion varchar2(254),
    unidad_situacion number,
    constraint pk_esip_unidad_medida primary key (unidad_id) 
  );
/
create table ADMIN.aud_esip_unidad_medida 
  (
    unidad_id number,
    unidad_descripcion_larga varchar2(90),
    unidad_descripcion_corta varchar2(20),
    unidad_observacion varchar2(254),
    unidad_situacion number,
    desp_unidad_id number,
    desp_unidad_descripcion_larga varchar2(90),
    desp_unidad_descripcion_corta varchar2(20),
    desp_unidad_observacion varchar2(254),
    desp_unidad_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_renglon_presupuestario 
  (
    renglonpre_renglon number,
    renglonpre_descripcion varchar2(254),
    renglonpre_observaciones varchar2(254),
    renglonpre_situacion number,
    constraint pk_esip_renglon_presupuestario primary key (renglonpre_renglon) 
  );
/
create table ADMIN.aud_esip_renglon_presupuestario 
  (
    renglonpre_renglon number,
    renglonpre_descripcion varchar2(254),
    renglonpre_observaciones varchar2(254),
    renglonpre_situacion number,
    desp_renglonpre_renglon number,
    desp_renglonpre_descripcion varchar2(254),
    desp_renglonpre_observaciones varchar2(254),
    desp_renglonpre_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esip_matriz_presupuestaria 
  (
    matriz_id number,
    matriz_plan_basico number,
    matriz_fuente number,
    matriz_grupo number,
    matriz_renglon number,
    matriz_descripcion varchar2(254),
    matriz_justificacion varchar2(254),
    matriz_cantidad number,
    matriz_unidad_medida number,
    matriz_costo number(16,2),
    matriz_subtotal number(16,2),
    matriz_suma_grupo number(16,2),
    matriz_total_fuente number(16,2),
    matriz_observaciones varchar2(254),
    matriz_situacion number,
    matriz_fecha_envio date,
    matriz_fecha_regreso date,
    constraint pk_esip_matriz_presupuestaria primary key (matriz_id) 
  );
/
create table ADMIN.aud_esip_matriz_presupuestaria 
  (
    matriz_id number,
    matriz_plan_basico number,
    matriz_fuente number,
    matriz_grupo number,
    matriz_renglon number,
    matriz_descripcion varchar2(254),
    matriz_justificacion varchar2(254),
    matriz_cantidad number,
    matriz_unidad_medida number,
    matriz_costo number(16,2),
    matriz_subtotal number(16,2),
    matriz_suma_grupo number(16,2),
    matriz_total_fuente number(16,2),
    matriz_observaciones varchar2(254),
    matriz_situacion number,
    matriz_fecha_envio date,
    matriz_fecha_regreso date,
    desp_matriz_id number,
    desp_matriz_plan_basico number,
    desp_matriz_fuente number,
    desp_matriz_grupo number,
    desp_matriz_renglon number,
    desp_matriz_descripcion varchar2(254),
    desp_matriz_justificacion varchar2(254),
    desp_matriz_cantidad number,
    desp_matriz_unidad_medida number,
    desp_matriz_costo number(16,2),
    desp_matriz_subtotal number(16,2),
    desp_matriz_suma_grupo number(16,2),
    desp_matriz_total_fuente number(16,2),
    desp_matriz_observaciones varchar2(254),
    desp_matriz_situacion number,
    desp_matriz_fecha_envio date,
    desp_matriz_fecha_regreso date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_capta_documentos 
  (
    capta_id number,
    capta_ingreso number,
    capta_documento number,
    capta_situacion number,
    desp_capta_id number,
    desp_capta_ingreso number,
    desp_capta_documento number,
    desp_capta_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_capta_evaluaciones 
  (
    eva_id number,
    eva_ingreso number,
    eva_tipo number,
    eva_lugar number,
    eva_fecha date,
    eva_nota number,
    eva_situacion number,
    desp_eva_id number,
    desp_eva_ingreso number,
    desp_eva_tipo number,
    desp_eva_lugar number,
    desp_eva_fecha date,
    desp_eva_nota number,
    desp_eva_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.capta_evaluados 
  (
    captae_id char(13),
    captae_nombre1 varchar2(30),
    captae_nombre2 varchar2(30),
    captae_apellido1 varchar2(30),
    captae_apellido2 varchar2(30),
    captae_catalogo char(13),
    captae_situacion number,
    constraint pk_capta_evaluados primary key (captae_id) 
  );
/
create table ADMIN.aud_capta_evaluados 
  (
    captae_id char(13),
    captae_nombre1 varchar2(30),
    captae_nombre2 varchar2(30),
    captae_apellido1 varchar2(30),
    captae_apellido2 varchar2(30),
    captae_catalogo char(13),
    captae_situacion number,
    desp_captae_id char(13),
    desp_captae_nombre1 varchar2(30),
    desp_captae_nombre2 varchar2(30),
    desp_captae_apellido1 varchar2(30),
    desp_captae_apellido2 varchar2(30),
    desp_captae_catalogo char(13),
    desp_captae_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_capta_tipoeva 
  (
    tipo_id number,
    tipo_descripcion varchar2(30),
    tipo_situacion number,
    desp_tipo_id number,
    desp_tipo_descripcion varchar2(30),
    desp_tipo_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_capta_feriados 
  (
    feriado_id number,
    feriado_fecha date,
    feriado_descripcion varchar2(30),
    feriado_situacion number,
    antes_feriado_id number,
    antes_feriado_fecha date,
    antes_feriado_descripcion varchar2(30),
    antes_feriado_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.capta_documentos 
  (
    capta_id number not null ,
    capta_ingreso number,
    capta_documento number,
    capta_situacion number
  );
/
create table ADMIN.capta_evaluaciones 
  (
    eva_id number not null ,
    eva_ingreso number,
    eva_tipo number,
    eva_lugar number,
    eva_fecha date,
    eva_nota number,
    eva_situacion number
  );
/
create table ADMIN.capta_tipoeva 
  (
    tipo_id number not null ,
    tipo_descripcion varchar2(30),
    tipo_situacion number
  );
/
create table ADMIN.capta_feriados 
  (
    feriado_id number not null ,
    feriado_fecha date,
    feriado_descripcion varchar2(30),
    feriado_situacion number
  );
/
create table ADMIN.aud_asig_requisitos 
  (
    asig_id number,
    asig_plaza varchar2(250),
    asig_requisito number,
    asig_situacion number,
    desp_asig_id number,
    desp_asig_plaza varchar2(250),
    desp_asig_requisito number,
    desp_asig_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.asig_requisitos 
  (
    asig_id number not null ,
    asig_plaza varchar2(250),
    asig_requisito number,
    asig_situacion number
  );
/
create table ADMIN.capta_ingresos 
  (
    ingre_id number not null ,
    ingre_plaza number,
    ingre_dpi char(13),
    ingre_situacion number,
    ingre_fecha TIMESTAMP(0),
    ingre_ceom varchar2(30),
    constraint pk_capta_ingresos primary key (ingre_id) 
  );
/
create table ADMIN.aud_capta_ingresos 
  (
    ingre_id number,
    ingre_plaza number,
    ingre_dpi char(13),
    ingre_situacion number,
    ingre_fecha TIMESTAMP(0),
    ingre_ceom varchar2(30),
    desp_ingre_id number,
    desp_ingre_plaza number,
    desp_ingre_dpi char(13),
    desp_ingre_situacion number,
    desp_ingre_fecha TIMESTAMP(0),
    desp_ingre_ceom varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_eventos 
  (
    id number not null ,
    nombre varchar2(100),
    situacion number,
    constraint pk_tri_eventos primary key (id) 
  );
/
create table ADMIN.aud_tri_eventos 
  (
    id number,
    nombre varchar2(100),
    situacion number,
    desp_id number,
    desp_nombre varchar2(100),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_etapas 
  (
    id number not null ,
    nombre varchar2(100),
    situacion number,
    ponderacion number,
    constraint pk_tri_etapas primary key (id) 
  );
/
create table ADMIN.aud_tri_etapas 
  (
    id number,
    nombre varchar2(100),
    situacion number,
    ponderacion number,
    desp_id number,
    desp_nombre varchar2(100),
    desp_situacion number,
    desp_ponderacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_detalle 
  (
    id number not null ,
    evento number,
    etapa number,
    situacion number,
    constraint pk_tri_detalle primary key (id) 
  );
/
create table ADMIN.aud_tri_detalle 
  (
    id number,
    evento number,
    etapa number,
    situacion number,
    desp_id number,
    desp_evento number,
    desp_etapa number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_participantes 
  (
    id number not null ,
    evento number,
    catalogo number,
    situacion number,
    constraint pk_tri_participantes primary key (id) 
  );
/
create table ADMIN.aud_tri_participantes 
  (
    id number,
    evento number,
    catalogo number,
    situacion number,
    desp_id number,
    desp_evento number,
    desp_catalogo number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_puntaje 
  (
    id number not null ,
    participante number,
    etapa number,
    punteo number(10,3),
    tiempo interval hour to second,
    situacion number
  );
/
create table ADMIN.aud_tri_puntaje 
  (
    id number,
    participante number,
    etapa number,
    punteo number(10,3),
    tiempo interval hour to second,
    situacion number,
    desp_id number,
    desp_participante number,
    desp_etapa number,
    desp_punteo number(10,3),
    desp_tiempo interval hour to second,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.resp_perm_220323 
  (
    grantor char(32),
    grantee char(32),
    tabid number,
    tabauth char(9)
  );
/
create table ADMIN.coc_instituciones 
  (
    inst_codigo number,
    inst_descripcion varchar2(150),
    inst_observacion varchar2(150),
    ins_situacion number,
    constraint pk_coc_instituciones primary key (inst_codigo) 
  );
/
create table ADMIN.aud_coc_instituciones 
  (
    inst_codigo number,
    inst_descripcion varchar2(150),
    inst_observacion varchar2(150),
    ins_situacion number,
    desp_inst_codigo number,
    desp_inst_descripcion varchar2(150),
    desp_inst_observacion varchar2(150),
    desp_ins_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_detalle_instituciones 
  (
    det_ins_codigo number,
    det_ins_reporte number,
    det_ins_cod_institucion number,
    det_ins_observacion varchar2(150),
    det_ins_situacion number,
    desp_det_ins_codigo number,
    desp_det_ins_reporte number,
    desp_det_ins_cod_institucion number,
    desp_det_ins_observacion varchar2(150),
    desp_det_ins_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_desastre_natural 
  (
    id number not null ,
    topico number,
    tipo number,
    nombre_desastre number,
    per_fallecida number,
    per_evacuada number,
    per_afectada number,
    albergues number,
    est_colapsadas number,
    inundaciones number,
    derrumbes number,
    carre_colap number,
    hectareas_quemadas number,
    rios number,
    situacion number,
    constraint pk_amc_desastre_natural primary key (id) 
  );
/
create table ADMIN.aud_amc_desastre_natural 
  (
    id number,
    topico number,
    tipo number,
    nombre_desastre number,
    per_fallecida number,
    per_evacuada number,
    per_afectada number,
    albergues number,
    est_colapsadas number,
    inundaciones number,
    derrumbes number,
    carre_colap number,
    hectareas_quemadas number,
    rios number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_tipo number,
    desp_nombre_desastre number,
    desp_per_fallecida number,
    desp_per_evacuada number,
    desp_per_afectada number,
    desp_albergues number,
    desp_est_colapsadas number,
    desp_inundaciones number,
    desp_derrumbes number,
    desp_carre_colap number,
    desp_hectareas_quemadas number,
    desp_rios number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_topico 
  (
    id number not null ,
    fecha TIMESTAMP(0),
    lugar varchar2(30),
    departamento number,
    municipio number,
    tipo number,
    latitud varchar2(15),
    longitud varchar2(15),
    actividad number,
    situacion number,
    info varchar2,
    dependencia number,
    fuente number,
    link varchar2,
    usuario number,
    constraint pk_amc_topico primary key (id) 
  );
/
create table ADMIN.aud_amc_topico 
  (
    id number,
    fecha TIMESTAMP(0),
    lugar varchar2(30),
    departamento number,
    municipio number,
    tipo number,
    latitud varchar2(15),
    longitud varchar2(15),
    actividad number,
    situacion number,
    info varchar2,
    dependencia number,
    fuente number,
    link varchar2,
    usuario number,
    desp_id number,
    desp_fecha TIMESTAMP(0),
    desp_lugar varchar2(30),
    desp_departamento number,
    desp_municipio number,
    desp_tipo number,
    desp_latitud varchar2(15),
    desp_longitud varchar2(15),
    desp_actividad number,
    desp_situacion number,
    desp_info varchar2,
    desp_dependencia number,
    desp_fuente number,
    desp_link varchar2,
    desp_usuario number,
    accion char(1) not null ,
    usuario1 char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_incautacion_droga 
  (
    id number not null ,
    topico number,
    tipo_droga number,
    transporte number,
    matricula varchar2(20),
    tipo_transporte varchar2(20),
    cantidad number,
    tip_droga_plantacion number,
    cantidad_plantacion number,
    situacion number,
    constraint pk_amc_incautacion_droga primary key (id) 
  );
/
create table ADMIN.aud_amc_incautacion_droga 
  (
    id number,
    topico number,
    tipo_droga number,
    transporte number,
    matricula varchar2(20),
    tipo_transporte varchar2(20),
    cantidad number,
    tip_droga_plantacion number,
    cantidad_plantacion number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_tipo_droga number,
    desp_transporte number,
    desp_matricula varchar2(20),
    desp_tipo_transporte varchar2(20),
    desp_cantidad number,
    desp_tip_droga_plantacion number,
    desp_cantidad_plantacion number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_per_capturadas 
  (
    id number not null ,
    topico number,
    nacionalidad number,
    sexo number,
    nombre varchar2(40),
    edad number,
    delito number,
    vinculo number,
    situacion number,
    constraint pk_amc_per_capturadas primary key (id) 
  );
/
create table ADMIN.aud_amc_per_capturadas 
  (
    id number,
    topico number,
    nacionalidad number,
    sexo number,
    nombre varchar2(40),
    edad number,
    delito number,
    vinculo number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_nacionalidad number,
    desp_sexo number,
    desp_nombre varchar2(40),
    desp_edad number,
    desp_delito number,
    desp_vinculo number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_migrantes 
  (
    id number not null ,
    topic number,
    pais_migrante number,
    edad number,
    cantidad number,
    sexo number,
    lugar_ingreso varchar2(35),
    destino number,
    situacion number,
    constraint pk_amc_migrantes primary key (id) 
  );
/
create table ADMIN.aud_amc_migrantes 
  (
    id number,
    topic number,
    pais_migrante number,
    edad number,
    cantidad number,
    sexo number,
    lugar_ingreso varchar2(35),
    destino number,
    situacion number,
    desp_id number,
    desp_topic number,
    desp_pais_migrante number,
    desp_edad number,
    desp_cantidad number,
    desp_sexo number,
    desp_lugar_ingreso varchar2(35),
    desp_destino number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_movimiento_social 
  (
    id number not null ,
    topico number,
    tipo_movimiento number,
    organizacion number,
    cantidad number,
    situacion number,
    constraint pk_amc_movimiento_social primary key (id) 
  );
/
create table ADMIN.aud_amc_movimiento_social 
  (
    id number,
    topico number,
    tipo_movimiento number,
    organizacion number,
    cantidad number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_tipo_movimiento number,
    desp_organizacion number,
    desp_cantidad number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_colores 
  (
    id number not null ,
    descripcion varchar2(254),
    cantidad number,
    color varchar2(254),
    nivel number,
    topico number,
    situacion number,
    constraint pk_amc_colores primary key (id) 
  );
/
create table ADMIN.aud_amc_colores 
  (
    id number,
    descripcion varchar2(254),
    cantidad number,
    color varchar2(254),
    nivel number,
    topico number,
    situacion number,
    desp_id number,
    desp_descripcion varchar2(254),
    desp_cantidad number,
    desp_color varchar2(254),
    desp_nivel number,
    desp_topico number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_incautacion_dinero 
  (
    id number not null ,
    topico number,
    cantidad number(12,2),
    moneda number,
    conversion float,
    situacion number,
    constraint pk_amc_incautacion_dinero primary key (id) 
  );
/
create table ADMIN.aud_amc_incautacion_dinero 
  (
    id number,
    topico number,
    cantidad number(12,2),
    moneda number,
    conversion float,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_cantidad number(12,2),
    desp_moneda number,
    desp_conversion float,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_detalle_arma 
  (
    id number not null ,
    topico number,
    tipo_arma number,
    calibre number,
    cantidad number,
    situacion number,
    constraint pk_amc_detalle_arma primary key (id) 
  );
/
create table ADMIN.aud_amc_detalle_arma 
  (
    id number,
    topico number,
    tipo_arma number,
    calibre number,
    cantidad number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_tipo_arma number,
    desp_calibre number,
    desp_cantidad number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_detalle_municion 
  (
    id number not null ,
    topico number,
    calibre number,
    cantidad number,
    situacion number,
    constraint pk_amc_detalle_municion primary key (id) 
  );
/
create table ADMIN.aud_amc_detalle_municion 
  (
    id number,
    topico number,
    calibre number,
    cantidad number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_calibre number,
    desp_cantidad number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_asesinato 
  (
    id number not null ,
    topico number,
    cant_per_asesinadas number,
    situacion number,
    constraint pk_amc_asesinato primary key (id) 
  );
/
create table ADMIN.aud_amc_asesinato 
  (
    id number,
    topico number,
    cant_per_asesinadas number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_cant_per_asesinadas number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_destruccion_pista 
  (
    id number not null ,
    topico number,
    distancia number(16),
    situacion number,
    constraint pk_amc_destruccion_pista primary key (id) 
  );
/
create table ADMIN.aud_amc_destruccion_pista 
  (
    id number,
    topico number,
    distancia number(16),
    situacion number,
    desp_id number,
    desp_topico number,
    desp_distancia number(16),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_incautacion_armas 
  (
    id number not null ,
    topico number,
    info varchar2,
    situacion number,
    constraint pk_amc_incautacion_armas primary key (id) 
  );
/
create table ADMIN.aud_amc_incautacion_armas 
  (
    id number,
    topico number,
    info varchar2,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_info varchar2,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_nacionalidad 
  (
    id number not null ,
    desc varchar2(30),
    pais number,
    situacion number,
    constraint pk_amc_nacionalidad primary key (id) 
  );
/
create table ADMIN.aud_amc_nacionalidad 
  (
    id number,
    desc varchar2(30),
    pais number,
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_pais number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_organizacion_mov_social 
  (
    id number not null ,
    desc varchar2(30),
    situacion number,
    constraint pk_amc_organizacion_mov_social primary key (id) 
  );
/
create table ADMIN.aud_amc_organizacion_mov_social 
  (
    id number,
    desc varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_tipo_movimiento_social 
  (
    id number not null ,
    desc varchar2(30),
    situacion number,
    constraint pk_amc_tipo_movimiento_social primary key (id) 
  );
/
create table ADMIN.aud_amc_tipo_movimiento_social 
  (
    id number,
    desc varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_tipo_desastre_natural 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_tipo_desastre_natural primary key (id) 
  );
/
create table ADMIN.aud_amc_tipo_desastre_natural 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_capturas 
  (
    id number not null ,
    topico number,
    info varchar2,
    situacion number,
    constraint pk_amc_capturas primary key (id) 
  );
/
create table ADMIN.aud_amc_capturas 
  (
    id number,
    topico number,
    info varchar2,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_info varchar2,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_actividad_vinculada 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_actividad_vinculada primary key (id) 
  );
/
create table ADMIN.aud_amc_actividad_vinculada 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_moneda 
  (
    id number not null ,
    desc varchar2(25),
    cambio float,
    situacion number,
    constraint pk_amc_moneda primary key (id) 
  );
/
create table ADMIN.aud_amc_moneda 
  (
    id number,
    desc varchar2(25),
    cambio float,
    situacion number,
    desp_id number,
    desp_desc varchar2(25),
    desp_cambio float,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_fenomeno_natural 
  (
    id number not null ,
    desc varchar2(30),
    situacion number,
    constraint pk_amc_fenomeno_natural primary key (id) 
  );
/
create table ADMIN.aud_amc_fenomeno_natural 
  (
    id number,
    desc varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_tipo_topics 
  (
    id number not null ,
    desc varchar2(30),
    situacion number,
    constraint pk_amc_tipo_topics primary key (id) 
  );
/
create table ADMIN.aud_amc_tipo_topics 
  (
    id number,
    desc varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_tipo_armas 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_tipo_armas primary key (id) 
  );
/
create table ADMIN.aud_amc_tipo_armas 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_transporte 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_transporte primary key (id) 
  );
/
create table ADMIN.aud_amc_transporte 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_prioridad 
  (
    id number,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_prioridad primary key (id) 
  );
/
create table ADMIN.aud_amc_prioridad 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_tendencia 
  (
    id number,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_tendencia primary key (id) 
  );
/
create table ADMIN.aud_amc_tendencia 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_usuarios 
  (
    id number not null ,
    desc varchar2(50),
    situacion number,
    constraint pk_amc_usuarios primary key (id) 
  );
/
create table ADMIN.aud_amc_usuarios 
  (
    id number,
    desc varchar2(50),
    situacion number,
    desp_id number,
    desp_desc varchar2(50),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_calibre 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_calibre primary key (id) 
  );
/
create table ADMIN.aud_amc_calibre 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_fuentes 
  (
    id number not null ,
    desc varchar2(50),
    situacion number,
    constraint pk_amc_fuentes primary key (id) 
  );
/
create table ADMIN.aud_amc_fuentes 
  (
    id number,
    desc varchar2(50),
    situacion number,
    desp_id number,
    desp_desc varchar2(50),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_edades 
  (
    id number not null ,
    edades varchar2(20),
    situacion number,
    constraint pk_amc_edades primary key (id) 
  );
/
create table ADMIN.aud_amc_edades 
  (
    id number,
    edades varchar2(20),
    situacion number,
    desp_id number,
    desp_edades varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_factor 
  (
    id number,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_factor primary key (id) 
  );
/
create table ADMIN.aud_amc_factor 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_delito 
  (
    id number not null ,
    desc varchar2(50),
    situacion number,
    constraint pk_amc_delito primary key (id) 
  );
/
create table ADMIN.aud_amc_delito 
  (
    id number,
    desc varchar2(50),
    situacion number,
    desp_id number,
    desp_desc varchar2(50),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_drogas 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_drogas primary key (id) 
  );
/
create table ADMIN.aud_amc_drogas 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_sexo 
  (
    id number not null ,
    desc varchar2(20),
    situacion number,
    constraint pk_amc_sexo primary key (id) 
  );
/
create table ADMIN.aud_amc_sexo 
  (
    id number,
    desc varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.amc_per_asesinadas 
  (
    id number not null ,
    topico number,
    nombre varchar2(30),
    edad number,
    sexo number,
    situacion number,
    constraint pk_amc_per_asesinadas primary key (id) 
  );
/
create table ADMIN.aud_amc_per_asesinadas 
  (
    id number,
    topico number,
    nombre varchar2(30),
    edad number,
    sexo number,
    situacion number,
    desp_id number,
    desp_topico number,
    desp_nombre varchar2(30),
    desp_edad number,
    desp_sexo number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_asentamiento 
  (
    asen_catalogo number not null ,
    asen_cuatrimestre number not null ,
    asen_year number not null ,
    asen_estado number,
    asen_situacion number,
    constraint pk_larm_asentamiento primary key (asen_catalogo,asen_cuatrimestre,asen_year) 
  );
/
create table ADMIN.aud_larm_asentamiento 
  (
    asen_catalogo number,
    asen_cuatrimestre number,
    asen_year number,
    asen_estado number,
    asen_situacion number,
    desp_asen_catalogo number,
    desp_asen_cuatrimestre number,
    desp_asen_year number,
    desp_asen_estado number,
    desp_asen_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_departamentos 
  (
    dep_codigo number,
    dep_desc_lg varchar2(150),
    dep_desc_md varchar2(75),
    dep_desc_ct varchar2(25),
    dep_situacion number,
    constraint pk_coc_departamentos primary key (dep_codigo) 
  );
/
create table ADMIN.aud_coc_departamentos 
  (
    dep_codigo number,
    dep_desc_lg varchar2(150),
    dep_desc_md varchar2(75),
    dep_desc_ct varchar2(25),
    dep_situacion number,
    desp_dep_codigo number,
    desp_dep_desc_lg varchar2(150),
    desp_dep_desc_md varchar2(75),
    desp_dep_desc_ct varchar2(25),
    desp_dep_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_municipios 
  (
    mun_codigo number,
    mun_cod_dep number,
    mun_desc_lg varchar2(150),
    mun_desc_md varchar2(75),
    mun_desc_ct varchar2(25),
    mun_situacion number,
    constraint pk_coc_municipios primary key (mun_codigo) 
  );
/
create table ADMIN.aud_coc_municipios 
  (
    mun_codigo number,
    mun_cod_dep number,
    mun_desc_lg varchar2(150),
    mun_desc_md varchar2(75),
    mun_desc_ct varchar2(25),
    mun_situacion number,
    desp_mun_codigo number,
    desp_mun_cod_dep number,
    desp_mun_desc_lg varchar2(150),
    desp_mun_desc_md varchar2(75),
    desp_mun_desc_ct varchar2(25),
    desp_mun_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_lugar 
  (
    lug_codigo number,
    lug_cod_mun number,
    lug_descripcion varchar2(150),
    lug_latitud number(16),
    lug_longitud number(16),
    lug_hombres number,
    lug_mujeres number,
    lug_menores_masc number,
    lug_menores_fem number,
    lug_observaciones varchar2(250),
    lug_situacion number,
    constraint pk_coc_lugar primary key (lug_codigo) 
  );
/
create table ADMIN.aud_coc_lugar 
  (
    lug_codigo number,
    lug_cod_mun number,
    lug_descripcion varchar2(150),
    lug_latitud number(16),
    lug_longitud number(16),
    lug_hombres number,
    lug_mujeres number,
    lug_menores_masc number,
    lug_menores_fem number,
    lug_observaciones varchar2(250),
    lug_situacion number,
    desp_lug_codigo number,
    desp_lug_cod_mun number,
    desp_lug_descripcion varchar2(150),
    desp_lug_latitud number(16),
    desp_lug_longitud number(16),
    desp_lug_hombres number,
    desp_lug_mujeres number,
    desp_lug_menores_masc number,
    desp_lug_menores_fem number,
    desp_lug_observaciones varchar2(250),
    desp_lug_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_detalle_lugar 
  (
    det_lug_codigo number,
    det_lug_reporte number,
    det_lug_cod_lugar number,
    det_lug_observacion varchar2(150),
    det_lug_situacion number,
    constraint pk_coc_detalle_lugar primary key (det_lug_codigo) 
  );
/
create table ADMIN.aud_coc_detalle_lugar 
  (
    det_lug_codigo number,
    det_lug_reporte number,
    det_lug_cod_lugar number,
    det_lug_observacion varchar2(150),
    det_lug_situacion number,
    desp_det_lug_codigo number,
    desp_det_lug_reporte number,
    desp_det_lug_cod_lugar number,
    desp_det_lug_observacion varchar2(150),
    desp_det_lug_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_capta_requisitos 
  (
    regi_id number,
    regi_nombre varchar2(800),
    regi_situacion number,
    desp_regi_id number,
    desp_regi_nombre varchar2(800),
    desp_regi_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.capta_requisitos 
  (
    regi_id number not null ,
    regi_nombre varchar2(800),
    regi_situacion number
  );
/
create table ADMIN.far_insumos_asignados 
  (
    ins_asig_id number not null ,
    ins_asig_ins_id number,
    ins_asig_ins number,
    ins_asig_pres number,
    ins_asig_prec varchar2(250),
    ins_asig_cantidad number,
    ins_asig_total number(20,5),
    ins_asig_situacion number,
    ins_desc_insumo varchar2(250),
    ins_fecha_vence date,
    ins_lote varchar2(250)
  );
/
create table ADMIN.far_insumos_datos 
  (
    ins_id number not null ,
    ins_id_ingreso number,
    ins_id_egresos number,
    ins_proveedor number,
    ins_fecha varchar2(250),
    ins_num_factura varchar2(250),
    ins_num_serie varchar2(250),
    ins_forma_pago number,
    ins_fecha_pago varchar2(250),
    ins_totales number(20,5),
    ins_situacion number,
    ins_dependencia number,
    ins_otra_dependencia varchar2(250),
    ins_persona_recibe number,
    ins_persona_entrega number,
    ins_tipo varchar2(250),
    ins_observaciones varchar2(2000)
  );
/
create table ADMIN.far_insumos_suma 
  (
    ins_id_suma number not null ,
    ins_nombre_farmaco_suma number,
    ins_presentacion_farmaco_suma number,
    ins_cantidad_suma number,
    ins_situacion number,
    ins_situacion_existencia number,
    ins_cantidad_existente number,
    ins_id_tabla_egresos number,
    ins_lote_suma varchar2(250),
    ins_fecha_vence_suma date,
    ins_dependencia_suma number
  );
/
create table ADMIN.farma_farmacos 
  (
    farmaco_id number not null ,
    farmaco_cod varchar2(50),
    farmaco_nom varchar2(100),
    farmaco_desc varchar2(255),
    farmaco_desc_ct varchar2(250),
    farmaco_tipo number,
    farmaco_ren number,
    farmaco_sit number,
    farmaco_obs varchar2(255)
  );
/
create table ADMIN.aud_farma_farmacos 
  (
    farmaco_id number,
    farmaco_cod varchar2(50),
    farmaco_nom varchar2(100),
    farmaco_desc varchar2(255),
    farmaco_desc_ct varchar2(250),
    farmaco_tipo number,
    farmaco_ren number,
    farmaco_sit number,
    farmaco_obs varchar2(255),
    desp_farmaco_id number,
    desp_farmaco_cod varchar2(50),
    desp_farmaco_nom varchar2(100),
    desp_farmaco_desc varchar2(255),
    desp_farmaco_desc_ct varchar2(250),
    desp_farmaco_tipo number,
    desp_farmaco_ren number,
    desp_farmaco_sit number,
    desp_farmaco_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_far_insumos_suma 
  (
    ins_id_suma number,
    ins_nombre_farmaco_suma number,
    ins_presentacion_farmaco_suma number,
    ins_cantidad_suma number,
    ins_situacion number,
    ins_situacion_existencia number,
    ins_cantidad_existente number,
    ins_id_tabla_egresos number,
    ins_lote_suma varchar2(250),
    ins_fecha_vence_suma date,
    ins_dependencia_suma number,
    desp_ins_id_suma number,
    desp_ins_nombre_farmaco_suma number,
    desp_ins_presentacion_farmaco_suma number,
    desp_ins_cantidad_suma number,
    desp_ins_situacion number,
    desp_ins_situacion_existencia number,
    desp_ins_cantidad_existente number,
    desp_ins_id_tabla_egresos number,
    desp_ins_lote_suma varchar2(250),
    desp_ins_fecha_vence_suma date,
    desp_ins_dependencia_suma number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_far_insumos_datos 
  (
    ins_id number,
    ins_id_ingreso number,
    ins_id_egresos number,
    ins_proveedor number,
    ins_fecha varchar2(250),
    ins_num_factura varchar2(250),
    ins_num_serie varchar2(250),
    ins_forma_pago number,
    ins_fecha_pago varchar2(250),
    ins_totales number(20,5),
    ins_situacion number,
    ins_dependencia number,
    ins_otra_dependencia varchar2(250),
    ins_persona_recibe number,
    ins_persona_entrega number,
    ins_tipo varchar2(250),
    ins_observaciones varchar2(2000),
    desp_ins_id number,
    desp_ins_id_ingreso number,
    desp_ins_id_egresos number,
    desp_ins_proveedor number,
    desp_ins_fecha varchar2(250),
    desp_ins_num_factura varchar2(250),
    desp_ins_num_serie varchar2(250),
    desp_ins_forma_pago number,
    desp_ins_fecha_pago varchar2(250),
    desp_ins_totales number(20,5),
    desp_ins_situacion number,
    desp_ins_dependencia number,
    desp_ins_otra_dependencia varchar2(250),
    desp_ins_persona_recibe number,
    desp_ins_persona_entrega number,
    desp_ins_tipo varchar2(250),
    desp_ins_observaciones varchar2(2000),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_far_insumos_asignados 
  (
    ins_asig_id number,
    ins_asig_ins_id number,
    ins_asig_ins number,
    ins_asig_pres number,
    ins_asig_prec varchar2(250),
    ins_asig_cantidad number,
    ins_asig_total number(20,5),
    ins_asig_situacion number,
    ins_desc_insumo varchar2(250),
    ins_fecha_vence date,
    ins_lote varchar2(250),
    desp_ins_asig_id number,
    desp_ins_asig_ins_id number,
    desp_ins_asig_ins number,
    desp_ins_asig_pres number,
    desp_ins_asig_prec varchar2(250),
    desp_ins_asig_cantidad number,
    desp_ins_asig_total number(20,5),
    desp_ins_asig_situacion number,
    desp_ins_desc_insumo varchar2(250),
    desp_ins_fecha_vence date,
    desp_ins_lote varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sanciones_asc 
  (
    est_orden number,
    est_catalogo number,
    est_horas number,
    est_demeritos number,
    constraint pk_sanciones_asc primary key (est_orden) 
  );
/
create table ADMIN.aud_sanciones_asc 
  (
    est_orden number,
    est_catalogo number,
    est_horas number,
    est_demeritos number,
    desp_est_orden number,
    desp_est_catalogo number,
    desp_est_horas number,
    desp_est_demeritos number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ficha_medica_asc 
  (
    fic_orden number,
    fic_catalogo number,
    fic_desc varchar2(150),
    fic_observacion char(250),
    constraint pk_ficha_medica_asc primary key (fic_orden) 
  );
/
create table ADMIN.aud_ficha_medica_asc 
  (
    fic_orden number,
    fic_catalogo number,
    fic_desc varchar2(150),
    fic_observacion char(250),
    desp_fic_orden number,
    desp_fic_catalogo number,
    desp_fic_desc varchar2(150),
    desp_fic_observacion char(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tiempo_comando_asc 
  (
    com_orden number,
    com_catalogo number,
    com_comando varchar2(250),
    constraint pk_tiempo_comando_asc primary key (com_orden) 
  );
/
create table ADMIN.aud_tiempo_comando_asc 
  (
    com_orden number,
    com_catalogo number,
    com_comando varchar2(250),
    desp_com_orden number,
    desp_com_catalogo number,
    desp_com_comando varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluaciones_perfil_asc 
  (
    e_orden number,
    e_catalogo number,
    e_diagnost number,
    e_fecha date,
    e_puntuacion number(5,2),
    e_estado varchar2(200),
    constraint pk_evaluaciones_perfil_asc primary key (e_orden) 
  );
/
create table ADMIN.aud_evaluaciones_perfil_asc 
  (
    e_orden number,
    e_catalogo number,
    e_diagnost number,
    e_fecha date,
    e_puntuacion number(5,2),
    e_estado varchar2(200),
    desp_e_orden number,
    desp_e_catalogo number,
    desp_e_diagnost number,
    desp_e_fecha date,
    desp_e_puntuacion number(5,2),
    desp_e_estado varchar2(200),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opaf_notas_asc 
  (
    not_orden number,
    not_catalogo number,
    not_fecha date,
    not_promedio number(5,2),
    not_tipo varchar2(1),
    constraint pk_opaf_notas_asc primary key (not_orden) 
  );
/
create table ADMIN.aud_opaf_notas_asc 
  (
    not_orden number,
    not_catalogo number,
    not_fecha date,
    not_promedio number(5,2),
    not_tipo varchar2(1),
    desp_not_orden number,
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_promedio number(5,2),
    desp_not_tipo varchar2(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_evaluacion_asc 
  (
    eva_orden number,
    eva_id number,
    eva_periodo varchar2(15),
    eva_renglon number,
    eva_catalogo number,
    eva_grado number,
    constraint pk_eva_evaluacion_asc primary key (eva_orden) 
  );
/
create table ADMIN.aud_eva_evaluacion_asc 
  (
    eva_orden number,
    eva_id number,
    eva_periodo varchar2(15),
    eva_renglon number,
    eva_catalogo number,
    eva_grado number,
    desp_eva_orden number,
    desp_eva_id number,
    desp_eva_periodo varchar2(15),
    desp_eva_renglon number,
    desp_eva_catalogo number,
    desp_eva_grado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_notas_asc 
  (
    no_orden number,
    no_id number,
    no_factores number,
    no_evaluacion number,
    no_pregunta number,
    no_nota number,
    no_tipo number,
    no_fecha date,
    no_usuario number,
    constraint pk_eva_notas_asc primary key (no_orden) 
  );
/
create table ADMIN.aud_eva_notas_asc 
  (
    no_orden number,
    no_id number,
    no_factores number,
    no_evaluacion number,
    no_pregunta number,
    no_nota number,
    no_tipo number,
    no_fecha date,
    no_usuario number,
    desp_no_orden number,
    desp_no_id number,
    desp_no_factores number,
    desp_no_evaluacion number,
    desp_no_pregunta number,
    desp_no_nota number,
    desp_no_tipo number,
    desp_no_fecha date,
    desp_no_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cursos_asc 
  (
    cur_orden number,
    cur_catalogo number,
    cur_desc_lg varchar2(150),
    cur_fec_inicio date,
    cur_fec_fin date,
    cur_punteo number(4,2),
    cur_curso number,
    constraint pk_cursos_asc primary key (cur_orden) 
  );
/
create table ADMIN.aud_cursos_asc 
  (
    cur_orden number,
    cur_catalogo number,
    cur_desc_lg varchar2(150),
    cur_fec_inicio date,
    cur_fec_fin date,
    cur_punteo number(4,2),
    cur_curso number,
    desp_cur_orden number,
    desp_cur_catalogo number,
    desp_cur_desc_lg varchar2(150),
    desp_cur_fec_inicio date,
    desp_cur_fec_fin date,
    desp_cur_punteo number(4,2),
    desp_cur_curso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.creditos_asc 
  (
    cre_orden number,
    cre_catalogo number,
    cre_fecha date,
    cre_cur_mil number(4,2),
    cre_cur_uni number(4,2),
    cre_cur_cap number(4,2),
    cre_idiomas number(4,2),
    cre_conde number(4,2),
    not_total number(4,2),
    constraint pk_creditos_asc primary key (cre_orden) 
  );
/
create table ADMIN.aud_creditos_asc 
  (
    cre_orden number,
    cre_catalogo number,
    cre_fecha date,
    cre_cur_mil number(4,2),
    cre_cur_uni number(4,2),
    cre_cur_cap number(4,2),
    cre_idiomas number(4,2),
    cre_conde number(4,2),
    not_total number(4,2),
    desp_cre_orden number,
    desp_cre_catalogo number,
    desp_cre_fecha date,
    desp_cre_cur_mil number(4,2),
    desp_cre_cur_uni number(4,2),
    desp_cre_cur_cap number(4,2),
    desp_cre_idiomas number(4,2),
    desp_cre_conde number(4,2),
    desp_not_total number(4,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mper_asc 
  (
    per_catalogo number,
    per_grado number,
    per_arma number,
    per_nom1 varchar2(40),
    per_nom2 varchar2(40),
    per_ape1 varchar2(40),
    per_ape2 varchar2(40),
    per_promocion number,
    per_plaza varchar2(12),
    per_desc_empleo varchar2(200),
    per_fec_nomb date,
    per_dpi varchar2(15),
    per_orden_puesto number,
    constraint pk_mper_asc primary key (per_catalogo) 
  );
/
create table ADMIN.aud_mper_asc 
  (
    per_catalogo number,
    per_grado number,
    per_arma number,
    per_nom1 varchar2(40),
    per_nom2 varchar2(40),
    per_ape1 varchar2(40),
    per_ape2 varchar2(40),
    per_promocion number,
    per_plaza varchar2(12),
    per_desc_empleo varchar2(200),
    per_fec_nomb date,
    per_dpi varchar2(15),
    per_orden_puesto number,
    desp_per_catalogo number,
    desp_per_grado number,
    desp_per_arma number,
    desp_per_nom1 varchar2(40),
    desp_per_nom2 varchar2(40),
    desp_per_ape1 varchar2(40),
    desp_per_ape2 varchar2(40),
    desp_per_promocion number,
    desp_per_plaza varchar2(12),
    desp_per_desc_empleo varchar2(200),
    desp_per_fec_nomb date,
    desp_per_dpi varchar2(15),
    desp_per_orden_puesto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.observaciones_asc 
  (
    obs_orden number,
    obs_catalogo number,
    obs_descripcion varchar2(250),
    constraint pk_observaciones_asc primary key (obs_orden) 
  );
/
create table ADMIN.aud_observaciones_asc 
  (
    obs_orden number,
    obs_catalogo number,
    obs_descripcion varchar2(250),
    desp_obs_orden number,
    desp_obs_catalogo number,
    desp_obs_descripcion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_coordenadas3 
  (
    coo_id number not null ,
    coo_reporte number,
    coo_lat number(16),
    coo_long number(16),
    coo_lugar varchar2(150),
    coo_situacion number,
    constraint pk_coc_coordenadas3 primary key (coo_id) 
  );
/
create table ADMIN.coc_dep_orden 
  (
    dep_ord_codigo number not null ,
    dep_ord_orden number not null ,
    dep_ord_dependencia number not null ,
    dep_ord_situacion number not null 
  );
/
create table ADMIN.coc_operaciones 
  (
    ope_codigo number not null ,
    ope_area_codigo number not null ,
    ope_descripcion varchar2(200) not null ,
    ope_observacion varchar2(230) not null ,
    ope_situacion number not null ,
    constraint pk_coc_operaciones primary key (ope_codigo) 
  );
/
create table ADMIN.coc_personal2 
  (
    per_id number not null ,
    per_reporte number 
        default null,
    per_anio number not null ,
    per_dep number not null ,
    per_tipo number not null ,
    per_cantidad number not null 
  );
/
create table ADMIN.coc_ordenes 
  (
    ord_codigo number not null ,
    ord_referencia varchar2(250) not null ,
    ord_descripcion varchar2(250) not null ,
    ord_situacion number not null 
  );
/
create table ADMIN.coc_proposito 
  (
    prop_codigo number not null ,
    prop_ope_codigo number not null ,
    prop_descripcion varchar2(150) not null ,
    prop_situacion number not null 
  );
/
create table ADMIN.coc_detalle_instituciones 
  (
    det_ins_codigo number not null ,
    det_ins_reporte number,
    det_ins_cod_institucion number,
    det_ins_observacion varchar2(150),
    det_ins_situacion number
  );
/
create table ADMIN.coc_producto_operacion 
  (
    prod_ope_id number not null ,
    prod_ope_producto number,
    prod_ope_operacion number,
    prod_ope_situacion number,
    constraint pk_coc_producto_operacion primary key (prod_ope_id) 
  );
/
create table ADMIN.aud_coc_producto_operacion 
  (
    prod_ope_id number,
    prod_ope_producto number,
    prod_ope_operacion number,
    prod_ope_situacion number,
    desp_prod_ope_id number,
    desp_prod_ope_producto number,
    desp_prod_ope_operacion number,
    desp_prod_ope_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_productos 
  (
    prod_id number not null ,
    prod_descripcion varchar2(75),
    prod_situacion number,
    constraint pk_coc_productos primary key (prod_id) 
  );
/
create table ADMIN.aud_coc_productos 
  (
    prod_id number,
    prod_descripcion varchar2(75),
    prod_situacion number,
    desp_prod_id number,
    desp_prod_descripcion varchar2(75),
    desp_prod_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_coc_coordenadas3 
  (
    coo_id number,
    coo_reporte number 
        default null,
    coo_lat number(20,18) 
        default null,
    coo_long number(20,18) 
        default null,
    coo_lugar varchar2(150) 
        default null,
    coo_situacion number,
    desp_coo_id number,
    desp_coo_reporte number 
        default null,
    desp_coo_lat number(20,18) 
        default null,
    desp_coo_long number(20,18) 
        default null,
    desp_coo_lugar varchar2(150) 
        default null,
    desp_coo_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_evento_per 
  (
    eve_codigo number,
    eve_catalogo number,
    eve_evento number,
    eve_acta char(50),
    eve_situacion number,
    eve_observacion char(100),
    desp_eve_codigo number,
    desp_eve_catalogo number,
    desp_eve_evento number,
    desp_eve_acta char(50),
    desp_eve_situacion number,
    desp_eve_observacion char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_detalle_vehiculos 
  (
    det_veh_codigo number not null ,
    det_veh_reporte number,
    det_veh_catalogo number,
    det_veh_observacion varchar2(150),
    det_veh_situacion number,
    constraint pk_coc_detalle_vehiculos primary key (det_veh_codigo) 
  );
/
create table ADMIN.aud_coc_detalle_vehiculos 
  (
    det_veh_codigo number,
    det_veh_reporte number,
    det_veh_catalogo number,
    det_veh_observacion varchar2(150),
    det_veh_situacion number,
    desp_det_veh_codigo number,
    desp_det_veh_reporte number,
    desp_det_veh_catalogo number,
    desp_det_veh_observacion varchar2(150),
    desp_det_veh_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_penalizaciones 
  (
    id number not null ,
    descripcion varchar2(100),
    valor number,
    situacion number,
    constraint pk_tri_penalizaciones primary key (id) 
  );
/
create table ADMIN.aud_tri_penalizaciones 
  (
    id number,
    descripcion varchar2(100),
    valor number,
    situacion number,
    desp_id number,
    desp_descripcion varchar2(100),
    desp_valor number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_det_penalizacion 
  (
    id number not null ,
    participante number,
    penalizacion number,
    etapa number,
    situacion number,
    constraint pk_tri_det_penalizacion primary key (id) 
  );
/
create table ADMIN.aud_tri_det_penalizacion 
  (
    id number,
    participante number,
    penalizacion number,
    etapa number,
    situacion number,
    desp_id number,
    desp_participante number,
    desp_penalizacion number,
    desp_etapa number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tri_detalle_tiro 
  (
    id number not null ,
    participante number,
    cinco_x number,
    cinco number,
    cuatro number,
    tres number,
    dos number,
    uno number,
    situacion number,
    constraint pk_tri_detalle_tiro primary key (id) 
  );
/
create table ADMIN.aud_tri_detalle_tiro 
  (
    id number,
    participante number,
    cinco_x number,
    cinco number,
    cuatro number,
    tres number,
    dos number,
    uno number,
    situacion number,
    desp_id number,
    desp_participante number,
    desp_cinco_x number,
    desp_cinco number,
    desp_cuatro number,
    desp_tres number,
    desp_dos number,
    desp_uno number,
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ssm_registro_vacuna 
  (
    registro_id number not null ,
    registro_catalogo number,
    registro_vacuna number,
    registro_dosis number,
    registro_fecha date,
    registro_situacion number,
    constraint pk_ssm_registro_vacuna primary key (registro_id) 
  );
/
create table ADMIN.aud_ssm_registro_vacuna 
  (
    registro_id number,
    registro_catalogo number,
    registro_vacuna number,
    registro_dosis number,
    registro_fecha date,
    registro_situacion number,
    desp_registro_id number,
    desp_registro_catalogo number,
    desp_registro_vacuna number,
    desp_registro_dosis number,
    desp_registro_fecha date,
    desp_registro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ssm_vacunas 
  (
    vacuna_id number not null ,
    vacuna_desc varchar2(50),
    vacuna_dosis number,
    vacuna_refuerzo number,
    vacuna_sit number,
    constraint pk_ssm_vacunas primary key (vacuna_id) 
  );
/
create table ADMIN.aud_ssm_vacunas 
  (
    vacuna_id number,
    vacuna_desc varchar2(50),
    vacuna_dosis number,
    vacuna_refuerzo number,
    vacuna_sit number,
    desp_vacuna_id number,
    desp_vacuna_desc varchar2(50),
    desp_vacuna_dosis number,
    desp_vacuna_refuerzo number,
    desp_vacuna_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ssm_validacion_vacuna 
  (
    validacion_id number not null ,
    validacion_registro number,
    validacion_fecha date,
    validacion_catalogo number,
    validacion_situacion number,
    constraint pk_ssm_validacion_vacuna primary key (validacion_id) 
  );
/
create table ADMIN.aud_ssm_validacion_vacuna 
  (
    validacion_id number,
    validacion_registro number,
    validacion_fecha date,
    validacion_catalogo number,
    validacion_situacion number,
    desp_validacion_id number,
    desp_validacion_registro number,
    desp_validacion_fecha date,
    desp_validacion_catalogo number,
    desp_validacion_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dfdes_coop_amat 
  (
    dfcoop_catalogo number not null ,
    dfcoop_codigo number not null ,
    dfcoop_nu_reg number not null ,
    dfcoop_cod_control number not null ,
    dfcoop_tipo_desc char(1) not null ,
    dfcoop_fec_ini date,
    dfcoop_ult_act date,
    dfcoop_fec_cer date,
    dfcoop_monto number(16,2) not null ,
    dfcoop_saldo number(16,2) not null ,
    dfcoop_mensual number(16,2) not null ,
    dfcoop_tot_cuotas number,
    dfcoop_num_cuotas number,
    dfcoop_documen char(6),
    dfcoop_codeudor number,
    dfcoop_nom_bene char(50),
    dfcoop_juz_con char(50) not null ,
    dfcoop_si_no char(1),
    constraint pk_dfdes_coop_amat primary key (dfcoop_juz_con) 
  );
/
create table ADMIN.aud_dfdes_coop_amat 
  (
    dfcoop_catalogo number,
    dfcoop_codigo number,
    dfcoop_nu_reg number,
    dfcoop_cod_control number,
    dfcoop_tipo_desc char(1),
    dfcoop_fec_ini date,
    dfcoop_ult_act date,
    dfcoop_fec_cer date,
    dfcoop_monto number(16,2),
    dfcoop_saldo number(16,2),
    dfcoop_mensual number(16,2),
    dfcoop_tot_cuotas number,
    dfcoop_num_cuotas number,
    dfcoop_documen char(6),
    dfcoop_codeudor number,
    dfcoop_nom_bene char(50),
    dfcoop_juz_con char(50),
    dfcoop_si_no char(1),
    desp_dfcoop_catalogo number,
    desp_dfcoop_codigo number,
    desp_dfcoop_nu_reg number,
    desp_dfcoop_cod_control number,
    desp_dfcoop_tipo_desc char(1),
    desp_dfcoop_fec_ini date,
    desp_dfcoop_ult_act date,
    desp_dfcoop_fec_cer date,
    desp_dfcoop_monto number(16,2),
    desp_dfcoop_saldo number(16,2),
    desp_dfcoop_mensual number(16,2),
    desp_dfcoop_tot_cuotas number,
    desp_dfcoop_num_cuotas number,
    desp_dfcoop_documen char(6),
    desp_dfcoop_codeudor number,
    desp_dfcoop_nom_bene char(50),
    desp_dfcoop_juz_con char(50),
    desp_dfcoop_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mper_firma 
  (
    fir_id number not null ,
    fir_catalogo number not null ,
    fir_rubrica byte not null ,
    fir_situacion number,
    constraint pk_mper_firma primary key (fir_id) 
  );
/
create table ADMIN.aud_mper_firma 
  (
    fir_id number,
    fir_catalogo number,
    fir_rubrica byte,
    fir_situacion number,
    desp_fir_id number,
    desp_fir_catalogo number,
    desp_fir_rubrica byte,
    desp_fir_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_asig_desc 
  (
    asig_desc_id number not null ,
    asig_desc_cat number,
    asig_desc_plaza number,
    asig_desc_monto number(16,2),
    asig_desc_codigo_des number,
    asig_desc_codigo_as number,
    asig_desc_observaciones varchar2(250),
    asig_desc_tipo number,
    asig_desc_situacion number,
    constraint pk_f_asig_desc primary key (asig_desc_id) 
  );
/
create table ADMIN.aud_f_asig_desc 
  (
    asig_desc_id number,
    asig_desc_cat number,
    asig_desc_plaza number,
    asig_desc_monto number(16,2),
    asig_desc_codigo_des number,
    asig_desc_codigo_as number,
    asig_desc_observaciones varchar2(250),
    asig_desc_tipo number,
    asig_desc_situacion number,
    desp_asig_desc_id number,
    desp_asig_desc_cat number,
    desp_asig_desc_plaza number,
    desp_asig_desc_monto number(16,2),
    desp_asig_desc_codigo_des number,
    desp_asig_desc_codigo_as number,
    desp_asig_desc_observaciones varchar2(250),
    desp_asig_desc_tipo number,
    desp_asig_desc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mper_otros 
  (
    oper_catalogo number,
    oper_nit varchar2(16),
    oper_celular_personal number,
    oper_celular_servicio number,
    oper_correo_institucional varchar2(50),
    oper_correo_personal varchar2(50),
    oper_obs varchar2(125),
    oper_desc1 varchar2(100),
    oper_desc2 varchar2(100),
    oper_desc3 varchar2(100),
    desp_oper_catalogo number,
    desp_oper_nit varchar2(16),
    desp_oper_celular_personal number,
    desp_oper_celular_servicio number,
    desp_oper_correo_institucional varchar2(50),
    desp_oper_correo_personal varchar2(50),
    desp_oper_obs varchar2(125),
    desp_oper_desc1 varchar2(100),
    desp_oper_desc2 varchar2(100),
    desp_oper_desc3 varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mper_otros 
  (
    oper_catalogo number not null ,
    oper_nit varchar2(16),
    oper_celular_personal number,
    oper_celular_servicio number,
    oper_correo_institucional varchar2(50),
    oper_correo_personal varchar2(50),
    oper_obs varchar2(125),
    oper_desc1 varchar2(100),
    oper_desc2 varchar2(100),
    oper_desc3 varchar2(100),
    constraint pk_mper_otros primary key (oper_catalogo) 
  );
/
create table ADMIN.sig_tiempo_alimentacion 
  (
    tiempo_codigo number not null ,
    tiempo_descripcion varchar2(10),
    tiempo_situacion number,
    constraint pk_sig_tiempo_alimentacion primary key (tiempo_codigo) 
  );
/
create table ADMIN.aud_sig_tiempo_alimentacion 
  (
    tiempo_codigo number,
    tiempo_descripcion varchar2(10),
    tiempo_situacion number,
    desp_tiempo_codigo number,
    desp_tiempo_descripcion varchar2(10),
    desp_tiempo_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sig_menu 
  (
    menu_codigo number not null ,
    menu_tipo number,
    menu_descripcion varchar2(255),
    menu_situacion number,
    constraint pk_sig_menu primary key (menu_codigo) 
  );
/
create table ADMIN.aud_sig_menu 
  (
    menu_codigo number,
    menu_tipo number,
    menu_descripcion varchar2(255),
    menu_situacion number,
    desp_menu_codigo number,
    desp_menu_tipo number,
    desp_menu_descripcion varchar2(255),
    desp_menu_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sig_programa_alimentacion 
  (
    alim_codigo number not null ,
    alim_menu number,
    alim_fecha date,
   constraint pk_sig_programa_alimentacion primary key (alim_codigo) 
  );
/
create table ADMIN.aud_sig_programa_alimentacion 
  (
    alim_codigo number,
    alim_menu number,
    alim_fecha date,
    desp_alim_codigo number,
    desp_alim_menu number,
    desp_alim_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sig_asignacion 
  (
    asig_codigo number not null ,
    asig_menu number,
    asig_catalogo number,
    asig_fecha date,
    asig_situacion number,
    constraint pk_sig_asignacion primary key (asig_codigo) 
  );
/
create table ADMIN.aud_sig_asignacion 
  (
    asig_codigo number,
    asig_menu number,
    asig_catalogo number,
    asig_fecha date,
    asig_situacion number,
    desp_asig_codigo number,
    desp_asig_menu number,
    desp_asig_catalogo number,
    desp_asig_fecha date,
    desp_asig_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_situacion 
  (
    sit_id number not null ,
    sit_descripcion varchar2(150) not null ,
    sit_situacion number
  );
/
create table ADMIN.aud_municion_situacion 
  (
    sit_id number,
    sit_descripcion varchar2(150),
    sit_situacion number,
    desp_sit_id number,
    desp_sit_descripcion varchar2(150),
    desp_sit_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_organizacion 
  (
    org_id number not null ,
    org_id_dependencia number,
    org_jerarquia number,
    org_nombre varchar2(100),
    org_situacion number,
    constraint primary key (org_id) 
  );
/
create table ADMIN.aud_municion_organizacion 
  (
    org_id number,
    org_id_dependencia number,
    org_jerarquia number,
    org_nombre varchar2(100),
    org_situacion number,
    desp_org_id number,
    desp_org_id_dependencia number,
    desp_org_jerarquia number,
    desp_org_nombre varchar2(100),
    desp_org_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_lote 
  (
    lot_id number not null ,
    lot_descripcion varchar2(150) not null ,
    lot_situacion number
  );
/
create table ADMIN.aud_municion_lote 
  (
    lot_id number,
    lot_descripcion varchar2(150),
    lot_situacion number,
    desp_lot_id number,
    desp_lot_descripcion varchar2(150),
    desp_lot_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_calibre 
  (
    cal_id number not null ,
    cal_descripcion varchar2(150) not null ,
    cal_situacion number
  );
/
create table ADMIN.aud_municion_calibre 
  (
    cal_id number,
    cal_descripcion varchar2(150),
    cal_situacion number,
    desp_cal_id number,
    desp_cal_descripcion varchar2(150),
    desp_cal_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_ingresofab 
  (
    ifab_id number not null ,
    ifab_lote number,
    ifab_calibre number,
    ifab_cantidad number,
    ifab_motivo number,
    ifab_documento varchar2(150),
    ifab_observaciones varchar2(250),
    ifab_movimiento number,
    ifab_fecha TIMESTAMP(0),
    ifab_departamentosalida number,
    ifab_departamento number,
    ifab_catalogo number not null ,
    ifab_catalogosalida number not null ,
    ifab_situacion number
  );
/
create table ADMIN.aud_municion_ingresofab 
  (
    ifab_id number,
    ifab_lote number,
    ifab_calibre number,
    ifab_cantidad number,
    ifab_motivo number,
    ifab_documento varchar2(150),
    ifab_observaciones varchar2(250),
    ifab_movimiento number,
    ifab_fecha TIMESTAMP(0),
    ifab_departamentosalida number,
    ifab_departamento number,
    ifab_catalogo number,
    ifab_catalogosalida number,
    ifab_situacion number,
    desp_ifab_id number,
    desp_ifab_lote number,
    desp_ifab_calibre number,
    desp_ifab_cantidad number,
    desp_ifab_motivo number,
    desp_ifab_documento varchar2(150),
    desp_ifab_observaciones varchar2(250),
    desp_ifab_movimiento number,
    desp_ifab_fecha TIMESTAMP(0),
    desp_ifab_departamentosalida number,
    desp_ifab_departamento number,
    desp_ifab_catalogo number,
    desp_ifab_catalogosalida number,
    desp_ifab_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_bol_asimilado 
  (
    asim_cat_evaluado number not null ,
    asim_anio varchar2(50) not null ,
    asim_cat_evaluador number not null ,
    asim_ceom char(6),
    asim_perfil number not null ,
    asim_pafe number not null ,
    asim_eva1 number,
    asim_eva2 number,
    asim_eva3 number,
    asim_eva4 number,
    asim_demeritos number not null ,
    asim_arrestos number not null ,
    asim_total_salud number not null ,
    asim_total_concep number not null ,
    asim_total number not null ,
    asim_cat_g1 number not null ,
    asim_cat_comte number not null ,
    asim_obs varchar2(250),
    constraint pk_eva_bol_asimilado primary key (asim_cat_evaluado,asim_anio) 
  );
/
create table ADMIN.aud_eva_bol_asimilado 
  (
    asim_cat_evaluado number,
    asim_anio varchar2(50),
    asim_cat_evaluador number,
    asim_ceom char(6),
    asim_perfil number,
    asim_pafe number,
    asim_eva1 number,
    asim_eva2 number,
    asim_eva3 number,
    asim_eva4 number,
    asim_demeritos number,
    asim_arrestos number,
    asim_total_salud number,
    asim_total_concep number,
    asim_total number,
    asim_cat_g1 number,
    asim_cat_comte number,
    asim_obs varchar2(250),
    desp_asim_cat_evaluado number,
    desp_asim_anio varchar2(50),
    desp_asim_cat_evaluador number,
    desp_asim_ceom char(6),
    desp_asim_perfil number,
    desp_asim_pafe number,
    desp_asim_eva1 number,
    desp_asim_eva2 number,
    desp_asim_eva3 number,
    desp_asim_eva4 number,
    desp_asim_demeritos number,
    desp_asim_arrestos number,
    desp_asim_total_salud number,
    desp_asim_total_concep number,
    desp_asim_total number,
    desp_asim_cat_g1 number,
    desp_asim_cat_comte number,
    desp_asim_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_estado 
  (
    est_id number not null ,
    est_descripcion varchar2(75),
    est_situacion number 
        default 1,
    constraint pk_inv_estado primary key (est_id) 
  );
/
create table ADMIN.aud_inv_estado 
  (
    est_id number,
    est_descripcion varchar2(75),
    est_situacion number,
    desp_est_id number,
    desp_est_descripcion varchar2(75),
    desp_est_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_equipo_estado 
  (
    equipo_estado_codigo number not null ,
    equipo_estado_descripcion varchar2(100),
    equipo_estado_detalle_situacion number 
        default 1,
    constraint pk_manto_equipo_estado primary key (equipo_estado_codigo) 
  );
/
create table ADMIN.aud_manto_equipo_estado 
  (
    equipo_estado_codigo number,
    equipo_estado_descripcion varchar2(100),
    equipo_estado_detalle_situacion number,
    desp_equipo_estado_codigo number,
    desp_equipo_estado_descripcion varchar2(100),
    desp_equipo_estado_detalle_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_marca_equipo 
  (
    marca_equipo_codigo number not null ,
    marca_equipo_descripcion varchar2(100),
    marca_equipo_situacion number,
    constraint pk_manto_marca_equipo primary key (marca_equipo_codigo) 
  );
/
create table ADMIN.aud_manto_marca_equipo 
  (
    marca_equipo_codigo number,
    marca_equipo_descripcion varchar2(100),
    marca_equipo_situacion number,
    desp_marca_equipo_codigo number,
    desp_marca_equipo_descripcion varchar2(100),
    desp_marca_equipo_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_tipo_equipo 
  (
    tipo_equipo_codigo number not null ,
    tipo_equipo_descripcion varchar2(100),
    tipo_equipo_detalle_situacion number 
        default 1,
    constraint pk_manto_tipo_equipo primary key (tipo_equipo_codigo) 
  );
/
create table ADMIN.aud_manto_tipo_equipo 
  (
    tipo_equipo_codigo number,
    tipo_equipo_descripcion varchar2(100),
    tipo_equipo_detalle_situacion number,
    desp_tipo_equipo_codigo number,
    desp_tipo_equipo_descripcion varchar2(100),
    desp_tipo_equipo_detalle_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_equipo 
  (
    equipo_codigo number not null ,
    equipo_oficio varchar2(255),
    equipo_dependencia number,
    equipo_motivo varchar2(255),
    equipo_modelo varchar2(50),
    equipo_number varchar2(50),
    equipo_lector_cd varchar2(2) 
        default null,
    equipo_tarjeta_sonido varchar2(2) 
        default null,
    equipo_drivers varchar2(2) 
        default null,
    equipo_tarjeta_grafica varchar2(2) 
        default null,
    equipo_fuente_poder varchar2(2) 
        default null,
    equipo_tipo_disco_duro varchar2(50) 
        default null,
    equipo_capacidad_disco_duro varchar2(50) 
        default null,
    equipo_tipo_memoria_ram varchar2(50) 
        default null,
    equipo_capacidad_memoria_ram varchar2(50) 
        default null,
    equipo_velocidad_memoria_ram varchar2(50) 
        default null,
    equipo_tipo_procesador varchar2(50) 
        default null,
    equipo_velocidad_procesador varchar2(50) 
        default null,
    equipo_targeta_red varchar2(50) 
        default null,
    equipo_tipo_impresora varchar2(50) 
        default null,
    equipo_con_cable varchar2(2),
    equipo_marca number,
    equipo_tipo number,
    equipo_descripcion varchar2(255),
    equipo_estado number,
    equipo_detalle_situacion number 
        default 1,
    constraint pk_manto_equipo primary key (equipo_codigo) 
  );
/
create table ADMIN.aud_manto_equipo 
  (
    equipo_codigo number,
    equipo_oficio varchar2(255),
    equipo_dependencia number,
    equipo_motivo varchar2(255),
    equipo_modelo varchar2(50),
    equipo_number varchar2(50),
    equipo_lector_cd varchar2(2),
    equipo_tarjeta_sonido varchar2(2),
    equipo_drivers varchar2(2),
    equipo_tarjeta_grafica varchar2(2),
    equipo_fuente_poder varchar2(2),
    equipo_tipo_disco_duro varchar2(50),
    equipo_capacidad_disco_duro varchar2(50),
    equipo_tipo_memoria_ram varchar2(50),
    equipo_capacidad_memoria_ram varchar2(50),
    equipo_velocidad_memoria_ram varchar2(50),
    equipo_tipo_procesador varchar2(50),
    equipo_velocidad_procesador varchar2(50),
    equipo_targeta_red varchar2(50),
    equipo_tipo_impresora varchar2(50),
    equipo_con_cable varchar2(2),
    equipo_marca number,
    equipo_tipo number,
    equipo_descripcion varchar2(255),
    equipo_estado number,
    equipo_detalle_situacion number,
    desp_equipo_codigo number,
    desp_equipo_oficio varchar2(255),
    desp_equipo_dependencia number,
    desp_equipo_motivo varchar2(255),
    desp_equipo_modelo varchar2(50),
    desp_equipo_number varchar2(50),
    desp_equipo_lector_cd varchar2(2),
    desp_equipo_tarjeta_sonido varchar2(2),
    desp_equipo_drivers varchar2(2),
    desp_equipo_tarjeta_grafica varchar2(2),
    desp_equipo_fuente_poder varchar2(2),
    desp_equipo_tipo_disco_duro varchar2(50),
    desp_equipo_capacidad_disco_duro varchar2(50),
    desp_equipo_tipo_memoria_ram varchar2(50),
    desp_equipo_capacidad_memoria_ram varchar2(50),
    desp_equipo_velocidad_memoria_ram varchar2(50),
    desp_equipo_tipo_procesador varchar2(50),
    desp_equipo_velocidad_procesador varchar2(50),
    desp_equipo_targeta_red varchar2(50),
    desp_equipo_tipo_impresora varchar2(50),
    desp_equipo_con_cable varchar2(2),
    desp_equipo_marca number,
    desp_equipo_tipo number,
    desp_equipo_descripcion varchar2(255),
    desp_equipo_estado number,
    desp_equipo_detalle_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_entrega 
  (
    ent_codigo number not null ,
    ent_fecha TIMESTAMP(0) 
        default current year to minute,
    ent_usuario_catalogo number,
    ent_usuario_numero number,
    ent_tecnico_catalogo number,
    ent_equipo_codigo number,
    ent_detalle_situacion number 
        default 1,
    constraint pk_manto_entrega primary key (ent_codigo) 
  );
/
create table ADMIN.aud_manto_entrega 
  (
    ent_codigo number,
    ent_fecha TIMESTAMP(0) 
        default current year to minute,
    ent_usuario_catalogo number,
    ent_usuario_numero number,
    ent_tecnico_catalogo number,
    ent_equipo_codigo number,
    ent_detalle_situacion number,
    desp_ent_codigo number,
    desp_ent_fecha TIMESTAMP(0) 
        default current year to minute,
    desp_ent_usuario_catalogo number,
    desp_ent_usuario_numero number,
    desp_ent_tecnico_catalogo number,
    desp_ent_equipo_codigo number,
    desp_ent_detalle_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_solicitud 
  (
    sol_codigo number not null ,
    sol_fecha TIMESTAMP(0) 
        default current year to minute,
    sol_usuario_catalogo number,
    sol_usuario_telefono number,
    sol_tecnico_catalogo number,
    sol_observacion varchar2(255),
    sol_detalle_situacion number 
        default 1,
    sol_equipo_codigo number,
    constraint pk_manto_solicitud primary key (sol_codigo) 
  );
/
create table ADMIN.aud_manto_solicitud 
  (
    sol_codigo number,
    sol_fecha TIMESTAMP(0) 
        default current year to minute,
    sol_usuario_catalogo number,
    sol_usuario_telefono number,
    sol_tecnico_catalogo number,
    sol_observacion varchar2(255),
    sol_detalle_situacion number,
    sol_equipo_codigo number,
    desp_sol_codigo number,
    desp_sol_fecha TIMESTAMP(0) 
        default current year to minute,
    desp_sol_usuario_catalogo number,
    desp_sol_usuario_telefono number,
    desp_sol_tecnico_catalogo number,
    desp_sol_observacion varchar2(255),
    desp_sol_detalle_situacion number,
    desp_sol_equipo_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_reparacion 
  (
    rep_codigo number not null ,
    rep_fecha TIMESTAMP(0) 
        default current year to minute,
    rep_tecnico_catalogo number,
    rep_descripcion varchar2(255),
    rep_notificacion varchar2(255),
    rep_detalle_situacion number 
        default 1,
    rep_equipo_codigo number,
    constraint pk_manto_reparacion primary key (rep_codigo) 
  );
/
create table ADMIN.aud_manto_reparacion 
  (
    rep_codigo number,
    rep_fecha TIMESTAMP(0) 
        default current year to minute,
    rep_tecnico_catalogo number,
    rep_descripcion varchar2(255),
    rep_notificacion varchar2(255),
    rep_detalle_situacion number,
    rep_equipo_codigo number,
    desp_rep_codigo number,
    desp_rep_fecha TIMESTAMP(0) 
        default current year to minute,
    desp_rep_tecnico_catalogo number,
    desp_rep_descripcion varchar2(255),
    desp_rep_notificacion varchar2(255),
    desp_rep_detalle_situacion number,
    desp_rep_equipo_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.manto_equipo_historial 
  (
    equi_his_codigo number not null ,
    equi_his_codigo_equipo number,
    equi_his_codigo_solicitud number,
    equi_his_fecha TIMESTAMP(0) 
        default current year to minute,
    equi_his_estado number,
    equi_his_situacion number 
        default 1,
    constraint pk_manto_equipo_historial primary key (equi_his_codigo) 
  );
/
create table ADMIN.aud_manto_equipo_historial 
  (
    equi_his_codigo number,
    equi_his_codigo_equipo number,
    equi_his_codigo_solicitud number,
    equi_his_fecha TIMESTAMP(0) 
        default current year to minute,
    equi_his_estado number,
    equi_his_situacion number,
    desp_equi_his_codigo number,
    desp_equi_his_codigo_equipo number,
    desp_equi_his_codigo_solicitud number,
    desp_equi_his_fecha TIMESTAMP(0) 
        default current year to minute,
    desp_equi_his_estado number,
    desp_equi_his_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_almacencomando 
  (
    acom_id number not null ,
    acom_lote number,
    acom_calibre number,
    acom_cantidad number,
    acom_motivo number,
    acom_documento varchar2(150),
    acom_observaciones varchar2(250),
    acom_movimiento number,
    acom_fecha TIMESTAMP(0) not null ,
    acom_departamentosalida number,
    acom_departamento number,
    acom_catalogo number,
    acom_catalogosalida number,
    acom_situacion number
  );
/
create table ADMIN.aud_municion_almacencomando 
  (
    acom_id number,
    acom_lote number,
    acom_calibre number,
    acom_cantidad number,
    acom_motivo number,
    acom_documento varchar2(150),
    acom_observaciones varchar2(250),
    acom_movimiento number,
    acom_fecha TIMESTAMP(0),
    acom_departamentosalida number,
    acom_departamento number,
    acom_catalogo number,
    acom_catalogosalida number,
    acom_situacion number,
    desp_acom_id number,
    desp_acom_lote number,
    desp_acom_calibre number,
    desp_acom_cantidad number,
    desp_acom_motivo number,
    desp_acom_documento varchar2(150),
    desp_acom_observaciones varchar2(250),
    desp_acom_movimiento number,
    desp_acom_fecha TIMESTAMP(0),
    desp_acom_departamentosalida number,
    desp_acom_departamento number,
    desp_acom_catalogo number,
    desp_acom_catalogosalida number,
    desp_acom_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_batallon 
  (
    bat_id number not null ,
    bat_lote number,
    bat_calibre number,
    bat_cantidad number,
    bat_motivo number,
    bat_documento varchar2(150),
    bat_observaciones varchar2(250),
    bat_movimiento number,
    bat_fecha TIMESTAMP(0) not null ,
    bat_departamento number,
    bat_batallon number,
    bat_catalogo number,
    bat_catalogosalida number,
    bat_situacion number
  );
/
create table ADMIN.aud_municion_batallon 
  (
    bat_id number,
    bat_lote number,
    bat_calibre number,
    bat_cantidad number,
    bat_motivo number,
    bat_documento varchar2(150),
    bat_observaciones varchar2(250),
    bat_movimiento number,
    bat_fecha TIMESTAMP(0),
    bat_departamento number,
    bat_batallon number,
    bat_catalogo number,
    bat_catalogosalida number,
    bat_situacion number,
    desp_bat_id number,
    desp_bat_lote number,
    desp_bat_calibre number,
    desp_bat_cantidad number,
    desp_bat_motivo number,
    desp_bat_documento varchar2(150),
    desp_bat_observaciones varchar2(250),
    desp_bat_movimiento number,
    desp_bat_fecha TIMESTAMP(0),
    desp_bat_departamento number,
    desp_bat_batallon number,
    desp_bat_catalogo number,
    desp_bat_catalogosalida number,
    desp_bat_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.municion_ingresoalmacen 
  (
    ialm_id number not null ,
    ialm_lote number,
    ialm_calibre number,
    ialm_cantidad number,
    ialm_motivo number,
    ialm_documento varchar2(150),
    ialm_observaciones varchar2(250),
    ialm_movimiento number,
    ialm_fecha TIMESTAMP(0),
    ialm_departamentosalida number,
    ialm_departamento number,
    ialm_catalogo number,
    ialm_catalogosalida number,
    ialm_situacion number
  );
/
create table ADMIN.aud_municion_ingresoalmacen 
  (
    ialm_id number,
    ialm_lote number,
    ialm_calibre number,
    ialm_cantidad number,
    ialm_motivo number,
    ialm_documento varchar2(150),
    ialm_observaciones varchar2(250),
    ialm_movimiento number,
    ialm_fecha TIMESTAMP(0),
    ialm_departamentosalida number,
    ialm_departamento number,
    ialm_catalogo number,
    ialm_catalogosalida number,
    ialm_situacion number,
    desp_ialm_id number,
    desp_ialm_lote number,
    desp_ialm_calibre number,
    desp_ialm_cantidad number,
    desp_ialm_motivo number,
    desp_ialm_documento varchar2(150),
    desp_ialm_observaciones varchar2(250),
    desp_ialm_movimiento number,
    desp_ialm_fecha TIMESTAMP(0),
    desp_ialm_departamentosalida number,
    desp_ialm_departamento number,
    desp_ialm_catalogo number,
    desp_ialm_catalogosalida number,
    desp_ialm_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_cat_eliminado_r22 
  (
    fin_elim_id number not null ,
    fin_elim_cat_finanzas number,
    fin_elim_fecha date,
    fin_elim_observaciones varchar2(155),
    fin_elim_cat_quitado number,
    constraint pk_f_cat_eliminado_r22 primary key (fin_elim_id) 
  );
/
create table ADMIN.aud_f_cat_eliminado_r22 
  (
    fin_elim_id number,
    fin_elim_cat_finanzas number,
    fin_elim_fecha date,
    fin_elim_observaciones varchar2(155),
    fin_elim_cat_quitado number,
    desp_fin_elim_id number,
    desp_fin_elim_cat_finanzas number,
    desp_fin_elim_fecha date,
    desp_fin_elim_observaciones varchar2(155),
    desp_fin_elim_cat_quitado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_almacenes 
  (
    alma_id number not null ,
    alma_nombre varchar2(255) not null ,
    alma_clase number,
    alma_descripcion varchar2(255),
    alma_unidad number not null ,
    alma_situacion number 
        default 1,
    constraint pk_inv_almacenes primary key (alma_id) 
  );
/
create table ADMIN.aud_inv_almacenes 
  (
    alma_id number,
    alma_nombre varchar2(255),
    alma_clase number,
    alma_descripcion varchar2(255),
    alma_unidad number,
    alma_situacion number,
    desp_alma_id number,
    desp_alma_nombre varchar2(255),
    desp_alma_clase number,
    desp_alma_descripcion varchar2(255),
    desp_alma_unidad number,
    desp_alma_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_movimientos 
  (
    mov_id number not null ,
    mov_tipo_mov char(1),
    mov_tipo_trans char(1),
    mov_alma_id number not null ,
    mov_perso_entrega number not null ,
    mov_perso_recibe number not null ,
    mov_perso_respon number,
    mov_fecha date not null ,
    mov_proce_destino number,
    mov_descrip varchar2(255),
    mov_situacion number 
        default 1,
    constraint pk_inv_movimientos primary key (mov_id) 
  );
/
create table ADMIN.aud_inv_movimientos 
  (
    mov_id number,
    mov_tipo_mov char(1),
    mov_tipo_trans char(1),
    mov_alma_id number,
    mov_perso_entrega number,
    mov_perso_recibe number,
    mov_perso_respon number,
    mov_fecha date,
    mov_proce_destino number,
    mov_descrip varchar2(255),
    mov_situacion number,
    desp_mov_id number,
    desp_mov_tipo_mov char(1),
    desp_mov_tipo_trans char(1),
    desp_mov_alma_id number,
    desp_mov_perso_entrega number,
    desp_mov_perso_recibe number,
    desp_mov_perso_respon number,
    desp_mov_fecha date,
    desp_mov_proce_destino number,
    desp_mov_descrip varchar2(255),
    desp_mov_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_producto 
  (
    pro_id number not null ,
    pro_clase_id number not null ,
    pro_nom_articulo varchar2(255) not null ,
    pro_descripcion varchar2,
    pro_situacion number 
        default 1,
    constraint pk_inv_producto primary key (pro_id) 
  );
/
create table ADMIN.aud_inv_producto 
  (
    pro_id number,
    pro_clase_id number,
    pro_nom_articulo varchar2(255),
    pro_descripcion varchar2,
    pro_situacion number,
    desp_pro_id number,
    desp_pro_clase_id number,
    desp_pro_nom_articulo varchar2(255),
    desp_pro_descripcion varchar2,
    desp_pro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_uni_med 
  (
    uni_id number not null ,
    uni_nombre varchar2(255),
    uni_clase number,
    uni_situacion number 
        default 1,
    constraint pk_inv_uni_med primary key (uni_id) 
  );
/
create table ADMIN.aud_inv_uni_med 
  (
    uni_id number,
    uni_nombre varchar2(255),
    uni_clase number,
    uni_situacion number,
    desp_uni_id number,
    desp_uni_nombre varchar2(255),
    desp_uni_clase number,
    desp_uni_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_guarda_almacen 
  (
    guarda_id number not null ,
    guarda_catalogo number not null ,
    guarda_almacen number not null ,
    guarda_situacion number 
        default 1,
    constraint pk_inv_guarda_almacen primary key (guarda_id) 
  );
/
create table ADMIN.aud_inv_guarda_almacen 
  (
    guarda_id number,
    guarda_catalogo number,
    guarda_almacen number,
    guarda_situacion number,
    desp_guarda_id number,
    desp_guarda_catalogo number,
    desp_guarda_almacen number,
    desp_guarda_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_deta_movimientos 
  (
    det_id number not null ,
    det_mov_id number not null ,
    det_pro_id number not null ,
    det_uni_med number not null ,
    det_lote varchar2(50),
    det_fecha_vence date,
    det_estado number,
    det_cantidad number(10,2) not null ,
    det_cantidad_existente number(10,2),
    det_cantidad_lote number(10,2),
    det_observaciones varchar2,
    det_situacion number 
        default 1,
    constraint pk_inv_deta_movimientos primary key (det_id) 
  );
/
create table ADMIN.aud_inv_deta_movimientos 
  (
    det_id number,
    det_mov_id number,
    det_pro_id number,
    det_uni_med number,
    det_lote varchar2(50),
    det_fecha_vence date,
    det_estado number,
    det_cantidad number(10,2),
    det_cantidad_existente number(10,2),
    det_cantidad_lote number(10,2),
    det_observaciones varchar2,
    det_situacion number,
    desp_det_id number,
    desp_det_mov_id number,
    desp_det_pro_id number,
    desp_det_uni_med number,
    desp_det_lote varchar2(50),
    desp_det_fecha_vence date,
    desp_det_estado number,
    desp_det_cantidad number(10,2),
    desp_det_cantidad_existente number(10,2),
    desp_det_cantidad_lote number(10,2),
    desp_det_observaciones varchar2,
    desp_det_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.firma_registro 
  (
    fir_reg_id number not null ,
    fir_reg_cat number,
    fir_reg_tipo number,
    fir_reg_sit number,
    constraint pk_firma_registro primary key (fir_reg_id) 
  );
/
create table ADMIN.aud_firma_registro 
  (
    fir_reg_id number,
    fir_reg_cat number,
    fir_reg_tipo number,
    fir_reg_sit number,
    desp_fir_reg_id number,
    desp_fir_reg_cat number,
    desp_fir_reg_tipo number,
    desp_fir_reg_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_unidad_organica 
  (
    uni_org_codigo number not null ,
    uni_org_descripcion varchar2(50) not null ,
    uni_org_situacion number not null 
  );
/
create table ADMIN.municion_cuatrimestral 
  (
    cuat_id number not null ,
    cuat_lote number,
    cuat_calibre number,
    cuat_cantidad number,
    cuat_motivo number,
    cuat_documento varchar2(150),
    cuat_observaciones varchar2(250),
    cuat_movimiento number,
    cuat_fecha TIMESTAMP(0) not null ,
    cuat_fecharegistro TIMESTAMP(0) not null ,
    cuat_departamento number,
    cuat_batallon number,
    cuat_catalogoasignado number,
    cuat_catalogoasignadopor number,
    cuat_catalogoregistradopor number,
    cuat_situacion number
  );
/
create table ADMIN.aud_municion_cuatrimestral 
  (
    cuat_id number,
    cuat_lote number,
    cuat_calibre number,
    cuat_cantidad number,
    cuat_motivo number,
    cuat_documento varchar2(150),
    cuat_observaciones varchar2(250),
    cuat_movimiento number,
    cuat_fecha TIMESTAMP(0),
    cuat_fecharegistro TIMESTAMP(0),
    cuat_departamento number,
    cuat_batallon number,
    cuat_catalogoasignado number,
    cuat_catalogoasignadopor number,
    cuat_catalogoregistradopor number,
    cuat_situacion number,
    desp_cuat_id number,
    desp_cuat_lote number,
    desp_cuat_calibre number,
    desp_cuat_cantidad number,
    desp_cuat_motivo number,
    desp_cuat_documento varchar2(150),
    desp_cuat_observaciones varchar2(250),
    desp_cuat_movimiento number,
    desp_cuat_fecha TIMESTAMP(0),
    desp_cuat_fecharegistro TIMESTAMP(0),
    desp_cuat_departamento number,
    desp_cuat_batallon number,
    desp_cuat_catalogoasignado number,
    desp_cuat_catalogoasignadopor number,
    desp_cuat_catalogoregistradopor number,
    desp_cuat_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.apresto_asesor 
  (
    ase_id number not null ,
    ase_catalogo number,
    ase_funcion number,
    ase_curriculum varchar2(255),
    ase_situacion number,
    constraint pk_apresto_asesor primary key (ase_id) 
  );
/
create table ADMIN.apresto_asignacion_dependencia 
  (
    asig_id number not null ,
    asig_dep number,
    asig_asesor number,
    asig_situacion number,
    constraint pk_apresto_asignacion_dependencia primary key (asig_id) 
  );
/
create table ADMIN.apresto_ambito 
  (
    amb_id number not null ,
    amb_ambito varchar2(75),
    amb_situacion number 
        default 1,
    constraint pk_apresto_ambito primary key (amb_id) 
  );
/
create table ADMIN.apresto_modalidad 
  (
    mod_id number not null ,
    mod_modalidad varchar2(75),
    mod_situacion number 
        default 1,
    constraint pk_apresto_modalidad primary key (mod_id) 
  );
/
create table ADMIN.apresto_asigna_tarea 
  (
    asig_tar_id number not null ,
    asig_tar_tarea number not null ,
    asig_tar_asesor number not null ,
    asig_tar_fecha TIMESTAMP(0),
    asig_tar_situacion number 
        default 1,
    constraint pk_apresto_asigna_tarea primary key (asig_tar_id) 
  );
/
create table ADMIN.apresto_respuesta 
  (
    res_id number not null ,
    res_asignacion number not null ,
    res_documento varchar2(255),
    res_fecha TIMESTAMP(0),
    res_situacion number 
        default 1,
    constraint pk_apresto_respuesta primary key (res_id) 
  );
/
create table ADMIN.aud_apresto_asesor 
  (
    ase_id number,
    ase_catalogo number,
    ase_funcion number,
    ase_curriculum varchar2(255),
    ase_situacion number,
    desp_ase_id number,
    desp_ase_catalogo number,
    desp_ase_funcion number,
    desp_ase_curriculum varchar2(255),
    desp_ase_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_asignacion_dependencia 
  (
    asig_id number,
    asig_dep number,
    asig_asesor number,
    asig_situacion number,
    desp_asig_id number,
    desp_asig_dep number,
    desp_asig_asesor number,
    desp_asig_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_ambito 
  (
    amb_id number,
    amb_ambito varchar2(75),
    amb_situacion number,
    desp_amb_id number,
    desp_amb_ambito varchar2(75),
    desp_amb_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_modalidad 
  (
    mod_id number,
    mod_modalidad varchar2(75),
    mod_situacion number,
    desp_mod_id number,
    desp_mod_modalidad varchar2(75),
    desp_mod_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_asigna_tarea 
  (
    asig_tar_id number,
    asig_tar_tarea number,
    asig_tar_asesor number,
    asig_tar_fecha TIMESTAMP(0),
    asig_tar_situacion number,
    desp_asig_tar_id number,
    desp_asig_tar_tarea number,
    desp_asig_tar_asesor number,
    desp_asig_tar_fecha TIMESTAMP(0),
    desp_asig_tar_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_respuesta 
  (
    res_id number,
    res_asignacion number,
    res_documento varchar2(255),
    res_fecha TIMESTAMP(0),
    res_situacion number,
    desp_res_id number,
    desp_res_asignacion number,
    desp_res_documento varchar2(255),
    desp_res_fecha TIMESTAMP(0),
    desp_res_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_asig_personal 
  (
    asi_id number not null ,
    asi_operacion number,
    asi_catalogo number,
    asi_sit number,
    constraint pk_codemar_asig_personal primary key (asi_id) 
  );
/
create table ADMIN.aud_codemar_asig_personal 
  (
    asi_id number,
    asi_operacion number,
    asi_catalogo number,
    asi_sit number,
    desp_asi_id number,
    desp_asi_operacion number,
    desp_asi_catalogo number,
    desp_asi_sit number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_tipos_operaciones 
  (
    tipo_id number not null ,
    tipo_desc varchar2(50),
    tipo_situacion number,
    constraint pk_codemar_tipos_operaciones primary key (tipo_id) 
  );
/
create table ADMIN.aud_codemar_tipos_operaciones 
  (
    tipo_id number,
    tipo_desc varchar2(50),
    tipo_situacion number,
    desp_tipo_id number,
    desp_tipo_desc varchar2(50),
    desp_tipo_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_operaciones 
  (
    ope_id number not null ,
    ope_tipo number,
    ope_fecha_zarpe TIMESTAMP(0),
    ope_fecha_atraque TIMESTAMP(0),
    ope_situacion varchar2(8192),
    ope_mision varchar2(8192),
    ope_ejecucion varchar2(8192),
    ope_identificador varchar2(30),
    ope_dependencia number,
    ope_reutilizar number,
    ope_distancia number(10,2),
    ope_nacional char(1) 
        default 'N',
    ope_sit number,
    ope_reservados number,
    constraint pk_codemar_operaciones primary key (ope_id) 
  );
/
create table ADMIN.aud_codemar_operaciones 
  (
    ope_id number,
    ope_tipo number,
    ope_fecha_zarpe TIMESTAMP(0),
    ope_fecha_atraque TIMESTAMP(0),
    ope_situacion varchar2,
    ope_mision varchar2,
    ope_ejecucion varchar2,
    ope_identificador varchar2(30),
    ope_dependencia number,
    ope_reutilizar number,
    ope_distancia number(10,2),
    ope_nacional char(1),
    ope_sit number,
    ope_reservados number,
    desp_ope_id number,
    desp_ope_tipo number,
    desp_ope_fecha_zarpe TIMESTAMP(0),
    desp_ope_fecha_atraque TIMESTAMP(0),
    desp_ope_situacion varchar2,
    desp_ope_mision varchar2,
    desp_ope_ejecucion varchar2,
    desp_ope_identificador varchar2(30),
    desp_ope_dependencia number,
    desp_ope_reutilizar number,
    desp_ope_distancia number(10,2),
    desp_ope_nacional char(1),
    desp_ope_sit number,
    desp_ope_reservados number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_tipos_embarcaciones 
  (
    tipo_id number not null ,
    tipo_desc varchar2(50),
    tipo_situacion number,
    constraint pk_codemar_tipos_embarcaciones primary key (tipo_id) 
  );
/
create table ADMIN.aud_codemar_tipos_embarcaciones 
  (
    tipo_id number,
    tipo_desc varchar2(50),
    tipo_situacion number,
    desp_tipo_id number,
    desp_tipo_desc varchar2(50),
    desp_tipo_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_embarcaciones 
  (
    emb_id number not null ,
    emb_nombre varchar2(50),
    emb_tipo number,
    emb_situacion number,
    constraint pk_codemar_embarcaciones primary key (emb_id) 
  );
/
create table ADMIN.aud_codemar_embarcaciones 
  (
    emb_id number,
    emb_nombre varchar2(50),
    emb_tipo number,
    emb_situacion number,
    desp_emb_id number,
    desp_emb_nombre varchar2(50),
    desp_emb_tipo number,
    desp_emb_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_informacion 
  (
    info_id number not null ,
    info_operacion number,
    info_descripcion varchar2,
    info_situacion number,
    constraint pk_codemar_informacion primary key (info_id) 
  );
/
create table ADMIN.aud_codemar_informacion 
  (
    info_id number,
    info_operacion number,
    info_descripcion varchar2,
    info_situacion number,
    desp_info_id number,
    desp_info_operacion number,
    desp_info_descripcion varchar2,
    desp_info_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_asig_unidad 
  (
    asi_id number not null ,
    asi_operacion number,
    asi_unidad number,
    asi_sit number,
    constraint pk_codemar_asig_unidad primary key (asi_id) 
  );
/
create table ADMIN.aud_codemar_asig_unidad 
  (
    asi_id number,
    asi_operacion number,
    asi_unidad number,
    asi_sit number,
    desp_asi_id number,
    desp_asi_operacion number,
    desp_asi_unidad number,
    desp_asi_sit number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_medios_comunicacion 
  (
    medio_id number not null ,
    medio_desc varchar2(50),
    medio_situacion number,
    constraint pk_codemar_medios_comunicacion primary key (medio_id) 
  );
/
create table ADMIN.aud_codemar_medios_comunicacion 
  (
    medio_id number,
    medio_desc varchar2(50),
    medio_situacion number,
    desp_medio_id number,
    desp_medio_desc varchar2(50),
    desp_medio_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_codemar_motores 
  (
    mot_id number,
    mot_serie varchar2(50),
    mot_embarcacion number,
    mot_situacion number,
    desp_mot_id number,
    desp_mot_serie varchar2(50),
    desp_mot_embarcacion number,
    desp_mot_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_motores 
  (
    mot_id number not null ,
    mot_serie varchar2(50),
    mot_embarcacion number,
    mot_situacion number,
    constraint pk_codemar_motores primary key (mot_id) 
  );
/
create table ADMIN.codemar_novedades 
  (
    nov_id number not null ,
    nov_operacion number,
    nov_fechahora TIMESTAMP(0),
    nov_novedad varchar2,
    nov_situacion number,
    constraint pk_codemar_novedades primary key (nov_id) 
  );
/
create table ADMIN.aud_codemar_novedades 
  (
    nov_id number,
    nov_operacion number,
    nov_fechahora TIMESTAMP(0),
    nov_novedad varchar2,
    nov_situacion number,
    desp_nov_id number,
    desp_nov_operacion number,
    desp_nov_fechahora TIMESTAMP(0),
    desp_nov_novedad varchar2,
    desp_nov_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_receptor_comunicacion 
  (
    rec_id number not null ,
    rec_desc varchar2(50),
    rec_situacion number,
    constraint pk_codemar_receptor_comunicacion primary key (rec_id) 
  );
/
create table ADMIN.aud_codemar_receptor_comunicacion 
  (
    rec_id number,
    rec_desc varchar2(50),
    rec_situacion number,
    desp_rec_id number,
    desp_rec_desc varchar2(50),
    desp_rec_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_recomendaciones 
  (
    rec_id number not null ,
    rec_operacion number,
    rec_recomendacion varchar2,
    rec_situacion number,
    constraint pk_codemar_recomendaciones primary key (rec_id) 
  );
/
create table ADMIN.aud_codemar_recomendaciones 
  (
    rec_id number,
    rec_operacion number,
    rec_recomendacion varchar2,
    rec_situacion number,
    desp_rec_id number,
    desp_rec_operacion number,
    desp_rec_recomendacion varchar2,
    desp_rec_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_unidades_medida 
  (
    uni_id number not null ,
    uni_desc varchar2(50),
    uni_situacion number,
    constraint pk_codemar_unidades_medida primary key (uni_id) 
  );
/
create table ADMIN.aud_codemar_unidades_medida 
  (
    uni_id number,
    uni_desc varchar2(50),
    uni_situacion number,
    desp_uni_id number,
    desp_uni_desc varchar2(50),
    desp_uni_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_trabajo_motores 
  (
    tra_id number not null ,
    tra_operacion number,
    tra_motor number,
    tra_horas number,
    tra_rpm number,
    tra_fallas varchar2(150),
    tra_observacion varchar2(150),
    tra_situacion number,
    constraint pk_codemar_trabajo_motores primary key (tra_id) 
  );
/
create table ADMIN.aud_codemar_trabajo_motores 
  (
    tra_id number,
    tra_operacion number,
    tra_motor number,
    tra_horas number,
    tra_rpm number,
    tra_fallas varchar2(150),
    tra_observacion varchar2(150),
    tra_situacion number,
    desp_tra_id number,
    desp_tra_operacion number,
    desp_tra_motor number,
    desp_tra_horas number,
    desp_tra_rpm number,
    desp_tra_fallas varchar2(150),
    desp_tra_observacion varchar2(150),
    desp_tra_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_clasificacion 
  (
    id number not null ,
    desc varchar2(30),
    situacion number not null ,
    constraint pk_codemar_clasificacion primary key (id) 
  );
/
create table ADMIN.aud_codemar_clasificacion 
  (
    id number,
    desc varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_comunicaciones 
  (
    com_id number not null ,
    com_operacion number,
    com_medio number,
    com_receptor number,
    com_calidad number,
    com_observacion varchar2(150),
    com_situacion number,
    constraint pk_codemar_comunicaciones primary key (com_id) 
  );
/
create table ADMIN.aud_codemar_comunicaciones 
  (
    com_id number,
    com_operacion number,
    com_medio number,
    com_receptor number,
    com_calidad number,
    com_observacion varchar2(150),
    com_situacion number,
    desp_com_id number,
    desp_com_operacion number,
    desp_com_medio number,
    desp_com_receptor number,
    desp_com_calidad number,
    desp_com_observacion varchar2(150),
    desp_com_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_derrota 
  (
    der_id number not null ,
    der_ope number,
    der_latitud number(12,9),
    der_longitud number(12,9),
    der_fecha TIMESTAMP(0),
    der_situacion number,
    constraint pk_codemar_derrota primary key (der_id) 
  );
/
create table ADMIN.aud_codemar_derrota 
  (
    der_id number,
    der_ope number,
    der_latitud number(12,9),
    der_longitud number(12,9),
    der_fecha TIMESTAMP(0),
    der_situacion number,
    desp_der_id number,
    desp_der_ope number,
    desp_der_latitud number(12,9),
    desp_der_longitud number(12,9),
    desp_der_fecha TIMESTAMP(0),
    desp_der_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_insumos_operaciones 
  (
    insumo_id number not null ,
    insumo_desc varchar2(50),
    insumo_unidad number,
    insumo_color char(7) 
        default '#000000',
    insumo_situacion number,
    constraint pk_codemar_insumos_operaciones primary key (insumo_id) 
  );
/
create table ADMIN.aud_codemar_insumos_operaciones 
  (
    insumo_id number,
    insumo_desc varchar2(50),
    insumo_unidad number,
    insumo_color char(7),
    insumo_situacion number,
    desp_insumo_id number,
    desp_insumo_desc varchar2(50),
    desp_insumo_unidad number,
    desp_insumo_color char(7),
    desp_insumo_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.codemar_internacionales 
  (
    int_ope number not null ,
    int_pais number,
    int_documento varchar2,
    int_situacion number 
        default 1,
    constraint pk_codemar_internacionales primary key (int_ope) 
  );
/
create table ADMIN.aud_codemar_internacionales 
  (
    int_ope number,
    int_pais number,
    int_documento varchar2,
    int_situacion number,
    desp_int_ope number,
    desp_int_pais number,
    desp_int_documento varchar2,
    desp_int_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_historial 
  (
    hist_id number not null ,
    hist_catalogo number,
    hist_grado number,
    hist_arma number,
    hist_nom_certificado varchar2(100),
    hist_codigo varchar2(10),
    hist_observaciones varchar2,
    hist_fecha_ascenso date,
    hist_fecha_inicio date,
    hist_fecha_fin date,
    hist_cap_profesional number(10,2),
    hist_des_profesional number(10,2),
    hist_conducta_militar number(10,2),
    hist_aptitud_fisica number(10,2),
    hist_per_biofisico number(10,2),
    hist_creditos number(10,2),
    hist_ficha_medica varchar2(10),
    hist_total_nota number(10,2),
    hist_notacurso number(10,2),
    hist_notades number(10,2),
    hist_notapafe number(10,2),
    hist_demeritos number,
    hist_diagnostico varchar2(50),
    hist_dictamen varchar2,
    hist_situacion number,
    constraint pk_arco_historial primary key (hist_id) 
  );
/
create table ADMIN.validacion_pagadores 
  (
    vali_catalogo number,
    vali_situacion number
  );
/
create table ADMIN.detalle_validaciones 
  (
    det_id number not null ,
    det_cat number,
    det_depen number,
    det_tipo number,
    det_fecha date,
    constraint pk_detalle_validaciones primary key (det_id) 
  );
/
create table ADMIN.aud_detalle_validaciones 
  (
    det_id number,
    det_cat number,
    det_depen number,
    det_tipo number,
    det_fecha date,
    desp_det_id number,
    desp_det_cat number,
    desp_det_depen number,
    desp_det_tipo number,
    desp_det_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_validacion_pagadores 
  (
    vali_catalogo number,
    vali_situacion number,
    desp_vali_catalogo number,
    desp_vali_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_destinos 
  (
    destino_id number not null ,
    destino_desc varchar2(250),
    destino_sit number,
    constraint pk_est_destinos primary key (destino_id) 
  );
/
create table ADMIN.aud_est_destinos 
  (
    destino_id number,
    destino_desc varchar2(250),
    destino_sit number,
    desp_destino_id number,
    desp_destino_desc varchar2(250),
    desp_destino_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_regiones 
  (
    est_reg_id number not null ,
    est_reg_desc varchar2(230),
    est_reg_situacion number,
    constraint pk_est_regiones primary key (est_reg_id) 
  );
/
create table ADMIN.aud_est_regiones 
  (
    est_reg_id number,
    est_reg_desc varchar2(230),
    est_reg_situacion number,
    desp_est_reg_id number,
    desp_est_reg_desc varchar2(230),
    desp_est_reg_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_fuerza 
  (
    ef_id number not null ,
    ef_dep number not null ,
    ef_unidad number not null ,
    ef_fecha TIMESTAMP(0),
    ef_vacan_toe number,
    ef_disp_toe number,
    ef_usuario number,
    ef_region number,
    ef_situacion number,
    constraint pk_est_fuerza primary key (ef_id) 
  );
/
create table ADMIN.aud_est_fuerza 
  (
    ef_id number,
    ef_dep number,
    ef_unidad number,
    ef_fecha TIMESTAMP(0),
    ef_vacan_toe number,
    ef_disp_toe number,
    ef_usuario number,
    ef_region number,
    ef_situacion number,
    desp_ef_id number,
    desp_ef_dep number,
    desp_ef_unidad number,
    desp_ef_fecha TIMESTAMP(0),
    desp_ef_vacan_toe number,
    desp_ef_disp_toe number,
    desp_ef_usuario number,
    desp_ef_region number,
    desp_ef_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_fuerza_detalle 
  (
    ef_det_id number not null ,
    ef_cod_ef number not null ,
    ef_destino number not null ,
    ef_gd number,
    ef_gb number,
    ef_ofsup_cr number,
    ef_ofsup_rsvas number,
    ef_ofsup_as number,
    ef_ofsub_cr number,
    ef_ofsub_rsvas number,
    ef_ofsub_as number,
    ef_esptas number,
    ef_sgtosmay number,
    ef_tropa number,
    ef_tropa_a number,
    ef_tropa_n number,
    ef_cadetes number,
    ef_contrato number,
    ef_total_destinos number,
    ef_det_situacion number,
    constraint pk_est_fuerza_detalle primary key (ef_det_id) 
  );
/
create table ADMIN.aud_est_fuerza_detalle 
  (
    ef_det_id number,
    ef_cod_ef number,
    ef_destino number,
    ef_gd number,
    ef_gb number,
    ef_ofsup_cr number,
    ef_ofsup_rsvas number,
    ef_ofsup_as number,
    ef_ofsub_cr number,
    ef_ofsub_rsvas number,
    ef_ofsub_as number,
    ef_esptas number,
    ef_sgtosmay number,
    ef_tropa number,
    ef_tropa_a number,
    ef_tropa_n number,
    ef_cadetes number,
    ef_contrato number,
    ef_total_destinos number,
    ef_det_situacion number,
    desp_ef_det_id number,
    desp_ef_cod_ef number,
    desp_ef_destino number,
    desp_ef_gd number,
    desp_ef_gb number,
    desp_ef_ofsup_cr number,
    desp_ef_ofsup_rsvas number,
    desp_ef_ofsup_as number,
    desp_ef_ofsub_cr number,
    desp_ef_ofsub_rsvas number,
    desp_ef_ofsub_as number,
    desp_ef_esptas number,
    desp_ef_sgtosmay number,
    desp_ef_tropa number,
    desp_ef_tropa_a number,
    desp_ef_tropa_n number,
    desp_ef_cadetes number,
    desp_ef_contrato number,
    desp_ef_total_destinos number,
    desp_ef_det_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_fuerza_alum_y_rsrv 
  (
    alrs_id number not null ,
    alrs_est_fuerza_id number,
    alrs_al_masculinos number,
    alrs_al_femeninos number,
    alrs_rs_masculinos number,
    alrs_rs_femeninos number,
    alrs_obervacion varchar2(255),
    alrs_situacion number,
    constraint pk_est_fuerza_alum_y_rsrv primary key (alrs_id) 
  );
/
create table ADMIN.aud_est_fuerza_alum_y_rsrv 
  (
    alrs_id number,
    alrs_est_fuerza_id number,
    alrs_al_masculinos number,
    alrs_al_femeninos number,
    alrs_rs_masculinos number,
    alrs_rs_femeninos number,
    alrs_obervacion varchar2(255),
    alrs_situacion number,
    desp_alrs_id number,
    desp_alrs_est_fuerza_id number,
    desp_alrs_al_masculinos number,
    desp_alrs_al_femeninos number,
    desp_alrs_rs_masculinos number,
    desp_alrs_rs_femeninos number,
    desp_alrs_obervacion varchar2(255),
    desp_alrs_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_reg_dep 
  (
    est_rdep_id number not null ,
    est_rdep_regid number,
    est_rdep_unidad number,
    est_rdep_dep number,
    est_rdep_situacion number,
    constraint pk_est_reg_dep primary key (est_rdep_id) 
  );
/
create table ADMIN.aud_est_reg_dep 
  (
    est_rdep_id number,
    est_rdep_regid number,
    est_rdep_unidad number,
    est_rdep_dep number,
    est_rdep_situacion number,
    desp_est_rdep_id number,
    desp_est_rdep_regid number,
    desp_est_rdep_unidad number,
    desp_est_rdep_dep number,
    desp_est_rdep_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.est_dest_det 
  (
    dest_de_id number not null ,
    dest_de_detid number,
    dest_de_destino number,
    dest_de_of number,
    dest_de_esp number,
    dest_de_tropa number,
    dest_de_cad number,
    dest_de_pla number,
    dest_de_catalogo number,
    dest_de_obs varchar2(2000),
    dest_de_comando number,
    dest_de_grado number,
    dest_de_cantidad number,
    dest_de_tiempo varchar2(250),
    dest_de_desc_tiempo varchar2(250),
    dest_de_situacion number,
    constraint pk_est_dest_det primary key (dest_de_id) 
  );
/
create table ADMIN.aud_est_dest_det 
  (
    dest_de_id number,
    dest_de_detid number,
    dest_de_destino number,
    dest_de_of number,
    dest_de_esp number,
    dest_de_tropa number,
    dest_de_cad number,
    dest_de_pla number,
    dest_de_catalogo number,
    dest_de_obs varchar2(2000),
    dest_de_comando number,
    dest_de_grado number,
    dest_de_cantidad number,
    dest_de_tiempo varchar2(250),
    dest_de_desc_tiempo varchar2(250),
    dest_de_situacion number,
    desp_dest_de_id number,
    desp_dest_de_detid number,
    desp_dest_de_destino number,
    desp_dest_de_of number,
    desp_dest_de_esp number,
    desp_dest_de_tropa number,
    desp_dest_de_cad number,
    desp_dest_de_pla number,
    desp_dest_de_catalogo number,
    desp_dest_de_obs varchar2(2000),
    desp_dest_de_comando number,
    desp_dest_de_grado number,
    desp_dest_de_cantidad number,
    desp_dest_de_tiempo varchar2(250),
    desp_dest_de_desc_tiempo varchar2(250),
    desp_dest_de_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_det_plaza 
  (
    det_plaza_id number not null ,
    det_plaza_catalogo number,
    det_plaza_responsable number,
    det_plaza_asignado number,
    det_plaza_fecha date,
    det_plaza_situacion number,
    det_plaza_observaciones varchar2(2500),
    constraint pk_vlh_det_plaza primary key (det_plaza_id) 
  );
/
create table ADMIN.aud_vlh_det_plaza 
  (
    det_plaza_id number,
    det_plaza_catalogo number,
    det_plaza_responsable number,
    det_plaza_asignado number,
    det_plaza_fecha date,
    det_plaza_situacion number,
    det_plaza_observaciones varchar2(2500),
    desp_det_plaza_id number,
    desp_det_plaza_catalogo number,
    desp_det_plaza_responsable number,
    desp_det_plaza_asignado number,
    desp_det_plaza_fecha date,
    desp_det_plaza_situacion number,
    desp_det_plaza_observaciones varchar2(2500),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.apresto_asistencia 
  (
    asis_id number not null ,
    asis_catalogo number,
    asis_fecha TIMESTAMP(0),
    asis_observacion varchar2,
    asis_situacion number 
        default 1,
    constraint pk_apresto_asistencia primary key (asis_id) 
  );
/
create table ADMIN.aud_apresto_asistencia 
  (
    asis_id number,
    asis_catalogo number,
    asis_fecha TIMESTAMP(0),
    asis_observacion varchar2,
    asis_situacion number,
    desp_asis_id number,
    desp_asis_catalogo number,
    desp_asis_fecha TIMESTAMP(0),
    desp_asis_observacion varchar2,
    desp_asis_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_arco_historial 
  (
    hist_id number,
    hist_catalogo number,
    hist_grado number,
    hist_arma number,
    hist_nom_certificado varchar2(100),
    hist_codigo varchar2(10),
    hist_observaciones varchar2,
    hist_fecha_ascenso date,
    hist_fecha_inicio date,
    hist_fecha_fin date,
    hist_cap_profesional number(10,2),
    hist_des_profesional number(10,2),
    hist_conducta_militar number(10,2),
    hist_aptitud_fisica number(10,2),
    hist_per_biofisico number(10,2),
    hist_creditos number(10,2),
    hist_ficha_medica varchar2(10),
    hist_total_nota number(10,2),
    hist_notacurso number(10,2),
    hist_notades number(10,2),
    hist_notapafe number(10,2),
    hist_demeritos number,
    hist_diagnostico varchar2(50),
    hist_dictamen varchar2,
    hist_situacion number,
    desp_hist_id number,
    desp_hist_catalogo number,
    desp_hist_grado number,
    desp_hist_arma number,
    desp_hist_nom_certificado varchar2(100),
    desp_hist_codigo varchar2(10),
    desp_hist_observaciones varchar2,
    desp_hist_fecha_ascenso date,
    desp_hist_fecha_inicio date,
    desp_hist_fecha_fin date,
    desp_hist_cap_profesional number(10,2),
    desp_hist_des_profesional number(10,2),
    desp_hist_conducta_militar number(10,2),
    desp_hist_aptitud_fisica number(10,2),
    desp_hist_per_biofisico number(10,2),
    desp_hist_creditos number(10,2),
    desp_hist_ficha_medica varchar2(10),
    desp_hist_total_nota number(10,2),
    desp_hist_notacurso number(10,2),
    desp_hist_notades number(10,2),
    desp_hist_notapafe number(10,2),
    desp_hist_demeritos number,
    desp_hist_diagnostico varchar2(50),
    desp_hist_dictamen varchar2,
    desp_hist_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.registro_busqueda 
  (
    busqueda_id number not null ,
    busqueda_latitud number(11,8),
    busqueda_longitud number(11,8),
    busqueda_parametros varchar2,
    busqueda_motivo varchar2,
    busqueda_usuario number,
    busqueda_fecha_hora TIMESTAMP(0) 
        default current year to minute,
    constraint pk_registro_busqueda primary key (busqueda_id) 
  );
/
create table ADMIN.aud_registro_busqueda 
  (
    busqueda_id number,
    busqueda_latitud number(11,8),
    busqueda_longitud number(11,8),
    busqueda_parametros varchar2,
    busqueda_motivo varchar2,
    busqueda_usuario number,
    busqueda_fecha_hora TIMESTAMP(0) 
        default current year to minute,
    desp_busqueda_id number,
    desp_busqueda_latitud number(11,8),
    desp_busqueda_longitud number(11,8),
    desp_busqueda_parametros varchar2,
    desp_busqueda_motivo varchar2,
    desp_busqueda_usuario number,
    desp_busqueda_fecha_hora TIMESTAMP(0) 
        default current year to minute,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dfdes_chn 
  (
    dfdc_catalogo number,
    dfdc_codigo number,
    dfdc_nu_reg number,
    dfdc_tipo_desc char(1),
    dfdc_fec_ini date,
    dfdc_mes_act date,
    dfdc_fin_pres date,
    dfdc_monto number(16,2),
    dfdc_saldo number(16,2),
    dfdc_mensual number(16,2),
    dfdc_tot_cuotas number,
    dfdc_num_cuotas number,
    dfdc_nom_banco char(6),
    dfdc_codeudor number,
    dfdc_nom_bene char(50),
    dfdc_no_prest char(50),
    dfdc_si_no char(1),
    constraint pk_dfdes_chn primary key (dfdc_no_prest) 
  );
/
create table ADMIN.aud_dfdes_chn 
  (
    dfdc_catalogo number,
    dfdc_codigo number,
    dfdc_nu_reg number,
    dfdc_tipo_desc char(1),
    dfdc_fec_ini date,
    dfdc_mes_act date,
    dfdc_fin_pres date,
    dfdc_monto number(16,2),
    dfdc_saldo number(16,2),
    dfdc_mensual number(16,2),
    dfdc_tot_cuotas number,
    dfdc_num_cuotas number,
    dfdc_nom_banco char(6),
    dfdc_codeudor number,
    dfdc_nom_bene char(50),
    dfdc_no_prest char(50),
    dfdc_si_no char(1),
    aud_dfdc_catalogo number,
    aud_dfdc_codigo number,
    aud_dfdc_nu_reg number,
    aud_dfdc_tipo_desc char(1),
    aud_dfdc_fec_ini date,
    aud_dfdc_mes_act date,
    aud_dfdc_fin_pres date,
    aud_dfdc_monto number(16,2),
    aud_dfdc_saldo number(16,2),
    aud_dfdc_mensual number(16,2),
    aud_dfdc_tot_cuotas number,
    aud_dfdc_num_cuotas number,
    aud_dfdc_nom_banco char(6),
    aud_dfdc_codeudor number,
    aud_dfdc_nom_bene char(50),
    aud_dfdc_no_prest char(50),
    aud_dfdc_si_no char(1),
    accion char(1) not null ,
    usuario varchar2(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.novedades_finanzas 
  (
    nov_id number not null ,
    nov_grupo number,
    nov_cat_pagador number,
    nov_fecha date,
    nov_renglon number,
    nov_novedad number,
    nov_descripcion varchar2,
    nov_situacion number,
    constraint pk_novedades_finanzas primary key (nov_id) 
  );
/
create table ADMIN.aud_novedades_finanzas 
  (
    nov_id number,
    nov_grupo number,
    nov_cat_pagador number,
    nov_fecha date,
    nov_renglon number,
    nov_novedad number,
    nov_descripcion varchar2,
    nov_situacion number,
    desp_nov_id number,
    desp_nov_grupo number,
    desp_nov_cat_pagador number,
    desp_nov_fecha date,
    desp_nov_renglon number,
    desp_nov_novedad number,
    desp_nov_descripcion varchar2,
    desp_nov_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.historial_conexiones 
  (
    usuarios varchar2(20),
    ultima_conexion TIMESTAMP,
    hostname varchar2(20),
    latitudes number(32,6),
    longitudes number(32,6)
  );
/
create table ADMIN.aud_historial_conexiones 
  (
    usuarios varchar2(20),
    ultima_conexion TIMESTAMP,
    hostname varchar2(20),
    latitudes number(32,6),
    longitudes number(32,6),
    desp_usuarios varchar2(20),
    desp_ultima_conexion TIMESTAMP,
    desp_hostname varchar2(20),
    desp_latitudes number(32,6),
    desp_longitudes number(32,6),
    accion char(1) not null ,
    usuario varchar2(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.historial_boletaspago 
  (
    impresion_id number not null ,
    usuario_boleta number,
    fecha_impresion TIMESTAMP,
    latitud_impresion number(9,6),
    longitud_impresion number(9,6),
    usuario_login number,
    constraint pk_historial_boletaspago primary key (impresion_id) 
  );
/
create table ADMIN.apresto_tareas 
  (
    tar_id number not null ,
    tar_dependencia number not null ,
    tar_descripcion varchar2 not null ,
    tar_ambito number not null ,
    tar_modalidad number not null ,
    tar_forma varchar2(75),
    tar_fecha_ini TIMESTAMP(0),
    tar_fecha_fin TIMESTAMP(0),
    tar_fecha_creacion TIMESTAMP(0),
    tar_documento varchar2(255),
    tar_situacion number 
        default 1,
    constraint pk_apresto_tareas primary key (tar_id) 
  );
/
create table ADMIN.apresto_funciones 
  (
    func_id number not null ,
    func_funcion varchar2(100),
    func_situacion number,
    constraint npk_apresto_funciones primary key (func_id) 
  );
/
create table ADMIN.aud_apresto_tareas 
  (
    tar_id number,
    tar_dependencia number,
    tar_descripcion varchar2,
    tar_ambito number,
    tar_modalidad number,
    tar_forma varchar2(75),
    tar_fecha_ini TIMESTAMP(0),
    tar_fecha_fin TIMESTAMP(0),
    tar_fecha_creacion TIMESTAMP(0),
    tar_documento varchar2(255),
    tar_situacion number,
    desp_tar_id number,
    desp_tar_dependencia number,
    desp_tar_descripcion varchar2,
    desp_tar_ambito number,
    desp_tar_modalidad number,
    desp_tar_forma varchar2(75),
    desp_tar_fecha_ini TIMESTAMP(0),
    desp_tar_fecha_fin TIMESTAMP(0),
    desp_tar_fecha_creacion TIMESTAMP(0),
    desp_tar_documento varchar2(255),
    desp_tar_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_pdf 
  (
    evapdf_id number not null ,
    evapdf_evaluacion number,
    evapdf_catalogo number,
    evapdf_ruta varchar2(100),
    evapdf_situacion number,
    constraint pk_eva_pdf primary key (evapdf_id) 
  );
/
create table ADMIN.aud_eva_pdf 
  (
    evapdf_id number,
    evapdf_evaluacion number,
    evapdf_catalogo number,
    evapdf_ruta varchar2(100),
    evapdf_situacion number,
    desp_evapdf_id number,
    desp_evapdf_evaluacion number,
    desp_evapdf_catalogo number,
    desp_evapdf_ruta varchar2(100),
    desp_evapdf_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_apresto_funciones 
  (
    func_id number,
    func_funcion varchar2(100),
    func_situacion number,
    desp_func_id number,
    desp_func_funcion varchar2(100),
    desp_func_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_contratos 
  (
    cont_id number not null ,
    cont_nog varchar2(50),
    cont_fecha_fin date,
    cont_precio_galon number(16,2),
    cont_tipo_combustible number,
    cont_cantidad number,
    cont_situacion number,
    constraint pk_comb_contratos primary key (cont_id) 
  );
/
create table ADMIN.aud_comb_contratos 
  (
    cont_id number,
    cont_nog varchar2(50),
    cont_fecha_fin date,
    cont_precio_galon number(16,2),
    cont_tipo_combustible number,
    cont_cantidad number,
    cont_situacion number,
    desp_cont_id number,
    desp_cont_nog varchar2(50),
    desp_cont_fecha_fin date,
    desp_cont_precio_galon number(16,2),
    desp_cont_tipo_combustible number,
    desp_cont_cantidad number,
    desp_cont_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_mensuales 
  (
    men_id number not null ,
    men_contrato number,
    men_fecha datetime year to month,
    men_cantidad number,
    men_tipo char(1),
    men_situacion number,
    constraint pk_comb_mensuales primary key (men_id) 
  );
/
create table ADMIN.aud_comb_mensuales 
  (
    men_id number,
    men_contrato number,
    men_fecha datetime year to month,
    men_cantidad number,
    men_tipo char(1),
    men_situacion number,
    desp_men_id number,
    desp_men_contrato number,
    desp_men_fecha datetime year to month,
    desp_men_cantidad number,
    desp_men_tipo char(1),
    desp_men_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_comb_proyectos 
  (
    pro_id number,
    pro_mensual number,
    pro_documento varchar2(50),
    pro_situacion number,
    desp_pro_id number,
    desp_pro_mensual number,
    desp_pro_documento varchar2(50),
    desp_pro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_asignaciones_saldos 
  (
    sal_id number not null ,
    sal_fecha datetime year to month,
    sal_cuota char(1),
    sal_tipo number,
    sal_situacion number,
    constraint pk_comb_asignaciones_saldos primary key (sal_id) 
  );
/
create table ADMIN.aud_comb_asignaciones_saldos 
  (
    sal_id number,
    sal_fecha datetime year to month,
    sal_cuota char(1),
    sal_tipo number,
    sal_situacion number,
    desp_sal_id number,
    desp_sal_fecha datetime year to month,
    desp_sal_cuota char(1),
    desp_sal_tipo number,
    desp_sal_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_dependencias 
  (
    dep_id number not null ,
    dep_desc_lg varchar2(150),
    dep_desc_md varchar2(75),
    dep_desc_ct varchar2(50),
    dep_dependencia number,
    dep_latitud number(10,8),
    dep_longitud number(10,8),
    dep_gasolinera number,
    dep_situacion number,
    constraint pk_comb_dependencias primary key (dep_id) 
  );
/
create table ADMIN.aud_comb_dependencias 
  (
    dep_id number,
    dep_desc_lg varchar2(150),
    dep_desc_md varchar2(75),
    dep_desc_ct varchar2(50),
    dep_dependencia number,
    dep_latitud number(10,8),
    dep_longitud number(10,8),
    dep_gasolinera number,
    dep_situacion number,
    desp_dep_id number,
    desp_dep_desc_lg varchar2(150),
    desp_dep_desc_md varchar2(75),
    desp_dep_desc_ct varchar2(50),
    desp_dep_dependencia number,
    desp_dep_latitud number(10,8),
    desp_dep_longitud number(10,8),
    desp_dep_gasolinera number,
    desp_dep_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_gas_capacidades 
  (
    cap_id number not null ,
    cap_gasolinera number,
    cap_tanque varchar2(50),
    cap_tipo number,
    cap_cantidad number,
    cap_cuota char(1),
    cap_situacion number,
    constraint pk_comb_gas_capacidades primary key (cap_id) 
  );
/
create table ADMIN.aud_comb_gas_capacidades 
  (
    cap_id number,
    cap_gasolinera number,
    cap_tanque varchar2(50),
    cap_tipo number,
    cap_cantidad number,
    cap_cuota char(1),
    cap_situacion number,
    desp_cap_id number,
    desp_cap_gasolinera number,
    desp_cap_tanque varchar2(50),
    desp_cap_tipo number,
    desp_cap_cantidad number,
    desp_cap_cuota char(1),
    desp_cap_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_hist_asignaciones 
  (
    hist_id number not null ,
    hist_proyecto number,
    hist_detalle varchar2,
    hist_fecha TIMESTAMP(0),
    hist_situacion number,
    constraint pk_comb_hist_asignaciones primary key (hist_id) 
  );
/
create table ADMIN.aud_comb_hist_asignaciones 
  (
    hist_id number,
    hist_proyecto number,
    hist_detalle varchar2,
    hist_fecha TIMESTAMP(0),
    hist_situacion number,
    desp_hist_id number,
    desp_hist_proyecto number,
    desp_hist_detalle varchar2,
    desp_hist_fecha TIMESTAMP(0),
    desp_hist_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_asignaciones 
  (
    asig_id number not null ,
    asig_dep number,
    asig_proyecto number,
    asig_cantidad number,
    asig_doc_recepcion varchar2,
    asig_situacion number,
    constraint pk_comb_asignaciones primary key (asig_id) 
  );
/
create table ADMIN.aud_comb_asignaciones 
  (
    asig_id number,
    asig_dep number,
    asig_proyecto number,
    asig_cantidad number,
    asig_doc_recepcion varchar2,
    asig_situacion number,
    desp_asig_id number,
    desp_asig_dep number,
    desp_asig_proyecto number,
    desp_asig_cantidad number,
    desp_asig_doc_recepcion varchar2,
    desp_asig_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_solicitudes 
  (
    sol_id number not null ,
    sol_asignacion number,
    sol_entrega number,
    sol_recibe number,
    sol_documento varchar2(50),
    sol_cantidad number,
    sol_fecha TIMESTAMP(0),
    sol_situacion number,
    constraint pk_comb_solicitudes primary key (sol_id) 
  );
/
create table ADMIN.aud_comb_solicitudes 
  (
    sol_id number,
    sol_asignacion number,
    sol_entrega number,
    sol_recibe number,
    sol_documento varchar2(50),
    sol_cantidad number,
    sol_fecha TIMESTAMP(0),
    sol_situacion number,
    desp_sol_id number,
    desp_sol_asignacion number,
    desp_sol_entrega number,
    desp_sol_recibe number,
    desp_sol_documento varchar2(50),
    desp_sol_cantidad number,
    desp_sol_fecha TIMESTAMP(0),
    desp_sol_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_permisos 
  (
    perm_id number not null ,
    perm_catalogo number,
    perm_dependencia number,
    perm_situacion number,
    constraint pk_comb_permisos primary key (perm_id) 
  );
/
create table ADMIN.comb_movimientos 
  (
    mov_id number not null ,
    mov_dep number,
    mov_tipo char(1),
    mov_cantidad number,
    mov_fecha TIMESTAMP(0),
    mov_asignacion number,
    mov_solicitud number,
    mov_vale number,
    mov_traslado number,
    mov_situacion number,
    constraint pk_comb_movimientos primary key (mov_id) 
  );
/
create table ADMIN.aud_comb_movimientos 
  (
    mov_id number,
    mov_dep number,
    mov_tipo char(1),
    mov_cantidad number,
    mov_fecha TIMESTAMP(0),
    mov_asignacion number,
    mov_solicitud number,
    mov_vale number,
    mov_traslado number,
    mov_situacion number,
    desp_mov_id number,
    desp_mov_dep number,
    desp_mov_tipo char(1),
    desp_mov_cantidad number,
    desp_mov_fecha TIMESTAMP(0),
    desp_mov_asignacion number,
    desp_mov_solicitud number,
    desp_mov_vale number,
    desp_mov_traslado number,
    desp_mov_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_comb_permisos 
  (
    perm_id number,
    perm_catalogo number,
    perm_dependencia number,
    perm_situacion number,
    desp_perm_id number,
    desp_perm_catalogo number,
    desp_perm_dependencia number,
    desp_perm_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_arrestados 
  (
    are_id number not null ,
    are_gra_a number,
    are_catalogo number,
    are_ordeno number,
    are_gra_o number,
    are_motivo varchar2,
    are_fecha_ini TIMESTAMP(0),
    are_fecha_fin TIMESTAMP(0),
    are_obs varchar2,
    are_estado number,
    are_situacion number,
    constraint pk_lib_arrestados primary key (are_id) 
  );
/
create table ADMIN.aud_lib_arrestados 
  (
    are_id number,
    are_gra_a number,
    are_catalogo number,
    are_ordeno number,
    are_gra_o number,
    are_motivo varchar2,
    are_fecha_ini TIMESTAMP(0),
    are_fecha_fin TIMESTAMP(0),
    are_obs varchar2,
    are_estado number,
    are_situacion number,
    desp_are_id number,
    desp_are_gra_a number,
    desp_are_catalogo number,
    desp_are_ordeno number,
    desp_are_gra_o number,
    desp_are_motivo varchar2,
    desp_are_fecha_ini TIMESTAMP(0),
    desp_are_fecha_fin TIMESTAMP(0),
    desp_are_obs varchar2,
    desp_are_estado number,
    desp_are_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_articulos 
  (
    art_id number not null ,
    art_desc varchar2(250),
    art_estado number,
    art_situacion number,
    constraint pk_lib_articulos primary key (art_id) 
  );
/
create table ADMIN.aud_lib_articulos 
  (
    art_id number,
    art_desc varchar2(250),
    art_estado number,
    art_situacion number,
    desp_art_id number,
    desp_art_desc varchar2(250),
    desp_art_estado number,
    desp_art_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_consignas 
  (
    cons_id number not null ,
    cons_cat_ordeno number,
    cons_cat_ingreso number,
    cons_fecha date,
    cons_desc varchar2,
    cons_situacion number,
    constraint pk_lib_consignas primary key (cons_id) 
  );
/
create table ADMIN.aud_lib_consignas 
  (
    cons_id number,
    cons_cat_ordeno number,
    cons_cat_ingreso number,
    cons_fecha date,
    cons_desc varchar2,
    cons_situacion number,
    desp_cons_id number,
    desp_cons_cat_ordeno number,
    desp_cons_cat_ingreso number,
    desp_cons_fecha date,
    desp_cons_desc varchar2,
    desp_cons_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_estado_art 
  (
    estado_id number not null ,
    estado_desc varchar2(250),
    estado_situacion number,
    constraint pk_lib_estado_art primary key (estado_id) 
  );
/
create table ADMIN.aud_lib_estado_art 
  (
    estado_id number,
    estado_desc varchar2(250),
    estado_situacion number,
    desp_estado_id number,
    desp_estado_desc varchar2(250),
    desp_estado_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_inventario 
  (
    inv_id number not null ,
    inv_articulos number,
    inv_cantidad number,
    inv_situacion number,
    constraint pk_lib_inventario primary key (inv_id) 
  );
/
create table ADMIN.aud_lib_inventario 
  (
    inv_id number,
    inv_articulos number,
    inv_cantidad number,
    inv_situacion number,
    desp_inv_id number,
    desp_inv_articulos number,
    desp_inv_cantidad number,
    desp_inv_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_permisos 
  (
    perm_id number not null ,
    perm_cat number,
    perm_fecha_ini TIMESTAMP(0),
    perm_fecha_fin TIMESTAMP(0),
    perm_motivo varchar2(150),
    perm_situacion number,
    constraint pk_lib_permisos primary key (perm_id) 
  );
/
create table ADMIN.aud_lib_permisos 
  (
    perm_id number,
    perm_cat number,
    perm_fecha_ini TIMESTAMP(0),
    perm_fecha_fin TIMESTAMP(0),
    perm_motivo varchar2(150),
    perm_situacion number,
    desp_perm_id number,
    desp_perm_cat number,
    desp_perm_fecha_ini TIMESTAMP(0),
    desp_perm_fecha_fin TIMESTAMP(0),
    desp_perm_motivo varchar2(150),
    desp_perm_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lib_vehiculos 
  (
    veh_id number not null ,
    veh_cat_veh varchar2(250),
    veh_cond_cat number,
    veh_hora_salida TIMESTAMP(0),
    veh_hora_entrada TIMESTAMP(0),
    veh_destino varchar2(250),
    veh_procedencia varchar2(250),
    veh_obs varchar2(250),
    veh_situacion number,
    constraint pk_lib_vehiculos primary key (veh_id) 
  );
/
create table ADMIN.aud_lib_vehiculos 
  (
    veh_id number,
    veh_cat_veh varchar2(250),
    veh_cond_cat number,
    veh_hora_salida TIMESTAMP(0),
    veh_hora_entrada TIMESTAMP(0),
    veh_destino varchar2(250),
    veh_procedencia varchar2(250),
    veh_obs varchar2(250),
    veh_situacion number,
    desp_veh_id number,
    desp_veh_cat_veh varchar2(250),
    desp_veh_cond_cat number,
    desp_veh_hora_salida TIMESTAMP(0),
    desp_veh_hora_entrada TIMESTAMP(0),
    desp_veh_destino varchar2(250),
    desp_veh_procedencia varchar2(250),
    desp_veh_obs varchar2(250),
    desp_veh_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.asig_menuautocom 
  (
    asig_id number not null ,
    asig_catalogo number not null ,
    asig_app number not null ,
    asig_fecha TIMESTAMP(0),
    asig_situacion char(1) 
        default '1',
    constraint pk_asig_menuautocom primary key (asig_id) 
  );
/
create table ADMIN.aud_asig_menuautocom 
  (
    asig_id number,
    asig_catalogo number,
    asig_app number,
    asig_fecha TIMESTAMP(0),
    asig_situacion char(1) 
        default '1',
    desp_asig_id number,
    desp_asig_catalogo number,
    desp_asig_app number,
    desp_asig_fecha TIMESTAMP(0),
    desp_asig_situacion char(1) 
        default '1',
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.grupo_menuautocom 
  (
    gma_codigo number not null ,
    gma_desc varchar2(100,1) not null ,
    gma_fecha_creada TIMESTAMP(0),
    gma_descripcion varchar2,
    gma_situacion char(1) 
        default '1'
  );
/
create table ADMIN.aud_grupo_menuautocom 
  (
    gma_codigo number,
    gma_desc varchar2(100,1),
    gma_fecha_creada TIMESTAMP(0),
    gma_descripcion varchar2,
    gma_situacion char(1) 
        default '1',
    desp_gma_codigo number,
    desp_gma_desc varchar2(100,1),
    desp_gma_fecha_creada TIMESTAMP(0),
    desp_gma_descripcion varchar2,
    desp_gma_situacion char(1) 
        default '1',
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.niveles_autocom 
  (
    aut_codigo number not null ,
    aut_plaza number not null ,
    aut_permiso number not null ,
    aut_fecha_asignada TIMESTAMP(0),
    aut_fecha_eliminada TIMESTAMP(0),
    aut_asigno_per number,
    aut_elimino_per number,
    aut_descripcion_del varchar2,
    aut_descripcion varchar2,
    aut_situacion char(1) 
        default '1'
  );
/
create table ADMIN.aud_niveles_autocom 
  (
    aut_codigo number,
    aut_plaza number,
    aut_permiso number,
    aut_fecha_asignada TIMESTAMP(0),
    aut_fecha_eliminada TIMESTAMP(0),
    aut_asigno_per number,
    aut_elimino_per number,
    aut_descripcion_del varchar2,
    aut_descripcion varchar2,
    aut_situacion char(1) 
        default '1',
    desp_aut_codigo number,
    desp_aut_plaza number,
    desp_aut_permiso number,
    desp_aut_fecha_asignada TIMESTAMP(0),
    desp_aut_fecha_eliminada TIMESTAMP(0),
    desp_aut_asigno_per number,
    desp_aut_elimino_per number,
    desp_aut_descripcion_del varchar2,
    desp_aut_descripcion varchar2,
    desp_aut_situacion char(1) 
        default '1',
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.menuautocom 
  (
    menu_codigo number not null ,
    menu_descr varchar2(100) not null ,
    menu_clave varchar2(15) not null ,
    menu_grupo number,
    menu_detalle varchar2,
    menu_situacion number,
    constraint pk_menuautocom primary key (menu_codigo) 
  );
/
create table ADMIN.aud_menuautocom 
  (
    menu_codigo number,
    menu_descr varchar2(100),
    menu_clave varchar2(15),
    menu_grupo number,
    menu_detalle varchar2,
    menu_situacion number,
    desp_menu_codigo number,
    desp_menu_descr varchar2(100),
    desp_menu_clave varchar2(15),
    desp_menu_grupo number,
    desp_menu_detalle varchar2,
    desp_menu_situacion number,
    accion char(1),
    usuario char(10),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.comb_proyectos 
  (
    pro_id number not null ,
    pro_mensual number,
    pro_documento varchar2(50),
    pro_archivo varchar2,
    pro_situacion number,
    constraint pk_comb_proyectos primary key (pro_id) 
  );
/
create table ADMIN.comb_hist_varcontrato 
  (
    var_id number not null ,
    var_contrato number not null ,
    var_precio_actual number(16,2) not null ,
    var_nuevo_precio number(16,2) not null ,
    var_cant_actual number not null ,
    var_nueva_cant_actualiza number not null ,
    var_fecha_actualiza TIMESTAMP(0) not null ,
    var_situacion number 
        default 1 not null ,
    constraint pk_comb_hist_varcontrato primary key (var_id) 
  );
/
create table ADMIN.comb_histo_rep 
  (
    hist_id number,
    hist_catalogo number,
    hist_reporte char(1),
    hist_dependencia number,
    hist_ejercito char(1),
    hist_fecha TIMESTAMP(0),
    hist_situacion number 
        default 1
  );
/
create table ADMIN.aud_comb_histo_rep 
  (
    hist_id number,
    hist_catalogo number,
    hist_reporte char(1),
    hist_dependencia number,
    hist_ejercito char(1),
    hist_fecha TIMESTAMP(0),
    hist_situacion number,
    desp_hist_id number,
    desp_hist_catalogo number,
    desp_hist_reporte char(1),
    desp_hist_dependencia number,
    desp_hist_ejercito char(1),
    desp_hist_fecha TIMESTAMP(0),
    desp_hist_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_comb_hist_varcontrato 
  (
    var_id number,
    var_contrato number,
    var_precio_actual number(16,2),
    var_nuevo_precio number(16,2),
    var_cant_actual number,
    var_nueva_cant_actualiza number,
    var_fecha_actualiza TIMESTAMP(0),
    var_situacion number 
        default 1,
    desp_var_id number,
    desp_var_contrato number,
    desp_var_precio_actual number(16,2),
    desp_var_nuevo_precio number(16,2),
    desp_var_cant_actual number,
    desp_var_nueva_cant_actualiza number,
    desp_var_fecha_actualiza TIMESTAMP(0),
    desp_var_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ofi_fiesta 
  (
    fie_id number not null ,
    fie_cat number,
    fie_cod varchar2(10),
    fie_estado number,
    fie_data TIMESTAMP(0),
    fie_situacion number,
    fie_registro number,
    constraint pk_ofi_fiesta primary key (fie_id) 
  );
/
create table ADMIN.resultado_procedimiento 
  (
    id number not null ,
    mensaje varchar2(100),
    constraint pk_resultado_procedimiento primary key (id) 
  );
/
create table ADMIN.re22_tipo_asignaciones 
  (
    tipo_id number not null ,
    tipo_descripcion varchar2(250) not null ,
    tipo_situacion number,
    constraint pk_re22_tipo_asignaciones primary key (tipo_id) 
  );
/
create table ADMIN.aud_re22_tipo_asignaciones 
  (
    tipo_id number,
    tipo_descripcion varchar2(250),
    tipo_situacion number,
    desp_tipo_id number,
    desp_tipo_descripcion varchar2(250),
    desp_tipo_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fmorg 
  (
    org_plaza number not null ,
    org_ceom char(6) not null ,
    org_dependencia number not null ,
    org_jerarquia char(12) not null ,
    org_grado number not null ,
    org_plaza_desc char(30) not null ,
    org_situacion char(1),
    org_cod_pago char(1),
    org_hrs_trab number not null ,
    org_fec_ult_mod date,
    org_ord_gral char(7),
    org_nominas char(1),
    org_categoria varchar2(4),
    constraint pk_fmorg primary key (org_plaza)
  );
/
create table ADMIN.fmper 
  (
    per_catalogo number not null ,
    per_serie char(8),
    per_grado number not null ,
    per_arma number not null ,
    per_nom1 char(15) not null ,
    per_nom2 char(15),
    per_ape1 char(15) not null ,
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4),
    per_ced_reg number,
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4) not null ,
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4) not null ,
    per_telefono number,
    per_sexo char(1),
    per_fec_nac date,
    per_nac_lugar char(4) not null ,
    per_promocion number,
    per_afil_ipm char(1),
    per_sangre char(3),
    per_antiguedad number,
    per_bienal number not null ,
    per_plaza number not null ,
    per_desc_empleo char(45) not null ,
    per_fec_nomb date,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2) not null ,
    per_prima_prof number,
    per_dpi char(15),
    constraint pk_fmper primary key (per_catalogo)
  );
/
create table ADMIN.fdpue 
  (
    pue_catalogo number,
    pue_grado number not null ,
    pue_arma number not null ,
    pue_dependencia number not null ,
    pue_jerarquia char(3),
    pue_plaza number not null ,
    pue_ceom char(6) not null ,
    pue_desc char(45) not null ,
    pue_situacion char(2) not null ,
    pue_fec_nomb date not null ,
    pue_ord_gral char(5) not null ,
    pue_punto_og number not null ,
    pue_fec_cese date not null ,
    constraint pk_fdpue primary key (pue_catalogo,pue_plaza,pue_fec_nomb) 
  );
/
create table ADMIN.fdfam 
  (
    fam_cat_militar number not null ,
    fam_cat_familiar number not null ,
    fam_nom1 char(15) not null ,
    fam_nom2 char(15),
    fam_ape1 char(15) not null ,
    fam_ape2 char(15),
    fam_parentesco number not null ,
    fam_sexo char(1),
    fam_sangre char(3),
    fam_est_civil char(1),
    fam_fec_nac date,
    fam_nac_lugar char(4),
    fam_ced_ord char(4),
    fam_ced_reg number,
    fam_fec_ext_ced date,
    fam_lugar_ext_ced char(4),
    fam_direccion char(50),
    fam_zona number,
    fam_dir_lugar char(4) not null ,
    fam_telefono number,
    fam_ocupacion char(30),
    fam_empresa char(30),
    fam_cheque number,
    fam_beneficiario number,
    fam_emergencia number,
    fam_clase_pasiva number,
    constraint pk_fdfam primary key (fam_cat_militar,fam_cat_familiar)
  );
/
create table ADMIN.fdcur 
  (
    cur_catalogo number,
    cur_grado number not null ,
    cur_curso number not null ,
    cur_fec_inicio date not null ,
    cur_fec_fin date not null ,
    cur_pais number not null ,
    cur_escuela number not null ,
    cur_valor number(16,2),
    cur_punteo number(5,2),
    cur_equi number,
    cur_puesto char(3),
    cur_obserba char(20),
    cur_docto_auto char(10),
    cur_nivel_esc char(1),
    constraint pk_fdcur primary key (cur_catalogo,cur_curso,cur_fec_inicio)
  );
/
create table ADMIN.rm_morg 
  (
    org_plaza number not null ,
    org_ceom char(6) not null ,
    org_dependencia number not null ,
    org_jerarquia char(12),
    org_grado number not null ,
    org_plaza_desc char(75) not null ,
    org_situacion char(1),
    org_cod_pago char(1),
    org_hrs_trab number not null ,
    org_fec_ult_mod date,
    org_ord_gral char(7),
    org_nominas char(1),
    org_categoria varchar2(4),
    constraint pk_rm_morg primary key (org_plaza) 
  );
/
create table ADMIN.aud_rm_morg 
  (
    org_plaza number,
    org_ceom char(6),
    org_dependencia number,
    org_jerarquia char(12),
    org_grado number,
    org_plaza_desc char(75),
    org_situacion char(1),
    org_cod_pago char(1),
    org_hrs_trab number,
    org_fec_ult_mod date,
    org_ord_gral char(7),
    org_nominas char(1),
    org_categoria varchar2(4),
    desp_org_plaza number,
    desp_org_ceom char(6),
    desp_org_dependencia number,
    desp_org_jerarquia char(12),
    desp_org_grado number,
    desp_org_plaza_desc char(75),
    desp_org_situacion char(1),
    desp_org_cod_pago char(1),
    desp_org_hrs_trab number,
    desp_org_fec_ult_mod date,
    desp_org_ord_gral char(7),
    desp_org_nominas char(1),
    desp_org_categoria varchar2(4),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.re22_historial_boletaspago 
  (
    impresion_id number not null ,
    usuario_boleta number,
    fecha_impresion TIMESTAMP,
    latitud_impresion number(9,6),
    longitud_impresion number(9,6),
    usuario_login number,
    constraint pk_re22_historial_boletaspago primary key (impresion_id) 
  );
/
create table ADMIN.aud_re22_historial_boletaspago 
  (
    impresion_id number,
    usuario_boleta number,
    fecha_impresion TIMESTAMP,
    latitud_impresion number(9,6),
    longitud_impresion number(9,6),
    usuario_login number,
    desp_impresion_id number,
    desp_usuario_boleta number,
    desp_fecha_impresion TIMESTAMP,
    desp_latitud_impresion number(9,6),
    desp_longitud_impresion number(9,6),
    desp_usuario_login number,
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.bienes 
  (
    bie_id number not null ,
    bie_numbien varchar2(25),
    bie_descripcion varchar2(100),
    bie_marca number,
    bie_situacion number 
        default 1,
    constraint pk_bienes primary key (bie_id) 
  );
/
create table ADMIN.aud_bienes 
  (
    bie_id number,
    bie_numbien varchar2(25),
    bie_descripcion varchar2(100),
    bie_marca number,
    bie_situacion number 
        default 1,
    desp_bie_id number,
    desp_bie_numbien varchar2(25),
    desp_bie_descripcion varchar2(100),
    desp_bie_marca number,
    desp_bie_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.conocimientos_bienes 
  (
    con_numero number not null ,
    con_catalogo_entrega number,
    con_catalogo_recibe number,
    con_catalogo_devolu number,
    con_fecha_entrega TIMESTAMP(0) 
        default current year to minute,
    con_fecha_devolucion TIMESTAMP(0) 
        default current year to minute,
    con_observaciones varchar2(255),
    con_situacion number 
        default 1,
    constraint pk_conocimientos_bienes primary key (con_numero) 
  );
/
create table ADMIN.aud_conocimientos_bienes 
  (
    con_numero number,
    con_catalogo_entrega number,
    con_catalogo_recibe number,
    con_catalogo_devolu number,
    con_fecha_entrega TIMESTAMP(0) 
        default current year to minute,
    con_fecha_devolucion TIMESTAMP(0) 
        default current year to minute,
    con_observaciones varchar2(255),
    con_situacion number 
        default 1,
    desp_con_numero number not null ,
    desp_con_catalogo_entrega number,
    desp_con_catalogo_recibe number,
    desp_con_catalogo_devolu number,
    desp_con_fecha_entrega TIMESTAMP(0) 
        default current year to minute,
    desp_con_fecha_devolucion TIMESTAMP(0) 
        default current year to minute,
    desp_con_observaciones varchar2(255),
    desp_con_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.detalle_conocimiento_bienes 
  (
    det_numero number not null ,
    det_numero_conocimiento number,
    det_idbien number,
    det_situacion number 
        default 1,
    constraint pk_detalle_conocimiento_bienes primary key (det_numero) 
  );
/
create table ADMIN.aud_detalle_conocimiento_bienes 
  (
    det_numero number,
    det_numero_conocimiento number,
    det_idbien number,
    det_situacion number 
        default 1,
    desp_det_numero number,
    desp_det_numero_conocimiento number,
    desp_det_idbien number,
    desp_det_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_vales 
  (
    val_id number not null ,
    val_fecha TIMESTAMP(0),
    val_correlativo varchar2(25),
    val_dep number,
    val_militar number,
    val_tipo_vehiculo char(1),
    val_placa varchar2(15),
    val_catalogo_vehiculo number,
    val_catalogo_011 number,
    val_catalogo_022 number,
    val_asignacion number,
    val_traslado number,
    val_cantidad number,
    val_autorizo number,
    val_sirvio number,
    val_despacho number,
    val_uso number,
    val_area number,
    val_razon varchar2,
    val_razonamiento varchar2,
    val_situacion number,
    constraint pk_comb_vales primary key (val_id) 
  );
/
create table ADMIN.aud_comb_vales 
  (
    val_id number,
    val_fecha TIMESTAMP(0),
    val_correlativo varchar2(25),
    val_dep number,
    val_militar number,
    val_tipo_vehiculo char(1),
    val_placa varchar2(15),
    val_catalogo_vehiculo varchar2(15),
    val_catalogo_011 number,
    val_catalogo_022 number,
    val_asignacion number,
    val_traslado number,
    val_cantidad number,
    val_autorizo number,
    val_sirvio number,
    val_despacho number,
    val_uso number,
    val_area number,
    val_razon varchar2,
    val_razonamiento varchar2,
    val_situacion number,
    desp_val_id number,
    desp_val_fecha TIMESTAMP(0),
    desp_val_correlativo varchar2(25),
    desp_val_dep number,
    desp_val_militar number,
    desp_val_tipo_vehiculo char(1),
    desp_val_placa varchar2(15),
    desp_val_catalogo_vehiculo varchar2(15),
    desp_val_catalogo_011 number,
    desp_val_catalogo_022 number,
    desp_val_asignacion number,
    desp_val_traslado number,
    desp_val_cantidad number,
    desp_val_autorizo number,
    desp_val_sirvio number,
    desp_val_despacho number,
    desp_val_uso number,
    desp_val_area number,
    desp_val_razon varchar2,
    desp_val_razonamiento varchar2,
    desp_val_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.comb_notificaciones 
  (
    not_id number not null ,
    not_fecha TIMESTAMP(0),
    not_dep number,
    not_mensaje varchar2,
    not_tipo number,
    not_url varchar2(250) 
        default '/combustible',
    not_todos number 
        default 0,
    not_situacion number 
        default 1,
    constraint pk_comb_notificaciones primary key (not_id) 
  );
/
create table ADMIN.aud_comb_notificaciones 
  (
    not_id number,
    not_fecha TIMESTAMP(0),
    not_dep number,
    not_mensaje varchar2,
    not_tipo number,
    not_url varchar2(250) 
        default '/combustible',
    not_todos number 
        default 0,
    not_situacion number 
        default 1,
    desp_not_id number,
    desp_not_fecha TIMESTAMP(0),
    desp_not_dep number,
    desp_not_mensaje varchar2,
    desp_not_tipo number,
    desp_not_url varchar2(250) 
        default '/combustible',
    desp_not_todos number 
        default 0,
    desp_not_situacion number 
        default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );


