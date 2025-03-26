
create table ADMIN.aud_smg_motivos 
  (
    mot_id number,
    mot_nombre varchar2(50),
    mot_desc varchar2(150),
    mot_sit number,
    desp_mot_id number,
    desp_mot_nombre varchar2(50),
    desp_mot_desc varchar2(150),
    desp_mot_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.controlorgep 
  (
    con_codigo number not null ,
    con_ordeno char(200) not null ,
    con_autorizo char(200) not null ,
    con_plan char(200) not null ,
    con_fecha DATE DEFAULT SYSDATE,
    con_situacion number
  );
  /
CREATE TABLE ADMIN.tropa_foto 
(
    fot_id NUMBER NOT NULL,
    fot_catalogo NUMBER,
    fot_descr CHAR(25),
    fot_doc BLOB,  -- Se elimina "IN blobdbs"
    fot_tipo VARCHAR2(255),
    fot_situacion NUMBER,
    CONSTRAINT pk_tropa_fotos PRIMARY KEY (fot_id)
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
    constraint pk_psan_boleta_restore primary key (bol_det_catalogo,bol_det_fecha,bol_det_sancion)
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
    sub18_bol_anotaciones varchar2(3500) not null,
    sub18_bol_situacion char(1) not null,
    constraint pk_sub18_boleta primary key (sub18_bol_id) 
  );
  /
create table ADMIN.aud_stxparmd 
  (
    "language" char(3),
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
    "password" varchar2(50) not null ,
    conpassword varchar2(30) not null 
  );
  /
create table ADMIN.ciber_evaluaciones 
  (
    evaluacion_id number not null ,
    evaluacion_usuario number,
    evaluacion_fecha DATE DEFAULT DATE DEFAULT SYSDATE not null ,
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
    usu_registro DATE DEFAULT DATE DEFAULT SYSDATE not null ,
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
    pru_d_yearfraction timestamp(3),
    pru_d_hoursecond timestamp,
    pru_d_hourminute TIMESTAMP(0),
    pru_d_hourfraction timestamp(3),
    pru_d_minutesecond TIMESTAMP
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
  );
  /
create table ADMIN.amc_nacionalidad 
  (
    id number not null ,
    "desc" varchar2(30),
    pais number,
    situacion number,
    constraint pk_amc_nacionalidad primary key (id) 
  );
  /
create table ADMIN.aud_amc_nacionalidad 
  (
    id number,
    "desc" varchar2(30),
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
create table ADMIN.aud_amc_tipo_desastre_natural 
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
create table ADMIN.municion_organizacion 
  (
    org_id number not null ,
    org_id_dependencia number,
    org_jerarquia number,
    org_nombre varchar2(100),
    org_situacion number,
    constraint pk_municion_organizacion primary key (org_id) 
  );
  /
create table ADMIN.manto_entrega 
  (
    ent_codigo number not null ,
    ent_fecha DATE DEFAULT SYSDATE,
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
    ent_fecha DATE DEFAULT SYSDATE,
    ent_usuario_catalogo number,
    ent_usuario_numero number,
    ent_tecnico_catalogo number,
    ent_equipo_codigo number,
    ent_detalle_situacion number,
    desp_ent_codigo number,
    desp_ent_fecha DATE DEFAULT SYSDATE,
    desp_ent_usuario_catalogo number,
    desp_ent_usuario_numero number,
    desp_ent_tecnico_catalogo number,
    desp_ent_equipo_codigo number,
    desp_ent_detalle_situacion number,
    accion char(1) not null,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.manto_solicitud 
  (
    sol_codigo number not null ,
    sol_fecha DATE DEFAULT SYSDATE,
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
    sol_fecha DATE DEFAULT SYSDATE,
    sol_usuario_catalogo number,
    sol_usuario_telefono number,
    sol_tecnico_catalogo number,
    sol_observacion varchar2(255),
    sol_detalle_situacion number,
    sol_equipo_codigo number,
    desp_sol_codigo number,
    desp_sol_fecha DATE DEFAULT SYSDATE,
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
    rep_fecha DATE DEFAULT SYSDATE,
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
    rep_fecha DATE DEFAULT SYSDATE,
    rep_tecnico_catalogo number,
    rep_descripcion varchar2(255),
    rep_notificacion varchar2(255),
    rep_detalle_situacion number,
    rep_equipo_codigo number,
    desp_rep_codigo number,
    desp_rep_fecha DATE DEFAULT SYSDATE,
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
    equi_his_fecha DATE DEFAULT SYSDATE,
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
    equi_his_fecha DATE DEFAULT SYSDATE,
    equi_his_estado number,
    equi_his_situacion number,
    desp_equi_his_codigo number,
    desp_equi_his_codigo_equipo number,
    desp_equi_his_codigo_solicitud number,
    desp_equi_his_fecha DATE DEFAULT SYSDATE,
    desp_equi_his_estado number,
    desp_equi_his_situacion number,
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
    ope_situacion clob,
    ope_mision clob,
    ope_ejecucion clob,
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
create table ADMIN.registro_busqueda 
  (
    busqueda_id number not null ,
    busqueda_latitud number(11,8),
    busqueda_longitud number(11,8),
    busqueda_parametros varchar2(3500),
    busqueda_motivo varchar2(3500),
    busqueda_usuario number,
    busqueda_fecha_hora DATE DEFAULT SYSDATE,
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
    busqueda_fecha_hora DATE DEFAULT SYSDATE,
    desp_busqueda_id number,
    desp_busqueda_latitud number(11,8),
    desp_busqueda_longitud number(11,8),
    desp_busqueda_parametros varchar2(3500),
    desp_busqueda_motivo varchar2(3500),
    desp_busqueda_usuario number,
    desp_busqueda_fecha_hora DATE DEFAULT SYSDATE,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.apresto_tareas 
  (
    tar_id number not null ,
    tar_dependencia number not null ,
    tar_descripcion varchar2(3500) not null ,
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
create table ADMIN.conocimientos_bienes 
  (
    con_numero number not null ,
    con_catalogo_entrega number,
    con_catalogo_recibe number,
    con_catalogo_devolu number,
    con_fecha_entrega DATE DEFAULT SYSDATE,
    con_fecha_devolucion DATE DEFAULT SYSDATE,
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
    con_fecha_entrega DATE DEFAULT SYSDATE,
    con_fecha_devolucion DATE DEFAULT SYSDATE,
    con_observaciones varchar2(255),
    con_situacion number default 1,
    desp_con_numero number not null ,
    desp_con_catalogo_entrega number,
    desp_con_catalogo_recibe number,
    desp_con_catalogo_devolu number,
    desp_con_fecha_entrega DATE DEFAULT SYSDATE,
    desp_con_fecha_devolucion DATE DEFAULT SYSDATE,
    desp_con_observaciones varchar2(255),
    desp_con_situacion number default 1,
    accion char(1) not null,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );