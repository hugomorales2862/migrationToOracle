
create table ADMIN.test_table
  (
    tes_id number,
    tes_desc char(20),
    constraint pk_test_table primary key (tes_id) 
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
    not_carrera TIMESTAMP,
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
    desp_not_carrera TIMESTAMP,
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
create table ADMIN.sig_fuerza 
  (
    fue_id number not null ,
    fue_cat number not null ,
    fue_hora TIMESTAMP(0) not null ,
    fue_fecha date not null ,
    fue_destino number,
    fue_sit number,
    fue_obs varchar2(50),
    constraint pk_sig_fuerza primary key (fue_id) 
  );
  /
create table ADMIN.aud_sig_fuerza 
  (
    fue_id number,
    fue_cat number,
    fue_hora TIMESTAMP(0),
    fue_fecha date,
    fue_destino number,
    fue_sit number,
    fue_obs varchar2(50),
    desp_fue_id number,
    desp_fue_cat number,
    desp_fue_hora TIMESTAMP(0),
    desp_fue_fecha date,
    desp_fue_destino number,
    desp_fue_sit number,
    desp_fue_obs varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
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
create table ADMIN.fp_fondo 
  (
    fon_codigo number not null ,
    fon_desc varchar2(250) not null ,
    fon_stat number not null ,
    constraint pk_fp_fondo primary key (fon_codigo)
  );
  /
create table ADMIN.fp_estado 
  (
    est_codigo number not null ,
    est_desc varchar2(250) not null ,
    est_stat number not null ,
    constraint pk_fp_estado primary key (est_codigo)  
  );
  /
create table ADMIN.controlorgep 
  (
    con_codigo number not null ,
    con_ordeno char(200) not null ,
    con_autorizo char(200) not null ,
    con_plan char(200) not null ,
    con_fecha sysdate,
    con_situacion number
  );
  /
create table ADMIN.prueba 
  (
    codigo number not null ,
    "desc" varchar2(15)
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
    ent_year date,
    ent_articulo number,
    ent_talla number,
    ent_cantidad number,
    ent_situacion number,
    ent_fecha date,
    ent_mensaje varchar2(50),
    constraint pk_dot_entrega primary key (ent_id) 
  );
  /
create table ADMIN.re22_control_pagos_isr 
  (
    pago_id number not null ,
    pago_catalogo number,
    pago_total number(16,2),
    pago_abonado number(16,2),
    pago_fecha date,
    pago_sit number,
    constraint pk_re22_control_pagos_isr primary key (pago_id) 
  );
  /
create table ADMIN.re22_historial_pagos 
  (
    pago_id number not null ,
    pago_cat number,
    pago_fecha date,
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
create table ADMIN.aud_re22_control_pagos_isr 
  (
    pago_id number,
    pago_catalogo number,
    pago_total number(16,2),
    pago_abonado number(16,2),
    pago_fecha date,
    pago_sit number,
    desp_pago_id number,
    desp_pago_catalogo number,
    desp_pago_total number(16,2),
    desp_pago_abonado number(16,2),
    desp_pago_fecha date,
    desp_pago_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.aud_re22_historial_pagos 
  (
    pago_id number,
    pago_cat number,
    pago_fecha date,
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
    desp_pago_fecha date,
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
create table ADMIN.esip_doc_pdf 
  (
    doc_registro number not null ,
    doc_necesidad number,
    doc_ruta varchar2(250),
    doc_sit char(1),
    constraint pk_esip_doc_pdf primary key (doc_registro)
  );
  /
create table ADMIN.tropa_foto 
  (
    fot_id number not null ,
    fot_catalogo number,
    fot_descr char(25),
    fot_doc blob in blobdbs,
    fot_tipo varchar2(255),
    fot_situacion number,
    primary key (fot_id) 
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

create table ADMIN.sat_cuscar 
  (
    cus_id number not null ,
    cus_manifiesto varchar2(150),
    cus_cuscar varchar2(3500),
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
    cus_cuscar varchar2(3500),
    cus_fech_envio date,
    cus_fecha_ing TIMESTAMP,
    cus_user_ing varchar2(50),
    desp_cus_id number,
    desp_cus_manifiesto varchar2(150),
    desp_cus_cuscar varchar2(3500),
    desp_cus_fech_envio date,
    desp_cus_fecha_ing TIMESTAMP,
    desp_cus_user_ing varchar2(50),
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
    not_carrera TIMESTAMP,
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
    desp_not_carrera TIMESTAMP,
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
create table ADMIN.tropa_cuenta 
  (
    cuenta_id number not null ,
    cuenta_usu number,
    cuenta_cat number,
    cuenta_fech date,
    cuenta_ban number,
    cuenta_no char(25),
    cuenta_doc blob,
    cuenta_sit number,
    constraint pk_tropa_cuenta primary key (cuenta_id) 
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
    cuenta_doc blob,
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
    cuenta_doc blob,
    cuenta_sit number,
    cuenta_obs char(50),
    desp_cuenta_id number,
    desp_cuenta_usu number,
    desp_cuenta_cat number,
    desp_cuenta_fech date,
    desp_cuenta_ban number,
    desp_cuenta_no char(25),
    desp_cuenta_doc blob,
    desp_cuenta_sit number,
    desp_cuenta_obs char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.sub18_boleta 
  (
    sub18_bol_id number not null ,
    sub18_bol_id_contrato number not null,
    sub18_bol_fecha_emi date not null,
    sub18_bol_fecha_rev date not null,
    sub18_bol_cat_revisor number not null,
    sub18_bol_cat_comandante number not null,
    sub18_bol_anotaciones varchar2 not null,
    sub18_bol_situacion char(1) not null,
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
    sub18_bol_anotaciones varchar2(3500),
    sub18_bol_situacion char(1),
    desp_sub18_bol_id number,
    desp_sub18_bol_id_contrato number,
    desp_sub18_bol_fecha_emi date,
    desp_sub18_bol_fecha_rev date,
    desp_sub18_bol_cat_revisor number,
    desp_sub18_bol_cat_comandante number,
    desp_sub18_bol_anotaciones varchar2(3500),
    desp_sub18_bol_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.aud_opaf_carrera2 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo TIMESTAMP(0),
    car_punteo number,
    desp_car_edad number,
    desp_car_sexo char(1),
    desp_car_tiempo TIMESTAMP(0),
    desp_car_punteo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.fag_columnas 
  (
    col_id number not null ,
    col_desc varchar2(10) not null ,
    col_sit number not null ,
    constraint pk_fag_columnas primary key (col_id) 
  );
  /
create table ADMIN.per_plazas_orden 
  (
    plaza_num number not null ,
    plaza_desc_ct varchar2(100),
    plaza_desc_lg varchar2(3500),
    constraint pk_per_plazas_orden primary key (plaza_num) 
  );
  /
create table ADMIN.aud_per_plazas_orden 
  (
    plaza_num number,
    plaza_desc_ct varchar2(100),
    plaza_desc_lg varchar2(3500),
    desp_plaza_num number,
    desp_plaza_desc_ct varchar2(100),
    desp_plaza_desc_lg varchar2(3500),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
-- create table ADMIN.aud_hisfin 
--   (
--     omeses char(4),
--     oprograma char(2),
--     ogrupo char(2),
--     ounidad char(8),
--     odepen char(2),
--     obatallon char(2),
--     ocompa�ia char(2),
--     opeloton char(2),
--     oseccion char(2),
--     oescuadra char(2),
--     otipo char(1),
--     ogrado char(2),
--     ocatalogo number,
--     onombres char(45),
--     oempleo char(30),
--     oorden char(7),
--     osueldo number(16,2),
--     oalimentacion number(16,2),
--     omontepio number(16,2),
--     oipm1 number(16,2),
--     otimbres1 number(16,2),
--     ofianza number(16,2),
--     oliquido1 number(16,2),
--     odias char(2),
--     oa�os char(2),
--     obienal number(16,2),
--     oespecialidad number(16,2),
--     orepresenta number(16,2),
--     oresponsabili number(16,2),
--     ototal2 number(16,2),
--     oalimenpc number(16,2),
--     oipm2 number(16,2),
--     otimbres2 number(16,2),
--     oliquido2 number(16,2),
--     oemergencia number(16,2),
--     bil100 char(3),
--     bil50 char(3),
--     bil20 char(3),
--     bil10 char(3),
--     bil5 char(3),
--     bil1 char(3),
--     bil05 char(3),
--     mon25 char(3),
--     mon10 char(3),
--     mon5 char(3),
--     mon1 char(3),
--     tota_liqui number(16,2),
--     osueldopc number(16,2),
--     omontepiopc number(16,2),
--     obienalpc number(16,2),
--     oipm1pc number(16,2),
--     ofianzapc number(16,2),
--     oliquido1pc number(16,2),
--     oalimentr number(16,2),
--     oprimapc number(16,2),
--     orepresenpc number(16,2),
--     oresponsapc number(16,2),
--     ototal2pc number(16,2),
--     ocontruccion number(16,2),
--     oipm2pc number(16,2),
--     oliquido2pc number(16,2),
--     obonemerg number(16,2),
--     ocomplemento number(16,2),
--     oipmcomple number(16,2),
--     oliquicomple number(16,2),
--     onomcorto char(45),
--     oprimaings number(16,2),
--     oprimaprofe number(16,2),
--     oaguinaldo number(16,2),
--     obon50 number(16,2),
--     opar char(1),
--     ohoras char(1),
--     oaumento number(16,2),
--     ovaciones number(16,2),
--     oplaza char(9),
--     omes char(2),
--     omonte char(1),
--     osaldoase char(8),
--     oceom char(5),
--     oarma char(2),
--     osexo char(1),
--     omeomserie char(3),
--     obtaop number(16,2),
--     omeomnivel char(1),
--     ovarios char(15),
--     desp_omeses char(4),
--     desp_oprograma char(2),
--     desp_ogrupo char(2),
--     desp_ounidad char(8),
--     desp_odepen char(2),
--     desp_obatallon char(2),
--     desp_ocompa�ia char(2),
--     desp_opeloton char(2),
--     desp_oseccion char(2),
--     desp_oescuadra char(2),
--     desp_otipo char(1),
--     desp_ogrado char(2),
--     desp_ocatalogo number,
--     desp_onombres char(45),
--     desp_oempleo char(30),
--     desp_oorden char(7),
--     desp_osueldo number(16,2),
--     desp_oalimentacion number(16,2),
--     desp_omontepio number(16,2),
--     desp_oipm1 number(16,2),
--     desp_otimbres1 number(16,2),
--     desp_ofianza number(16,2),
--     desp_oliquido1 number(16,2),
--     desp_odias char(2),
--     desp_oa�os char(2),
--     desp_obienal number(16,2),
--     desp_oespecialidad number(16,2),
--     desp_orepresenta number(16,2),
--     desp_oresponsabili number(16,2),
--     desp_ototal2 number(16,2),
--     desp_oalimenpc number(16,2),
--     desp_oipm2 number(16,2),
--     desp_otimbres2 number(16,2),
--     desp_oliquido2 number(16,2),
--     desp_oemergencia number(16,2),
--     desp_bil100 char(3),
--     desp_bil50 char(3),
--     desp_bil20 char(3),
--     desp_bil10 char(3),
--     desp_bil5 char(3),
--     desp_bil1 char(3),
--     desp_bil05 char(3),
--     desp_mon25 char(3),
--     desp_mon10 char(3),
--     desp_mon5 char(3),
--     desp_mon1 char(3),
--     desp_tota_liqui number(16,2),
--     desp_osueldopc number(16,2),
--     desp_omontepiopc number(16,2),
--     desp_obienalpc number(16,2),
--     desp_oipm1pc number(16,2),
--     desp_ofianzapc number(16,2),
--     desp_oliquido1pc number(16,2),
--     desp_oalimentr number(16,2),
--     desp_oprimapc number(16,2),
--     desp_orepresenpc number(16,2),
--     desp_oresponsapc number(16,2),
--     desp_ototal2pc number(16,2),
--     desp_ocontruccion number(16,2),
--     desp_oipm2pc number(16,2),
--     desp_oliquido2pc number(16,2),
--     desp_obonemerg number(16,2),
--     desp_ocomplemento number(16,2),
--     desp_oipmcomple number(16,2),
--     desp_oliquicomple number(16,2),
--     desp_onomcorto char(45),
--     desp_oprimaings number(16,2),
--     desp_oprimaprofe number(16,2),
--     desp_oaguinaldo number(16,2),
--     desp_obon50 number(16,2),
--     desp_opar char(1),
--     desp_ohoras char(1),
--     desp_oaumento number(16,2),
--     desp_ovaciones number(16,2),
--     desp_oplaza char(9),
--     desp_omes char(2),
--     desp_omonte char(1),
--     desp_osaldoase char(8),
--     desp_oceom char(5),
--     desp_oarma char(2),
--     desp_osexo char(1),
--     desp_omeomserie char(3),
--     desp_obtaop number(16,2),
--     desp_omeomnivel char(1),
--     desp_ovarios char(15),
--     accion char(1) not null ,
--     usuario char(12) not null ,
--     hora TIMESTAMP(0) not null 
--   )

create table ADMIN.aud_stxparmd 
  (
    'language' char(3),
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
    val_table char(30),
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
    desp_val_table char(30),
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
    imagen blob not null ,
    usuario varchar2(30) not null ,
    'password' varchar2(50) not null ,
    conpassword varchar2(30) not null 
  );
  /
create table ADMIN.ciber_preguntas 
  (
    pregunta_id number not null ,
    pregunta_subtema number,
    pregunta_descripcion varchar2(3500),
    pregunta_situacion number default 1,
    constraint pk_ciber_preguntas primary key (pregunta_id) 
  );
  /
create table ADMIN.aud_ciber_preguntas 
  (
    pregunta_id number,
    pregunta_subtema number,
    pregunta_descripcion varchar2(3500),
    pregunta_situacion number,
    desp_pregunta_id number,
    desp_pregunta_subtema number,
    desp_pregunta_descripcion varchar2(3500),
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
    respuesta_descripcion varchar2(3500),
    respuesta_correcta number,
    respuesta_situacion number default 1,
    constraint pk_ciber_respuestas primary key (respuesta_id) 
  );
  /
create table ADMIN.aud_ciber_respuestas 
  (
    respuesta_id number,
    respuesta_pregunta number,
    respuesta_descripcion varchar2(3500),
    respuesta_correcta number,
    respuesta_situacion number,
    desp_respuesta_id number,
    desp_respuesta_pregunta number,
    desp_respuesta_descripcion varchar2(3500),
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
    evaluacion_fecha sysdate not null ,
    evaluacion_modulo number,
    evaluacion_situacion number default 1,
    constraint pk_ciber_evaluaciones primary key (evaluacion_id) 
  );
  /
create table ADMIN.ciber_usuarios 
  (
    usu_id number not null ,
    usu_correo varchar2(100),
    usu_password varchar2(60),
    usu_rol number default 1,
    usu_catalogo number,
    usu_registro sysdate not null ,
    usu_token char(13),
    usu_diploma char(13) default null,
    usu_fecha_diploma TIMESTAMP(0),
    usu_situacion number default 1,
    constraint pk_ciber_usuarios primary key (usu_id) 
  );
  /
create table ADMIN.pruebas_tiempo 
  (
    pru_id number not null ,
    pru_d_yearminute TIMESTAMP(0),
    pru_d_yearfraction datetime year to fraction(3),
    pru_d_hoursecond timestamp,
    pru_d_hourminute TIMESTAMP(0),
    pru_d_hourfraction timestamp(3),
    pru_d_minutesecond TIMESTAMP
  );
  /
create table ADMIN.opaf_carrera1 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo TIMESTAMP,
    car_punteo number
  );
  /
create table ADMIN.aud_opaf_carrera1 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo TIMESTAMP,
    car_punteo number,
    desp_car_edad number,
    desp_car_sexo char(1),
    desp_car_tiempo TIMESTAMP,
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
    smm_reporte_horain TIMESTAMP(0),
    smm_reporte_horafin TIMESTAMP(0),
    smm_reporte_situacion number
  );

create table ADMIN.aud_smm_reporte 
  (
    smm_reporte_id number,
    smm_reporte_nombre number,
    smm_reporte_comision number,
    smm_reporte_civil char(150),
    smm_reporte_motivo number,
    smm_reporte_cantidad number,
    smm_reporte_fecha date,
    smm_reporte_horain TIMESTAMP(0),
    smm_reporte_horafin TIMESTAMP(0),
    smm_reporte_situacion number,
    desp_smm_reporte_id number,
    desp_smm_reporte_nombre number,
    desp_smm_reporte_comision number,
    desp_smm_reporte_civil char(150),
    desp_smm_reporte_motivo number,
    desp_smm_reporte_cantidad number,
    desp_smm_reporte_fecha date,
    desp_smm_reporte_horain TIMESTAMP(0),
    desp_smm_reporte_horafin TIMESTAMP(0),
    desp_smm_reporte_situacion number,
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
    tiempo INTERVAL DAY TO SECOND(0),
    situacion number
  ):
  /
create table ADMIN.aud_tri_puntaje 
  (
    id number,
    participante number,
    etapa number,
    punteo number(10,3),
    tiempo INTERVAL DAY TO SECOND(0),
    situacion number,
    desp_id number,
    desp_participante number,
    desp_etapa number,
    desp_punteo number(10,3),
    desp_tiempo INTERVAL DAY TO SECOND(0),
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
    info varchar2(3500),
    dependencia number,
    fuente number,
    link varchar2(3500),
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
    info varchar2(3500),
    dependencia number,
    fuente number,
    link varchar2(3500),
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
    desp_info varchar2(3500),
    desp_dependencia number,
    desp_fuente number,
    desp_link varchar2(3500),
    desp_usuario number,
    accion char(1) not null ,
    usuario1 char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.amc_incautacion_armas 
  (
    id number not null ,
    topico number,
    info varchar2(3500),
    situacion number,
    constraint pk_amc_incautacion_armas primary key (id) 
  );
  /
create table ADMIN.aud_amc_incautacion_armas 
  (
    id number,
    topico number,
    info varchar2(3500),
    situacion number,
    desp_id number,
    desp_topico number,
    desp_info varchar2(3500),
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
    "desc" varchar2(30),
    situacion number,
    constraint pk_amc_organizacion_mov_social primary key (id) 
  );
  /
create table ADMIN.aud_amc_organizacion_mov_social 
  (
    id number,
    "desc" varchar2(30),
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
    "desc" varchar2(30),
    situacion number,
    constraint pk_amc_tipo_movimiento_social primary key (id) 
  );
  /
create table ADMIN.aud_amc_tipo_movimiento_social 
  (
    id number,
    "desc" varchar2(30),
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
    "desc" varchar2(20),
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
    info varchar2(3500),
    situacion number,
    constraint pk_amc_capturas primary key (id) 
  );
  /
create table ADMIN.aud_amc_capturas 
  (
    id number,
    topico number,
    info varchar2(3500),
    situacion number,
    desp_id number,
    desp_topico number,
    desp_info varchar2(3500),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.amc_actividad_vinculada 
  (
    id number not null ,
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_actividad_vinculada primary key (id) 
  );
  /
create table ADMIN.aud_amc_actividad_vinculada 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(25),
    cambio float,
    situacion number,
    constraint pk_amc_moneda primary key (id) 
  );

create table ADMIN.aud_amc_moneda 
  (
    id number,
    "desc" varchar2(25),
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
    "desc" varchar2(30),
    situacion number,
    constraint pk_amc_fenomeno_natural primary key (id) 
  );
  /
create table ADMIN.aud_amc_fenomeno_natural 
  (
    id number,
    "desc" varchar2(30),
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
    "desc" varchar2(30),
    situacion number,
    constraint pk_amc_tipo_topics primary key (id) 
  );
  /
create table ADMIN.aud_amc_tipo_topics 
  (
    id number,
    "desc" varchar2(30),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_tipo_armas primary key (id) 
  );
  /
create table ADMIN.aud_amc_tipo_armas 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_transporte primary key (id) 
  );
  /
create table ADMIN.aud_amc_transporte 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_prioridad primary key (id) 
  );
  /
create table ADMIN.aud_amc_prioridad 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_tendencia primary key (id) 
  );
  /
create table ADMIN.aud_amc_tendencia 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(50),
    situacion number,
    constraint pk_amc_usuarios primary key (id) 
  );
  /
create table ADMIN.aud_amc_usuarios 
  (
    id number,
    "desc" varchar2(50),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_calibre primary key (id) 
  );
  /
create table ADMIN.aud_amc_calibre 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(50),
    situacion number,
    constraint pk_amc_fuentes primary key (id) 
  );
  /
create table ADMIN.aud_amc_fuentes 
  (
    id number,
    "desc" varchar2(50),
    situacion number,
    desp_id number,
    desp_desc varchar2(50),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.amc_factor 
  (
    id number,
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_factor primary key (id) 
  );
  /
create table ADMIN.aud_amc_factor 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(50),
    situacion number,
    constraint pk_amc_delito primary key (id) 
  );
  /
create table ADMIN.aud_amc_delito 
  (
    id number,
    "desc" varchar2(50),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_drogas primary key (id) 
  );
  /
create table ADMIN.aud_amc_drogas 
  (
    id number,
    "desc" varchar2(20),
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
    "desc" varchar2(20),
    situacion number,
    constraint pk_amc_sexo primary key (id) 
  );
  /
create table ADMIN.aud_amc_sexo 
  (
    id number,
    "desc" varchar2(20),
    situacion number,
    desp_id number,
    desp_desc varchar2(20),
    desp_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.mper_firma 
  (
    fir_id number not null ,
    fir_catalogo number not null ,
    fir_rubrica blob not null ,
    fir_situacion number,
    constraint pk_mper_firma primary key (fir_id) 
  );
  /
create table ADMIN.aud_mper_firma 
  (
    fir_id number,
    fir_catalogo number,
    fir_rubrica blob,
    fir_situacion number,
    desp_fir_id number,
    desp_fir_catalogo number,
    desp_fir_rubrica blob,
    desp_fir_situacion number,
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
create table ADMIN.manto_entrega 
  (
    ent_codigo number not null ,
    ent_fecha sysdate,
    ent_usuario_catalogo number,
    ent_usuario_numero number,
    ent_tecnico_catalogo number,
    ent_equipo_codigo number,
    ent_detalle_situacion number default 1,
    constraint pk_manto_entrega primary key (ent_codigo) 
  );
  /
create table ADMIN.aud_manto_entrega 
  (
    ent_codigo number,
    ent_fecha sysdate,
    ent_usuario_catalogo number,
    ent_usuario_numero number,
    ent_tecnico_catalogo number,
    ent_equipo_codigo number,
    ent_detalle_situacion number,
    desp_ent_codigo number,
    desp_ent_fecha sysdate,
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
    sol_fecha sysdate,
    sol_usuario_catalogo number,
    sol_usuario_telefono number,
    sol_tecnico_catalogo number,
    sol_observacion varchar2(255),
    sol_detalle_situacion number default 1,
    sol_equipo_codigo number,
    constraint pk_manto_solicitud primary key (sol_codigo) 
  );
  /
create table ADMIN.aud_manto_solicitud 
  (
    sol_codigo number,
    sol_fecha sysdate,
    sol_usuario_catalogo number,
    sol_usuario_telefono number,
    sol_tecnico_catalogo number,
    sol_observacion varchar2(255),
    sol_detalle_situacion number,
    sol_equipo_codigo number,
    desp_sol_codigo number,
    desp_sol_fecha sysdate,
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
    rep_fecha sysdate,
    rep_tecnico_catalogo number,
    rep_descripcion varchar2(255),
    rep_notificacion varchar2(255),
    rep_detalle_situacion number default 1,
    rep_equipo_codigo number,
    constraint pk_manto_reparacion primary key (rep_codigo) 
  );
  /
create table ADMIN.aud_manto_reparacion 
  (
    rep_codigo number,
    rep_fecha sysdate,
    rep_tecnico_catalogo number,
    rep_descripcion varchar2(255),
    rep_notificacion varchar2(255),
    rep_detalle_situacion number,
    rep_equipo_codigo number,
    desp_rep_codigo number,
    desp_rep_fecha sysdate,
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
    equi_his_fecha sysdate,
    equi_his_estado number,
    equi_his_situacion number default 1,
    constraint pk_manto_equipo_historial primary key (equi_his_codigo) 
  );
  /
create table ADMIN.aud_manto_equipo_historial 
  (
    equi_his_codigo number,
    equi_his_codigo_equipo number,
    equi_his_codigo_solicitud number,
    equi_his_fecha sysdate,
    equi_his_estado number,
    equi_his_situacion number,
    desp_equi_his_codigo number,
    desp_equi_his_codigo_equipo number,
    desp_equi_his_codigo_solicitud number,
    desp_equi_his_fecha sysdate,
    desp_equi_his_estado number,
    desp_equi_his_situacion number,
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
    pro_descripcion varchar2(3500),
    pro_situacion number  default 1,
    constraint pk_inv_producto primary key (pro_id) 
  );
  /
create table ADMIN.aud_inv_producto 
  (
    pro_id number,
    pro_clase_id number,
    pro_nom_articulo varchar2(255),
    pro_descripcion varchar2(3500),
    pro_situacion number,
    desp_pro_id number,
    desp_pro_clase_id number,
    desp_pro_nom_articulo varchar2(255),
    desp_pro_descripcion varchar2(3500),
    desp_pro_situacion number,
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
    det_observaciones varchar2(3500),
    det_situacion number default 1,
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
    det_observaciones varchar2(3500),
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
    desp_det_observaciones varchar2(3500),
    desp_det_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
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
    ope_nacional char(1) default 'N',
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
    ope_situacion varchar2(3500),
    ope_mision varchar2(3500),
    ope_ejecucion varchar2(3500),
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
    desp_ope_situacion varchar2(3500),
    desp_ope_mision varchar2(3500),
    desp_ope_ejecucion varchar2(3500),
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
create table ADMIN.codemar_informacion 
  (
    info_id number not null ,
    info_operacion number,
    info_descripcion varchar2(3500),
    info_situacion number,
    constraint pk_codemar_informacion primary key (info_id) 
  );
  /
create table ADMIN.aud_codemar_informacion 
  (
    info_id number,
    info_operacion number,
    info_descripcion varchar2(3500),
    info_situacion number,
    desp_info_id number,
    desp_info_operacion number,
    desp_info_descripcion varchar2(3500),
    desp_info_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.codemar_novedades 
  (
    nov_id number not null ,
    nov_operacion number,
    nov_fechahora TIMESTAMP(0),
    nov_novedad varchar2(3500),
    nov_situacion number,
    constraint pk_codemar_novedades primary key (nov_id) 
  );
  /
create table ADMIN.aud_codemar_novedades 
  (
    nov_id number,
    nov_operacion number,
    nov_fechahora TIMESTAMP(0),
    nov_novedad varchar2(3500),
    nov_situacion number,
    desp_nov_id number,
    desp_nov_operacion number,
    desp_nov_fechahora TIMESTAMP(0),
    desp_nov_novedad varchar2(3500),
    desp_nov_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.codemar_recomendaciones 
  (
    rec_id number not null ,
    rec_operacion number,
    rec_recomendacion varchar2(3500),
    rec_situacion number,
    constraint pk_codemar_recomendaciones primary key (rec_id) 
  );
  /
create table ADMIN.aud_codemar_recomendaciones 
  (
    rec_id number,
    rec_operacion number,
    rec_recomendacion varchar2(3500),
    rec_situacion number,
    desp_rec_id number,
    desp_rec_operacion number,
    desp_rec_recomendacion varchar2(3500),
    desp_rec_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.codemar_clasificacion 
  (
    id number not null ,
    "desc" varchar2(30),
    situacion number not null ,
    constraint pk_codemar_clasificacion primary key (id) 
  );
  /
create table ADMIN.aud_codemar_clasificacion 
  (
    id number,
    "desc" varchar2(30),
    situacion number,
    desp_id number,
    desp_desc varchar2(30),
    desp_situacion number,
    usuario char(12) not null ,
    accion char(1) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.codemar_internacionales 
  (
    int_ope number not null ,
    int_pais number,
    int_documento varchar2(3500),
    int_situacion number default 1,
    constraint pk_codemar_internacionales primary key (int_ope) 
  );
  /
create table ADMIN.aud_codemar_internacionales 
  (
    int_ope number,
    int_pais number,
    int_documento varchar2(3500),
    int_situacion number,
    desp_int_ope number,
    desp_int_pais number,
    desp_int_documento varchar2(3500),
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
    hist_observaciones varchar2(3500),
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
    hist_dictamen varchar2(3500),
    hist_situacion number,
    constraint pk_arco_historial primary key (hist_id) 
  );
  /
create table ADMIN.apresto_asistencia 
  (
    asis_id number not null ,
    asis_catalogo number,
    asis_fecha TIMESTAMP(0),
    asis_observacion varchar2(3500),
    asis_situacion number default 1,
    constraint pk_apresto_asistencia primary key (asis_id) 
  );
  /
create table ADMIN.aud_apresto_asistencia 
  (
    asis_id number,
    asis_catalogo number,
    asis_fecha TIMESTAMP(0),
    asis_observacion varchar2(3500),
    asis_situacion number,
    desp_asis_id number,
    desp_asis_catalogo number,
    desp_asis_fecha TIMESTAMP(0),
    desp_asis_observacion varchar2(3500),
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
    hist_observaciones varchar2(3500),
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
    hist_dictamen varchar2(3500),
    hist_situacion number,
    desp_hist_id number,
    desp_hist_catalogo number,
    desp_hist_grado number,
    desp_hist_arma number,
    desp_hist_nom_certificado varchar2(100),
    desp_hist_codigo varchar2(10),
    desp_hist_observaciones varchar2(3500),
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
    desp_hist_dictamen varchar2(3500),
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
    busqueda_parametros varchar2(3500),
    busqueda_motivo varchar2(3500),
    busqueda_usuario number,
    busqueda_fecha_hora sysdate,
    constraint pk_registro_busqueda primary key (busqueda_id) 
  );
  /
create table ADMIN.aud_registro_busqueda 
  (
    busqueda_id number,
    busqueda_latitud number(11,8),
    busqueda_longitud number(11,8),
    busqueda_parametros varchar2(3500),
    busqueda_motivo varchar2(3500),
    busqueda_usuario number,
    busqueda_fecha_hora sysdate,
    desp_busqueda_id number,
    desp_busqueda_latitud number(11,8),
    desp_busqueda_longitud number(11,8),
    desp_busqueda_parametros varchar2(3500),
    desp_busqueda_motivo varchar2(3500),
    desp_busqueda_usuario number,
    desp_busqueda_fecha_hora sysdate,
    accion char(1) not null ,
    usuario char(12) not null ,
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
    nov_descripcion varchar2(3500),
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
    nov_descripcion varchar2(3500),
    nov_situacion number,
    desp_nov_id number,
    desp_nov_grupo number,
    desp_nov_cat_pagador number,
    desp_nov_fecha date,
    desp_nov_renglon number,
    desp_nov_novedad number,
    desp_nov_descripcion varchar2(3500),
    desp_nov_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
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
    tar_situacion number default 1,
    constraint pk_apresto_tareas primary key (tar_id) 
  );
  /
create table ADMIN.aud_apresto_tareas 
  (
    tar_id number,
    tar_dependencia number,
    tar_descripcion varchar2(3500),
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
    desp_tar_descripcion varchar2(3500),
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
create table ADMIN.comb_mensuales 
  (
    men_id number not null ,
    men_contrato number,
    men_fecha date,
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
    men_fecha date,
    men_cantidad number,
    men_tipo char(1),
    men_situacion number,
    desp_men_id number,
    desp_men_contrato number,
    desp_men_fecha date,
    desp_men_cantidad number,
    desp_men_tipo char(1),
    desp_men_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.comb_asignaciones_saldos 
  (
    sal_id number not null ,
    sal_fecha date,
    sal_cuota char(1),
    sal_tipo number,
    sal_situacion number,
    constraint pk_comb_asignaciones_saldos primary key (sal_id) 
  );
  /
create table ADMIN.aud_comb_asignaciones_saldos 
  (
    sal_id number,
    sal_fecha date,
    sal_cuota char(1),
    sal_tipo number,
    sal_situacion number,
    desp_sal_id number,
    desp_sal_fecha date,
    desp_sal_cuota char(1),
    desp_sal_tipo number,
    desp_sal_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.comb_hist_asignaciones 
  (
    hist_id number not null ,
    hist_proyecto number,
    hist_detalle varchar2(3500),
    hist_fecha TIMESTAMP(0),
    hist_situacion number,
    constraint pk_comb_hist_asignaciones primary key (hist_id) 
  );
  /
create table ADMIN.aud_comb_hist_asignaciones 
  (
    hist_id number,
    hist_proyecto number,
    hist_detalle varchar2(3500),
    hist_fecha TIMESTAMP(0),
    hist_situacion number,
    desp_hist_id number,
    desp_hist_proyecto number,
    desp_hist_detalle varchar2(3500),
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
    asig_doc_recepcion varchar2(3500),
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
    asig_doc_recepcion varchar2(3500),
    asig_situacion number,
    desp_asig_id number,
    desp_asig_dep number,
    desp_asig_proyecto number,
    desp_asig_cantidad number,
    desp_asig_doc_recepcion varchar2(3500),
    desp_asig_situacion number,
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
    are_motivo varchar2(3500),
    are_fecha_ini TIMESTAMP(0),
    are_fecha_fin TIMESTAMP(0),
    are_obs varchar2(3500),
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
    are_motivo varchar2(3500),
    are_fecha_ini TIMESTAMP(0),
    are_fecha_fin TIMESTAMP(0),
    are_obs varchar2(3500),
    are_estado number,
    are_situacion number,
    desp_are_id number,
    desp_are_gra_a number,
    desp_are_catalogo number,
    desp_are_ordeno number,
    desp_are_gra_o number,
    desp_are_motivo varchar2(3500),
    desp_are_fecha_ini TIMESTAMP(0),
    desp_are_fecha_fin TIMESTAMP(0),
    desp_are_obs varchar2(3500),
    desp_are_estado number,
    desp_are_situacion number,
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
    cons_desc varchar2(3500),
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
    cons_desc varchar2(3500),
    cons_situacion number,
    desp_cons_id number,
    desp_cons_cat_ordeno number,
    desp_cons_cat_ingreso number,
    desp_cons_fecha date,
    desp_cons_desc varchar2(3500),
    desp_cons_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.grupo_menuautocom 
  (
    gma_codigo number not null ,
    gma_desc varchar2(100) not null ,
    gma_fecha_creada TIMESTAMP(0),
    gma_descripcion varchar2(3500),
    gma_situacion char(1) default '1'
  );
  /
create table ADMIN.aud_grupo_menuautocom 
  (
    gma_codigo number,
    gma_desc varchar2(100),
    gma_fecha_creada TIMESTAMP(0),
    gma_descripcion varchar2(3500),
    gma_situacion char(1) default '1',
    desp_gma_codigo number,
    desp_gma_desc varchar2(100),
    desp_gma_fecha_creada TIMESTAMP(0),
    desp_gma_descripcion varchar2(3500),
    desp_gma_situacion char(1) default '1',
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.niveles_autocom 
  (
    aut_codigo number not null,
    aut_plaza number not null,
    aut_permiso number not null,
    aut_fecha_asignada TIMESTAMP(0),
    aut_fecha_eliminada TIMESTAMP(0),
    aut_asigno_per number,
    aut_elimino_per number,
    aut_descripcion_del varchar2(3500),
    aut_descripcion varchar2(3500),
    aut_situacion char(1) default '1'
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
    aut_descripcion_del varchar2(3500),
    aut_descripcion varchar2(3500),
    aut_situacion char(1) default '1',
    desp_aut_codigo number,
    desp_aut_plaza number,
    desp_aut_permiso number,
    desp_aut_fecha_asignada TIMESTAMP(0),
    desp_aut_fecha_eliminada TIMESTAMP(0),
    desp_aut_asigno_per number,
    desp_aut_elimino_per number,
    desp_aut_descripcion_del varchar2(3500),
    desp_aut_descripcion varchar2(3500),
    desp_aut_situacion char(1) default '1',
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
    menu_detalle varchar2(3500),
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
    menu_detalle varchar2(3500),
    menu_situacion number,
    desp_menu_codigo number,
    desp_menu_descr varchar2(100),
    desp_menu_clave varchar2(15),
    desp_menu_grupo number,
    desp_menu_detalle varchar2(3500),
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
    pro_archivo varchar2(3500),
    pro_situacion number,
    constraint pk_comb_proyectos primary key (pro_id) 
  );
  /
create table ADMIN.conocimientos_bienes 
  (
    con_numero number not null ,
    con_catalogo_entrega number,
    con_catalogo_recibe number,
    con_catalogo_devolu number,
    con_fecha_entrega sysdate,
    con_fecha_devolucion sysdate,
    con_observaciones varchar2(255),
    con_situacion number default 1,
    constraint pk_conocimientos_bienes primary key (con_numero) 
  );
  /
create table ADMIN.aud_conocimientos_bienes 
  (
    con_numero number,
    con_catalogo_entrega number,
    con_catalogo_recibe number,
    con_catalogo_devolu number,
    con_fecha_entrega sysdate,
    con_fecha_devolucion sysdate,
    con_observaciones varchar2(255),
    con_situacion number default 1,
    desp_con_numero number not null ,
    desp_con_catalogo_entrega number,
    desp_con_catalogo_recibe number,
    desp_con_catalogo_devolu number,
    desp_con_fecha_entrega sysdate,
    desp_con_fecha_devolucion sysdate,
    desp_con_observaciones varchar2(255),
    desp_con_situacion number default 1,
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
    val_razon varchar2(3500),
    val_razonamiento varchar2(3500),
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
    val_razon varchar2(3500),
    val_razonamiento varchar2(3500),
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
    desp_val_razon varchar2(3500),
    desp_val_razonamiento varchar2(3500),
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
    not_mensaje varchar2(3500),
    not_tipo number,
    not_url varchar2(250) default '/combustible',
    not_todos number default 0,
    not_situacion number default 1,
    constraint pk_comb_notificaciones primary key (not_id) 
  );
  /
create table ADMIN.aud_comb_notificaciones 
  (
    not_id number,
    not_fecha TIMESTAMP(0),
    not_dep number,
    not_mensaje varchar2(3500),
    not_tipo number,
    not_url varchar2(250) default '/combustible',
    not_todos number default 0,
    not_situacion number default 1,
    desp_not_id number,
    desp_not_fecha TIMESTAMP(0),
    desp_not_dep number,
    desp_not_mensaje varchar2(3500),
    desp_not_tipo number,
    desp_not_url varchar2(250) default '/combustible',
    desp_not_todos number default 0,
    desp_not_situacion number default 1,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
