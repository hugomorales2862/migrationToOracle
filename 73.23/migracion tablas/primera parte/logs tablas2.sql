
create table ADMIN.dfam 
  (
    fam_cat_militar number not null,
    fam_cat_familiar number not null,
    fam_nom1 char(15) not null,
    fam_nom2 char(15),
    fam_ape1 char(15) not null,
    fam_ape2 char(15),
    fam_parentesco number not null,
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
    
    constraint ck_fam_ced_ordcheck (fam_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'Ñ-15' ,'O-16' ,'P-17' ,'Q-18' ,'&-15' ,'¥-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99' )) ,
    
    constraint ck_fam_est_civil check (fam_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    
    constraint ck_fam_sangre check (fam_sangre IN ('O+' ,'O-' ,'A+' ,'A-' ,'AB+' ,'AB-' ,'B+' ,'B-' ,'P' )) ,
    
    constraint ck_fam_sexo check (fam_sexo IN ('M' ,'F' )),
    constraint pk_dfam primary key (fam_cat_militar,fam_cat_familiar)  
  );
  /

create table ADMIN.licencias 
  (
    lic_catalogo number not null,
    lic_situacion char(2) not null,
    lic_inicia date not null,
    lic_finaliza date not null,
    lic_obs varchar2(2)
  );
  /

create table ADMIN.aud_licencias 
  (
    lic_catalogo number,
    lic_situacion char(2),
    lic_inicia date,
    lic_finaliza date,
    lic_obs varchar2(1),
    desp_lic_catalogo number,
    desp_lic_situacion char(2),
    desp_lic_inicia date,
    desp_lic_finaliza date,
    desp_lic_obs varchar2(1),
    usuario number,
    accion char(1),
    hora TIMESTAMP(0)
  );
  /

create table ADMIN.oema_entrena 
  (
    me_trans number not null,
    me_documentos varchar2(255) not null,
    me_emana number not null,
    me_encumple varchar2(255),
    me_tipo number,
    me_fecha date not null,
    me_motivo varchar2(255),
    me_elimina number,
    me_ftrans TIMESTAMP(3) not null,
    me_user char(10) not null,
    constraint pk_oema_entrena primary key (me_trans) 
  );
  /

create table ADMIN.aud_eva_especialistas 
  (
    esp_catalogo number,
    esp_ano number,
    esp_tipo number,
    esp_grado varchar2(200),
    esp_nom1 varchar2(200),
    esp_nom2 varchar2(200),
    esp_ape1 varchar2(200),
    esp_ape2 varchar2(200),
    esp_empleo varchar2(200),
    esp_plaza varchar2(200),
    esp_nom_comando varchar2(200),
    esp_anos1 number,
    esp_meses1 number,
    esp_dias1 number,
    esp_evaluador number,
    esp_eva_grado varchar2(200),
    esp_eva_nom1 varchar2(200),
    esp_eva_nom2 varchar2(200),
    esp_eva_ape1 varchar2(200),
    esp_eva_ape2 varchar2(200),
    esp_eva_puesto varchar2(200),
    esp_anos2 number,
    esp_meses2 number,
    esp_dias2 number,
    esp_biofisico number,
    esp_con_fisica number,
    esp_eva1 number,
    esp_eva2 number,
    esp_eva3 number,
    esp_eva4 number,
    esp_demeritos number,
    esp_arrestos number,
    esp_merito1 number,
    esp_merito11 varchar2(200),
    esp_merito2 number,
    esp_merito22 varchar2(200),
    esp_subtotal1 number,
    esp_concep1 number,
    esp_concep2 number,
    esp_concep3 number,
    esp_concep4 number,
    esp_concep5 number,
    esp_concep6 number,
    esp_concep7 number,
    esp_concep8 number,
    esp_concep9 number,
    esp_concep10 number,
    esp_concep11 number,
    esp_concep12 number,
    esp_concep13 number,
    esp_concep14 number,
    esp_concep15 number,
    esp_subtotal2 number,
    esp_total number,
    esp_categoria varchar2(200),
    esp_motivadoras varchar2(200),
    esp_correctivas varchar2(200),
    esp_obs varchar2(200),
    desp_esp_catalogo number,
    desp_esp_ano number,
    desp_esp_tipo number,
    desp_esp_grado varchar2(200),
    desp_esp_nom1 varchar2(200),
    desp_esp_nom2 varchar2(200),
    desp_esp_ape1 varchar2(200),
    desp_esp_ape2 varchar2(200),
    desp_esp_empleo varchar2(200),
    desp_esp_plaza varchar2(200),
    desp_esp_nom_comando varchar2(200),
    desp_esp_anos1 number,
    desp_esp_meses1 number,
    desp_esp_dias1 number,
    desp_esp_evaluador number,
    desp_esp_eva_grado varchar2(200),
    desp_esp_eva_nom1 varchar2(200),
    desp_esp_eva_nom2 varchar2(200),
    desp_esp_eva_ape1 varchar2(200),
    desp_esp_eva_ape2 varchar2(200),
    desp_esp_eva_puesto varchar2(200),
    desp_esp_anos2 number,
    desp_esp_meses2 number,
    desp_esp_dias2 number,
    desp_esp_biofisico number,
    desp_esp_con_fisica number,
    desp_esp_eva1 number,
    desp_esp_eva2 number,
    desp_esp_eva3 number,
    desp_esp_eva4 number,
    desp_esp_demeritos number,
    desp_esp_arrestos number,
    desp_esp_merito1 number,
    desp_esp_merito11 varchar2(200),
    desp_esp_merito2 number,
    desp_esp_merito22 varchar2(200),
    desp_esp_subtotal1 number,
    desp_esp_concep1 number,
    desp_esp_concep2 number,
    desp_esp_concep3 number,
    desp_esp_concep4 number,
    desp_esp_concep5 number,
    desp_esp_concep6 number,
    desp_esp_concep7 number,
    desp_esp_concep8 number,
    desp_esp_concep9 number,
    desp_esp_concep10 number,
    desp_esp_concep11 number,
    desp_esp_concep12 number,
    desp_esp_concep13 number,
    desp_esp_concep14 number,
    desp_esp_concep15 number,
    desp_esp_subtotal2 number,
    desp_esp_total number,
    desp_esp_categoria varchar2(200),
    desp_esp_motivadoras varchar2(200),
    desp_esp_correctivas varchar2(200),
    desp_esp_obs varchar2(200),
    accion varchar2(1) not null,
    usuario varchar2(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.larm_detalle 
  (
    deta_cat number not null,
    deta_lote number not null,
    deta_numero char(20) not null,
    deta_plaza number not null,
    deta_sit number not null,
    deta_doc varchar2(100) not null,
    deta_fecha date not null,
    deta_usuario varchar2(8,1) not null 
  );
  /

create table ADMIN.detalle_solicitud 
  (
    det_solicitud number not null,
    det_catalogo number not null,
    det_grado number not null,
    det_codigo_uni number not null,
    det_talla_uni varchar2(6) not null,
    det_talla_bota varchar2(5) not null,
    det_talla_gorra varchar2(6) not null,
    det_situacion number not null,
    det_fecha date not null,
    det_usuario number not null,
    det_comprobante number not null,
    det_codbarra varchar2(25),
    constraint pk_solicitud primary key (det_solicitud,det_catalogo)
  );
  /


create table ADMIN.aud_peva_detbolconcep 
  (
    con_noevaas varchar2(2),
    con_evaluado number,
    con_periodo number,
    con_pregunta number,
    con_nota number,
    desp_con_noevaas varchar2(2),
    desp_con_evaluado number,
    desp_con_periodo number,
    desp_con_pregunta number,
    desp_con_nota number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  











































create table ADMIN.lveh_aceite 
  (
    ace_code number not null,
    ace_desc varchar2(50) not null,
    constraint pk_constraint pk_aceite_lveh primary key (ace_code)  
  );
  /





























create table ADMIN.aud_esp_licencias 
  (
    lic_codigo number,
    lic_empresa number,
    lic_claselic number,
    lic_fechainicia date,
    lic_fechafin date,
    lic_numerolic varchar2(100),
    lic_seguro number,
    lic_vehiculo varchar2(250),
    lic_usuario varchar2(50),
    lic_vicemin varchar2(100),
    lic_obs varchar2(250),
    lic_status number,
    lic_fecactual date,
    lic_procedencia varchar2(250),
    desp_lic_codigo number,
    desp_lic_empresa number,
    desp_lic_claselic number,
    desp_lic_fechainicia date,
    desp_lic_fechafin date,
    desp_lic_numerolic varchar2(100),
    desp_lic_seguro number,
    desp_lic_vehiculo varchar2(250),
    desp_lic_usuario varchar2(50),
    desp_lic_vicemin varchar2(100),
    desp_lic_obs varchar2(250),
    desp_lic_status number,
    desp_lic_fecactual date,
    desp_lic_procedencia varchar2(250),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /





create table ADMIN.luni_solicitud 
  (
    sol_numero number not null,
    sol_docto varchar2(25) not null,
    sol_fecha date not null,
    sol_obs varchar2(250) not null,
    sol_dependencia number not null,
    sol_comte number not null,
    sol_logistico number not null,
    sol_dotac number not null,
    sol_usuario number not null,
    sol_comprobante number not null,
    constraint pk_soli primary key (sol_numero)  
  );
  /








eate table ADMIN.luni_documento 
  (
    doc_numero number not null,
    doc_documento varchar2(25) not null,
    doc_situacion number not null,
    constraint pk_documento primary key (doc_numero,doc_documento)  
  );
  /

























































































create table ADMIN.aud_mag_egresos 
  (
    egr_id number,
    egr_fecha TIMESTAMP,
    egr_usuario number,
    egr_dependencia number,
    egr_departamento char(4),
    egr_municipio char(4),
    egr_observaciones varchar2(255),
    egr_referencia char(50),
    egr_personal number,
    egr_situacion number,
    desp_egr_id number,
    desp_egr_fecha TIMESTAMP,
    desp_egr_usuario number,
    desp_egr_dependencia number,
    desp_egr_departamento char(4),
    desp_egr_municipio char(4),
    desp_egr_observaciones varchar2(255),
    desp_egr_referencia char(50),
    desp_egr_personal number,
    desp_egr_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.mag_insumos 
  (
    ins_id number not null,
    ins_descripcion varchar2(100) not null,
    ins_medida varchar2(50) not null,
    ins_situacion number not null,
    constraint pk_mag_insumos primary key (ins_id)  
  );
  /  









create table ADMIN.cor_corr_seg 
  (
    seg_usuario number not null,
    seg_pass varchar2(30) not null,
    seg_oficina number not null,
    seg_plaza number not null,
    seg_nivel number not null,
    seg_seguridad number not null,
    seg_habilita number not null,
    seg_situacion number not null,
    constraint pk_segusuarios primary key (seg_usuario)  
  );
  /









create table ADMIN.dot_detalle 
  (
    det_solicitud number not null,
    det_catalogo number not null,
    det_grado number not null,
    det_codigo_uni number not null,
    det_talla_uni varchar2(6) not null,
    det_talla_bota varchar2(5) not null,
    det_talla_gorra varchar2(6) not null,
    det_situacion number not null,
    det_fecha date not null,
    det_usuario number not null,
    det_comprobante number not null,
    det_codbarra varchar2(15),
    constraint pk_detsolicitud primary key (det_solicitud,det_catalogo)  
  );
  /












































































create table ADMIN.aud_ing_veh_servicios 
  (
    ivser_codigo number,
    ivser_vehiculo number,
    ivser_fecha date,
    ivser_odometro number,
    isver_situacion char(1),
    isver_observacion varchar2(200),
    desp_ivser_codigo number,
    desp_ivser_vehiculo number,
    desp_ivser_fecha date,
    desp_ivser_odometro number,
    desp_isver_situacion char(1),
    desp_isver_observacion varchar2(200),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /
create table ADMIN.eva_factores 
  (
    fac_id number not null,
    fac_desc_lg varchar2(75) not null,
    fac_situacion number not null,
    constraint pk_eva_factores primary key (fac_id) 
  );
  /








































create table ADMIN.bonoextra 
  (
    bon_plaza number not null,
    bon_clase number not null,
    bon_cantidad number(16,2) not null,
    bon_grupo number,
    constraint pk_bonoextra primary key (bon_plaza)  
  );
  /


























































create table ADMIN.amp_manzana 
  (
    man_id number not null,
    man_letra varchar2(6) not null,
    man_sit char(1) default null,
    man_obs varchar2(30) default null,
    constraint pk_amp_manzana primary key (man_id)  
  );
  /



create table ADMIN.opaf_notas1 
  (
    not_catalogo number not null,
    not_fecha date not null,
    not_dominadas number not null,
    not_punteo_dom number not null,
    not_abdominales number not null,
    not_punteo_abd number not null,
    not_carrera datetime minute to second not null,
    not_punteo_car number not null,
    not_promedio number(5,2) not null,
    not_obs varchar2(255),
    not_tipo varchar2(1) not null,
    not_revisado number not null,
    not_dependencia number not null,
    not_peso number not null,
    not_estatura number(3,2) not null,
    not_imc number(4,2) not null,
    not_perfil varchar2(15) not null,
    not_fec_certi date,
    not_grado number not null,
    not_usuario number not null,
    not_acta varchar2(100),
    not_extemporaneo number not null,
    not_evento number,
    constraint pk_vopaf_notas1 primary key (not_catalogo,not_fecha) 
  );
  /



