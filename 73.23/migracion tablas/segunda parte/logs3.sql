

create table ADMIN.psan_boleta_restore 
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
    constraint pk_psan_boleta_restore primary key (bol_det_catalogo,bol_det_fecha,bol_det_sancion)
  );
  /
create table ADMIN.ciber_evaluaciones 
  (
    evaluacion_id number not null ,
    evaluacion_usuario number,
    evaluacion_fecha DATE DEFAULT SYSDATE not null ,
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
    usu_registro DATE DEFAULT SYSDATE not null ,
    usu_token char(13),
    usu_diploma char(13) default null,
    usu_fecha_diploma TIMESTAMP(0),
    usu_situacion number default 1,
    constraint pk_ciber_usuarios primary key (usu_id) 
  )
