

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
    
    constraint ck_fam_ced_ord check (fam_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'Ñ-15' ,'O-16' ,'P-17' ,'Q-18' ,'&-15' ,'¥-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99' )) ,
    
    constraint ck_fam_est_civil check (fam_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    
    constraint ck_fam_sangre check (fam_sangre IN ('O+' ,'O-' ,'A+' ,'A-' ,'AB+' ,'AB-' ,'B+' ,'B-' ,'P' )) ,
    
    constraint ck_fam_sexo check (fam_sexo IN ('M' ,'F' )),
    constraint pk_dfam primary key (fam_cat_militar,fam_cat_familiar)  
  )

  create table ADMIN.luni_documento 
  (
    doc_numero number not null,
    doc_documento varchar2(25) not null,
    doc_situacion number not null,
    constraint pk_documento2 primary key (doc_numero,doc_documento)  
  )



create table ADMIN.opaf_notas1 
  (
    not_catalogo number not null,
    not_fecha date not null,
    not_dominadas number not null,
    not_punteo_dom number not null,
    not_abdominales number not null,
    not_punteo_abd number not null,
    not_carrera TIMESTAMP not null,
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
  )




