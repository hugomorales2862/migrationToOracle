
-- Table ADMIN.ARMAS creado.


-- Table ADMIN.PARENTESCOS creado.


-- Table ADMIN.ESCUELAS creado.


-- Table ADMIN.CURSOS creado.


-- Table ADMIN.PAISES creado.


-- Table ADMIN.MEOM creado.


-- Table ADMIN.GRADOS creado.


-- Table ADMIN.ASIGNACIONES creado.


-- Table ADMIN.MENU_MASTER creado.


-- Table ADMIN.MFSUB creado.


-- Table ADMIN.MFSUE_E creado.


-- Table ADMIN.MFSUE_O creado.


-- Table ADMIN.MFTRO creado.


-- Table ADMIN.PDINERO creado.


-- Table ADMIN.MFDEP creado.


-- Table ADMIN.BANDERAS creado.


-- Table ADMIN.SYSMENUS creado.


-- Table ADMIN.SYSMENUITEMS creado.


-- Table ADMIN.TROPABAJAS creado.


-- Table ADMIN.TROPA_SP creado.


-- Table ADMIN.ASIG_PLAZA creado.


-- Table ADMIN.PERMTROPA creado.


-- Table ADMIN.DEP_MUN creado.


-- Table ADMIN.PCDTABLR creado.


-- Table ADMIN.CGDCOLMR creado.


-- Table ADMIN.CGDTABLR creado.


-- Table ADMIN.CGMCMNDD creado.


-- Table ADMIN.CGMCMNDR creado.


-- Table ADMIN.CGMMENUD creado.


-- Table ADMIN.CGMMPOSR creado.


-- Table ADMIN.CGRRIMGD creado.


-- Table ADMIN.CGSSCRNR creado.


-- Table ADMIN.CGXSORCD creado.


-- Table ADMIN.STXACKND creado.


-- Table ADMIN.STXACTNR creado.


-- Table ADMIN.STXADDLD creado.


-- Table ADMIN.STXADDLR creado.


-- Table ADMIN.STXCOMPR creado.


-- Table ADMIN.STXERORD creado.


-- Table ADMIN.STXERORH creado.


create table ADMIN.stxfiler 
  (
    uniq_num number,
    line_no number not null,
    line_clob char(248)
  );
  /


-- Table ADMIN.STXFILTR creado.


-- Table ADMIN.STXFUNCR creado.


-- Table ADMIN.STXGROPD creado.


-- Table ADMIN.STXHELPD creado.


-- Table ADMIN.STXHOTKD creado.


-- Table ADMIN.STXKEYSR creado.


-- Table ADMIN.STXLANGR creado.


-- Table ADMIN.STXMSSGR creado.


-- Table ADMIN.STXNOTED creado.


-- Table ADMIN.STXNVGTD creado.


create table ADMIN.stxparmd 
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
    val_table char(30),
    val_column char(60),
    val_filter char(60),
    val_join char(60),
    val_switchbox char(8),
    val_description char(18),
    zoom_filter char(60),
    zoom_switchbox char(8),
    parm_value char(32)
  );
  /


-- Table ADMIN.STXPERMD creado.


-- Table ADMIN.STXPERMR creado.


-- Table ADMIN.STXPROGR creado.


-- Table ADMIN.STXSECUD creado.


-- Table ADMIN.STXTODOD creado.


-- Table ADMIN.STXTXTDD creado.


-- Table ADMIN.STXUNIQC creado.


-- Table ADMIN.CGSBLOBR creado.


-- Table ADMIN.CGSCLIPR creado.


-- Table ADMIN.CGSCMDSD creado.


-- Table ADMIN.CGSCMDSR creado.


-- Table ADMIN.CGSDPNDD creado.


-- Table ADMIN.CGSIMGED creado.


-- Table ADMIN.CGSINPTR creado.


-- Table ADMIN.CGSSTYPR creado.


-- Table ADMIN.CGSTRIGR creado.


create table ADMIN.cgszoomr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    key_field char(18),
    zoom_scrid char(7),
    zoom_table char(18),
    noautozoom char(1),
    sel_filter char(200),
    zoom_from char(18)
  );
  /

-- Table ADMIN.CGXFNAMR creado.


-- Table ADMIN.CGXFSETD creado.


create table ADMIN.cgxlkupr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    lkup_name char(18),
    key_field char(18),
    lkup_table char(18),
    sel_filter char(200)
  );
  /


-- Table ADMIN.CGXLNTOD creado.


-- Table ADMIN.CGXMATHR creado.


-- Table ADMIN.STXPARMH creado.


-- Table ADMIN.IPM_FACT creado.


-- Table ADMIN.BANEJER_ACC creado.


-- Table ADMIN.PBIENAL creado.


-- Table ADMIN.CGSTRIGD creado.


-- Table ADMIN.SINEFECTO creado.


-- Table ADMIN.PARTIDAS creado.


-- Table ADMIN.NOESTAN creado.


-- Table ADMIN.EMPRESAS creado.


-- Table ADMIN.FMASI creado.


-- Table ADMIN.FMDES creado.


-- Table ADMIN.SYSCOLVAL creado.


-- Table ADMIN.CGSIFLDD creado.


-- Table ADMIN.DISR creado.


-- Table ADMIN.DESCUENTOS creado.


-- Table ADMIN.PERMISOS creado.


-- Table ADMIN.HDAREAL creado.


-- Table ADMIN.RETENCION creado.


-- Table ADMIN.JEFES creado.


-- Table ADMIN.FUERZA creado.


-- Table ADMIN.NOPAGADOS creado.


-- Table ADMIN.DES_NO_EFEC creado.


-- Table ADMIN.TIPO_DOCUM creado.


-- Table ADMIN.MENUS creado.


-- Table ADMIN.USUMENU creado.


-- Table ADMIN.MCOLS creado.


-- Table ADMIN.MREPS creado.


-- Table ADMIN.DEPMUN creado.


-- Table ADMIN.MEOP creado.


-- Table ADMIN.FBITACORA creado.


-- Table ADMIN.CATEGORIAS creado.


-- Table ADMIN.FNOSALTA creado.


-- Table ADMIN.TROPA_PV creado.


-- Table ADMIN.DOC_PENDIENTES creado.


-- Table ADMIN.OFICINA creado.


-- Table ADMIN.CORR_SEG creado.


-- Table ADMIN.MEOMEOP creado.


-- Table ADMIN.TABLAS creado.


-- Table ADMIN.CHUNK creado.


-- Table ADMIN.CUENTAS creado.


-- Table ADMIN.MFSUE_ET creado.


-- Table ADMIN.MFTROR creado.


-- Table ADMIN.AUD_MFTRO creado.


-- Table ADMIN.AUD_MFSUE_ET creado.


-- Table ADMIN.CMM_HOSPITALIZADOS creado.


-- Table ADMIN.CMM_REBAJADOS creado.


-- Table ADMIN.MNUMS creado.


-- Table ADMIN.DFDES_TRO creado.



create table ADMIN.permper 
  (
    perm_usuario char(10),
    perm_programa char(20),
    perm_permiso number,
    
    constraint ck_perm_permiso2 check (perm_permiso IN (0 ,100 ,150 ,200 ,250 ,300 ,350 ,400 ,410 ,420 ,450 ,500 ,550 )) ,
    constraint pk_permper primary key (perm_usuario,perm_programa)  
  );
  /


-- Table ADMIN.PERMORGA creado.


create table ADMIN.process 
  (
    cod_process number not null,
    oper_process number,
    h_ini_process timestamp,
    comm_process char(15),
    desc_process char(45),
    h_fin_process timestamp,
    fec_process date,
    host_process char(10),
    cinta_process char(10),
    param_process number
  );
  /


-- Table ADMIN.UBICACION_CERRADOS creado.


-- Table ADMIN.TR_ARMAS creado.


-- Table ADMIN.DCUR creado.


-- Table ADMIN.DFDES_BTRAB creado.


-- Table ADMIN.UBICACION_DOCUM creado.


-- Table ADMIN.SISTEMAS creado.


-- Table ADMIN.HIST_REP creado.


-- Table ADMIN.AGUI creado.



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


-- Table ADMIN.MAESTRO creado.


-- Table ADMIN.AUD_UBICA_CERRA creado.


-- Table ADMIN.DFDES_IPM creado.


-- Table ADMIN.RESUTRO creado.


-- Table ADMIN.TSAN creado.


-- Table ADMIN.MDEP creado.


-- Table ADMIN.AUD_PERMORGA creado.


-- Table ADMIN.DOCUMENTO creado.


-- Table ADMIN.BONO14 creado.


-- Table ADMIN.AUD_DOC_PENDIENTES creado.


-- Table ADMIN.AUD_MFTROR creado.


-- Table ADMIN.AUD_MEOMEOP creado.


-- Table ADMIN.AUD_TROPABAJAS creado.


-- Table ADMIN.MARGINADO creado.


-- Table ADMIN.DOC_CERRADOS creado.


-- Table ADMIN.AUD_DOC_CERRADOS creado.


-- Table ADMIN.AUD_DCUR creado.


-- Table ADMIN.MLINS creado.


-- Table ADMIN.SITUACIONES creado.


-- Table ADMIN.TEMPDPUE creado.


-- Table ADMIN.USUARIOSNT creado.



create table ADMIN.aud_dpue 
  (
    catalogo number,
    grado number,
    arma number,
    dependencia number,
    jerarquia char(3),
    plaza number,
    ceom char(6),
    "desc" char(45),
    situacion char(2),
    fec_nomb date,
    ord_gral char(7),
    punto_og number,
    fec_cese date,
    desp_catalogo number,
    desp_grado number,
    desp_arma number,
    desp_dependencia number,
    desp_jerarquia char(3),
    desp_plaza number,
    desp_ceom char(6),
    desp_desc char(45),
    desp_situacion char(2),
    desp_fec_nomb date,
    desp_ord_gral char(7),
    desp_punto_og number,
    desp_fec_cese date,
    accion char(1),
    usuario char(10),
    hora TIMESTAMP(0)
  );
  /

-- Table ADMIN.PERMORDEN creado.


-- Table ADMIN.CLA_COND creado.


-- Table ADMIN.LSM_MARCA creado.


-- Table ADMIN.LSM_EQUIPO creado.


-- Table ADMIN.MENU_DET creado.


-- Table ADMIN.ORDEN creado.


-- Table ADMIN.ORDEN_H creado.


-- Table ADMIN.SITRASLA creado.


-- Table ADMIN.HFDES1 creado.


-- Table ADMIN.HFASIGC creado.


-- Table ADMIN.DLICEN creado.


-- Table ADMIN.TUSUAR creado.


-- Table ADMIN.INDICE_DAU creado.


-- Table ADMIN.EVA_DETALLE creado.


-- Table ADMIN.ACCESOS creado.


-- Table ADMIN.RH_EVALUACION creado.


-- Table ADMIN.RH_ASPECTO creado.


-- Table ADMIN.RH_TIPO_ASPECTO creado.


-- Table ADMIN.RH_CATEGORIA creado.


-- Table ADMIN.RH_DET_EVALUACION creado.


-- Table ADMIN.AUD_ASAMBLEA creado.


-- Table ADMIN.AUD_ASIG_CAT creado.


-- Table ADMIN.AUD_ASIG_PLAZA creado.


-- Table ADMIN.AUD_CATEGORIAS creado.


-- Table ADMIN.AUD_CMM_REBAJADOS creado.


-- Table ADMIN.AUD_DEPMUN creado.


-- Table ADMIN.AUD_DES_NO_EFEC creado.


-- Table ADMIN.AUD_DESCRIPCIONES creado.


-- Table ADMIN.AUD_EVA_DETALLE creado.


-- Table ADMIN.AUD_DISR creado.


-- Table ADMIN.INSP_TIPOS creado.


-- Table ADMIN.INSP_SITUACION creado.



create table ADMIN.insp_nueva 
  (
    codigo number not null,
    corta char(50),
    mediana char(50),
    larga char(50),
    host char(50),
    usuario char(50),
    "date" date,
    del number,
    constraint pk_insp_nueva primary key (codigo)  
  );
  /


-- Table ADMIN.INSP_IANOTA creado.


-- Table ADMIN.INSP_ESTADO creado.


-- Table ADMIN.INSP_ANOTACIONES creado.



create table ADMIN.aud_insp_nueva 
  (
    codigo number,
    corta char(50),
    mediana char(50),
    larga char(50),
    host char(50),
    usuarios char(50),
    "date" date,
    del number,
    desp_codigo number,
    desp_corta char(50),
    desp_mediana char(50),
    desp_larga char(50),
    desp_host char(50),
    desp_usuarios char(50),
    desp_date date,
    desp_del number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_INSP_SITUACION creado.


-- Table ADMIN.AUD_INSP_ESTADO creado.


-- Table ADMIN.AUD_INSP_TIPOS creado.


-- Table ADMIN.AUD_INSP_ANOTACIONES creado.


-- Table ADMIN.AUD_INSP_IANOTA creado.


-- Table ADMIN.CC_TIP_REQUERIMIENTO creado.


-- Table ADMIN.CC_DIVISIONES creado.


-- Table ADMIN.CC_SITUACIONES creado.


-- Table ADMIN.CC_PROBLEMAS creado.


-- Table ADMIN.AUD_CC_DIVISIONES creado.


-- Table ADMIN.AUD_CC_PROBLEMAS creado.


-- Table ADMIN.AUD_CC_SITUACIONES creado.


-- Table ADMIN.AUD_CC_TIP_REQUERIMIENTO creado.


-- Table ADMIN.AUD_DFDES_INV creado.


-- Table ADMIN.AUD_DFDES_INVT creado.


-- Table ADMIN.AUD_DFDES_IPM creado.


-- Table ADMIN.INSP_INMUEBLES creado.


-- Table ADMIN.AUD_ACCESOS creado.


-- Table ADMIN.AUD_CHUNK creado.


-- Table ADMIN.AUD_CLA_COND creado.


-- Table ADMIN.AUD_EMPRESAS creado.


-- Table ADMIN.AUD_FBITACORA creado.


-- Table ADMIN.AUD_FMASI creado.


-- Table ADMIN.AUD_FMDES creado.


-- Table ADMIN.AUD_FNOSALTA creado.


-- Table ADMIN.AUD_FUERZA creado.


-- Table ADMIN.AUD_HDAREAL creado.


-- Table ADMIN.AUD_HIST_REP creado.


-- Table ADMIN.AUD_INDICE_DAU creado.


-- Table ADMIN.INSP_OBSERVACIONES creado.


-- Table ADMIN.AUD_INSP_OBSERVACIONES creado.


-- Table ADMIN.AUD_LSM_EQUIPO creado.


-- Table ADMIN.AUD_LSM_MARCA creado.


-- Table ADMIN.AUD_MAESTRO creado.


-- Table ADMIN.AUD_MCOLS creado.


-- Table ADMIN.AUD_MLINS creado.


-- Table ADMIN.AUD_MNUMS creado.


-- Table ADMIN.AUD_MREPS creado.


-- Table ADMIN.AUD_RH_ASPECTO creado.


-- Table ADMIN.AUD_RH_CATEGORIA creado.


-- Table ADMIN.AUD_RH_DET_EVALUACION creado.


-- Table ADMIN.AUD_RH_EVALUACION creado.


-- Table ADMIN.AUD_RH_TIPO_ASPECTO creado.


-- Table ADMIN.AUD_NOESTAN creado.


-- Table ADMIN.AUD_NOPAGADOS creado.


-- Table ADMIN.AUD_ORDEN_H creado.


-- Table ADMIN.AUD_PDINERO creado.


-- Table ADMIN.AUD_PERMORDEN creado.




-- Table ADMIN.AUD_RETENCION creado.


-- Table ADMIN.AUD_SINEFECTO creado.


-- Table ADMIN.AUD_SISTEMAS creado.


-- Table ADMIN.AUD_SITRASLA creado.


-- Table ADMIN.AUD_T_ORG creado.


-- Table ADMIN.AUD_TABLAS creado.


-- Table ADMIN.AUD_TCONEC creado.


-- Table ADMIN.AUD_TAUTH creado.


-- Table ADMIN.AUD_TELEFONOS creado.


-- Table ADMIN.AUD_TEMPDPUE creado.


-- Table ADMIN.AUD_TR_ARMAS creado.


-- Table ADMIN.AUD_TUSUAR creado.


-- Table ADMIN.AUD_USUARIOS creado.


-- Table ADMIN.AUD_USUARIOS_SISTEMA creado.


-- Table ADMIN.AUD_USUARIOSNT creado.


-- Table ADMIN.AUD_USUMENU creado.



create table ADMIN.cc_dticket 
  (
    dtitransaccion number,
    dtiorden number,
    dtitiprequeri number,
    dtidescripcion varchar2(180),
    dticantidad number,
    dtifecfin date,
    dtihorafin timestamp,
    dtifecentrega date,
    dtihoraentrega timestamp,
    dtisituacion number,
    constraint pk_cc_dticket primary key (dtitransaccion, dtiorden)
  );
  /


create table ADMIN.cc_mticket 
  (
    mtitransaccion number not null,
    mtifecinicio date,
    mtihorainicio timestamp,
    mtisolicitante number,
    mtiorigen number,
    mtidestino number,
    mtiatendio number,
    mtiresponsable number,
    mtisituacion number,
    mtifecentrega date,
    mtihoraentrega timestamp,
    constraint pk_cc_mticket primary key (mtitransaccion)
  );
  /


create table ADMIN.aud_cc_mticket 
  (
    mtitransaccion number,
    mtifecinicio date,
    mtihorainicio timestamp,
    mtisolicitante number,
    mtiorigen number,
    mtidestino number,
    mtiatendio number,
    mtiresponsable number,
    mtisituacion number,
    mtifecentrega date,
    mtihoraentrega timestamp,
    desp_mtitransaccion number,
    desp_mtifecinicio date,
    desp_mtihorainicio timestamp,
    desp_mtisolicitante number,
    desp_mtiorigen number,
    desp_mtidestino number,
    desp_mtiatendio number,
    desp_mtiresponsable number,
    desp_mtisituacion number,
    desp_mtifecentrega date,
    desp_mtihoraentrega timestamp,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null
  );
  /



create table ADMIN.aud_cc_dticket 
  (
    dtitransaccion number,
    dtiorden number,
    dtitiprequeri number,
    dtidescripcion varchar2(180),
    dticantidad number,
    dtifecfin date,
    dtihorafin timestamp,
    dtifecentrega date,
    dtihoraentrega timestamp,
    dtisituacion number,
    desp_dtitransaccion number,
    desp_dtiorden number,
    desp_dtitiprequeri number,
    desp_dtidescripcion varchar2(180),
    desp_dticantidad number,
    desp_dtifecfin date,
    desp_dtihorafin timestamp,
    desp_dtifecentrega date,
    desp_dtihoraentrega timestamp,
    desp_dtisituacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_INSP_INMUEBLES creado.


-- Table ADMIN.C_PROPOSITO creado.


-- Table ADMIN.AUD_C_PROPOSITO creado.


-- Table ADMIN.C_EMPRESAS creado.


-- Table ADMIN.AUD_C_EMPRESAS creado.


-- Table ADMIN.AUD_C_OFICINAS creado.


-- Table ADMIN.AUD_C_TIPO_DOCUM creado.


-- Table ADMIN.AUD_C_CORR_SEG creado.


-- Table ADMIN.AUD_PCDTABLR creado.


-- Table ADMIN.AUD_ARMAS creado.


-- Table ADMIN.AUD_ASIGNACIONES creado.


-- Table ADMIN.AUD_BANDERAS creado.


-- Table ADMIN.AUD_COND creado.


-- Table ADMIN.AUD_CURSOS creado.


-- Table ADMIN.AUD_DEP_MUN creado.


-- Table ADMIN.AUD_DESCUENTOS creado.


-- Table ADMIN.AUD_DLICEN creado.


-- Table ADMIN.AUD_ESCUELAS creado.


-- Table ADMIN.AUD_EVALUACION creado.


-- Table ADMIN.AUD_GRADOS creado.


-- Table ADMIN.AUD_MARGINADO creado.


-- Table ADMIN.AUD_MDEP creado.


-- Table ADMIN.AUD_MENU_DET creado.


-- Table ADMIN.AUD_MENU_MASTER creado.


-- Table ADMIN.AUD_MENUS creado.


-- Table ADMIN.AUD_MEOM creado.


-- Table ADMIN.AUD_MEOP creado.


-- Table ADMIN.AUD_MFDEP creado.


-- Table ADMIN.AUD_MFSUB creado.


-- Table ADMIN.AUD_MFSUE_E creado.


-- Table ADMIN.AUD_MFSUE_O creado.


-- Table ADMIN.AUD_OFICINA creado.


-- Table ADMIN.AUD_PAISES creado.


-- Table ADMIN.AUD_PARENTESCOS creado.


-- Table ADMIN.AUD_PBIENAL creado.


-- Table ADMIN.AUD_PERMISOS creado.


-- Table ADMIN.AUD_PERMPER creado.


-- Table ADMIN.AUD_PERMTROPA creado.


-- Table ADMIN.AUD_SITUACIONES creado.


-- Table ADMIN.AUD_TIPO_DOCUM creado.


-- Table ADMIN.AUD_TROPA_PV creado.


-- Table ADMIN.AUD_TROPA_SP creado.


-- Table ADMIN.AUD_TSAN creado.


-- Table ADMIN.AUD_JEFES creado.


-- Table ADMIN.AUD_CORR_SEG creado.


-- Table ADMIN.AUD_SAND creado.


-- Table ADMIN.C_OFICINAS creado.


-- Table ADMIN.C_TIPO_DOCUM creado.


-- Table ADMIN.R_PAPEL creado.


-- Table ADMIN.R_PROGRAMAS creado.


-- Table ADMIN.AUD_R_PROGRAMAS creado.


-- Table ADMIN.AUD_R_PAPEL creado.


-- Table ADMIN.AUD_R_DET_REQUERIMIENTOS creado.


-- Table ADMIN.ECONOMATO creado.


-- Table ADMIN.AUD_F_HREAL creado.


-- Table ADMIN.R_REQUERIMIENTOS creado.


-- Table ADMIN.AUD_R_REQUERIMIENTOS creado.


-- Table ADMIN.R_DET_REQ creado.


-- Table ADMIN.AUD_VOCALES creado.


-- Table ADMIN.VOCALES creado.


-- Table ADMIN.USUAPLI creado.


-- Table ADMIN.C_CONTROL creado.


-- Table ADMIN.AUD_USU_OPERA creado.


-- Table ADMIN.AUD_OPERA_MENU creado.


-- Table ADMIN.OPERA_MENU creado.


-- Table ADMIN.USU_OPERA creado.


-- Table ADMIN.CO_MPER creado.


-- Table ADMIN.AUD_CO_MPER creado.


-- Table ADMIN.AUD_SYSMENUS creado.


-- Table ADMIN.DIAGNOSTICOS creado.


-- Table ADMIN.AUD_DIAGNOSTICOS creado.


-- Table ADMIN.AUD_INGRESO creado.


-- Table ADMIN.AUD_BUSQUEDA creado.


-- Table ADMIN.EVALUACIONES_ANT creado.


-- Table ADMIN.AUD_DOCUMENTO creado.


-- Table ADMIN.AUD_UBICA_DOCUM creado.


-- Table ADMIN.AUD_MSAN creado.


-- Table ADMIN.RESOFI creado.


-- Table ADMIN.DESCRIPCIONES creado.


-- Table ADMIN.F_HFAG creado.


-- Table ADMIN.AUD_F_HFAG creado.


-- Table ADMIN.HFASIG creado.


-- Table ADMIN.HFDES creado.


-- Table ADMIN.AUD_F_BAC creado.


-- Table ADMIN.AUD_F_AMT creado.


-- Table ADMIN.AUD_ICOMBUS creado.


-- Table ADMIN.ICOMBUS creado.



create table ADMIN.icorep 
  (
    rep_numero number not null,
    rep_depen number not null,
    rep_fecha date not null,
    rep_fecha_del date not null,
    rep_fecha_al date not null,
    constraint pk_icorep primary key (rep_numero) 
  );
  /


-- Table ADMIN.ICOBSREP creado.


-- Table ADMIN.AUD_ICOREP creado.


-- Table ADMIN.AUD_ICODETREP creado.


-- Table ADMIN.AUD_ICOBSREP creado.


-- Table ADMIN.ICODETREP creado.


-- Table ADMIN.CHN creado.


-- Table ADMIN.AUD_CHN creado.


-- Table ADMIN.FCEOM creado.


-- Table ADMIN.AUD_FCEOM creado.


-- Table ADMIN.ASIGNA creado.


-- Table ADMIN.FTEMPO creado.


-- Table ADMIN.AUD_FTEMPO creado.


-- Table ADMIN.AUD_F_MULFAR creado.



create table ADMIN.f_mulfar 
  (
    mf_catalogo number not null,
    mf_mensual number(16,2),
    mf_fact number not null,
    mf_control char(1),
    constraint pk_f_mulfar primary key (mf_catalogo,mf_fact) 
  );
  /


-- Table ADMIN.AUD_YAKIS creado.


-- Table ADMIN.AUD_EVALUACIONES_ANT creado.



create table ADMIN.pacceso 
  (
    acccatalogo number,
    accpwd char(10),
    accpermiso number,
    constraint pk_pacceso primary key (acccatalogo)  
  );
  /


-- Table ADMIN.PDOCUMENTO creado.


-- Table ADMIN.PESTADO creado.



create table ADMIN.pnegociado 
  (
    negcodigo number,
    negdesc char(50),
    constraint pk_pnegociado primary key (negcodigo)  
  );
  /


-- Table ADMIN.PTIPO creado.


-- Table ADMIN.AUD_PDOCUMENTO creado.


-- Table ADMIN.AUD_PTIPO creado.


-- Table ADMIN.AUD_PESTADO creado.


-- Table ADMIN.AUD_PNEGOCIADO creado.


-- Table ADMIN.AUD_PACCESO creado.


-- Table ADMIN.AUD_PTIEMPOS creado.


-- Table ADMIN.PTIEMPOS creado.


-- Table ADMIN.TCONEC creado.


-- Table ADMIN.FINCAS creado.


-- Table ADMIN.AUD_FINCAS creado.


-- Table ADMIN.ASIG_CAT creado.



create table ADMIN.c_corr_seg 
  (
    seg_usuario number not null,
    seg_passwd char(10) not null,
    seg_dep number not null,
    seg_oficina number not null,
    constraint pk_c_corr_seg primary key (seg_usuario) 
  );
  /


-- Table ADMIN.C_DOCUMENTO creado.


-- Table ADMIN.C_UBICACION_DOCUM creado.


-- Table ADMIN.DPUE creado.


-- Table ADMIN.MTIT creado.


-- Table ADMIN.SAND creado.


-- Table ADMIN.TELEFONOS creado.


-- Table ADMIN.T_ORG creado.


-- Table ADMIN.RET_OF_CARRE_RES creado.


-- Table ADMIN.RET_TROPA creado.


-- Table ADMIN.RET_DESC_IM creado.


-- Table ADMIN.RET_DESC_HR creado.


-- Table ADMIN.RET_DESC_IPM_ASIM creado.


-- Table ADMIN.RET_DESC_IPM_ESPTAS creado.


-- Table ADMIN.RET_DESC_IPM_OF creado.


-- Table ADMIN.RET_DESC_IPM_SGTOS_MAY creado.


-- Table ADMIN.RET_OF_ASIM creado.


-- Table ADMIN.RET_ESPTAS creado.


-- Table ADMIN.RET_SGTOS_MAY creado.


-- Table ADMIN.AUD_RET_DESC_HR creado.


-- Table ADMIN.AUD_RET_DESC_IM creado.


-- Table ADMIN.AUD_RET_DESC_IPM_ESPTAS creado.


-- Table ADMIN.AUD_RET_DESC_IPM_OF creado.


-- Table ADMIN.AUD_RET_DESC_IPM_SGTOS_MAY creado.


-- Table ADMIN.AUD_RET_OF_ASIM creado.


-- Table ADMIN.AUD_RET_OF_CARRE_RES creado.


-- Table ADMIN.AUD_RET_SGTOS_MAY creado.


-- Table ADMIN.AUD_RET_DESC_IPM_ASIM creado.


-- Table ADMIN.RETIRO creado.


-- Table ADMIN.AUD_ASIGNA creado.


-- Table ADMIN.AUD_C_CONTROL creado.


-- Table ADMIN.AUD_USUAPLI creado.


-- Table ADMIN.AUD_CMM_HOSPITALIZADOS creado.


-- Table ADMIN.AUD_RETIRO creado.


-- Table ADMIN.F_RESUMEN creado.


-- Table ADMIN.F_DATOSFZA creado.


-- Table ADMIN.APLICACIONES creado.


create table ADMIN.divisiones 
  (
    codigo number not null,
    division char(50) not null,
    constraint pk_aplicacioness primary key (codigo) 
  );
  /

-- Table ADMIN.NEGOCIADOS creado.


-- Table ADMIN.U_COMISIONES creado.


-- Table ADMIN.AUD_APLICACIONES creado.


-- Table ADMIN.AUD_DIVISIONES creado.


-- Table ADMIN.AUD_NEGOCIADOS creado.


-- Table ADMIN.AUD_U_COMISIONES creado.


-- Table ADMIN.F_IPM_CART creado.


-- Table ADMIN.AGTSA creado.


-- Table ADMIN.ASAMBLEA creado.


-- Table ADMIN.BANEJER_CAR creado.


-- Table ADMIN.DFDES_GRA creado.


-- Table ADMIN.DFDES_GRAT creado.


-- Table ADMIN.DFDES_INV creado.


-- Table ADMIN.DFDES_INVT creado.


-- Table ADMIN.F_AMT creado.


-- Table ADMIN.F_BAC creado.


-- Table ADMIN.F_COMBUST creado.


-- Table ADMIN.F_HREAL creado.


-- Table ADMIN.FINDUSTRIA creado.


-- Table ADMIN.F_ASGRAL creado.


create table ADMIN.mper 
  (
    per_catalogo number not null,
    per_serie char(8),
    per_grado number not null,
    per_arma number not null,
    per_nom1 char(15),
    per_nom2 char(15),
    per_ape1 char(15),
    per_ape2 char(15),
    per_ape3 char(15),
    per_ced_ord char(4) not null,
    per_ced_reg char(20),
    per_fec_ext_ced date,
    per_ext_ced_lugar char(4) not null,
    per_est_civil char(1),
    per_direccion char(50),
    per_zona number,
    per_dir_lugar char(4) not null,
    per_telefono number,
    per_sexo char(1) not null,
    per_fec_nac date not null,
    per_nac_lugar char(4) not null,
    per_promocion number,
    per_afil_ipm char(1) not null,
    per_sangre char(3) not null,
    per_antiguedad number,
    per_bienal number not null,
    per_plaza number not null,
    per_desc_empleo char(45) not null,
    per_fec_nomb date not null,
    per_ord_gral char(7),
    per_punto_og number,
    per_situacion char(2) not null,
    per_prima_prof number,
    per_dpi char(15),
    
    constraint ck_per_est_civill check (per_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    constraint pk_mperll primary key (per_catalogo)
  );
  /


-- Table ADMIN.AUD_PERMISO creado.


-- Table ADMIN.PERMISO creado.


-- Table ADMIN.FN_MOTIVOS creado.


-- Table ADMIN.AUD_FN_MOTIVOS creado.


-- Table ADMIN.AUD_F_CMM creado.


-- Table ADMIN.F_CMM creado.


-- Table ADMIN.HFTRO_DES creado.


-- Table ADMIN.FT_ASIGNA creado.


-- Table ADMIN.AUD_FT_ASIGNA creado.


-- Table ADMIN.BUSQUEDA creado.


-- Table ADMIN.INGRESO creado.


-- Table ADMIN.FCATNOP creado.


-- Table ADMIN.AUD_FCATNOP creado.


-- Table ADMIN.CNA creado.


-- Table ADMIN.RELIGIONES creado.


-- Table ADMIN.REL_DETALLE creado.


-- Table ADMIN.AUD_RELIGIONES creado.


-- Table ADMIN.AUD_REL_DETALLE creado.


-- Table ADMIN.CNC creado.


-- Table ADMIN.RADIUS1 creado.


-- Table ADMIN.AUD_OESTOE creado.


-- Table ADMIN.OESTOE creado.


-- Table ADMIN.AUD_MTIT creado.


-- Table ADMIN.AUD_RESOFI creado.


-- Table ADMIN.AUD_F_RESUMEN creado.


-- Table ADMIN.AUD_RET_ESPTAS creado.


-- Table ADMIN.AUD_FINDUSTRIA creado.


-- Table ADMIN.AUD_BANEJER_ACC creado.


-- Table ADMIN.XSQL_LANGUAGES creado.


-- Table ADMIN.XSERVER_INFO creado.


-- Table ADMIN.DFDES_FRASA creado.


-- Table ADMIN.AUD_DFDES_FRASA creado.


-- Table ADMIN.MSAN creado.


-- Table ADMIN.AUD_RESUTRO creado.


-- Table ADMIN.AUD_HFTRO_DES creado.


-- Table ADMIN.AUD_PARTIDAS creado.


-- Table ADMIN.AUD_ORDEN creado.


-- Table ADMIN.AUD_RET_TROPA creado.


-- Table ADMIN.AUD_F_DATOSFZA creado.


-- Table ADMIN.AUD_F_ASGRAL creado.


-- Table ADMIN.AUD_F_COMBUST creado.


-- Table ADMIN.F_SEGUROS_GT creado.


-- Table ADMIN.AUD_HFTRO creado.


-- Table ADMIN.AUD_PAFE_OFICIALES creado.


-- Table ADMIN.PAFE_OFICIALES creado.


-- Table ADMIN.DFASIG creado.


-- Table ADMIN.C_TAREAS creado.


-- Table ADMIN.AUD_C_TAREAS creado.


-- Table ADMIN.RECEPCION creado.


-- Table ADMIN.MARCA creado.


-- Table ADMIN.EQUIPOS creado.


-- Table ADMIN.AUD_EQUIPOS creado.


-- Table ADMIN.AUD_MARCA creado.


-- Table ADMIN.AUD_RECEPCION creado.


-- Table ADMIN.EACCIONES creado.


-- Table ADMIN.EUSUARIOS creado.


-- Table ADMIN.AUD_DET_ACCIONES creado.


-- Table ADMIN.AUD_EACCIONES creado.


-- Table ADMIN.AUD_EUSUARIOS creado.


-- Table ADMIN.DET_ACCIONES creado.


-- Table ADMIN.PAF_ACTAS creado.


-- Table ADMIN.PAF_CALENDARIO creado.


-- Table ADMIN.PAF_PERIODOS creado.


-- Table ADMIN.PAF_GRAFICA creado.


-- Table ADMIN.AUD_PAF_ACTAS creado.


-- Table ADMIN.AUD_PAF_CALENDARIO creado.


-- Table ADMIN.AUD_PAF_DETALLE creado.


-- Table ADMIN.AUD_PAF_PERIODOS creado.


-- Table ADMIN.AUD_PAF_PROGRAMADOR creado.


-- Table ADMIN.PAF_PROGRAMADOR creado.


-- Table ADMIN.PAF_DETALLE creado.


-- Table ADMIN.AUD_TIEMPOS creado.


-- Table ADMIN.FREFORMA creado.


-- Table ADMIN.AUD_FREFORMA creado.



create table ADMIN.licencias 
  (
    lic_catalogo number not null,
    lic_situacion char(2) not null,
    lic_inicia date not null,
    lic_finaliza date not null,
    lic_obs varchar2(2,1)
  );
  /


create table ADMIN.aud_licencias 
  (
    lic_catalogo number,
    lic_situacion char(2),
    lic_inicia date,
    lic_finaliza date,
    lic_obs varchar2(2,1),
    desp_lic_catalogo number,
    desp_lic_situacion char(2),
    desp_lic_inicia date,
    desp_lic_finaliza date,
    desp_lic_obs varchar2(2,1),
    usuario number,
    accion char(1),
    hora TIMESTAMP(0)
  );
  /


-- Table ADMIN.MSANLLA creado.


-- Table ADMIN.SANDLLA creado.


-- Table ADMIN.PSAN_ORDEN creado.


-- Table ADMIN.PSAN_ESTADISTICA creado.


-- Table ADMIN.PSAN_REGISTRO creado.


-- Table ADMIN.AUD_PSAN_ORDEN creado.


-- Table ADMIN.AUD_PSAN_ESTADISTICA creado.


-- Table ADMIN.AUD_PSAN_REGISTRO creado.


-- Table ADMIN.AUD_MPER creado.


-- Table ADMIN.AUD_AGTSA creado.


-- Table ADMIN.AUD_F_SEGUROS_GT creado.


-- Table ADMIN.AUD_BANEJER_CAR creado.


-- Table ADMIN.AUD_ECONOMATO creado.


-- Table ADMIN.AUD_IPM_FACT creado.


-- Table ADMIN.INSTI creado.


-- Table ADMIN.AUD_INSTI creado.


-- Table ADMIN.TDFASIG creado.


-- Table ADMIN.TDFDES creado.


-- Table ADMIN.TMPER creado.


-- Table ADMIN.BOLETA creado.


-- Table ADMIN.CUENTAS15 creado.


-- Table ADMIN.DESPACHOS creado.


-- Table ADMIN.DET_ISR creado.


-- Table ADMIN.DETALLE creado.


-- Table ADMIN.DEVOLUCIONES creado.


-- Table ADMIN.DPER creado.


-- Table ADMIN.FMDESCUE creado.


-- Table ADMIN.FTHREAL400 creado.

-- create table ADMIN.hisfin 
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
--     ovarios char(15)
--   )

-- Table ADMIN.IPM_CART creado.


-- Table ADMIN.IPM_MANTO creado.


-- Table ADMIN.SEGURIDAD creado.


-- Table ADMIN.PICKERS creado.


-- Table ADMIN.N_ASIG_PLAZA creado.


-- Table ADMIN.N_CONTROL_PLAZA creado.


-- Table ADMIN.N_MORG creado.


-- Table ADMIN.N_MPER creado.


-- Table ADMIN.N_MTIT creado.


-- Table ADMIN.N_ORGFUN creado.


-- Table ADMIN.N_PLAZA creado.


-- Table ADMIN.AUD_CONYUGUES creado.


-- Table ADMIN.CONYUGUES creado.


-- Table ADMIN.LVES_TALLAS creado.


-- Table ADMIN.AUD_LVES_TALLAS creado.


-- Table ADMIN.MORG_TEMP creado.


-- Table ADMIN.ORG_MEOM_DETALLE creado.


-- Table ADMIN.ORG_MEOM_FUNCIONES creado.


-- Table ADMIN.ORG_MEOM_REQ creado.


-- Table ADMIN.ORG_SEGURIDAD creado.


-- Table ADMIN.AUD_ORG_MEOM_DETALLE creado.


-- Table ADMIN.AUD_ORG_MEOM_FUNCIONES creado.


-- Table ADMIN.AUD_ORG_MEOM_REQ creado.


-- Table ADMIN.AUD_OEDE_ENTRENA creado.


Error que empieza en la l�nea: 8,883 del comando :
create table ADMIN.aud_oema_entrena 
  (
    me_trans number,
    me_documentos char(40),
    me_emana number,
    me_encumple char(255),
    me_tipo number,
    me_fecha date,
    me_motivo char(255),
    me_elimina number,
    me_ftrans timestamp(3),
    me_user char(10),
    desp_me_trans number,
    desp_me_documentos char(40),
    desp_me_emana number,
    desp_me_encumple char(255),
    desp_me_tipo number,
    desp_me_fecha date,
    desp_me_motivo char(255),
    desp_me_elimina number,
    desp_me_ftrans timestamp(3),
    desp_me_user char(10),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_OETD_ENTRENA creado.


-- Table ADMIN.OEAC_ENTRENA creado.


-- Table ADMIN.AUD_OEAC_ENTRENA creado.


-- Table ADMIN.AUD_OETA_ENTRENA creado.


-- Table ADMIN.OEDR_ENTRENA creado.


-- Table ADMIN.AUD_OEDR_ENTRENA creado.


-- Table ADMIN.AUD_OERQ_ENTRENA creado.


-- Table ADMIN.AUD_OETR_ENTRENA creado.


-- Table ADMIN.MORG creado.



create table ADMIN.oetd_entrena 
  (
    tipd_codigo number not null,
    tipd_desc_lg varchar2(255),
    constraint pk_oetd_entrena primary key (tipd_codigo) 
  );
  /



create table ADMIN.oeta_entrena 
  (
    tipa_codigo number not null,
    tipa_desc_lg varchar2(255),
    constraint pk_oeta_entrena primary key (tipa_codigo) 
  );
  /

create table ADMIN.oerq_entrena 
  (
    req_codigo number not null,
    req_desc_lg varchar2(255),
    req_tipo_req number not null,
    constraint pk_oerq_entrena primary key (req_codigo) 
  );
  /


create table ADMIN.oetr_entrena 
  (
    tipr_codigo number not null,
    tipr_desc_lg varchar2(255),
    constraint pk_oetr_entrena primary key (tipr_codigo) 
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
    me_ftrans datetime year to fraction(3) not null,
    me_user char(10) not null,
    constraint pk_oema_entrena primary key (me_trans) 
  );
  /


-- Table ADMIN.OEDE_ENTRENA creado.


-- Table ADMIN.PCON_MAESTRA creado.


-- Table ADMIN.PCON_DETALLE creado.


-- Table ADMIN.PCON_PERSONALIDAD creado.


-- Table ADMIN.PCOND_ESPECIAL creado.


-- Table ADMIN.AUD_FDES_EMPRESAS creado.


-- Table ADMIN.HFTRO creado.


-- Table ADMIN.FDES_EMPRESAS creado.


-- Table ADMIN.PEVA_CONCEPT creado.


-- Table ADMIN.PEVA_PROYECCION creado.


-- Table ADMIN.PEVA_CONTROL_DEP creado.


-- Table ADMIN.PEVA_PERIODOS_ANT creado.


-- Table ADMIN.AUD_PEVA_CONCEPT creado.


-- Table ADMIN.AUD_PEVA_PROYECCION creado.


-- Table ADMIN.AUD_PEVA_CONTROL_DEP creado.


-- Table ADMIN.AUD_PEVA_PERIODOS_ANT creado.


-- Table ADMIN.AUD_OPAF_USUARIO creado.


-- Table ADMIN.SOP_EQUIPOS creado.


-- Table ADMIN.SOP_MARCAS creado.


-- Table ADMIN.SOP_SOPORTE creado.


-- Table ADMIN.AUD_SOP_EQUIPOS creado.


-- Table ADMIN.AUD_SOP_MARCAS creado.


-- Table ADMIN.AUD_SOP_SOPORTE creado.


-- Table ADMIN.OPAF_DOMINADAS creado.


-- Table ADMIN.OPAF_ABDOMINALES creado.


-- Table ADMIN.AUD_OPAF_DOMINADAS creado.


-- Table ADMIN.AUD_OPAF_ABDOMINALES creado.


-- Table ADMIN.OPAF_ALTERNO creado.


-- Table ADMIN.AUD_OPAF_ALTERNO creado.


create table ADMIN.opaf_carrera 
  (
    car_edad number not null,
    car_sexo char(1) not null,
    car_tiempo timestamp(0),
    car_punteo number
  );
  /

create table ADMIN.aud_opaf_carrera 
  (
    car_edad number,
    car_sexo char(1),
    car_tiempo timestamp(0),
    car_punteo number,
    desp_car_edad number,
    desp_car_sexo char(1),
    desp_car_tiempo timestamp(0),
    desp_car_punteo number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.eva_especialistas 
  (
    esp_catalogo number not null,
    esp_ano number not null,
    esp_tipo number not null,
    esp_grado varchar2(200) not null,
    esp_nom1 varchar2(200),
    esp_nom2 varchar2(200),
    esp_ape1 varchar2(200),
    esp_ape2 varchar2(200),
    esp_empleo varchar2(200),
    esp_plaza varchar2(200) not null,
    esp_nom_comando varchar2(200) not null,
    esp_anos1 number not null,
    esp_meses1 number not null,
    esp_dias1 number not null,
    esp_evaluador number not null,
    esp_eva_grado varchar2(200) not null,
    esp_eva_nom1 varchar2(200) not null,
    esp_eva_nom2 varchar2(200) not null,
    esp_eva_ape1 varchar2(200) not null,
    esp_eva_ape2 varchar2(200) not null,
    esp_eva_puesto varchar2(200),
    esp_anos2 number not null,
    esp_meses2 number not null,
    esp_dias2 number not null,
    esp_biofisico number not null,
    esp_con_fisica number not null,
    esp_eva1 number not null,
    esp_eva2 number not null,
    esp_eva3 number not null,
    esp_eva4 number not null,
    esp_demeritos number not null,
    esp_arrestos number not null,
    esp_merito1 number,
    esp_merito11 varchar2(200),
    esp_merito2 number,
    esp_merito22 varchar2(200),
    esp_subtotal1 number not null,
    esp_concep1 number not null,
    esp_concep2 number not null,
    esp_concep3 number not null,
    esp_concep4 number not null,
    esp_concep5 number not null,
    esp_concep6 number not null,
    esp_concep7 number not null,
    esp_concep8 number not null,
    esp_concep9 number not null,
    esp_concep10 number not null,
    esp_concep11 number not null,
    esp_concep12 number not null,
    esp_concep13 number not null,
    esp_concep14 number not null,
    esp_concep15 number not null,
    esp_subtotal2 number not null,
    esp_total number not null,
    esp_categoria varchar2(200) not null,
    esp_motivadoras varchar2(200),
    esp_correctivas varchar2(200),
    esp_obs varchar2(200),
    constraint pk_eva_especialistas primary key (esp_catalogo,esp_ano) 
  );
  /


-- Table ADMIN.EVA_TIPO creado.


-- Table ADMIN.AUD_EVA_TIPO creado.



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
    desp_esp_ape2 varchar2(200,200),
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


-- Table ADMIN.PERMISO_AUTOCOM creado.


-- Table ADMIN.AUD_PERMISO_AUTOCOM creado.



create table ADMIN.evaluaciones 
  (
    e_catalogo number not null,
    e_evaluacion number not null,
    e_numero number not null,
    e_edad number not null,
    e_peso number not null,
    e_talla number(3,2) not null,
    e_imc number(4,2) not null,
    e_diagnost number not null,
    e_ref_dd varchar2(1) not null,
    e_fecha date default sysdate,
    e_asist_dd varchar2(1) not null,
    e_resultado varchar2(40),
    e_grado number,
    e_puntuacion number(3,2),
    e_usuario varchar2(30),
    constraint pk_evaluaciones primary key (e_catalogo,e_evaluacion,e_numero)  
  );
  /


-- Table ADMIN.AUD_EVALUACIONES creado.


-- Table ADMIN.JEFES_ANT creado.


-- Table ADMIN.AUD_MORG creado.


-- Table ADMIN.AUD_DFDES_GRAT creado.


-- Table ADMIN.EVALUACION_ANT creado.


-- Table ADMIN.EF_FUERZA creado.


-- Table ADMIN.EF_DESTINOS_ANT creado.


-- Table ADMIN.EF_USUARIOS creado.


-- Table ADMIN.DIAGNOSTICO creado.


-- Table ADMIN.EVALUACION creado.


-- Table ADMIN.AUD_EF_FUERZA creado.


-- Table ADMIN.AUD_EF_DESTINOS_ANT creado.


-- Table ADMIN.AUD_EF_USUARIOS creado.


-- Table ADMIN.EI_ASIGNACIONES creado.


-- Table ADMIN.AUD_EI_ASIGNACIONES creado.



create table ADMIN.ei_cursos_asig 
  (
    curasig_codigo number not null,
    curasig_catalogo number not null,
    curasig_fecha date not null,
    curasig_obs char(100),
    curasig_grado char(100),
    constraint pk_ei_cursos_asig primary key (curasig_codigo,curasig_catalogo) 
  );
  /


create table ADMIN.aud_ei_cursos_asig 
  (
    curasig_codigo number,
    curasig_catalogo number,
    curasig_fecha date,
    curasig_obs char(100),
    curasig_grado char(100),
    desp_curasig_codigo number,
    desp_curasig_catalogo number,
    desp_curasig_fecha date,
    desp_curasig_obs char(100),
    desp_curasig_grado char(100),
    accion char(1) not null,
    usuario char(12) not null,
    hora timestamp(0) not null 
  );
  /


-- Table ADMIN.EI_CURSOS_REALI creado.


-- Table ADMIN.AUD_EI_CURSOS_REALI creado.


-- Table ADMIN.EI_MPER_EXTRANJERO creado.


-- Table ADMIN.AUD_EI_MPER_EXTRANJERO creado.


-- Table ADMIN.EI_MATERIAS creado.


-- Table ADMIN.AUD_EI_MATERIAS creado.


-- Table ADMIN.EI_NOTAS creado.


-- Table ADMIN.AUD_EI_NOTAS creado.


-- Table ADMIN.EI_TIPO_CURSO creado.


-- Table ADMIN.AUD_EI_TIPO_CURSO creado.


-- Table ADMIN.EF_DETALLE creado.



create table ADMIN.aud_ef_detalle 
  (
    ef_fecha date,
    ef_depen number,
    ef_destino number,
    ef_numero number,
    ef_ofs number,
    ef_esp number,
    ef_tropa number,
    ef_cdtes number,
    ef_obs varchar2(250),
    ef_grado number,
    ef_comando number,
    ef_tiempo varchar2(20),
    desp_ef_fecha date,
    desp_ef_depen number,
    desp_ef_destino number,
    desp_ef_numero number,
    desp_ef_ofs number,
    desp_ef_esp number,
    desp_ef_tropa number,
    desp_ef_cdtes number,
    desp_ef_obs varchar2(250),
    desp_ef_grado number,
    desp_ef_comando number,
    desp_ef_tiempo varchar2(20),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_RADIUS1 creado.


-- Table ADMIN.PASS creado.


-- Table ADMIN.EF_DESTINOS creado.


-- Table ADMIN.AUD_EF_DESTINOS creado.


Error que empieza en la l�nea: 10,465 del comando :
create table ADMIN.aud_opaf_notas 
  (
    not_catalogo number,
    not_fecha date,
    not_periodo varchar2(6),
    not_dominadas number,
    not_punteo_dom number,
    not_abdominales number,
    not_punteo_abd number,
    not_carrera timestamp,
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
    desp_not_periodo varchar2(6),
    desp_not_dominadas number,
    desp_not_punteo_dom number,
    desp_not_abdominales number,
    desp_not_punteo_abd number,
    desp_not_carrera timestamp,
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
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


create table ADMIN.opaf_notas 
  (
    not_catalogo number not null,
    not_fecha date not null,
    not_periodo varchar2(6),
    not_dominadas number not null,
    not_punteo_dom number not null,
    not_abdominales number not null,
    not_punteo_abd number not null,
    not_carrera timestamp not null,
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
    constraint pk_opaf_notas primary key (not_catalogo,not_fecha) 
  );
  /


-- Table ADMIN.OPAF_USUARIO creado.


-- Table ADMIN.AUD_LARM_DET creado.


-- Table ADMIN.AUD_LARM_LOT creado.


-- Table ADMIN.AUD_LARM_SIT creado.


-- Table ADMIN.AUD_LARM_TIP creado.


-- Table ADMIN.AUD_LMARMAS creado.


-- Table ADMIN.AUD_LHREP creado.


-- Table ADMIN.LARM_SIT creado.


-- Table ADMIN.LARM_TIP creado.


-- Table ADMIN.LARM_LOT creado.


-- Table ADMIN.LARM_LOC creado.


-- Table ADMIN.LMARMAS creado.


-- Table ADMIN.LARM_DET creado.


-- Table ADMIN.LHREP creado.


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

create table ADMIN.aud_larm_detalle 
  (
    deta_cat number,
    deta_lote number,
    deta_numero char(20),
    deta_plaza number,
    deta_sit number,
    deta_doc varchar2(100),
    deta_fecha date,
    deta_usuario varchar2(8),
    desp_deta_cat number,
    desp_deta_lote number,
    desp_deta_numero char(20),
    desp_deta_plaza number,
    desp_deta_sit number,
    desp_deta_doc varchar2(100),
    desp_deta_fecha date,
    desp_deta_usuario varchar2(8),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.AUD_HFASIG creado.


-- Table ADMIN.AUD_C_DOCUMENTO creado.


-- Table ADMIN.AUD_HFASIGC creado.


-- Table ADMIN.AUD_DFDES_BTRAB creado.


-- Table ADMIN.AUD_HFDES1 creado.


-- Table ADMIN.AUD_DFASIG creado.


-- Table ADMIN.AUD_HFDES creado.


-- Table ADMIN.AUD_C_UBICACION_DOCUM creado.


-- Table ADMIN.AUD_F_IPM_CART creado.


-- Table ADMIN.AUD_DFDES_TRO creado.


-- Table ADMIN.AUD_CUENTAS creado.


-- Table ADMIN.AUD_BONO14 creado.


-- Table ADMIN.AUD_DFDES_GRA creado.


-- Table ADMIN.AUD_AGUI creado.


-- Table ADMIN.PEVA_PERIODOS creado.


-- Table ADMIN.PEVA_ADMIN creado.


-- Table ADMIN.PEVA_AUT_EM creado.


-- Table ADMIN.PEVA_CONCEPTOS creado.


-- Table ADMIN.PEVA_EVALUACION creado.


-- Table ADMIN.PEVA_NOTAS creado.


-- Table ADMIN.PEVA_FUNCIONES creado.


-- Table ADMIN.PEVA_AUTENTICA creado.


-- Table ADMIN.AUD_PEVA_ADMIN creado.


-- Table ADMIN.AUD_PEVA_AUT_EM creado.


-- Table ADMIN.AUD_PEVA_CONCEPTOS creado.


-- Table ADMIN.AUD_PEVA_EVALUACION creado.


-- Table ADMIN.AUD_PEVA_NOTAS creado.


-- Table ADMIN.AUD_PEVA_FUNCIONES creado.


-- Table ADMIN.AUD_PEVA_AUTENTICA creado.


-- Table ADMIN.AUD_PEVA_PERIODOS creado.


-- Table ADMIN.LARM_TIP_SOL creado.


-- Table ADMIN.AUD_LARM_TIP_SOL creado.



create table ADMIN.aud_larm_mov 
  (
    mov_solicitud number,
    mov_correla number,
    mov_fecha date,
    mov_docto varchar2(50),
    mov_termina number,
    mov_usuario number,
    desp_mov_solicitud number,
    desp_mov_correla number,
    desp_mov_fecha date,
    desp_mov_docto varchar2(50),
    desp_mov_termina number,
    desp_mov_usuario number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_LARM_TEMP creado.


-- Table ADMIN.AUD_CEOM_FUNCION creado.


-- Table ADMIN.CEOM_FUNCION creado.


-- Table ADMIN.AUD_PEVA_OBJETIVOS creado.


-- Table ADMIN.PEVA_OBJETIVOS creado.



create table ADMIN.mdep_tipo 
  (
    tip_codigo char(1) not null,
    tip_desc varchar2(75) not null,
    constraint pk_mdep_tipo primary key (tip_codigo)  
  );
  /


-- Table ADMIN.LMARMAS_AG creado.


-- Table ADMIN.LADE_CONOCIMIENTO creado.


-- Table ADMIN.LALI_CONOC creado.


-- Table ADMIN.USUARIOS_IGE creado.


-- Table ADMIN.LAMA_CONOC creado.


-- Table ADMIN.LMARMAS_AG1 creado.


-- Table ADMIN.MDEP_CONOCIMIENTO creado.


-- Table ADMIN.LAMA_ALMACEN creado.


-- Table ADMIN.LARM_BUSCERRADAS creado.


-- Table ADMIN.AUD_LARM_BUSCERRADAS creado.


-- Table ADMIN.LARM_TEMP creado.



create table ADMIN.uniformes 
  (
    uni_codigo number not null,
    uni_fuerza number not null,
    uni_descrip varchar2(50) not null,
    uni_gorra number not null,
    constraint pk_codigo primary key (uni_codigo)  
  );
  /

create table ADMIN.aud_uniformes 
  (
    uni_codigo number,
    uni_fuerza number,
    uni_descrip varchar2(50),
    uni_gorra number,
    desp_uni_codigo number,
    desp_uni_fuerza number,
    desp_uni_descrip varchar2(50),
    desp_uni_gorra number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_detalle_solicitud 
  (
    det_solicitud number,
    det_catalogo number,
    det_grado number,
    det_codigo_uni number,
    det_talla_uni varchar2(6),
    det_talla_bota varchar2(5),
    det_talla_gorra varchar2(6),
    det_situacion number,
    det_fecha date,
    det_usuario number,
    det_comprobante number,
    desp_det_solicitud number,
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_codigo_uni number,
    desp_det_talla_uni varchar2(6),
    desp_det_talla_bota varchar2(5),
    desp_det_talla_gorra varchar2(6),
    desp_det_situacion number,
    desp_det_fecha date,
    desp_det_usuario number,
    desp_det_comprobante number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_solicitud_uniformes 
  (
    sol_numero number,
    sol_mensaje varchar2(25),
    sol_fecha date,
    sol_com_catalogo number,
    sol_log_cat number,
    sol_observaciones varchar2(250),
    sol_situacion varchar2(10),
    sol_dotac number,
    sol_dependencia number,
    sol_usuario number,
    desp_sol_numero number,
    desp_sol_mensaje varchar2(25),
    desp_sol_fecha date,
    desp_sol_com_catalogo number,
    desp_sol_log_cat number,
    desp_sol_observaciones varchar2(250),
    desp_sol_situacion varchar2(10),
    desp_sol_dotac number,
    desp_sol_dependencia number,
    desp_sol_usuario number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
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
    det_codbarra varchar2(25,1),
    constraint pk_solicitud primary key (det_solicitud,det_catalogo)
  );
  /

create table ADMIN.larm_mov 
  (
    mov_solicitud number not null,
    mov_correla number not null,
    mov_fecha date not null,
    mov_docto varchar2(150) not null,
    mov_termina number not null,
    mov_usuario number not null,
    constraint pk_larm_mov primary key (mov_solicitud,mov_correla)  
  );
  /

create table ADMIN.solicitud_uniformes 
  (
    sol_numero number not null,
    sol_mensaje varchar2(25) not null,
    sol_fecha date not null,
    sol_com_catalogo number not null,
    sol_log_cat number not null,
    sol_observaciones varchar2(250) not null,
    sol_situacion varchar2(10) not null,
    sol_dotac number not null,
    sol_dependencia number not null,
    sol_usuario number,
    constraint pk_sol_uniformes primary key (sol_numero,sol_mensaje)  
  );
  /


-- Table ADMIN.DEP_UBICACION creado.


-- Table ADMIN.AUD_DEP_UBICACION creado.


-- Table ADMIN.AUD_CON_SOLICITUD creado.


-- Table ADMIN.DET_CONSOLICIT creado.


-- Table ADMIN.AUD_DET_CONSOLICIT creado.


-- Table ADMIN.COND creado.


-- Table ADMIN.AUD_DCON creado.


-- Table ADMIN.DCON creado.


-- Table ADMIN.EVA_BOLETA creado.


-- Table ADMIN.AUD_EVA_BOLETA creado.


-- Table ADMIN.BOL_DET_MERITOS creado.


-- Table ADMIN.AUD_BOL_DET_MERITOS creado.


-- Table ADMIN.BOL_DET_CONCEP creado.


-- Table ADMIN.AUD_BOL_DET_CONCEP creado.


-- Table ADMIN.ACC_MOTIVADORA creado.


-- Table ADMIN.AUD_ACC_MOTIVADORA creado.


-- Table ADMIN.AUD_ACC_CORRECTIVA creado.


-- Table ADMIN.EVA_MERITOS creado.


-- Table ADMIN.AUD_EVA_MERITOS creado.


-- Table ADMIN.EVA_PREGUNTAS creado.


-- Table ADMIN.AUD_EVA_PREGUNTAS creado.


-- Table ADMIN.EVA_DATOS creado.


-- Table ADMIN.AUD_EVA_DATOS creado.


-- Table ADMIN.EVA_CERTIFICA creado.


-- Table ADMIN.AUD_EVA_CERTIFICA creado.


-- Table ADMIN.RNB_CASCO creado.


-- Table ADMIN.AUD_RNB_CASCO creado.


-- Table ADMIN.RNB_MOTOR creado.


-- Table ADMIN.AUD_RNB_MOTOR creado.


-- Table ADMIN.RNB_MARCA creado.


-- Table ADMIN.AUD_RNB_MARCA creado.


-- Table ADMIN.RNB_MODIFICACION creado.


-- Table ADMIN.AUD_RNB_MODIFICACION creado.


-- Table ADMIN.RNB_IMPUESTO creado.


-- Table ADMIN.AUD_RNB_IMPUESTO creado.


-- Table ADMIN.RNB_TIPO_EMB creado.


-- Table ADMIN.AUD_RNB_TIPO_EMB creado.


-- Table ADMIN.RNB_PROPIETARIO creado.


-- Table ADMIN.AUD_RNB_PROPIETARIO creado.


-- Table ADMIN.RNB_COLOR creado.


-- Table ADMIN.AUD_RNB_COLOR creado.


-- Table ADMIN.RNB_EMBARCACION creado.


-- Table ADMIN.AUD_RNB_EMBARCACION creado.


-- Table ADMIN.RNB_LICENCIA creado.


-- Table ADMIN.AUD_RNB_LICENCIA creado.


-- Table ADMIN.RNB_USUARIO creado.


-- Table ADMIN.AUD_RNB_USUARIO creado.


-- Table ADMIN.RNB_INSPECCION creado.


-- Table ADMIN.AUD_RNB_INSPECCION creado.


-- Table ADMIN.RNB_DEPENDENCIA creado.


-- Table ADMIN.AUD_RNB_DEPENDENCIA creado.


-- Table ADMIN.RNB_MATRICULA creado.


-- Table ADMIN.AUD_RNB_MATRICULA creado.


-- Table ADMIN.RNB_ZARPE_INTER creado.


-- Table ADMIN.AUD_RNB_ZARPE_INTER creado.


-- Table ADMIN.RNB_ZARPE creado.


-- Table ADMIN.AUD_RNB_ZARPE creado.


-- Table ADMIN.RNB_BITACORA creado.


-- Table ADMIN.AUD_RNB_BITACORA creado.


-- Table ADMIN.RNB_ATRAQUE creado.


-- Table ADMIN.AUD_RNB_ATRAQUE creado.


create table ADMIN.peva_detpersonal 
  (
    det_noevaas varchar2(2) not null,
    det_catalogo number not null,
    det_grado number not null,
    det_puesto varchar2(250) not null,
    det_tiempo varchar2(250) not null,
    det_depen number,
    det_clasificacion number not null,
    constraint pk_ofas_cat primary key (det_noevaas,det_catalogo)  
  );
  /

create table ADMIN.aud_peva_detpersonal 
  (
    det_noevaas varchar2(2),
    det_catalogo number,
    det_grado number,
    det_puesto varchar2(250),
    det_tiempo varchar2(250),
    det_depen number,
    det_clasificacion number,
    desp_det_noevaas varchar2(2),
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_puesto varchar2(250),
    desp_det_tiempo varchar2(250),
    desp_det_depen number,
    desp_det_clasificacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_peva_boletasas 
  (
    eva_noevaas varchar2(2),
    eva_catalogo number,
    eva_periodo number,
    eva_perfil number,
    eva_eval1 number,
    eva_eval2 number,
    eva_eval3 number,
    eva_eval4 number,
    eva_pafe number,
    eva_demeritos number,
    eva_arrestos number,
    eva_subt_salud number,
    eva_subt_concep number,
    eva_total number,
    eva_catg1 number,
    eva_catcomte number,
    eva_obs varchar2(250),
    desp_eva_noevaas varchar2(2),
    desp_eva_catalogo number,
    desp_eva_periodo number,
    desp_eva_perfil number,
    desp_eva_eval1 number,
    desp_eva_eval2 number,
    desp_eva_eval3 number,
    desp_eva_eval4 number,
    desp_eva_pafe number,
    desp_eva_demeritos number,
    desp_eva_arrestos number,
    desp_eva_subt_salud number,
    desp_eva_subt_concep number,
    desp_eva_total number,
    desp_eva_catg1 number,
    desp_eva_catcomte number,
    desp_eva_obs varchar2(250),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


create table ADMIN.peva_certificaas 
  (
    cer_noevaas varchar2(2) not null,
    cer_catalogo number not null,
    cer_status number not null,
    cer_certificador number not null,
    cer_fecha date not null,
    cer_obs varchar2(250),
    constraint pk_ofasi_cert primary key (cer_noevaas,cer_catalogo)  
  );
  /

create table ADMIN.aud_peva_certificaas 
  (
    cer_noevaas varchar2(2),
    cer_catalogo number,
    cer_status number,
    cer_certificador number,
    cer_fecha date,
    cer_obs varchar2(250),
    desp_cer_noevaas varchar2(2),
    desp_cer_catalogo number,
    desp_cer_status number,
    desp_cer_certificador number,
    desp_cer_fecha date,
    desp_cer_obs varchar2(250),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.peva_detbolconcep 
  (
    con_noevaas varchar2(2) not null,
    con_evaluado number not null,
    con_periodo number not null,
    con_pregunta number not null,
    con_nota number not null,
    constraint pk_ofasi_bol_concp primary key (con_noevaas,con_evaluado,con_periodo,con_pregunta)  
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
  ):
  /

create table ADMIN.peva_boletasas 
  (
    eva_noevaas varchar2(2),
    eva_catalogo number,
    eva_periodo number not null,
    eva_perfil number,
    eva_eval1 number,
    eva_eval2 number,
    eva_eval3 number,
    eva_eval4 number,
    eva_pafe number,
    eva_demeritos number,
    eva_arrestos number,
    eva_subt_salud number,
    eva_subt_concep number,
    eva_total number,
    eva_catg1 number,
    eva_catcomte number,
    eva_obs varchar2(250),
    constraint pk_ofasi_bol  primary key (eva_noevaas)  
  );
  /


-- Table ADMIN.LARM_INVENTARIO creado.


-- Table ADMIN.AUD_LARM_INVENTARIO creado.



CREATE TABLE ADMIN.pictures 
  (
    pic_id NUMBER NOT NULL,
    pic_cat BLOB NOT NULL,
    CONSTRAINT pk_picture PRIMARY KEY (pic_id)
  );
/

-- Table ADMIN.HIS_MORG creado.


-- Table ADMIN.LARM_HALLAZGO creado.


-- Table ADMIN.AUD_LARM_HALLAZGO creado.


-- Table ADMIN.PER creado.


create table ADMIN.lveh_neumaticos 
  (
    neu_code number not null,
    neu_desc varchar2(50) not null,
    constraint pk_llantas primary key (neu_code)  
  );
  /

create table ADMIN.aud_lveh_neumaticos 
  (
    neu_code number,
    neu_desc varchar2(50),
    desp_neu_code number,
    desp_neu_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.LVEH_DET_NEUMATICOS creado.


-- Table ADMIN.AUD_LVEH_DET_NEUMATICOS creado.


-- Table ADMIN.LVEH_DET_PLAZA creado.


-- Table ADMIN.AUD_LVEH_DET_PLAZA creado.



create table ADMIN.lveh_det_otros 
  (
    det_otros_catalogo number not null,
    det_otros_caracteristica number not null,
    det_otros_number number not null,
    det_otros_fecha TIMESTAMP not null,
    det_otros_dato varchar2(100) not null,
    constraint pk_detalleotros_veh primary key (det_otros_catalogo,det_otros_caracteristica,det_otros_number)  
  );
  /


create table ADMIN.aud_lveh_det_otros 
  (
    det_otros_catalogo number,
    det_otros_caracteristica number,
    det_otros_number number,
    det_otros_fecha TIMESTAMP,
    det_otros_dato varchar2(100),
    desp_det_otros_catalogo number,
    desp_det_otros_caracteristica number,
    desp_det_otros_number number,
    desp_det_otros_fecha TIMESTAMP,
    desp_det_otros_dato varchar2(100),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_estilo 
  (
    estilo_code number not null,
    estilo_desc varchar2(50) not null,
    estilo_marcas number not null,
    constraint pk_estilo_veh primary key (estilo_code)  
  );
  /

create table ADMIN.aud_lveh_estilo 
  (
    estilo_code number,
    estilo_desc varchar2(50),
    estilo_marcas number,
    desp_estilo_code number,
    desp_estilo_desc varchar2(50),
    desp_estilo_marcas number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_marcas 
  (
    mar_code number not null,
    mar_desc varchar2(50) not null,
    mar_tipo number not null,
    constraint pk_mar_veh primary key (mar_code)  
  );
  /

create table ADMIN.aud_lveh_marcas 
  (
    mar_code number,
    mar_desc varchar2(50),
    mar_tipo number,
    desp_mar_code number,
    desp_mar_desc varchar2(50),
    desp_mar_tipo number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_tipo 
  (
    tip_code number not null,
    tip_desc varchar2(50) not null,
    constraint pk_tipo_veh primary key (tip_code)  
  );
  /

create table ADMIN.aud_lveh_tipo 
  (
    tip_code number,
    tip_desc varchar2(50),
    desp_tip_code number,
    desp_tip_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lvehiculos 
  (
    veh_catalogo number not null,
    veh_placas varchar2(20) not null,
    veh_chasis varchar2(30) not null,
    veh_vin varchar2(30) not null,
    veh_serie varchar2(30) not null,
    veh_tipo number not null,
    veh_marca number not null,
    veh_estilo number not null,
    veh_modelo number not null,
    veh_asientos number not null,
    veh_puertas number not null,
    veh_traccion varchar2(50) not null,
    veh_ejes number not null,
    veh_tonelaje number not null,
    constraint pk_catveh primary key (veh_catalogo)  
  );
  /

create table ADMIN.aud_lvehiculos 
  (
    veh_catalogo number,
    veh_placas varchar2(20),
    veh_chasis varchar2(30),
    veh_vin varchar2(30),
    veh_serie varchar2(30),
    veh_tipo number,
    veh_marca number,
    veh_estilo number,
    veh_modelo number,
    veh_asientos number,
    veh_puertas number,
    veh_traccion varchar2(50),
    veh_ejes number,
    veh_tonelaje number,
    desp_veh_catalogo number,
    desp_veh_placas varchar2(20),
    desp_veh_chasis varchar2(30),
    desp_veh_vin varchar2(30),
    desp_veh_serie varchar2(30),
    desp_veh_tipo number,
    desp_veh_marca number,
    desp_veh_estilo number,
    desp_veh_modelo number,
    desp_veh_asientos number,
    desp_veh_puertas number,
    desp_veh_traccion varchar2(50),
    desp_veh_ejes number,
    desp_veh_tonelaje number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_det_transmision 
  (
    det_trans_catalogo number not null,
    det_trans_tipo varchar2(20) not null,
    det_trans_fecha TIMESTAMP not null,
    det_trans_aceite number not null,
    det_trans_aceitecant number not null,
    constraint pk_dettrans_veh primary key (det_trans_catalogo,det_trans_tipo,det_trans_fecha)  
  );
  /

create table ADMIN.lveh_det_motor 
  (
    det_mot_catalogo number not null,
    det_mot_numero varchar2(50) not null,
    det_mot_fecha TIMESTAMP not null,
    det_mot_cilindros number not null,
    det_mot_cilindraje number not null,
    det_mot_combustible number not null,
    det_mot_autonomia number not null,
    det_mot_aceite number not null,
    det_mot_aceitecant number not null,
    det_mot_eficiencia number not null,
    constraint pk_detmot_veh primary key (det_mot_catalogo,det_mot_numero,det_mot_fecha)  
  );
  /

create table ADMIN.aud_lveh_det_motor 
  (
    det_mot_catalogo number,
    det_mot_numero varchar2(50),
    det_mot_fecha TIMESTAMP,
    det_mot_cilindros number,
    det_mot_cilindraje number,
    det_mot_combustible number,
    det_mot_autonomia number,
    det_mot_aceite number,
    det_mot_aceitecant number,
    det_mot_eficiencia number,
    desp_det_mot_catalogo number,
    desp_det_mot_numero varchar2(50),
    desp_det_mot_fecha TIMESTAMP,
    desp_det_mot_cilindros number,
    desp_det_mot_cilindraje number,
    desp_det_mot_combustible number,
    desp_det_mot_autonomia number,
    desp_det_mot_aceite number,
    desp_det_mot_aceitecant number,
    desp_det_mot_eficiencia number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_solicitud 
  (
    sol_numero number not null,
    sol_dependencia number not null,
    sol_fecha TIMESTAMP not null,
    sol_tipo number not null,
    sol_motivo varchar2(200) not null,
    sol_observaciones varchar2(200) not null,
    sol_estatus number not null,
    sol_cat_comte number not null,
    sol_cat_logistico number not null,
    sol_cat_usuario number not null,
    sol_grado number not null,
    sol_referencia varchar2(100) not null,
    constraint pk_solic_veh primary key (sol_numero) 
  );
  /

create table ADMIN.aud_lveh_solicitud 
  (
    sol_numero number,
    sol_dependencia number,
    sol_fecha TIMESTAMP,
    sol_tipo number,
    sol_motivo varchar2(200),
    sol_observaciones varchar2(200),
    sol_estatus number,
    sol_cat_comte number,
    sol_cat_logistico number,
    sol_cat_usuario number,
    sol_grado number,
    sol_referencia varchar2(100),
    desp_sol_numero number,
    desp_sol_dependencia number,
    desp_sol_fecha TIMESTAMP,
    desp_sol_tipo number,
    desp_sol_motivo varchar2(200),
    desp_sol_observaciones varchar2(200),
    desp_sol_estatus number,
    desp_sol_cat_comte number,
    desp_sol_cat_logistico number,
    desp_sol_cat_usuario number,
    desp_sol_grado number,
    desp_sol_referencia varchar2(100),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_combustible 
  (
    com_code number not null,
    com_desc varchar2(50) not null,
    com_situacion number not null,
     constraint pk_comb_veh primary key (com_code) 
  );
  /

create table ADMIN.aud_lveh_combustible 
  (
    com_code number,
    com_desc varchar2(50),
    desp_com_code number,
    desp_com_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_aceite 
  (
    ace_code number not null,
    ace_desc varchar2(50) not null,
    constraint pk_aceite_lveh 
    constraint pk_constraint pk_aceite_lveh primary key (ace_code)  
  );
  /


create table ADMIN.aud_lveh_aceite 
  (
    ace_code number,
    ace_desc varchar2(50),
    desp_ace_code number,
    desp_ace_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_nuevo 
  (
    nue_solicitud number not null,
    nue_dependencia number not null,
    nue_placas varchar2(20) not null,
    nue_chasis varchar2(30) not null,
    nue_vin varchar2(30) not null,
    nue_serie varchar2(30) not null,
    nue_tipo_veh number not null,
    nue_modelo number not null,
    nue_marca number not null,
    nue_asientos number not null,
    nue_puertas number not null,
    nue_traccion varchar2(50) not null,
    nue_ejes number not null,
    nue_tonelaje number not null,
    nue_estilo number not null,
    nue_motor varchar2(30) not null,
    nue_cilindros number not null,
    nue_cilindraje number not null,
    nue_combustible number not null,
    nue_autonomia number not null,
    nue_aceite_motor number not null,
    nue_cantidad_mot number not null,
    nue_transmision varchar2(20) not null,
    nue_aceite_trans number not null,
    nue_cantidad_trans varchar2(20) not null,
    nue_llantas number not null,
    nue_tipo_llantas number not null,
    nue_rin number not null,
    nue_plaza number not null,
    nue_dep number not null,
    nue_estado varchar2(50) not null,
    nue_situacion number not null,
    nue_color number not null,
    nue_uso varchar2(100) not null,
    nue_adaptacion varchar2(100),
    nue_eficiencia number not null,
    nue_llanta2 number,
    constraint pk_nuevo_veh primary key (nue_solicitud)  
  );
  /

create table ADMIN.lveh_det_documento 
  (
    det_doc_numero number not null,
    det_doc_dependencia number not null,
    det_doc_fecha TIMESTAMP not null,
    det_doc_referencia varchar2(100) not null,
    det_doc_usuario number not null,
    det_doc_grado number not null,
    constraint pk_todo primary key (det_doc_numero,det_doc_dependencia,det_doc_fecha)  
  );
  /

create table ADMIN.aud_lveh_det_documento 
  (
    det_doc_numero number,
    det_doc_dependencia number,
    det_doc_fecha TIMESTAMP,
    det_doc_referencia varchar2(100),
    det_doc_usuario number,
    det_doc_grado number,
    desp_det_doc_numero number,
    desp_det_doc_dependencia number,
    desp_det_doc_fecha TIMESTAMP,
    desp_det_doc_referencia varchar2(100),
    desp_det_doc_usuario number,
    desp_det_doc_grado number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lveh_caracteristicas 
  (
    car_code number not null,
    car_desc varchar2(50) not null,
    constraint pk_caract_veh primary key (car_code)  
  );
  /

create table ADMIN.aud_lveh_caracteristicas 
  (
    car_code number,
    car_desc varchar2(50),
    desp_car_code number,
    desp_car_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.LVEH_ASIGNA creado.


-- Table ADMIN.AUD_LVEH_ASIGNA creado.



create table ADMIN.aud_lveh_nuevo 
  (
    nue_solicitud number,
    nue_dependencia number,
    nue_placas varchar2(20),
    nue_chasis varchar2(30),
    nue_vin varchar2(30),
    nue_serie varchar2(30),
    nue_tipo_veh number,
    nue_modelo number,
    nue_marca number,
    nue_asientos number,
    nue_puertas number,
    nue_traccion varchar2(50),
    nue_ejes number,
    nue_tonelaje number,
    nue_estilo number,
    nue_motor varchar2(30),
    nue_cilindros number,
    nue_cilindraje number,
    nue_combustible number,
    nue_autonomia number,
    nue_aceite_motor number,
    nue_cantidad_mot number,
    nue_transmision varchar2(20),
    nue_aceite_trans number,
    nue_cantidad_trans varchar2(20),
    nue_llantas number,
    nue_tipo_llantas number,
    nue_rin number,
    nue_plaza number,
    nue_dep number,
    nue_estado varchar2(50),
    nue_situacion number,
    nue_color number,
    nue_uso varchar2(100),
    nue_adaptacion varchar2(100),
    nue_eficiencia number,
    nue_llanta2 number,
    desp_nue_solicitud number,
    desp_nue_dependencia number,
    desp_nue_placas varchar2(20),
    desp_nue_chasis varchar2(30),
    desp_nue_vin varchar2(30),
    desp_nue_serie varchar2(30),
    desp_nue_tipo_veh number,
    desp_nue_modelo number,
    desp_nue_marca number,
    desp_nue_asientos number,
    desp_nue_puertas number,
    desp_nue_traccion varchar2(50),
    desp_nue_ejes number,
    desp_nue_tonelaje number,
    desp_nue_estilo number,
    desp_nue_motor varchar2(30),
    desp_nue_cilindros number,
    desp_nue_cilindraje number,
    desp_nue_combustible number,
    desp_nue_autonomia number,
    desp_nue_aceite_motor number,
    desp_nue_cantidad_mot number,
    desp_nue_transmision varchar2(20),
    desp_nue_aceite_trans number,
    desp_nue_cantidad_trans varchar2(20),
    desp_nue_llantas number,
    desp_nue_tipo_llantas number,
    desp_nue_rin number,
    desp_nue_plaza number,
    desp_nue_dep number,
    desp_nue_estado varchar2(50),
    desp_nue_situacion number,
    desp_nue_color number,
    desp_nue_uso varchar2(100),
    desp_nue_adaptacion varchar2(100),
    desp_nue_eficiencia number,
    desp_nue_llanta2 number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.AUD_LARM_LOC creado.


-- Table ADMIN.CONECTA2 creado.


-- Table ADMIN.LVEH_OBSER creado.


-- Table ADMIN.AUD_LVEH_OBSER creado.


-- Table ADMIN.LVEH_HIS creado.


-- Table ADMIN.AUD_LVEH_HIS creado.


-- Table ADMIN.LVEH_SITUACION creado.


-- Table ADMIN.AUD_LVEH_SITUACION creado.


-- Table ADMIN.LVEH_COLOR creado.


-- Table ADMIN.AUD_LVEH_COLOR creado.


create table ADMIN.aud_lveh_det_transmision 
  (
    det_trans_catalogo number,
    det_trans_tipo varchar2(20),
    det_trans_fecha TIMESTAMP,
    det_trans_aceite number,
    det_trans_aceitecant number,
    desp_det_trans_catalogo number,
    desp_det_trans_tipo varchar2(20),
    desp_det_trans_fecha TIMESTAMP,
    desp_det_trans_aceite number,
    desp_det_trans_aceitecant number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_larm_solicitud 
  (
    sol_num number,
    sol_catalogo number,
    sol_tipo number,
    sol_ref varchar2(150),
    sol_datocambia number,
    sol_contenido varchar2(10),
    sol_contenido2 number,
    sol_motivo varchar2(255),
    sol_logistico number,
    sol_comte number,
    sol_inspector number,
    sol_fecha date,
    sol_usuario number,
    desp_sol_num number,
    desp_sol_catalogo number,
    desp_sol_tipo number,
    desp_sol_ref varchar2(150),
    desp_sol_datocambia number,
    desp_sol_contenido varchar2(10),
    desp_sol_contenido2 number,
    desp_sol_motivo varchar2(255),
    desp_sol_logistico number,
    desp_sol_comte number,
    desp_sol_inspector number,
    desp_sol_fecha date,
    desp_sol_usuario number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_LARM_OBSER creado.


-- Table ADMIN.LARM_OBSER creado.


-- Table ADMIN.PTEL_PERSONAL creado.


-- Table ADMIN.AUD_PTEL_PERSONAL creado.


-- Table ADMIN.PTEL_DEPEN creado.


-- Table ADMIN.AUD_PTEL_DEPEN creado.


-- Table ADMIN.PTEL_CENTRIX creado.


-- Table ADMIN.AUD_PTEL_CENTRIX creado.


-- Table ADMIN.DFDES creado.


-- Table ADMIN.AUD_DFDES creado.


-- Table ADMIN.PSAN_DETALLE creado.


-- Table ADMIN.AUD_PSAN_DETALLE creado.


create table ADMIN.esp_clase_licencia 
  (
    cla_codigo number not null,
    cla_nombre varchar2(50) not null,
    cla_descripcion varchar2(150) not null,
    constraint pk_esp_clase_licencia primary key (cla_codigo) 
  );
  /

create table ADMIN.aud_esp_clase_licencia 
  (
    cla_codigo number,
    cla_nombre varchar2(50),
    cla_descripcion varchar2(150),
    desp_cla_codigo number,
    desp_cla_nombre varchar2(50),
    desp_cla_descripcion varchar2(150),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.ESP_EXPERTOS creado.


-- Table ADMIN.AUD_ESP_EXPERTOS creado.



create table ADMIN.esp_permisos 
  (
    per_codigo number not null,
    per_empresa number not null,
    per_numeroper varchar2(100) not null,
    per_vehiculo varchar2(250) not null,
    per_aduana number not null,
    per_usuario varchar2(50) not null,
    per_vicemin varchar2(100) not null,
    per_empresa_ext varchar2(100) not null,
    per_pais varchar2(100) not null,
    per_dir varchar2(100) not null,
    per_experto varchar2(250) not null,
    per_obs varchar2(250) not null,
    per_status number not null,
    per_claseper number not null,
    per_referencia varchar2(100) not null,
    per_fecharefe date not null,
    per_fec_ac date not null,
    per_horainicia number not null,
    per_duracion number not null,
    per_licencia number not null,
    per_destino varchar2(100) not null,
    per_fecha_custodia date not null,
    constraint pk_esp_permisos primary key (per_codigo)  
  );
  /



create table ADMIN.aud_esp_permisos 
  (
    per_codigo number,
    per_empresa number,
    per_numeroper varchar2(100),
    per_vehiculo varchar2(250),
    per_aduana number,
    per_usuario varchar2(50),
    per_vicemin varchar2(100),
    per_empresa_ext varchar2(100),
    per_pais varchar2(100),
    per_dir varchar2(100),
    per_experto varchar2(250),
    per_obs varchar2(250),
    per_status number,
    per_claseper number,
    per_referencia varchar2(100),
    per_fecharefe date,
    per_fec_ac date,
    per_horainicia number,
    per_duracion number,
    per_licencia number,
    per_destino varchar2(100),
    per_fecha_custodia date,
    desp_per_codigo number,
    desp_per_empresa number,
    desp_per_numeroper varchar2(100),
    desp_per_vehiculo varchar2(250),
    desp_per_aduana number,
    desp_per_usuario varchar2(50),
    desp_per_vicemin varchar2(100),
    desp_per_empresa_ext varchar2(100),
    desp_per_pais varchar2(100),
    desp_per_dir varchar2(100),
    desp_per_experto varchar2(250),
    desp_per_obs varchar2(250),
    desp_per_status number,
    desp_per_claseper number,
    desp_per_referencia varchar2(100),
    desp_per_fecharefe date,
    desp_per_fec_ac date,
    desp_per_horainicia number,
    desp_per_duracion number,
    desp_per_licencia number,
    desp_per_destino varchar2(100),
    desp_per_fecha_custodia date,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.ESP_HISTORIAL creado.


-- Table ADMIN.AUD_ESP_HISTORIAL creado.


-- Table ADMIN.ESP_DET_PERMISOS creado.


-- Table ADMIN.AUD_ESP_DET_PERMISOS creado.


-- Table ADMIN.ESP_MARCAS creado.


-- Table ADMIN.AUD_ESP_MARCAS creado.


-- Table ADMIN.ESP_GRUPO_PRODUCTO creado.


-- Table ADMIN.AUD_ESP_GRUPO_PRODUCTO creado.


-- Table ADMIN.ESP_PRODUCTOS creado.


-- Table ADMIN.AUD_ESP_PRODUCTOS creado.


-- Table ADMIN.ESP_UNIDAD_MEDIDA creado.


-- Table ADMIN.AUD_ESP_UNIDAD_MEDIDA creado.


-- Table ADMIN.ESP_ADUANAS creado.


-- Table ADMIN.AUD_ESP_ADUANAS creado.


-- Table ADMIN.ESP_INVENTARIO creado.


-- Table ADMIN.AUD_ESP_INVENTARIO creado.


-- Table ADMIN.ESP_DET_LICENCIAS creado.


-- Table ADMIN.AUD_ESP_DET_LICENCIAS creado.


-- Table ADMIN.ESP_ASEGURADORAS creado.


-- Table ADMIN.AUD_ESP_ASEGURADORAS creado.


-- Table ADMIN.ESP_CLASE_PERMISO creado.


-- Table ADMIN.AUD_ESP_CLASE_PERMISO creado.



create table ADMIN.esp_licencias 
  (
    lic_codigo number not null,
    lic_empresa number not null,
    lic_claselic number not null,
    lic_fechainicia date not null,
    lic_fechafin date not null,
    lic_numerolic varchar2(100) not null,
    lic_seguro number not null,
    lic_vehiculo varchar2(250) not null,
    lic_usuario varchar2(50) not null,
    lic_vicemin varchar2(100) not null,
    lic_obs varchar2(250) not null,
    lic_status number not null,
    lic_fecactual date not null,
    lic_procedencia varchar2(250) not null,
    constraint pk_esp_licencias primary key (lic_codigo) 
  );
  /

create table ADMIN.aud_esp_licencias 
  (
    lic_codigo number,
    lic_empresa number,
    lic_claselic number,
    lic_fechainicia date,
    lic_fechafin date,
    lic_numerolic varchar2(100,1),
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


-- Table ADMIN.ESP_SEGURO creado.


-- Table ADMIN.AUD_ESP_SEGURO creado.


-- Table ADMIN.ESP_EMPRESAS creado.


-- Table ADMIN.AUD_ESP_EMPRESAS creado.


create table ADMIN.esp_vehiculos 
  (
    veh_codigo number not null,
    veh_marca number not null,
    veh_modelo number not null,
    veh_color varchar2(30) not null,
    veh_placas varchar2(30) not null,
    veh_empresa number not null,
    veh_tipo varchar2(30) not null,
    veh_doc_auto varchar2(100) not null,
    veh_fecha_auto date not null,
    veh_capacidad varchar2(50) not null,
    constraint pk_espveh primary key (veh_codigo)  
  );
  /

create table ADMIN.aud_esp_vehiculos 
  (
    veh_codigo number,
    veh_marca number,
    veh_modelo number,
    veh_color varchar2(30),
    veh_placas varchar2(30),
    veh_empresa number,
    veh_tipo varchar2(30),
    veh_doc_auto varchar2(100),
    veh_fecha_auto date,
    veh_capacidad varchar2(50),
    desp_veh_codigo number,
    desp_veh_marca number,
    desp_veh_modelo number,
    desp_veh_color varchar2(30),
    desp_veh_placas varchar2(30),
    desp_veh_empresa number,
    desp_veh_tipo varchar2(30),
    desp_veh_doc_auto varchar2(100),
    desp_veh_fecha_auto date,
    desp_veh_capacidad varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.luni_solicitud 
  (
    sol_numero number not null,
    sol_docto varchar2(25,1) not null,
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

create table ADMIN.aud_luni_solicitud 
  (
    sol_numero number,
    sol_docto varchar2(25),
    sol_fecha date,
    sol_obs varchar2(250),
    sol_dependencia number,
    sol_comte number,
    sol_logistico number,
    sol_dotac number,
    sol_usuario number,
    sol_comprobante number,
    desp_sol_numero number,
    desp_sol_docto varchar2(25),
    desp_sol_fecha date,
    desp_sol_obs varchar2(250),
    desp_sol_dependencia number,
    desp_sol_comte number,
    desp_sol_logistico number,
    desp_sol_dotac number,
    desp_sol_usuario number,
    desp_sol_comprobante number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.LUNI_DETALLESOLI creado.


-- Table ADMIN.AUD_LUNI_DETALLESOLI creado.


-- Table ADMIN.LUNI_DETSOL_LOG creado.


-- Table ADMIN.AUD_LUNI_DETSOL_LOG creado.


create table ADMIN.luni_situacion 
  (
    sit_codigo number not null,
    sit_descrip varchar2(25) not null,
    constraint pk_situacion primary key (sit_codigo)  
  );
  /

create table ADMIN.aud_luni_situacion 
  (
    sit_codigo number,
    sit_descrip varchar2(25),
    desp_sit_codigo number,
    desp_sit_descrip varchar2(25),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.luni_documento 
  (
    doc_numero number not null,
    doc_documento varchar2(25) not null,
    doc_situacion number not null,
    constraint pk_documento primary key (doc_numero,doc_documento)  
  );
  /

create table ADMIN.aud_luni_documento 
  (
    doc_numero number,
    doc_documento varchar2(25),
    doc_situacion number,
    desp_doc_numero number,
    desp_doc_documento varchar2(25),
    desp_doc_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.luni_talla 
  (
    tal_codigo number not null,
    tal_descrip varchar2(10) not null,
    constraint pk_tallauni primary key (tal_codigo)  
  );
  /

create table ADMIN.aud_luni_talla 
  (
    tal_codigo number,
    tal_descrip varchar2(10),
    desp_tal_codigo number,
    desp_tal_descrip varchar2(10),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.LMUN_TIPO1 creado.


-- Table ADMIN.LMUN_CALIBRE1 creado.


create table ADMIN.lmun_marca 
  (
    mar_codigo number not null,
    mar_desc varchar2(25) not null,
    mar_usuario number not null,
    constraint pk_marcaa primary key (mar_codigo)  
  );
  /


-- Table ADMIN.LMUN_COLOR creado.


-- Table ADMIN.LMUN_MODELO creado.


-- Table ADMIN.LMUN_FABRICA creado.


-- Table ADMIN.LMUN_LOTE1 creado.


-- Table ADMIN.LMUN_SITUACION creado.


-- Table ADMIN.L_MUNICION creado.


-- Table ADMIN.LMUN_USO1 creado.


-- Table ADMIN.LMUN_CARGA creado.


-- Table ADMIN.LMUN_SOLICITUD1 creado.


-- Table ADMIN.LMUN_DET_SOLICITUD creado.


-- Table ADMIN.LMUN_DET_SOLASIGNA creado.



create table ADMIN.lmun_det_cambiosit 
  (
    detc_solicitud number not null,
    detc_municion number not null,
    detc_cantidad number not null,
    detc_situacion number not null,
    detc_usuario number not null,
    constraint pk_cambiosit primary key (detc_solicitud,detc_municion)  
  );
  /


-- Table ADMIN.LMUN_DEVOLENTRE creado.


-- Table ADMIN.LMUN_MOV_SOLICITUD creado.


-- Table ADMIN.LMUN_CORRELA creado.


-- Table ADMIN.LMUN_MOVIMIENTOS creado.


-- Table ADMIN.LMUN_ASIGNACION creado.


-- Table ADMIN.LMUN_CAMBIO_SIT creado.


-- Table ADMIN.LMUN_TRASINT creado.


-- Table ADMIN.LMUN_DET_CONOCIMIENTO creado.


-- Table ADMIN.LMUN_CONOC_FAB creado.


-- Table ADMIN.LMUN_DET_CONOC_FAB creado.


-- Table ADMIN.AUD_LMUN_TIPO creado.


-- Table ADMIN.AUD_LMUN_CALIBRE creado.


-- Table ADMIN.AUD_LMUN_MARCA creado.


-- Table ADMIN.AUD_LMUN_COLOR creado.


-- Table ADMIN.AUD_LMUN_MODELO creado.


-- Table ADMIN.AUD_LMUN_FABRICA creado.


-- Table ADMIN.AUD_LMUN_LOTE creado.


-- Table ADMIN.AUD_LMUN_SITUACION creado.


-- Table ADMIN.AUD_L_MUNICION creado.


-- Table ADMIN.AUD_LMUN_USO creado.


-- Table ADMIN.AUD_LMUN_CARGA creado.


-- Table ADMIN.AUD_LMUN_SOLICITUD creado.


-- Table ADMIN.AUD_LMUN_DET_SOLICITUD creado.


-- Table ADMIN.AUD_LMUN_DET_SOLASIGNA creado.


-- Table ADMIN.AUD_LMUN_DET_CAMBIOSIT creado.


-- Table ADMIN.AUD_LMUN_DEVOLENTRE creado.


-- Table ADMIN.AUD_LMUN_MOV_SOLICITUD creado.


-- Table ADMIN.AUD_LMUN_CORRELA creado.


-- Table ADMIN.AUD_LMUN_MOVIMIENTOS creado.


-- Table ADMIN.AUD_LMUN_ASIGNACION creado.


-- Table ADMIN.AUD_LMUN_CAMBIO_SIT creado.


-- Table ADMIN.AUD_LMUN_TRASINT creado.


-- Table ADMIN.AUD_LMUN_DET_CONOCIMIENTO creado.


-- Table ADMIN.AUD_LMUN_CONOC_FAB creado.


-- Table ADMIN.AUD_LMUN_DET_CONOC_FAB creado.



create table ADMIN.pcapa_det_solicitud 
  (
    cap_solcod varchar2(20) not null,
    cap_catalogo number not null,
    cap_grado number not null,
    cap_curso varchar2(100) not null,
    cap_fec_inicio date not null,
    cap_fec_fin date not null,
    cap_pais number not null,
    cap_escuela varchar2(100) not null,
    cap_valor number(16,2),
    cap_tipo char(1),
    cap_clasifica char(1),
    cap_equi number,
    cap_punteo number(5,2),
    cap_puesto char(3),
    cap_obserba varchar2(250),
    cap_estado number not null,
    cap_tipo_doc char(10),
    cap_aprueba number,
    cap_fec_aprueba date,
    cap_obs varchar2(250),
    constraint pk_pcapa_det_solicitud primary key (cap_solcod,cap_catalogo,cap_fec_inicio)  
  );
  /

create table ADMIN.aud_pcapa_det_solicitud 
  (
    cap_solcod varchar2(20),
    cap_catalogo number,
    cap_grado number,
    cap_curso varchar2(100),
    cap_fec_inicio date,
    cap_fec_fin date,
    cap_pais number,
    cap_escuela varchar2(100),
    cap_valor number(16,2),
    cap_tipo char(1),
    cap_clasifica char(1),
    cap_equi number,
    cap_punteo number(5,2),
    cap_puesto char(3),
    cap_obserba varchar2(250),
    cap_estado number,
    cap_tipo_doc char(10),
    cap_aprueba number,
    cap_fec_aprueba date,
    cap_obs varchar2(250),
    desp_cap_solcod varchar2(20),
    desp_cap_catalogo number,
    desp_cap_grado number,
    desp_cap_curso varchar2(100),
    desp_cap_fec_inicio date,
    desp_cap_fec_fin date,
    desp_cap_pais number,
    desp_cap_escuela varchar2(100),
    desp_cap_valor number(16,2),
    desp_cap_tipo char(1),
    desp_cap_clasifica char(1),
    desp_cap_equi number,
    desp_cap_punteo number(5,2),
    desp_cap_puesto char(3),
    desp_cap_obserba varchar2(250),
    desp_cap_estado number,
    desp_cap_tipo_doc char(10),
    desp_cap_aprueba number,
    desp_cap_fec_aprueba date,
    desp_cap_obs varchar2(250),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.POCUR_SOLICITUD creado.


-- Table ADMIN.AUD_POCUR_SOLICITUD creado.


-- Table ADMIN.PDCAPACITACION creado.


-- Table ADMIN.AUD_PDCAPACITACION creado.



create table ADMIN.ocur_det_solicitud 
  (
    cur_solcod varchar2(20) not null,
    cur_catalogo number not null,
    cur_grado number not null,
    cur_curso number not null,
    cur_fec_inicio date not null,
    cur_fec_fin date not null,
    cur_escuela number not null,
    cur_valor number(16,2),
    cur_clasifica char(1),
    cur_punteo number(5,2),
    cur_puesto char(3),
    cur_obserba varchar2(250),
    cur_estado number not null,
    cur_tipo_doc char(10),
    cur_aprueba number,
    cur_fec_aprueba date,
    cur_obs varchar2(250),
    constraint pk_curdetsol primary key (cur_solcod,cur_catalogo,cur_fec_inicio)  
  );
  /



create table ADMIN.aud_ocur_det_solicitud 
  (
    cur_solcod varchar2(20),
    cur_catalogo number,
    cur_grado number,
    cur_curso number,
    cur_fec_inicio date,
    cur_fec_fin date,
    cur_escuela number,
    cur_valor number(16,2),
    cur_clasifica char(1),
    cur_punteo number(5,2),
    cur_puesto char(3),
    cur_obserba varchar2(250),
    cur_estado number,
    cur_tipo_doc char(10),
    cur_aprueba number,
    cur_fec_aprueba date,
    cur_obs varchar2(250),
    desp_cur_solcod varchar2(20),
    desp_cur_catalogo number,
    desp_cur_grado number,
    desp_cur_curso number,
    desp_cur_fec_inicio date,
    desp_cur_fec_fin date,
    desp_cur_escuela number,
    desp_cur_valor number(16,2),
    desp_cur_clasifica char(1),
    desp_cur_punteo number(5,2),
    desp_cur_puesto char(3),
    desp_cur_obserba varchar2(250),
    desp_cur_estado number,
    desp_cur_tipo_doc char(10),
    desp_cur_aprueba number,
    desp_cur_fec_aprueba date,
    desp_cur_obs varchar2(250),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.USUARIOS_SISTEMA creado.



create table ADMIN.luni_asignacion 
  (
    asi_catalogo number not null,
    asi_uniforme number not null,
    asi_numero number not null,
    asi_tallauni varchar2(10) not null,
    asi_tallabota varchar2(5) not null,
    asi_tallagorra varchar2(5) not null,
    asi_fecha date not null,
    asi_codigobarra varchar2(15) not null,
    asi_dependencia number,
    asi_usuario number not null,
    asi_status char(1) not null,
    
    constraint ck_asi_status check (asi_status IN ('A' ,'M' )) ,
    constraint luni_asignacion primary key (asi_catalogo,asi_uniforme,asi_numero)  
  );
  /

create table ADMIN.aud_luni_asignacion 
  (
    asi_catalogo number,
    asi_uniforme number,
    asi_numero number,
    asi_tallauni varchar2(10),
    asi_tallabota varchar2(5),
    asi_tallagorra varchar2(5),
    asi_fecha date,
    asi_codigobarra varchar2(15),
    asi_dependencia number,
    asi_usuario number,
    asi_status char(1),
    desp_asi_catalogo number,
    desp_asi_uniforme number,
    desp_asi_numero number,
    desp_asi_tallauni varchar2(10),
    desp_asi_tallabota varchar2(5),
    desp_asi_tallagorra varchar2(5),
    desp_asi_fecha date,
    desp_asi_codigobarra varchar2(15),
    desp_asi_dependencia number,
    desp_asi_usuario number,
    desp_asi_status char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.ARCO_CAPACITACIONES creado.


-- Table ADMIN.AUD_ARCO_CAPACITACIONES creado.


-- Table ADMIN.ARCO_COND creado.


-- Table ADMIN.AUD_ARCO_COND creado.


-- Table ADMIN.ARCO_DCON creado.


-- Table ADMIN.AUD_ARCO_DCON creado.


-- Table ADMIN.ARCO_DCUR creado.


-- Table ADMIN.AUD_ARCO_DCUR creado.


-- Table ADMIN.ARCO_DEMERITOS creado.


-- Table ADMIN.AUD_ARCO_DEMERITOS creado.


-- Table ADMIN.ARCO_ERUDICCION creado.


-- Table ADMIN.AUD_ARCO_ERUDICCION creado.


-- Table ADMIN.ARCO_EVADS creado.


-- Table ADMIN.AUD_ARCO_EVADS creado.


-- Table ADMIN.ARCO_GRADOS creado.


-- Table ADMIN.AUD_ARCO_GRADOS creado.


-- Table ADMIN.ARCO_NOTAS creado.


-- Table ADMIN.AUD_ARCO_NOTAS creado.


-- Table ADMIN.ARCO_OBLIGATORIO creado.


-- Table ADMIN.AUD_ARCO_OBLIGATORIO creado.


-- Table ADMIN.ARCO_PAFES creado.


-- Table ADMIN.AUD_ARCO_PAFES creado.


-- Table ADMIN.ARCO_PONDERACION creado.


-- Table ADMIN.AUD_ARCO_PONDERACION creado.


-- Table ADMIN.ARCO_SANCIONES creado.


-- Table ADMIN.AUD_ARCO_SANCIONES creado.


-- Table ADMIN.ARCO_CURSOS creado.


-- Table ADMIN.AUD_ARCO_CURSOS creado.


-- Table ADMIN.ARCO_JEFES creado.


-- Table ADMIN.AUD_ARCO_JEFES creado.



create table ADMIN.larm_solicitud 
  (
    sol_num number not null,
    sol_catalogo number not null,
    sol_tipo number not null,
    sol_ref varchar2(150) not null,
    sol_datocambia number not null,
    sol_contenido varchar2(60),
    sol_contenido2 number,
    sol_motivo varchar2(255) not null,
    sol_logistico number not null,
    sol_comte number not null,
    sol_inspector number not null,
    sol_fecha date not null,
    sol_usuario number,
    constraint soli_s primary key (sol_num,sol_catalogo)  
  );
  /

create table ADMIN.coc_coordenadas 
  (
    coo_reporte number not null,
    coo_anio number not null,
    coo_dep number not null,
    coo_id number not null,
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
    constraint coc_coordenadas primary key (coo_reporte,coo_anio,coo_dep,coo_id)  
  );
  /

create table ADMIN.aud_coc_coordenadas 
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
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.COC_MISION creado.


-- Table ADMIN.AUD_COC_MISION creado.


-- Table ADMIN.COC_PERSONAL creado.


-- Table ADMIN.AUD_COC_PERSONAL creado.


-- Table ADMIN.COC_REPORTE creado.


-- Table ADMIN.AUD_COC_REPORTE creado.


-- Table ADMIN.COC_TIPO_VEH creado.


-- Table ADMIN.AUD_COC_TIPO_VEH creado.


-- Table ADMIN.COC_VEHICULO_REP creado.


-- Table ADMIN.AUD_COC_VEHICULO_REP creado.


-- Table ADMIN.AUD_FIN_PERSONAL creado.



create table ADMIN.fin_personal 
  (
    fper_catalogo number not null,
    fper_grado number,
    fper_arma number,
    fper_nom1 char(15) not null,
    fper_nom2 char(15),
    fper_ape1 char(15) not null,
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
    fper_situacion char(2) not null,
    fper_dpi char(15),
    
    constraint ck_fper_est_civil check (fper_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    constraint pk_fin_personal primary key (fper_catalogo) 
  );
  /


-- Table ADMIN.COC_DMAN creado.


-- Table ADMIN.AUD_COC_DMAN creado.



create table ADMIN.fin_contrato 
  (
    con_catalogo number,
    con_escuadron number,
    con_empleo number,
    con_inicia date,
    con_termina date,
    con_pago char(1),
    con_contrato varchar2(100),
    con_fec_alta date,
    con_fec_baja date,
    con_motivo varchar2(150),
    con_hor_trab number,
    constraint con_catalogo primary key (con_catalogo)  
  );
  /

create table ADMIN.aud_fin_contrato 
  (
    con_catalogo number,
    con_escuadron number,
    con_empleo number,
    con_inicia date,
    con_termina date,
    con_pago char(1),
    con_contrato varchar2(100),
    con_fec_alta date,
    con_fec_baja date,
    con_motivo varchar2(150),
    con_hor_trab number,
    desp_con_catalogo number,
    desp_con_escuadron number,
    desp_con_empleo number,
    desp_con_inicia date,
    desp_con_termina date,
    desp_con_pago char(1),
    desp_con_contrato varchar2(100),
    desp_con_fec_alta date,
    desp_con_fec_baja date,
    desp_con_motivo varchar2(150),
    desp_con_hor_trab number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.fin_escuadrones 
  (
    esc_codigo number,
    esc_desc_lg varchar2(150),
    esc_desc_md varchar2(50),
    esc_desc_ct varchar2(25),
    esc_gru_pago number,
    esc_dependencia number,
    constraint esc_codigo primary key (esc_codigo)  
  );
  /

create table ADMIN.aud_fin_escuadrones 
  (
    esc_codigo number,
    esc_desc_lg varchar2(150),
    esc_desc_md varchar2(50),
    esc_desc_ct varchar2(25),
    esc_gru_pago number,
    esc_dependencia number,
    desp_esc_codigo number,
    desp_esc_desc_lg varchar2(150),
    desp_esc_desc_md varchar2(50),
    desp_esc_desc_ct varchar2(25),
    desp_esc_gru_pago number,
    desp_esc_dependencia number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.CN creado.



create table ADMIN.cnb 
  (
    cnb_codigo char(1) not null,
    cnb_desc_lg varchar2(100) not null,
    constraint pk_cnb primary key (cnb_codigo) 
  );
  /


-- Table ADMIN.AUD_CN creado.



create table ADMIN.aud_cnb 
  (
    cnb_codigo char(1),
    cnb_desc_lg varchar2(100),
    desp_cnb_codigo char(1),
    desp_cnb_desc_lg varchar2(100),
    accion char(1) not null,
    usuario char(10) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_CNA creado.



create table ADMIN.cns 
  (
    sis_catalogo number,
    sis_pass varchar2(20) not null,
    sis_fecha date not null,
    sis_permiso number,
    constraint sistemas primary key (sis_catalogo,sis_permiso)  
  );
  /


create table ADMIN.aud_usu_sistemas 
  (
    sis_catalogo number,
    sis_pass varchar2(20),
    sis_fecha date,
    sis_permiso number,
    desp_sis_catalogo number,
    desp_sis_pass varchar2(20),
    desp_sis_fecha date,
    desp_sis_permiso number,
    accion char(1) not null,
    usuario char(10) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_DFAM creado.


-- Table ADMIN.PRUEBA_DFAM creado.


create table ADMIN.coc_planificar 
  (
    pla_dep_llave number not null,
    pla_codigo number not null,
    pla_referencia varchar2(100) not null,
    pla_descripcion varchar2(1500),
    pla_situacion number not null,
    constraint pk_coc_planificar primary key (pla_dep_llave,pla_codigo)  
  );
  /

create table ADMIN.aud_coc_planificar 
  (
    pla_dep_llave number,
    pla_codigo number,
    pla_referencia varchar2(100),
    pla_descripcion varchar2(1500),
    pla_situacion number,
    desp_pla_dep_llave number,
    desp_pla_codigo number,
    desp_pla_referencia varchar2(100),
    desp_pla_descripcion varchar2(1500),
    desp_pla_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.TAUTH creado.


-- Table ADMIN.USUARIOS creado.



create table ADMIN.temp_fin_personal 
  (
    fper_catalogo number not null,
    fper_grado number,
    fper_arma number,
    fper_nom1 char(15) not null,
    fper_nom2 char(15),
    fper_ape1 char(15) not null,
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
    fper_situacion char(2) not null,
    fper_dpi char(15),
    
    constraint temp_ck_fper_est_civil check (fper_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )) ,
    constraint temp_pk_fin_personal primary key (fper_catalogo)  
  );
  /

create table ADMIN.cor_tipo_docum 
  (
    tipo_codigo number not null,
    tipo_desc varchar2(50) not null,
    constraint pk_cor_tipo_docum primary key (tipo_codigo) 
  );
  /

create table ADMIN.aud_cor_tipo_docum 
  (
    tipo_codigo number,
    tipo_desc varchar2(50),
    desp_tipo_codigo number,
    desp_tipo_desc varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.cor_proposito 
  (
    prop_codigo number not null,
    prop_desc varchar2(100) not null,
    constraint prop_codigo primary key (prop_codigo)  
  );
  /

create table ADMIN.aud_cor_proposito 
  (
    prop_codigo number,
    prop_desc varchar2(100),
    desp_prop_codigo number,
    desp_prop_desc varchar2(100),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.cor_ubicacion_docum 
  (
    ubi_codigo number not null,
    ubi_documento number not null,
    ubi_remite_ofi number not null,
    ubi_remite_usu number not null,
    ubi_remite_fec TIMESTAMP not null,
    ubi_remite_folios number not null,
    ubi_tipo_doc_remite number not null,
    ubi_doc_remite varchar2(200) not null,
    ubi_observaciones varchar2(255) not null,
    ubi_int_ext char(1) not null,
    ubi_recibe_of number not null,
    ubi_recibe_usu number,
    ubi_recibe_fec TIMESTAMP,
    ubi_recibe_status char(1) not null,
    constraint cor_ubicacion primary key (ubi_codigo,ubi_documento)  
  );
  /

create table ADMIN.aud_cor_ubicacion_docum 
  (
    ubi_codigo number,
    ubi_documento number,
    ubi_remite_ofi number,
    ubi_remite_usu number,
    ubi_remite_fec TIMESTAMP,
    ubi_remite_folios number,
    ubi_tipo_doc_remite number,
    ubi_doc_remite varchar2(200),
    ubi_observaciones varchar2(255),
    ubi_int_ext char(1),
    ubi_recibe_of number,
    ubi_recibe_usu number,
    ubi_recibe_fec TIMESTAMP,
    ubi_recibe_status char(1),
    desp_ubi_codigo number,
    desp_ubi_documento number,
    desp_ubi_remite_ofi number,
    desp_ubi_remite_usu number,
    desp_ubi_remite_fec TIMESTAMP,
    desp_ubi_remite_folios number,
    desp_ubi_tipo_doc_remite number,
    desp_ubi_doc_remite varchar2(200),
    desp_ubi_observaciones varchar2(255),
    desp_ubi_int_ext char(1),
    desp_ubi_recibe_of number,
    desp_ubi_recibe_usu number,
    desp_ubi_recibe_fec TIMESTAMP,
    desp_ubi_recibe_status char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.cor_documento 
  (
    doc_codigo number not null,
    doc_oficina number not null,
    doc_tipo number not null,
    doc_nombre varchar2(200) not null,
    doc_prioridad number not null,
    doc_asunto varchar2(255) not null,
    doc_fec_realizado date not null,
    doc_fec_ingresado TIMESTAMP not null,
    doc_num_hojas number not null,
    doc_destino number not null,
    doc_procedencia number not null,
    doc_status char(1) not null,
    doc_interesado varchar2(50) not null,
    doc_clasificacion number not null,
    doc_proposito number not null,
    doc_recibe number not null,
    doc_interno char(1) not null,
    doc_solucion char(1) not null,
    doc_referencia varchar2(75) not null,
    doc_of_actual number not null,
    doc_ult_tras TIMESTAMP not null,
    doc_fec_limite TIMESTAMP,
     constraint pk_cor_documento primary key (doc_codigo) 
  );
  /

create table ADMIN.aud_cor_documento 
  (
    doc_codigo number,
    doc_oficina number,
    doc_tipo number,
    doc_nombre varchar2(200),
    doc_prioridad number,
    doc_asunto varchar2(255),
    doc_fec_realizado date,
    doc_fec_ingresado TIMESTAMP,
    doc_num_hojas number,
    doc_destino number,
    doc_procedencia number,
    doc_status char(1),
    doc_interesado varchar2(50),
    doc_clasificacion number,
    doc_proposito number,
    doc_recibe number,
    doc_interno char(1),
    doc_solucion char(1),
    doc_referencia varchar2(75),
    doc_of_actual number,
    doc_ult_tras TIMESTAMP,
    doc_fec_limite TIMESTAMP,
    desp_doc_codigo number,
    desp_doc_oficina number,
    desp_doc_tipo number,
    desp_doc_nombre varchar2(200),
    desp_doc_prioridad number,
    desp_doc_asunto varchar2(255),
    desp_doc_fec_realizado date,
    desp_doc_fec_ingresado TIMESTAMP,
    desp_doc_num_hojas number,
    desp_doc_destino number,
    desp_doc_procedencia number,
    desp_doc_status char(1),
    desp_doc_interesado varchar2(50),
    desp_doc_clasificacion number,
    desp_doc_proposito number,
    desp_doc_recibe number,
    desp_doc_interno char(1),
    desp_doc_solucion char(1),
    desp_doc_referencia varchar2(75),
    desp_doc_of_actual number,
    desp_doc_ult_tras TIMESTAMP,
    desp_doc_fec_limite TIMESTAMP,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.cor_empresas 
  (
    emp_codigo number not null,
    emp_desc_lg varchar2(75) not null,
    emp_desc_md varchar2(40) not null,
    emp_desc_ct varchar2(20) not null,
    constraint pk_cor_empresas primary key (emp_codigo)  
  );
  /

create table ADMIN.aud_cor_empresas 
  (
    emp_codigo number,
    emp_desc_lg varchar2(75),
    emp_desc_md varchar2(40),
    emp_desc_ct varchar2(20),
    desp_emp_codigo number,
    desp_emp_desc_lg varchar2(75),
    desp_emp_desc_md varchar2(40),
    desp_emp_desc_ct varchar2(20),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.cor_oficinas 
  (
    of_codigo number not null,
    of_oficina varchar2(10) not null,
    of_dependencia number not null,
    of_descripcion varchar2(75) not null,
    of_mensajes number not null,
    constraint of_codigo primary key (of_codigo)  
  );
  /

create table ADMIN.aud_cor_oficinas 
  (
    of_codigo number,
    of_oficina varchar2(10),
    of_dependencia number,
    of_descripcion varchar2(75),
    of_mensajes number,
    desp_of_codigo number,
    desp_of_oficina varchar2(10),
    desp_of_dependencia number,
    desp_of_descripcion varchar2(75),
    desp_of_mensajes number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lmun_solicitud 
  (
    sol_codigo number not null,
    sol_dep_llave number not null,
    sol_catalogo_solicita number not null,
    sol_grado_solicita number not null,
    sol_fecha_solicita TIMESTAMP not null,
    sol_msj_solicita varchar2(255) not null,
    sol_fecha_solicita2 date,
    sol_msj_solicita2 varchar2(255),
    sol_catalogo_autoriza number,
    sol_grado_autoriza number,
    sol_fecha_autoriza TIMESTAMP,
    sol_msj_autoriza varchar2(255),
    sol_catalogo_ordena number,
    sol_grado_ordena number,
    sol_fecha_ordena TIMESTAMP,
    sol_msj_ordena varchar2(255),
    sol_situacion number not null,
    constraint pk_lmun_solicitud   primary key (sol_codigo,sol_dep_llave)  
  );
  /

create table ADMIN.lmun_lote 
  (
    lote_codigo number not null,
    lote_descripcion varchar2(255) not null,
    lote_fecha date,
    lote_situacion number not null,
    constraint pk_lote_codigo primary key (lote_codigo)  
  );
  /

-- Table ADMIN.LMUN_DETALLE_SOLICITUD creado.


-- Table ADMIN.LMUN_LOTE_ASIG creado.

create table ADMIN.lmun_tipo 
  (
    tipo_codigo number not null,
    tipo_descripcion varchar2(255) not null,
    tipo_situacion number not null,
    constraint pk_tipo_codigo primary key (tipo_codigo)  
  );
  /

create table ADMIN.lmun_calibre 
  (
    cal_codigo number not null,
    cal_descripcion varchar2(255) not null,
    cal_situacion number not null,
     constraint pk_cal_codigo primary key (cal_codigo) 
  );
  /

create table ADMIN.lmun_uso 
  (
    uso_codigo number not null,
    uso_descripcion varchar2(255) not null,
    uso_situacion number not null,
    constraint pk_uso_codigo primary key (uso_codigo)  
  );
  /

-- Table ADMIN.LMUN_ENT_SAL creado.


-- Table ADMIN.AUD_LMARMAS1 creado.


create table ADMIN.mag_egresos 
  (
    egr_id number not null,
    egr_fecha TIMESTAMP not null,
    egr_usuario number not null,
    egr_dependencia number not null,
    egr_departamento char(4) not null,
    egr_municipio char(4) not null,
    egr_observaciones varchar2(255),
    egr_referencia char(50),
    egr_personal number,
    egr_situacion number not null,
    constraint fk_mag_egresos primary key (egr_id)  
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
  ),
  /


-- Table ADMIN.MAG_INVENTARIO creado.


-- Table ADMIN.AUD_MAG_INVENTARIO creado.


create table ADMIN.mag_insumos 
  (
    ins_id number not null,
    ins_descripcion varchar2(100) not null,
    ins_medida varchar2(50,2) not null,
    ins_situacion number not null,
    constraint pk_mag_insumos primary key (ins_id)  
  );
  /

create table ADMIN.aud_mag_insumos 
  (
    ins_id number,
    ins_descripcion varchar2(100),
    ins_medida varchar2(50),
    ins_situacion number,
    desp_ins_id number,
    desp_ins_descripcion varchar2(100),
    desp_ins_medida varchar2(50),
    desp_ins_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.MAG_DET_INGRESO creado.


-- Table ADMIN.AUD_MAG_DET_INGRESO creado.


-- Table ADMIN.MAG_DET_EGRESO creado.


-- Table ADMIN.AUD_MAG_DET_EGRESO creado.



create table ADMIN.mag_ingresos 
  (
    ing_id number not null,
    ing_fecha TIMESTAMP not null,
    ing_usuario number not null,
    ing_dependencia number not null,
    ing_departamento char(4) not null,
    ing_municipio char(4) not null,
    ing_observaciones varchar2(255),
    ing_referencia char(50),
    ing_personal number,
    ing_situacion number not null,
    constraint fk_ingreso primary key (ing_id)  
  );
  /

create table ADMIN.aud_mag_ingresos 
  (
    ing_id number,
    ing_fecha TIMESTAMP,
    ing_usuario number,
    ing_dependencia number,
    ing_departamento char(4),
    ing_municipio char(4),
    ing_observaciones varchar2(255),
    ing_referencia char(50),
    ing_personal number,
    ing_situacion number,
    desp_ing_id number,
    desp_ing_fecha TIMESTAMP,
    desp_ing_usuario number,
    desp_ing_dependencia number,
    desp_ing_departamento char(4),
    desp_ing_municipio char(4),
    desp_ing_observaciones varchar2(255),
    desp_ing_referencia char(50),
    desp_ing_personal number,
    desp_ing_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.lmun_conocimiento 
  (
    con_codigo number not null,
    con_dep_llave number not null,
    con_numero_libro varchar2(255) not null,
    con_folio_libro varchar2(255) not null,
    con_conocimiento_libro varchar2(255) not null,
    con_tipo_libro number not null,
    con_grado_entrego number not null,
    con_catalogo_entrego number not null,
    con_dep_llave_entrego number not null,
    con_org_plaza_entrego number,
    con_grado_recibio number not null,
    con_catalogo_recibio number not null,
    con_dep_llave_recibio number not null,
    con_org_plaza_recibio number,
    con_grado_autorizo number not null,
    con_catalogo_autorizo number not null,
    con_dep_llave_autorizo number not null,
    con_org_plaza_autorizo number,
    con_mensaje varchar2(255) not null,
    con_fecha_mensaje date not null,
    con_fecha_conocimiento date not null,
    con_situacion number not null,
    constraint pk_lmun_conocimiento primary key (con_codigo,con_dep_llave)  
  );
  /

-- Table ADMIN.USU_AUTOCOM creado.



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
    primary key (seg_usuario)  constraint segusuario
  );
  /

create table ADMIN.aud_cor_corr_seg 
  (
    seg_usuario number,
    seg_pass varchar2(30),
    seg_oficina number,
    seg_plaza number,
    seg_nivel number,
    seg_seguridad number,
    seg_habilita number,
    seg_situacion number,
    desp_seg_usuario number,
    desp_seg_pass varchar2(30),
    desp_seg_oficina number,
    desp_seg_plaza number,
    desp_seg_nivel number,
    desp_seg_seguridad number,
    desp_seg_habilita number,
    desp_seg_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.LMUN_ASIG_ARM creado.


-- Table ADMIN.ARCO_ESCALAFON creado.


-- Table ADMIN.AUD_ARCO_ESCALAFON creado.


-- Table ADMIN.ARCO_ESCALAFONP creado.


-- Table ADMIN.ARCO_NOT_CREDITOS creado.


-- Table ADMIN.ARCO_ESCALAFON1 creado.


-- Table ADMIN.TIEMPOS creado.


-- Table ADMIN.ARCO_PCOMANDO creado.


create table ADMIN.dot_uniformes 
  (
    uni_codigo number not null,
    uni_fuerza number not null,
    uni_descrip varchar2(50) not null,
    uni_situacion number not null,
    constraint pk_dot_uniformes primary key (uni_codigo)  
  );
  /

create table ADMIN.aud_dot_uniformes 
  (
    uni_codigo number,
    uni_fuerza number,
    uni_descrip varchar2(50),
    uni_situacion number,
    desp_uni_codigo number,
    desp_uni_fuerza number,
    desp_uni_descrip varchar2(50),
    desp_uni_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.dot_solicitud 
  (
    sol_numero number not null,
    sol_mensaje varchar2(50) not null,
    sol_fecha date not null,
    sol_com_catalogo number not null,
    sol_log_cat number not null,
    sol_observaciones varchar2(250) not null,
    sol_situacion varchar2(10) not null,
    sol_dotacion varchar2(10) not null,
    sol_dependencia number not null,
    sol_jerarquia number,
    sol_usuario number,
    sol_hoja number,
    sol_cant_hojas number,
    constraint pk_dot_solicitud primary key (sol_numero)  
  );
  /

create table ADMIN.aud_dot_solicitud 
  (
    sol_numero number,
    sol_mensaje varchar2(50),
    sol_fecha date,
    sol_com_catalogo number,
    sol_log_cat number,
    sol_observaciones varchar2(250),
    sol_situacion varchar2(10),
    sol_dotacion varchar2(10),
    sol_dependencia number,
    sol_jerarquia number,
    sol_usuario number,
    sol_hoja number,
    sol_cant_hojas number,
    desp_sol_numero number,
    desp_sol_mensaje varchar2(50),
    desp_sol_fecha date,
    desp_sol_com_catalogo number,
    desp_sol_log_cat number,
    desp_sol_observaciones varchar2(250),
    desp_sol_situacion varchar2(10),
    desp_sol_dotacion varchar2(10),
    desp_sol_dependencia number,
    desp_sol_jerarquia number,
    desp_sol_usuario number,
    desp_sol_hoja number,
    desp_sol_cant_hojas number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
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
    det_codbarra varchar2(15,1),
    constraint pk_detsolicitud primary key (det_solicitud,det_catalogo)  
  );
  /

create table ADMIN.aud_dot_detalle 
  (
    det_solicitud number,
    det_catalogo number,
    det_grado number,
    det_codigo_uni number,
    det_talla_uni varchar2(6),
    det_talla_bota varchar2(5),
    det_talla_gorra varchar2(6),
    det_situacion number,
    det_fecha date,
    det_usuario number,
    det_comprobante number,
    det_codbarra varchar2(15),
    desp_det_solicitud number,
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_codigo_uni number,
    desp_det_talla_uni varchar2(6),
    desp_det_talla_bota varchar2(5),
    desp_det_talla_gorra varchar2(6),
    desp_det_situacion number,
    desp_det_fecha date,
    desp_det_usuario number,
    desp_det_comprobante number,
    desp_det_codbarra varchar2(15),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.INV_PROVEEDOR creado.


-- Table ADMIN.AUD_INV_PROVEEDOR creado.


-- Table ADMIN.INV_REPRESENTANTE creado.


-- Table ADMIN.INV_ASIG_REPRE_PROVEE creado.


create table ADMIN.inv_detalle 
  (
    det_codigo number not null,
    det_formulario number not null,
    det_tipo char(2) not null,
    det_lote number not null,
    det_articulo number not null,
    det_grupo number not null,
    det_cantidad number not null,
    det_calidad char(20) not null,
    det_observaciones varchar2(255) not null,
    det_situaciones number not null,
    constraint pk_inv_detalle primary key (det_codigo,det_formulario,det_tipo)  
  );
  /

create table ADMIN.inv_articulo 
  (
    art_codigo number not null,
    art_grupo number not null,
    art_desc_corta varchar2(50) not null,
    art_desc_larga varchar2(50) not null,
    art_situacion number not null,
    constraint artcodigo primary key (art_codigo)  
  );
  /

create table ADMIN.inv_clase 
  (
    cla_codigo number not null,
    cla_nombre varchar2(25) not null,
    cla_descripcion varchar2(255) not null,
    cla_situacion number not null,
  constraint id_clase  primary key (cla_codigo)  

  );
  /

-- Table ADMIN.AUD_INV_CLASE creado.



create table ADMIN.aud_inv_grupo 
  (
    grup_codigo number,
    grup_clase number,
    grup_tipo char(20) not null,
    grup_descripcion varchar2(25),
    grup_situacion number,
    desp_grup_codigo number,
    desp_grup_clase number,
    desp_grup_tipo char(20) not null,
    desp_grup_descripcion varchar2(25),
    desp_grup_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_inv_articulo 
  (
    art_codigo number,
    art_grupo number,
    art_desc_corta varchar2(50),
    art_desc_larga varchar2(50),
    art_situacion number,
    desp_art_codigo number,
    desp_art_grupo number,
    desp_art_desc_corta varchar2(50),
    desp_art_desc_larga varchar2(50),
    desp_art_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_inv_detalle 
  (
    det_codigo number,
    det_formulario number,
    det_tipo char(2),
    det_lote number,
    det_articulo number,
    det_grupo number,
    det_cantidad number,
    det_calidad char(20),
    det_observaciones varchar2(255),
    det_situaciones number,
    desp_det_codigo number,
    desp_det_formulario number,
    desp_det_tipo char(2),
    desp_det_lote number,
    desp_det_articulo number,
    desp_det_grupo number,
    desp_det_cantidad number,
    desp_det_calidad char(20),
    desp_det_observaciones varchar2(255),
    desp_det_situaciones number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_INV_ASIG_REPRE_PROVEE creado.


-- Table ADMIN.AUD_INV_REPRESENTANTE creado.


create table ADMIN.inv_grupo 
  (
    grup_codigo number not null,
    grup_clase number not null,
    grup_tipo char(20) not null,
    grup_descripcion varchar2(25) not null,
    grup_situacion number not null,
    constraint pk_grup_codigo primary key (grup_codigo)  
  );
  /

create table ADMIN.inv_lote 
  (
    lot_codigo number not null,
    lot_articulo number not null,
    lot_grupo number not null,
    lot_dependencia number,
    lot_desc_corta varchar2(100) not null,
    lot_desc_larga varchar2(200) not null,
    lot_existencias number not null,
    lot_ubicacion varchar2(250) not null,
    lot_numserie varchar2(30),
    lot_modelo varchar2(60),
    lot_version char(1),
    lot_frecuencia varchar2(50),
    lot_situacion number not null,
    constraint pk_inv_lote primary key (lot_codigo)  
  );
  /

create table ADMIN.inv_formulario 
  (
    for_codigo number not null,
    for_tipo char(2) not null,
    for_fechora TIMESTAMP not null,
    for_proveedor number,
    for_dep_entrega number,
    for_dep_recibe number not null,
    for_representante number,
    for_cat_entrega number,
    for_cat_recibe number not null,
    for_cat_encargado number not null,
    for_cat_jefe number not null,
    for_grad_entrega number,
    for_grad_recibe number,
    for_grad_encargado number,
    for_grad_jefe number,
    for_observaciones varchar2(255) not null,
    for_situaciones number not null,
    constraint  pk_inv_formulario primary key (for_codigo,for_tipo)  
  );
  /

create table ADMIN.aud_inv_lote 
  (
    lot_codigo number,
    lot_articulo number,
    lot_grupo number,
    lot_dependencia number,
    lot_desc_corta varchar2(100),
    lot_desc_larga varchar2(200),
    lot_existencias number,
    lot_ubicacion varchar2(250),
    lot_numserie varchar2(30),
    lot_modelo varchar2(60),
    lot_version char(1),
    lot_frecuencia varchar2(50),
    lot_situacion number,
    desp_lot_codigo number,
    desp_lot_articulo number,
    desp_lot_grupo number,
    desp_lot_dependencia number,
    desp_lot_desc_corta varchar2(100),
    desp_lot_desc_larga varchar2(200),
    desp_lot_existencias number,
    desp_lot_ubicacion varchar2(250),
    desp_lot_numserie varchar2(30),
    desp_lot_modelo varchar2(60),
    desp_lot_version char(1),
    desp_lot_frecuencia varchar2(50),
    desp_lot_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_inv_formulario 
  (
    for_codigo number,
    for_tipo char(20),
    for_fechora TIMESTAMP,
    for_proveedor number,
    for_dep_entrega number,
    for_dep_recibe number,
    for_representante number,
    for_cat_entrega number,
    for_cat_recibe number,
    for_cat_encargado number,
    for_cat_jefe number,
    for_grad_entrega number,
    for_grad_recibe number,
    for_grad_encargado number,
    for_grad_jefe number,
    for_observaciones varchar2(255),
    for_situaciones number,
    desp_for_codigo number,
    desp_for_tipo char(20),
    desp_for_fechora TIMESTAMP,
    desp_for_proveedor number,
    desp_for_dep_entrega number,
    desp_for_dep_recibe number,
    desp_for_representante number,
    desp_for_cat_entrega number,
    desp_for_cat_recibe number,
    desp_for_cat_encargado number,
    desp_for_cat_jefe number,
    desp_for_grad_entrega number,
    desp_for_grad_recibe number,
    desp_for_grad_encargado number,
    desp_for_grad_jefe number,
    desp_for_observaciones varchar2(255),
    desp_for_situaciones number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.DTX_ACCESORIO creado.


-- Table ADMIN.AUD_DTX_ACCESORIO creado.


-- Table ADMIN.DTX_MARCA creado.


-- Table ADMIN.DTX_ARTICULO creado.


-- Table ADMIN.AUD_DTX_ARTICULO creado.


-- Table ADMIN.DTX_EQUIPO creado.


-- Table ADMIN.AUD_DTX_EQUIPO creado.


-- Table ADMIN.AUD_DTX_MARCA creado.


create table ADMIN.aud_dtx_distribucion 
  (
    dist_dman_dep number,
    dist_dman_codigo number,
    dist_eq_art number,
    dist_eq_acc number,
    dist_calidad char(1),
    dist_f_asignacion date,
    dist_catalogo_entrega number,
    dist_grado_entrega number,
    dist_catalogo_recibe number,
    dist_grado_recibe number,
    dist_situacion char(1),
    dist_doc_ref varchar2(50),
    desp_dist_dman_dep number,
    desp_dist_dman_codigo number,
    desp_dist_eq_art number,
    desp_dist_eq_acc number,
    desp_dist_calidad char(1),
    desp_dist_f_asignacion date,
    desp_dist_catalogo_entrega number,
    desp_dist_grado_entrega number,
    desp_dist_catalogo_recibe number,
    desp_dist_grado_recibe number,
    desp_dist_situacion char(1),
    desp_dist_doc_ref varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.dtx_distribucion 
  (
    dist_dman_dep number not null,
    dist_dman_codigo number not null,
    dist_eq_art number not null,
    dist_eq_acc number,
    dist_calidad char(1) not null,
    dist_f_asignacion date not null,
    dist_catalogo_entrega number not null,
    dist_grado_entrega number not null,
    dist_catalogo_recibe number not null,
    dist_grado_recibe number not null,
    dist_situacion char(1) not null,
    dist_doc_ref varchar2(50) not null,
    constraint pk_dtx_distribucion primary key (dist_dman_codigo,dist_dman_dep,dist_eq_art) 
  );
  /

create table ADMIN.bin_situacion 
  (
    sit_id number not null,
    sit_descripcion varchar2(100) not null,
    sit_situacion number not null,
    constraint pk_bin_situacion primary key (sit_id)  
  );
  /

create table ADMIN.aud_bin_situacion 
  (
    sit_id number,
    sit_descripcion varchar2(100),
    sit_situacion number,
    desp_sit_id number,
    desp_sit_descripcion varchar2(100),
    desp_sit_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.bin_adquisicion 
  (
    adq_id number not null,
    adq_descripcion varchar2(100) not null,
    adq_situacion number not null,
    constraint pk_bin_adquisicion primary key (adq_id)  
  );
  /

create table ADMIN.aud_bin_adquisicion 
  (
    adq_id number,
    adq_descripcion varchar2(100),
    adq_situacion number,
    desp_adq_id number,
    desp_adq_descripcion varchar2(100),
    desp_adq_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.bin_tipos 
  (
    tip_id number not null,
    tip_descripcion varchar2(100) not null,
    tip_situacion number not null,
    constraint pk_bin_tipos primary key (tip_id)  
  );
  /

create table ADMIN.aud_bin_tipos 
  (
    tip_id number,
    tip_descripcion varchar2(100),
    tip_situacion number,
    desp_tip_id number,
    desp_tip_descripcion varchar2(100),
    desp_tip_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.bin_accion 
  (
    acc_codigo number not null,
    acc_incidencia number not null,
    acc_accion varchar2(255),
    acc_fecha date not null,
    acc_usuario number not null,
    acc_situacion number not null,
    constraint pk_bin_accion primary key (acc_codigo)  
  );
  /

-- Table ADMIN.BIN_UTM creado.


-- Table ADMIN.AUD_BIN_UTM creado.



create table ADMIN.bin_inmueble 
  (
    inm_codigo number not null,
    inm_descripcion varchar2(255) not null,
    inm_situacion number not null,
    inm_tipo number not null,
    inm_adquisicion number not null,
    inm_direccion varchar2(255) not null,
    inm_depto char(4) not null,
    inm_municipio char(4) not null,
    inm_area varchar2(255) not null,
    inm_area_reg varchar2(255),
    inm_finca number,
    inm_folio number,
    inm_libro varchar2(20),
    inm_esc_publica varchar2(255),
    inm_ac_gub varchar2(255),
    inm_bienes_estado varchar2(255),
    inm_referencia varchar2(255),
    inm_status number not null,
    inm_catastro number not null,
    inm_fecha_cat date,
    inm_obs varchar2(255),
    constraint pk_bin_inmueble primary key (inm_codigo)  
  );
  /

create table ADMIN.aud_bin_inmueble 
  (
    inm_codigo number,
    inm_descripcion varchar2(255),
    inm_situacion number,
    inm_tipo number,
    inm_adquisicion number,
    inm_direccion varchar2(255),
    inm_depto char(4),
    inm_municipio char(4),
    inm_area varchar2(255),
    inm_area_reg varchar2(255),
    inm_finca number,
    inm_folio number,
    inm_libro varchar2(20),
    inm_esc_publica varchar2(255),
    inm_ac_gub varchar2(255),
    inm_bienes_estado varchar2(255),
    inm_referencia varchar2(255),
    inm_status number,
    inm_catastro number,
    inm_fecha_cat date,
    inm_obs varchar2(255),
    desp_inm_codigo number,
    desp_inm_descripcion varchar2(255),
    desp_inm_situacion number,
    desp_inm_tipo number,
    desp_inm_adquisicion number,
    desp_inm_direccion varchar2(255),
    desp_inm_depto char(4),
    desp_inm_municipio char(4),
    desp_inm_area varchar2(255),
    desp_inm_area_reg varchar2(255),
    desp_inm_finca number,
    desp_inm_folio number,
    desp_inm_libro varchar2(20),
    desp_inm_esc_publica varchar2(255),
    desp_inm_ac_gub varchar2(255),
    desp_inm_bienes_estado varchar2(255),
    desp_inm_referencia varchar2(255),
    desp_inm_status number,
    desp_inm_catastro number,
    desp_inm_fecha_cat date,
    desp_inm_obs varchar2(255),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /



create table ADMIN.aud_bin_accion 
  (
    acc_codigo number,
    acc_incidencia number,
    acc_accion varchar2(255),
    acc_fecha date,
    acc_usuario number,
    acc_situacion number,
    desp_acc_codigo number,
    desp_acc_incidencia number,
    desp_acc_accion varchar2(255),
    desp_acc_fecha date,
    desp_acc_usuario number,
    desp_acc_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.BIN_UBICACION creado.


-- Table ADMIN.AUD_BIN_UBICACION creado.


create table ADMIN.bin_incidencia 
  (
    inc_codigo number not null,
    inc_inmueble number not null,
    inc_fecha date not null,
    inc_tipo char(4) not null,
    inc_descripcion varchar2(255),
    inc_referencia varchar2(255),
    inc_usuario number not null,
    inc_situacion number not null,
    constraint pk_bin_incidencia primary key (inc_codigo)  
  );
  /

create table ADMIN.bin_asignacion 
  (
    asi_codigo number not null,
    asi_inmueble number not null,
    asi_referencia varchar2(255),
    asi_fecha date not null,
    asi_responsable number not null,
    asi_dependencia number not null,
    asi_autentica number not null,
    asi_usuario number not null,
    asi_obs varchar2(255),
    asi_resp_grado number not null,
    asi_aut_grado number not null,
    constraint pk_bin_asignacion primary key (asi_codigo)  
  );
  /

create table ADMIN.aud_bin_incidencia 
  (
    inc_codigo number,
    inc_inmueble number,
    inc_fecha date,
    inc_tipo char(4),
    inc_descripcion varchar2(255),
    inc_referencia varchar2(255),
    inc_usuario number,
    inc_situacion number,
    desp_inc_codigo number,
    desp_inc_inmueble number,
    desp_inc_fecha date,
    desp_inc_tipo char(4),
    desp_inc_descripcion varchar2(255),
    desp_inc_referencia varchar2(255),
    desp_inc_usuario number,
    desp_inc_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_bin_asignacion 
  (
    asi_codigo number,
    asi_inmueble number,
    asi_referencia varchar2(255),
    asi_fecha date,
    asi_responsable number,
    asi_dependencia number,
    asi_autentica number,
    asi_usuario number,
    asi_obs varchar2(255),
    asi_resp_grado number,
    asi_aut_grado number,
    desp_asi_codigo number,
    desp_asi_inmueble number,
    desp_asi_referencia varchar2(255),
    desp_asi_fecha date,
    desp_asi_responsable number,
    desp_asi_dependencia number,
    desp_asi_autentica number,
    desp_asi_usuario number,
    desp_asi_obs varchar2(255),
    desp_asi_resp_grado number,
    desp_asi_aut_grado number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.LEMUS creado.


-- Table ADMIN.AUD_PSAN_BOLETA creado.


-- Table ADMIN.PSAN_BOLETA creado.


-- Table ADMIN.ING_ASI_MAQUINAS creado.


-- Table ADMIN.AUD_ING_ASI_MAQUINAS creado.


-- Table ADMIN.ING_ASI_SUBREN creado.


-- Table ADMIN.AUD_ING_ASI_SUBREN creado.


-- Table ADMIN.ING_ASI_VEHICULOS creado.


-- Table ADMIN.AUD_ING_ASI_VEHICULOS creado.


-- Table ADMIN.ING_AVANCES creado.


-- Table ADMIN.AUD_ING_AVANCES creado.


-- Table ADMIN.ING_HIST_MAQUINAS creado.


-- Table ADMIN.AUD_ING_HIST_MAQUINAS creado.


-- Table ADMIN.ING_HIST_VEHICULOS creado.


-- Table ADMIN.AUD_ING_HIST_VEHICULOS creado.



create table ADMIN.ing_renglones 
  (
    ren_codigo number not null,
    ren_descripcion varchar2(190) not null,
    ren_observacion varchar2(190),
    ren_situacion char(1) not null,
    constraint pk_ing_renglones primary key (ren_codigo) 
  );
  /

create table ADMIN.aud_ing_renglones 
  (
    ren_codigo number,
    ren_descripcion varchar2(190),
    ren_observacion varchar2(190),
    ren_situacion char(1),
    desp_ren_codigo number,
    desp_ren_descripcion varchar2(190),
    desp_ren_observacion varchar2(190),
    desp_ren_situacion char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_subrenglones 
  (
    subr_codigo number not null,
    subr_descripcion varchar2(190) not null,
    subr_medida char(2) not null,
    subr_observacion varchar2(190),
    subr_situacion char(1) not null,
    constraint pk_ing_subrenglones primary key (subr_codigo) 
  );
  /

create table ADMIN.aud_ing_subrenglones 
  (
    subr_codigo number,
    subr_descripcion varchar2(190),
    subr_medida char(2),
    subr_observacion varchar2(190),
    subr_situacion char(1),
    desp_subr_codigo number,
    desp_subr_descripcion varchar2(190),
    desp_subr_medida char(2),
    desp_subr_observacion varchar2(190),
    desp_subr_situacion char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_ing_tramos 
  (
    tra_codigo number,
    tra_nombre varchar2(70),
    tra_ubicacion char(4),
    tra_direccion varchar2(90),
    tra_dimension number,
    tra_medida char(1),
    tra_renglon number,
    tra_fecha_inicio date,
    tra_fecha_fin date,
    tra_situacion char(1),
    tra_proyecto number,
    tra_obser varchar2(200),
    des_tra_codigo number,
    desp_tra_nombre varchar2(70),
    desp_tra_ubicacion char(4),
    desp_tra_direccion varchar2(90),
    desp_tra_dimension number,
    desp_tra_medida char(1),
    desp_tra_renglon number,
    desp_tra_fecha_inicio date,
    desp_tra_fecha_fin date,
    desp_tra_situacion char(1),
    desp_tra_proyecto number,
    desp_tra_obser varchar2(200),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

-- Table ADMIN.SANCIONESS creado.


-- Table ADMIN.ESTADISTICAA creado.


-- Table ADMIN.DETALLEE creado.



create table ADMIN.ing_maq_servicios 
  (
    mser_codigo number not null,
    mser_maquina number not null,
    mser_fecha date not null,
    mser_horometro number not null,
    mser_situacion char(1) not null,
    mser_observacion varchar2(200),
    constraint pk_ing_maq_servicios primary key (mser_codigo) 
  );
  /

create table ADMIN.aud_ing_maq_servicios 
  (
    mser_codigo number,
    mser_maquina number,
    mser_fecha date,
    mser_horometro number,
    mser_situacion char(1),
    mser_observacion varchar2(200),
    desp_mser_codigo number,
    desp_mser_maquina number,
    desp_mser_fecha date,
    desp_mser_horometro number,
    desp_mser_situacion char(1),
    desp_mser_observacion varchar2(200),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_proyecto 
  (
    pro_codigo number not null,
    pro_nombre varchar2(60) not null,
    pro_ubicacion char(4) not null,
    pro_fecha_despliegue date not null,
    pro_fecha_final date,
    pro_fecha_real date,
    pro_personal number not null,
    pro_latitud number(16) not null,
    pro_longitud number(16) not null,
    pro_of_encargado number not null,
    pro_grado_encargado number not null,
    pro_num_encargado number not null,
    pro_situacion char(1) not null,
    constraint pk_ing_proyecto primary key (pro_codigo) 
  );
  /


create table ADMIN.aud_ing_proyecto 
  (
    pro_codigo number,
    pro_nombre varchar2(60),
    pro_ubicacion char(4),
    pro_fecha_despliegue date,
    pro_fecha_final date,
    pro_fecha_real date,
    pro_personal number,
    pro_latitud number(16),
    pro_longitud number(16),
    pro_of_encargado number,
    pro_grado_encargado number,
    pro_num_encargado number,
    pro_situacion char(1),
    desp_pro_codigo number,
    desp_pro_nombre varchar2(60),
    desp_pro_ubicacion char(4),
    desp_pro_fecha_despliegue date,
    desp_pro_fecha_final date,
    desp_pro_fecha_real date,
    desp_pro_personal number,
    desp_pro_latitud number(16),
    desp_pro_longitud number(16),
    desp_pro_of_encargado number,
    desp_pro_grado_encargado number,
    desp_pro_num_encargado number,
    desp_pro_situacion char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_veh_servicios 
  (
    ivser_codigo number not null,
    ivser_vehiculo number not null,
    ivser_fecha date not null,
    ivser_odometro number not null,
    isver_situacion char(1) not null,
    isver_observacion varchar2(200),
    constraint pk_ing_veh_servicios primary key (ivser_codigo) 
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
    desp_isver_observacion varchar2(200,55),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.HISTORIAL_RELESTCIVIL creado.


-- Table ADMIN.AUD_HISTORIAL_RELESTCIVIL creado.


-- Table ADMIN.RELIGION_PERSONAL creado.


-- Table ADMIN.AUD_RELIGION_PERSONAL creado.


Error que empieza en la l�nea: 19,594 del comando :
create table ADMIN.eva_factores 
  (
    fac_id number not null,
    fac_desc_lg varchar2(75,10) not null,
    fac_situacion number not null,
    constraint pk_eva_factores primary key (fac_id) 
  );
  /

create table ADMIN.aud_eva_factores 
  (
    fac_id number,
    fac_desc_lg varchar2(75),
    fac_situacion number,
    desp_fac_id number,
    desp_fac_desc_lg varchar2(75),
    desp_fac_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.eva_linea 
  (
    lin_id number not null,
    lin_desc_lg varchar2(75) not null,
    lin_situacion number not null,
    constraint pk_eva_linea primary key (lin_id) 
  );
  /

create table ADMIN.aud_eva_linea 
  (
    lin_id number,
    lin_desc_lg varchar2(75),
    lin_situacion number,
    desp_lin_id number,
    desp_lin_desc_lg varchar2(75),
    desp_lin_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.eva_evaluacion 
  (
    eva_id number not null,
    eva_periodo varchar2(25) not null,
    eva_renglon number not null,
    eva_linea number not null,
    eva_dest_actual varchar2(150) not null,
    eva_cat1 number not null,
    eva_cat2 number not null,
    eva_cat3 number not null,
    eva_arma1 number not null,
    eva_arma2 number not null,
    eva_arma3 number not null,
    eva_grado1 number not null,
    eva_grado2 number not null,
    eva_grado3 number not null,
    eva_empleo1 varchar2(125) not null,
    eva_empleo2 varchar2(125) not null,
    eva_empleo3 varchar2(125) not null,
    eva_tiempo1 varchar2(125) not null,
    eva_tiempo2 varchar2(125) not null,
    eva_tiempo3 varchar2(125) not null,
    eva_emp_ant varchar2(125) not null,
    eva_situacion number not null,
    eva_obs_inm varchar2(255) not null,
    eva_obs_final varchar2(255) not null,
    eva_dep number not null,
    eva_obs varchar2(255) not null,
    eva_usuario number,
    eva_fecha_aprov TIMESTAMP(0),
    constraint pk_eva_evaluacion primary key (eva_id) 
  );
  /


-- Table ADMIN.EVA_NOTAS creado.


-- Table ADMIN.AUD_EVA_NOTAS creado.


create table ADMIN.aud_eva_evaluacion 
  (
    eva_usuario number,
    eva_fecha_aprov TIMESTAMP(0),
    eva_id number,
    eva_periodo varchar2(25),
    eva_renglon number,
    eva_linea number,
    eva_dest_actual varchar2(150),
    eva_cat1 number,
    eva_cat2 number,
    eva_cat3 number,
    eva_arma1 number,
    eva_arma2 number,
    eva_arma3 number,
    eva_grado1 number,
    eva_grado2 number,
    eva_grado3 number,
    eva_empleo1 varchar2(125),
    eva_empleo2 varchar2(125),
    eva_empleo3 varchar2(125),
    eva_tiempo1 varchar2(125),
    eva_tiempo2 varchar2(125),
    eva_tiempo3 varchar2(125),
    eva_emp_ant varchar2(125),
    eva_situacion number,
    eva_obs_inm varchar2(255),
    eva_obs_final varchar2(255),
    eva_dep number,
    eva_obs varchar2(255),
    desp_eva_id number,
    desp_eva_periodo varchar2(25),
    desp_eva_renglon number,
    desp_eva_linea number,
    desp_eva_dest_actual varchar2(150),
    desp_eva_cat1 number,
    desp_eva_cat2 number,
    desp_eva_cat3 number,
    desp_eva_arma1 number,
    desp_eva_arma2 number,
    desp_eva_arma3 number,
    desp_eva_grado1 number,
    desp_eva_grado2 number,
    desp_eva_grado3 number,
    desp_eva_empleo1 varchar2(125),
    desp_eva_empleo2 varchar2(125),
    desp_eva_empleo3 varchar2(125),
    desp_eva_tiempo1 varchar2(125),
    desp_eva_tiempo2 varchar2(125),
    desp_eva_tiempo3 varchar2(125),
    desp_eva_emp_ant varchar2(125),
    desp_eva_situacion number,
    desp_eva_obs_inm varchar2(255),
    desp_eva_obs_final varchar2(255),
    desp_eva_dep number,
    desp_eva_obs varchar2(255),
    desp_eva_usuario number,
    desp_eva_fecha_aprov TIMESTAMP(0),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_maquinas 
  (
    maq_codigo number not null,
    maq_no_asignacion char(20) not null,
    maq_catalogo number,
    maq_placas varchar2(20),
    maq_tipo number not null,
    maq_marca number not null,
    maq_modelo varchar2(30),
    maq_no_motor varchar2(30),
    maq_no_chasis varchar2(30),
    maq_tonelaje number,
    maq_color number not null,
    maq_combustible number not null,
    maq_estado char(1) not null,
    maq_situacion char(1) not null,
    maq_destino char(1) not null,
    maq_horometro number not null,
    maq_observaciones varchar2(100),
    constraint pk_ing_maquinas primary key (maq_codigo) 
  );
  /

create table ADMIN.aud_ing_maquinas 
  (
    maq_codigo number,
    maq_no_asignacion char(20),
    maq_catalogo number,
    maq_placas varchar2(20),
    maq_tipo number,
    maq_marca number,
    maq_modelo varchar2(30),
    maq_no_motor varchar2(30),
    maq_no_chasis varchar2(30),
    maq_tonelaje number,
    maq_color number,
    maq_combustible number,
    maq_estado char(1),
    maq_situacion char(1),
    maq_destino char(1),
    maq_horometro number,
    maq_observaciones varchar2(100),
    desp_maq_codigo number,
    desp_maq_no_asignacion char(20),
    desp_maq_catalogo number,
    desp_maq_placas varchar2(20),
    desp_maq_tipo number,
    desp_maq_marca number,
    desp_maq_modelo varchar2(30),
    desp_maq_no_motor varchar2(30),
    desp_maq_no_chasis varchar2(30),
    desp_maq_tonelaje number,
    desp_maq_color number,
    desp_maq_combustible number,
    desp_maq_estado char(1),
    desp_maq_situacion char(1),
    desp_maq_destino char(1),
    desp_maq_horometro number,
    desp_maq_observaciones varchar2(100),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_vehiculos 
  (
    iveh_codigo number not null,
    iveh_no_asignacion char(20) not null,
    iveh_catalogo number,
    iveh_placas varchar2(20),
    iveh_tipo number not null,
    iveh_marca number not null,
    iveh_modelo varchar2(30),
    iveh_no_motor varchar2(30),
    iveh_no_chasis varchar2(30),
    iveh_tonelaje number,
    iveh_color number not null,
    iveh_combustible number not null,
    iveh_estado char(1) not null,
    iveh_situacion char(1) not null,
    iveh_destino char(1) not null,
    iveh_odometro number not null,
    iveh_observaciones varchar2(200),
    constraint pk_ing_vehiculos primary key (iveh_codigo) 
  );
  /

create table ADMIN.aud_ing_vehiculos 
  (
    iveh_codigo number,
    iveh_no_asignacion char(20),
    iveh_catalogo number,
    iveh_placas varchar2(20),
    iveh_tipo number,
    iveh_marca number,
    iveh_modelo varchar2(30),
    iveh_no_motor varchar2(30),
    iveh_no_chasis varchar2(30),
    iveh_tonelaje number,
    iveh_color number,
    iveh_combustible number,
    iveh_estado char(1),
    iveh_situacion char(1),
    iveh_destino char(1),
    iveh_odometro number,
    iveh_observaciones varchar2(200),
    desp_iveh_codigo number,
    desp_iveh_no_asignacion char(20),
    desp_iveh_catalogo number,
    desp_iveh_placas varchar2(20),
    desp_iveh_tipo number,
    desp_iveh_marca number,
    desp_iveh_modelo varchar2(30),
    desp_iveh_no_motor varchar2(30),
    desp_iveh_no_chasis varchar2(30),
    desp_iveh_tonelaje number,
    desp_iveh_color number,
    desp_iveh_combustible number,
    desp_iveh_estado char(1),
    desp_iveh_situacion char(1),
    desp_iveh_destino char(1),
    desp_iveh_odometro number,
    desp_iveh_observaciones varchar2(200),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.res_personal 
  (
    resper_catalogo number not null,
    resper_dep number not null,
    resper_plaza number,
    resper_alta date not null,
    resper_baja date,
    resper_nom1 char(15) not null,
    resper_nom2 char(15),
    resper_nom3 char(15),
    resper_ape1 char(15) not null,
    resper_ape2 char(15),
    resper_ape3 char(15),
    resper_grado varchar2(50),
    resper_fechnac date not null,
    resper_dpi char(15),
    resper_fech_dpi date,
    resper_mundpi char(4),
    resper_lunac char(4),
    resper_direccion varchar2(255),
    resper_tel1 char(10),
    resper_tel2 char(10),
    resper_dirtrajo varchar2(255),
    resper_estado char(10),
    resper_sableer char(2),
    resper_tpantalon char(2),
    resper_tcamisa char(2),
    resper_tbotas char(2),
    resper_tgorra char(2),
    resper_anio_apro char(1) not null,
    resper_profesion number,
    resper_correo char(20),
    resper_genero char(1),
    resper_sangre char(15),
    resper_situacion char(2) not null,
    resper_obs varchar2(255),
    constraint pk_res_personal primary key (resper_catalogo) 
  );
  /

create table ADMIN.aud_res_personal 
  (
    resper_catalogo number,
    resper_dep number,
    resper_plaza number,
    resper_alta date,
    resper_baja date,
    resper_nom1 char(15),
    resper_nom2 char(15),
    resper_nom3 char(15),
    resper_ape1 char(15),
    resper_ape2 char(15),
    resper_ape3 char(15),
    resper_grado varchar2(50),
    resper_fechnac date,
    resper_dpi char(15),
    resper_fech_dpi date,
    resper_mundpi char(4),
    resper_lunac char(4),
    resper_direccion varchar2(255),
    resper_tel1 char(10),
    resper_tel2 char(10),
    resper_dirtrajo varchar2(255),
    resper_estado char(10),
    resper_sableer char(2),
    resper_tpantalon char(2),
    resper_tcamisa char(2),
    resper_tbotas char(2),
    resper_tgorra char(2),
    resper_anio_apro char(1),
    resper_profesion number,
    resper_correo char(20),
    resper_genero char(1),
    resper_sangre char(15),
    resper_situacion char(2),
    resper_obs varchar2(255),
    desp_resper_catalogo number,
    desp_resper_dep number,
    desp_resper_plaza number,
    desp_resper_alta date,
    desp_resper_baja date,
    desp_resper_nom1 char(15),
    desp_resper_nom2 char(15),
    desp_resper_nom3 char(15),
    desp_resper_ape1 char(15),
    desp_resper_ape2 char(15),
    desp_resper_ape3 char(15),
    desp_resper_grado varchar2(50),
    desp_resper_fechnac date,
    desp_resper_dpi char(15),
    desp_resper_fech_dpi date,
    desp_resper_mundpi char(4),
    desp_resper_lunac char(4),
    desp_resper_direccion varchar2(255),
    desp_resper_tel1 char(10),
    desp_resper_tel2 char(10),
    desp_resper_dirtrajo varchar2(255),
    desp_resper_estado char(10),
    desp_resper_sableer char(2),
    desp_resper_tpantalon char(2),
    desp_resper_tcamisa char(2),
    desp_resper_tbotas char(2),
    desp_resper_tgorra char(2),
    desp_resper_anio_apro char(1),
    desp_resper_profesion number,
    desp_resper_correo char(20),
    desp_resper_genero char(1),
    desp_resper_sangre char(15),
    desp_resper_situacion char(2),
    desp_resper_obs varchar2(255),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.respafe 
  (
    not_codigo number not null,
    not_catalogo number not null,
    not_fecha date not null,
    not_tiempalta varchar2(30) not null,
    not_nota char(1) not null,
    constraint pk_respafe primary key (not_codigo) 
  );
  /

create table ADMIN.aud_respafe 
  (
    not_codigo number,
    not_catalogo number,
    not_fecha date,
    not_tiempalta varchar2(30),
    not_nota char(1),
    desp_not_codigo number,
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_tiempalta varchar2(30),
    desp_not_nota char(1),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.resascensos 
  (
    asc_codigo number not null,
    asc_catalogo number not null,
    asc_fech date not null,
    asc_grado varchar2(50) not null,
    constraint pk_resascensos primary key (asc_codigo) 
  );
  /

create table ADMIN.aud_resascensos 
  (
    asc_codigo number,
    asc_catalogo number,
    asc_fech date,
    asc_grado varchar2(50),
    desp_asc_codigo number,
    desp_asc_catalogo number,
    desp_asc_fech date,
    desp_asc_grado varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.RESDFAM creado.


-- Table ADMIN.AUD_RESDFAM creado.



create table ADMIN.resorg 
  (
    resorg_plaza number not null,
    resorg_dependencia number,
    resorg_descripcion varchar2(100),
    resorg_situacion char(1),
    resorg_fecha_mod date,
    constraint pk_resorg primary key (resorg_plaza) 
  );
  /

create table ADMIN.aud_resorg 
  (
    resorg_plaza number,
    resorg_dependencia number,
    resorg_descripcion varchar2(100),
    resorg_situacion char(1),
    resorg_fecha_mod date,
    desp_resorg_plaza number,
    desp_resorg_dependencia number,
    desp_resorg_descripcion varchar2(100),
    desp_resorg_situacion char(1),
    desp_resorg_fecha_mod date,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.dep_reservas 
  (
    deprr_clave number,
    deprr_nombre varchar2(50),
    constraint pk_dep_reservas primary key (deprr_clave) 
  );
  /

create table ADMIN.aud_dep_reservas 
  (
    deprr_clave number,
    deprr_nombre varchar2(50),
    desp_deprr_clave number,
    desp_deprr_nombre varchar2(50),
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.ing_tramos 
  (
    tra_codigo number not null,
    tra_nombre varchar2(190) not null,
    tra_ubicacion char(4) not null,
    tra_direccion varchar2(190),
    tra_dimension number,
    tra_medida char(1),
    tra_renglon number not null,
    tra_fecha_inicio date,
    tra_fecha_fin date,
    tra_situacion char(1),
    tra_proyecto number not null,
    tra_obser varchar2(200),
    constraint pk_ing_tramos primary key (tra_codigo) 
  );
  /

create table ADMIN.bonoextra 
  (
    bon_plaza number not null,
    bon_clase number not null,
    bon_cantidad number(16,2) not null,
    bon_grupo number,
    constraint pk_bonoextra primary key (bon_plaza)  constraint bexplaza
  );
  /

-- Table ADMIN.LLAMADA_ATENCION creado.


-- Table ADMIN.AUD_LLAMADA_ATENCION creado.


-- Table ADMIN.LLAMADA_ATENCION_MOD creado.


-- Table ADMIN.AUD_LLAMADA_ATENCION_MOD creado.


-- Table ADMIN.SANCIONES creado.


-- Table ADMIN.EXP_SOLICITUD_DETALLE creado.



create table ADMIN.exp_conocimiento 
  (
    con_dep_llave number not null,
    con_codigo number not null,
    con_libro_numero varchar2(255) not null,
    con_libro_folio varchar2(255) not null,
    con_libro_tipo varchar2(255) not null,
    con_libro_conocimiento varchar2(255) not null,
    con_libro_conocimiento_fecha date not null,
    con_mensaje varchar2(255) not null,
    con_mensaje_fecha date not null,
    con_entrego_dep_llave number not null,
    con_entrego_grado number not null,
    con_entrego_catalogo number not null,
    con_recibio_dep_llave number not null,
    con_recibio_grado number not null,
    con_recibio_catalogo number not null,
    con_autorizo_dep_llave number not null,
    con_autorizo_grado number not null,
    con_autorizo_catalogo number not null,
    con_situacion number not null,
    constraint pk_exp_conocimiento primary key (con_dep_llave,con_codigo) 
  );
  /

create table ADMIN.exp_solicitud 
  (
    sol_codigo number not null,
    sol_dep_llave number not null,
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
    sol_pro_codigo number not null,
    sol_dep_llave2 number not null,
    sol_situacion number not null,
    constraint pk_exp_solicitud primary key (sol_codigo,sol_dep_llave) 
  );
  /

create table ADMIN.exp_uso 
  (
    uso_codigo number not null,
    uso_descripcion varchar2(255) not null,
    uso_tipo number not null,
    uso_situacion number not null,
    primary key (uso_codigo) 
  );
  /

create table ADMIN.exp_tipo 
  (
    tipo_codigo number not null,
    tipo_descripcion varchar2(255) not null,
    tipo_situacion number not null,
    constraint pk_exp_uso primary key (tipo_codigo) 
  );
  /

create table ADMIN.exp_proyecto 
  (
    pro_codigo number not null,
    pro_descripcion varchar2(255) not null,
    pro_tipo number not null,
    pro_situacion number not null,
    constraint pk_exp_proyecto primary key (pro_codigo) 
  );
  /


-- Table ADMIN.EXP_ENT_SAL creado.


create table ADMIN.control_toe 
  (
    toe_codigo number not null,
    toe_catalogo number not null,
    toe_grado number not null,
    toe_arma number,
    toe_nombre char(75) not null,
    toe_plaza number not null,
    toe_dependencia number not null,
    toe_horaactual timestamp(0) not null,
    toe_fecha date not null,
    toe_depgenero number not null,
    constraint pk_control_toe primary key (toe_codigo) 
  );
  /

create table ADMIN.aud_control_toe 
  (
    toe_codigo number,
    toe_catalogo number,
    toe_grado number,
    toe_arma number,
    toe_nombre char(75),
    toe_plaza number,
    toe_dependencia number,
    toe_horaactual timestamp(0),
    toe_fecha date,
    toe_depgenero number,
    desp_toe_codigo number,
    desp_toe_catalogo number,
    desp_toe_grado number,
    desp_toe_arma number,
    desp_toe_nombre char(75),
    desp_toe_plaza number,
    desp_toe_dependencia number,
    desp_toe_horaactual timestamp(0),
    desp_toe_fecha date,
    desp_toe_depgenero number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.RELIGION_SEGCONTALU creado.


-- Table ADMIN.AUD_RELIGION_SEGCONTALU creado.


-- Table ADMIN.CON_MDEP creado.


-- Table ADMIN.CON_UNIDADES creado.


-- Table ADMIN.FMDEP creado.


-- Table ADMIN.LMUN_ENT_SAL_RESTORE creado.



create table ADMIN.lmun_conocimiento_restore 
  (
    con_codigo number,
    con_dep_llave number,
    con_numero_libro varchar2(255) not null,
    con_folio_libro varchar2(255) not null,
    con_conocimiento_libro varchar2(255) not null,
    con_tipo_libro number not null,
    con_grado_entrego number not null,
    con_catalogo_entrego number not null,
    con_dep_llave_entrego number not null,
    con_org_plaza_entrego number,
    con_grado_recibio number not null,
    con_catalogo_recibio number not null,
    con_dep_llave_recibio number not null,
    con_org_plaza_recibio number,
    con_grado_autorizo number not null,
    con_catalogo_autorizo number not null,
    con_dep_llave_autorizo number not null,
    con_org_plaza_autorizo number,
    con_mensaje varchar2(255) not null,
    con_fecha_mensaje date not null,
    con_fecha_conocimiento date not null,
    con_situacion number not null,
    constraint pk_lmun_conocimiento_restore primary key (con_codigo,con_dep_llave) 
  );
  /


-- Table ADMIN.DFASIG_TABLA creado.


-- Table ADMIN.CON_AREA creado.


-- Table ADMIN.AUD_CON_AREA creado.


-- Table ADMIN.CON_ASIGNACION_PLAZA creado.


-- Table ADMIN.AUD_CON_ASIGNACION_PLAZA creado.


-- Table ADMIN.CON_BOLETA creado.


-- Table ADMIN.CON_MPER_CONTRATOS creado.


-- Table ADMIN.AUD_CON_MPER_CONTRATOS creado.



create table ADMIN.con_contrato 
  (
    con_id number not null,
    con_num_contrato char(255) not null,
    con_contratado number not null,
    con_fech_contrato date not null,
    con_jur_datos number not null,
    con_fech_inicio date,
    con_fech_fin date,
    con_horas_trabajo number,
    con_hora_entra timestamp(0),
    con_hora_salida timestamp(0),
    con_hora_entra2 timestamp(0),
    con_hora_salida2 timestamp(0),
    con_meses number,
    con_sueldo number(16,2),
    con_sueldo_mensual number(16,2),
    con_bono66 number(16,2),
    con_bono_pro number(16,2),
    con_colegiado number,
    con_seguro char(50),
    con_desc_seguro number(16,2),
    con_mont_asegu number(16,2),
    con_ocupacion char(1),
    con_horario char(255),
    con_cant_peisol number,
    con_esp_peisol char(255),
    con_minuta number,
    con_dependencia number not null,
    con_asignacion number,
    con_ant_asignacion number,
    con_con_modi char(255),
    con_observaciones char(500),
    con_status number not null,
    constraint pk_con_contrato primary key (con_id) 
  );
  /


-- Table ADMIN.CON_DESC_AREA creado.


-- Table ADMIN.AUD_CON_DESC_AREA creado.


-- Table ADMIN.CON_DESC_SUBAREAS creado.


-- Table ADMIN.AUD_CON_DESC_SUBAREAS creado.


-- Table ADMIN.CON_MANUAL creado.


-- Table ADMIN.AUD_CON_MANUAL creado.


-- Table ADMIN.AUD_CON_MDEP creado.


-- Table ADMIN.CON_MINUTA creado.


-- Table ADMIN.AUD_CON_MINUTA creado.


-- Table ADMIN.CON_OBSERVACIONES creado.


-- Table ADMIN.AUD_CON_OBSERVACIONES creado.


-- Table ADMIN.CON_PERMISOS creado.


-- Table ADMIN.AUD_CON_PERMISOS creado.


-- Table ADMIN.CON_PLAZA creado.


-- Table ADMIN.AUD_CON_PLAZA creado.


-- Table ADMIN.CON_SEGUIMIENTO creado.


-- Table ADMIN.AUD_CON_SEGUIMIENTO creado.


-- Table ADMIN.CONT_SOLICITUD creado.


-- Table ADMIN.AUD_CONT_SOLICITUD creado.


-- Table ADMIN.CON_SUBAREAS creado.


-- Table ADMIN.AUD_CON_SUBAREAS creado.


-- Table ADMIN.CON_USUARIOS creado.


-- Table ADMIN.AUD_CON_USUARIOS creado.


-- Table ADMIN.AUD_CON_UNIDADES creado.


-- Table ADMIN.CON_JURIDICO creado.


-- Table ADMIN.AUD_CON_JURIDICO creado.


-- Table ADMIN.CON_SOLICITUD creado.


create table ADMIN.aud_con_contrato 
  (
    con_id number,
    con_num_contrato char(255),
    con_contratado number,
    con_fech_contrato date,
    con_jur_datos number,
    con_fech_inicio date,
    con_fech_fin date,
    con_horas_trabajo number,
    con_hora_entra timestamp(0),
    con_hora_salida timestamp(0),
    con_hora_entra2 timestamp(0),
    con_hora_salida2 timestamp(0),
    con_meses number,
    con_sueldo number(16,2),
    con_sueldo_mensual number(16,2),
    con_bono66 number(16,2),
    con_bono_pro number(16,2),
    con_colegiado number,
    con_seguro char(50),
    con_desc_seguro number(16,2),
    con_mont_asegu number(16,2),
    con_ocupacion char(1),
    con_horario char(255),
    con_cant_peisol number,
    con_esp_peisol char(255),
    con_minuta number,
    con_dependencia number,
    con_asignacion number,
    con_ant_asignacion number,
    con_con_modi char(255),
    con_observaciones char(500),
    con_status number,
    desp_con_id number,
    desp_con_num_contrato char(255),
    desp_con_contratado number,
    desp_con_fech_contrato date,
    desp_con_jur_datos number,
    desp_con_fech_inicio date,
    desp_con_fech_fin date,
    desp_con_horas_trabajo number,
    desp_con_hora_entra timestamp(0),
    desp_con_hora_salida timestamp(0),
    desp_con_hora_entra2 timestamp(0),
    desp_con_hora_salida2 timestamp(0),
    desp_con_meses number,
    desp_con_sueldo number(16,2),
    desp_con_sueldo_mensual number(16,2),
    desp_con_bono66 number(16,2),
    desp_con_bono_pro number(16,2),
    desp_con_colegiado number,
    desp_con_seguro char(50),
    desp_con_desc_seguro number(16,2),
    desp_con_mont_asegu number(16,2),
    desp_con_ocupacion char(1),
    desp_con_horario char(255),
    desp_con_cant_peisol number,
    desp_con_esp_peisol char(255),
    desp_con_minuta number,
    desp_con_dependencia number,
    desp_con_asignacion number,
    desp_con_ant_asignacion number,
    desp_con_con_modi char(255),
    desp_con_observaciones char(500),
    desp_con_status number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_CON_BOLETA creado.


-- Table ADMIN.CON_EF_PERSONAL creado.


-- Table ADMIN.AUD_CON_EF_PERSONAL creado.


-- Table ADMIN.ARCO_PARIDERA creado.


-- Table ADMIN.CCI_EST_DESTINO creado.


-- Table ADMIN.AUD_CCI_EST_DESTINO creado.


-- Table ADMIN.CCI_EST_FUERZA creado.


-- Table ADMIN.AUD_CCI_EST_FUERZA creado.


-- Table ADMIN.CCI_NOVEDADES creado.


-- Table ADMIN.AUD_CCI_NOVEDADES creado.


-- Table ADMIN.VLH_T_CISTERNA creado.


-- Table ADMIN.VLH_T_VEHICULO creado.



create table ADMIN.vlh_llantas 
  (
    lla_id number not null,
    lla_cantidad_delanteras number,
    lla_cantidad_traseras number,
    lla_rin_delanteras number(10,2),
    lla_rin_traseras number(10,2),
    lla_ancho_delanteras number(10,2),
    lla_ancho_traseras number(10,2),
    lla_altura_delanteras number(10,2),
    lla_altura_traseras number(10,2),
    lla_psi_delanteras number(10,2),
    lla_psi_traseras number(10,2),
    lla_tipo varchar2(255),
    constraint pk_vlh_llantas primary key (lla_id) 
  );
  /


-- Table ADMIN.VLH_MARCAS creado.


-- Table ADMIN.VLH_HIDRAULICO_FAG creado.


-- Table ADMIN.VLH_LINEA creado.


-- Table ADMIN.VLH_ACEITE_FAG creado.


-- Table ADMIN.AUD_VLH_ACEITE_FAG creado.



create table ADMIN.vlh_aeronave 
  (
    aer_id number not null,
    aer_desc varchar2(25) not null,
    constraint pk_vlh_aeronave primary key (aer_id) 
  );
  /


-- Table ADMIN.AUD_VLH_AERONAVE creado.


-- Table ADMIN.VLH_APU creado.


-- Table ADMIN.AUD_VLH_APU creado.


-- Table ADMIN.VLH_BATERIAS creado.


-- Table ADMIN.AUD_VLH_BATERIAS creado.


-- Table ADMIN.AUD_VLH_T_CISTERNA creado.


-- Table ADMIN.AUD_VLH_T_VEHICULO creado.


-- Table ADMIN.VLH_TIPO_CARROCERIA creado.


-- Table ADMIN.AUD_VLH_TIPO_CARROCERIA creado.


-- Table ADMIN.VLH_TIPO_COMBUSTIBLE creado.


-- Table ADMIN.AUD_VLH_TIPO_COMBUSTIBLE creado.


-- Table ADMIN.VLH_TRACCION_VEHICULO creado.


-- Table ADMIN.AUD_VLH_TRACCION_VEHICULO creado.


-- Table ADMIN.VLH_TRANSMISION_VEHICULO creado.


-- Table ADMIN.AUD_VLH_TRANSMISION_VEHICULO creado.


-- Table ADMIN.VLH_VALIDACIONES creado.


-- Table ADMIN.AUD_VLH_VALIDACIONES creado.


-- Table ADMIN.VLH_PERMISOS creado.


-- Table ADMIN.AUD_VLH_PERMISOS creado.


-- Table ADMIN.AUD_VLH_HIDRAULICO_FAG creado.


-- Table ADMIN.AUD_VLH_MARCAS creado.


-- Table ADMIN.AUD_VLH_LINEA creado.


-- Table ADMIN.AUD_VLH_LLANTAS creado.


-- Table ADMIN.VLH_MOTOR_FAG creado.


-- Table ADMIN.AUD_VLH_MOTOR_FAG creado.


-- Table ADMIN.VLH_NEUMATICOS_FAG creado.


-- Table ADMIN.AUD_VLH_NEUMATICOS_FAG creado.


-- Table ADMIN.VLH_ORIGEN_VEHICULO creado.


-- Table ADMIN.AUD_VLH_ORIGEN_VEHICULO creado.


-- Table ADMIN.VLH_ESTADO_VEHICULO creado.


-- Table ADMIN.AUD_VLH_ESTADO_VEHICULO creado.


-- Table ADMIN.VLH_COMBUSTIBLE_FAG creado.


-- Table ADMIN.AUD_VLH_COMBUSTIBLE_FAG creado.


-- Table ADMIN.VLH_CONS_COMB_VEHI creado.


-- Table ADMIN.AUD_VLH_CONS_COMB_VEHI creado.


-- Table ADMIN.VLH_CONS_LUBRI_VEHI creado.


-- Table ADMIN.AUD_VLH_CONS_LUBRI_VEHI creado.


-- Table ADMIN.VLH_DESTINO creado.


-- Table ADMIN.AUD_VLH_DESTINO creado.



create table ADMIN.vlh_carretones 
  (
    carr_id number not null,
    carr_catalogo number,
    carr_adquisicion number,
    carr_observacion varchar2(250),
    carr_ubicacion number not null,
    carr_dependencia number not null,
    carr_estado number not null,
    carr_llantas number,
    carr_cap_toneladas number,
    carr_tipo_cisterna varchar2(35),
    carr_cap_cisterna number,
    carr_situacion number not null,
    constraint pk_vlh_carretones primary key (carr_id) 
  );
  /


-- Table ADMIN.VLH_EQUIPO_TERRESTRE_FAG creado.



create table ADMIN.vlh_embarcacion 
  (
    emb_id_embarcacion number not null,
    emb_catalogo number,
    emb_matricula varchar2(50),
    emb_nombre varchar2(50),
    emb_indicativo varchar2(50),
    emb_linea varchar2(50),
    emb_modelo number,
    emb_color varchar2(50),
    emb_origen number,
    emb_ubicacion number,
    emb_observaciones varchar2(250),
    emb_fabricacion number,
    emb_constructora varchar2(50),
    emb_dependencia number,
    emb_tipo varchar2(50),
    emb_estado number,
    emb_desplazamiento number,
    emb_repotenciado varchar2(50),
    emb_fecha_repotenciado date,
    emb_vel_emergencia number,
    emb_vel_crucero number,
    emb_tripulacion number,
    emb_autonomia number,
    emb_cap_agua number,
    emb_eslora number,
    emb_manga number,
    emb_calado number,
    emb_puntal number,
    emb_cap_combustible number,
    emb_tipo_combustible varchar2(35),
    emb_cant_motores number,
    emb_marca_motor varchar2(50) not null,
    emb_modelo_motor varchar2(50),
    emb_situacion number,
    constraint pk_vlh_embarcacion primary key (emb_id_embarcacion) 
  );
  /


-- Table ADMIN.VLH_REMOLQUES creado.



create table ADMIN.aud_vlh_carretones 
  (
    carr_id number,
    carr_catalogo number,
    carr_adquisicion number,
    carr_observacion varchar2(250),
    carr_ubicacion number,
    carr_dependencia number,
    carr_estado number,
    carr_llantas number,
    carr_cap_toneladas number,
    carr_tipo_cisterna varchar2(35),
    carr_cap_cisterna number,
    carr_situacion number,
    desp_carr_id number,
    desp_carr_catalogo number,
    desp_carr_adquisicion number,
    desp_carr_observacion varchar2(250),
    desp_carr_ubicacion number,
    desp_carr_dependencia number,
    desp_carr_estado number,
    desp_carr_llantas number,
    desp_carr_cap_toneladas number,
    desp_carr_tipo_cisterna varchar2(35),
    desp_carr_cap_cisterna number,
    desp_carr_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_VLH_EQUIPO_TERRESTRE_FAG creado.



create table ADMIN.aud_vlh_embarcacion 
  (
    emb_id_embarcacion number,
    emb_catalogo number,
    emb_matricula varchar2(50),
    emb_nombre varchar2(50),
    emb_indicativo varchar2(50),
    emb_linea varchar2(50),
    emb_modelo number,
    emb_color varchar2(50),
    emb_origen number,
    emb_ubicacion number,
    emb_observaciones varchar2(250),
    emb_fabricacion number,
    emb_constructora varchar2(50),
    emb_dependencia number,
    emb_tipo varchar2(50),
    emb_estado number,
    emb_desplazamiento number,
    emb_repotenciado varchar2(50),
    emb_fecha_repotenciado date,
    emb_vel_emergencia number,
    emb_vel_crucero number,
    emb_tripulacion number,
    emb_autonomia number,
    emb_cap_agua number,
    emb_eslora number,
    emb_manga number,
    emb_calado number,
    emb_puntal number,
    emb_cap_combustible number,
    emb_tipo_combustible varchar2(35),
    emb_cant_motores number,
    emb_marca_motor varchar2(50),
    emb_modelo_motor varchar2(50),
    emb_situacion number,
    desp_emb_id_embarcacion number,
    desp_emb_catalogo number,
    desp_emb_matricula varchar2(50),
    desp_emb_nombre varchar2(50),
    desp_emb_indicativo varchar2(50),
    desp_emb_linea varchar2(50),
    desp_emb_modelo number,
    desp_emb_color varchar2(50),
    desp_emb_origen number,
    desp_emb_ubicacion number,
    desp_emb_observaciones varchar2(250),
    desp_emb_fabricacion number,
    desp_emb_constructora varchar2(50),
    desp_emb_dependencia number,
    desp_emb_tipo varchar2(50),
    desp_emb_estado number,
    desp_emb_desplazamiento number,
    desp_emb_repotenciado varchar2(50),
    desp_emb_fecha_repotenciado date,
    desp_emb_vel_emergencia number,
    desp_emb_vel_crucero number,
    desp_emb_tripulacion number,
    desp_emb_autonomia number,
    desp_emb_cap_agua number,
    desp_emb_eslora number,
    desp_emb_manga number,
    desp_emb_calado number,
    desp_emb_puntal number,
    desp_emb_cap_combustible number,
    desp_emb_tipo_combustible varchar2(35),
    desp_emb_cant_motores number,
    desp_emb_marca_motor varchar2(50),
    desp_emb_modelo_motor varchar2(50),
    desp_emb_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /


-- Table ADMIN.AUD_VLH_REMOLQUES creado.



create table ADMIN.vlh_caract_vehiculos 
  (
    car_id_vehiculo number not null,
    car_serie_vehiculo varchar2(30),
    car_catalogo_vehiculo number not null,
    car_placas_vehiculo varchar2(30),
    car_indicativo_vehiculo varchar2(30),
    car_siglas_vehiculo varchar2(30),
    car_t_circulacion varchar2(30),
    car_t_vehiculo number,
    car_estado_vehiculo number,
    car_marca_vehiculo number not null,
    car_linea_vehiculo number,
    car_modelo_vehiculo number not null,
    car_motor_vehiculo varchar2(40),
    car_chasis_vehiculo varchar2(40),
    car_color_vehiculo varchar2(50) not null,
    car_cap_toneladas_vehiculo number,
    car_cap_pasajeros_vehiculo number,
    car_tipo_carroceria number,
    car_tipo_combustible number,
    car_llantas_vehiculo number,
    car_gancho_pinzon_vehiculo varchar2(10),
    car_cap_gancho number,
    car_tipo_cisterna number,
    car_origen_vehiculo number,
    car_ubicacion_vehiculo number not null,
    car_obs_vehiculo varchar2(250),
    car_comb_consumo number,
    car_lubri_consumo number,
    car_transmision_vehiculo number,
    car_traccion_vehiculo number,
    car_aire_acond varchar2(10),
    car_impuesto_vehiculo varchar2(10),
    car_poliza varchar2(50),
    car_bateria number,
    car_dependencia number,
    car_destino varchar2(30),
    car_vehi_situacion number,
    constraint pk_vlh_caract_vehiculos primary key (car_id_vehiculo,car_catalogo_vehiculo) 
  );
  /

create table ADMIN.aud_vlh_caract_vehiculos 
  (
    car_id_vehiculo number,
    car_serie_vehiculo varchar2(30),
    car_catalogo_vehiculo number,
    car_placas_vehiculo varchar2(30),
    car_indicativo_vehiculo varchar2(30),
    car_siglas_vehiculo varchar2(30),
    car_t_circulacion varchar2(30),
    car_t_vehiculo number,
    car_estado_vehiculo number,
    car_marca_vehiculo number,
    car_linea_vehiculo number,
    car_modelo_vehiculo number,
    car_motor_vehiculo varchar2(40),
    car_chasis_vehiculo varchar2(40),
    car_color_vehiculo varchar2(50),
    car_cap_toneladas_vehiculo number,
    car_cap_pasajeros_vehiculo number,
    car_tipo_carroceria number,
    car_tipo_combustible number,
    car_llantas_vehiculo number,
    car_gancho_pinzon_vehiculo varchar2(10),
    car_cap_gancho number,
    car_tipo_cisterna number,
    car_origen_vehiculo number,
    car_ubicacion_vehiculo number,
    car_obs_vehiculo varchar2(250),
    car_comb_consumo number,
    car_lubri_consumo number,
    car_transmision_vehiculo number,
    car_traccion_vehiculo number,
    car_aire_acond varchar2(10),
    car_impuesto_vehiculo varchar2(10),
    car_poliza varchar2(50),
    car_bateria number,
    car_dependencia number,
    car_destino varchar2(30),
    car_vehi_situacion number,
    desp_car_id_vehiculo number,
    desp_car_serie_vehiculo varchar2(30),
    desp_car_catalogo_vehiculo number,
    desp_car_placas_vehiculo varchar2(30),
    desp_car_indicativo_vehiculo varchar2(30),
    desp_car_siglas_vehiculo varchar2(30),
    desp_car_t_circulacion varchar2(30),
    desp_car_t_vehiculo number,
    desp_car_estado_vehiculo number,
    desp_car_marca_vehiculo number,
    desp_car_linea_vehiculo number,
    desp_car_modelo_vehiculo number,
    desp_car_motor_vehiculo varchar2(40),
    desp_car_chasis_vehiculo varchar2(40),
    desp_car_color_vehiculo varchar2(50),
    desp_car_cap_toneladas_vehiculo number,
    desp_car_cap_pasajeros_vehiculo number,
    desp_car_tipo_carroceria number,
    desp_car_tipo_combustible number,
    desp_car_llantas_vehiculo number,
    desp_car_gancho_pinzon_vehiculo varchar2(10),
    desp_car_cap_gancho number,
    desp_car_tipo_cisterna number,
    desp_car_origen_vehiculo number,
    desp_car_ubicacion_vehiculo number,
    desp_car_obs_vehiculo varchar2(250),
    desp_car_comb_consumo number,
    desp_car_lubri_consumo number,
    desp_car_transmision_vehiculo number,
    desp_car_traccion_vehiculo number,
    desp_car_aire_acond varchar2(10),
    desp_car_impuesto_vehiculo varchar2(10),
    desp_car_poliza varchar2(50),
    desp_car_bateria number,
    desp_car_dependencia number,
    desp_car_destino varchar2(30),
    desp_car_vehi_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.vlh_fag_caracteristicas 
  (
    fag_id_carct number not null,
    fag_catalogo varchar2(30),
    fag_tipo varchar2(20),
    fag_serie varchar2(30),
    fag_ubicacion_exacta number,
    fag_dependencia number,
    fag_forma_adquisicion number,
    fag_aeronave number,
    fag_fabricacion number,
    fag_proposito varchar2(35),
    fag_tripulacion number,
    fag_pasajero number,
    fag_peso_despliegue number,
    fag_estado number,
    fag_color varchar2(50),
    fag_motor number,
    fag_combustible number,
    fag_aceite number,
    fag_hidraulico number,
    fag_baterias number,
    fag_neumaticos number,
    fag_apu number,
    fag_hrs_vuelo number,
    fag_hrs_vuelo_disp number,
    fag_consumo_combustible number,
    fag_fecha_ult_fase date,
    fag_tipo_fase varchar2(50),
    fag_autonomia number,
    fag_obs varchar2(250),
    fag_aceite_transmision_heli varchar2(20),
    fag_cant_ac_transmision_heli number,
    fag_aceite_caja90_heli varchar2(20),
    fag_cant_aceite_caja90_heli number,
    fag_aceite_caja42_heli varchar2(20),
    fag_cant_aceite_caja42_heli number,
    fag_aceite_rotor_gearbox_heli varchar2(20),
    fag_cant_aceite_rotor_gearbox_heli number,
    fag_situacion number,
    constraint pk_vlh_fag_caracteristicas primary key (fag_id_carct) 
  );
  /

create table ADMIN.aud_vlh_fag_caracteristicas 
  (
    fag_id_carct number,
    fag_catalogo varchar2(30),
    fag_tipo varchar2(20),
    fag_serie varchar2(30),
    fag_ubicacion_exacta number,
    fag_dependencia number,
    fag_forma_adquisicion number,
    fag_aeronave number,
    fag_fabricacion number,
    fag_proposito varchar2(35),
    fag_tripulacion number,
    fag_pasajero number,
    fag_peso_despliegue number,
    fag_estado number,
    fag_color varchar2(50),
    fag_motor number,
    fag_combustible number,
    fag_aceite number,
    fag_hidraulico number,
    fag_baterias number,
    fag_neumaticos number,
    fag_apu number,
    fag_hrs_vuelo number,
    fag_hrs_vuelo_disp number,
    fag_consumo_combustible number,
    fag_fecha_ult_fase date,
    fag_tipo_fase varchar2(50),
    fag_autonomia number,
    fag_obs varchar2(250),
    fag_aceite_transmision_heli varchar2(20),
    fag_cant_ac_transmision_heli number,
    fag_aceite_caja90_heli varchar2(20),
    fag_cant_aceite_caja90_heli number,
    fag_aceite_caja42_heli varchar2(20),
    fag_cant_aceite_caja42_heli number,
    fag_aceite_rotor_gearbox_heli varchar2(20),
    fag_cant_aceite_rotor_gearbox_heli number,
    fag_situacion number,
    desp_fag_id_carct number,
    desp_fag_catalogo varchar2(30),
    desp_fag_tipo varchar2(20),
    desp_fag_serie varchar2(30),
    desp_fag_ubicacion_exacta number,
    desp_fag_dependencia number,
    desp_fag_forma_adquisicion number,
    desp_fag_aeronave number,
    desp_fag_fabricacion number,
    desp_fag_proposito varchar2(35),
    desp_fag_tripulacion number,
    desp_fag_pasajero number,
    desp_fag_peso_despliegue number,
    desp_fag_estado number,
    desp_fag_color varchar2(50),
    desp_fag_motor number,
    desp_fag_combustible number,
    desp_fag_aceite number,
    desp_fag_hidraulico number,
    desp_fag_baterias number,
    desp_fag_neumaticos number,
    desp_fag_apu number,
    desp_fag_hrs_vuelo number,
    desp_fag_hrs_vuelo_disp number,
    desp_fag_consumo_combustible number,
    desp_fag_fecha_ult_fase date,
    desp_fag_tipo_fase varchar2(50),
    desp_fag_autonomia number,
    desp_fag_obs varchar2(250),
    desp_fag_aceite_transmision_heli varchar2(20),
    desp_fag_cant_ac_transmision_heli number,
    desp_fag_aceite_caja90_heli varchar2(20),
    desp_fag_cant_aceite_caja90_heli number,
    desp_fag_aceite_caja42_heli varchar2(20),
    desp_fag_cant_aceite_caja42_heli number,
    desp_fag_aceite_rotor_gearbox_heli varchar2(20),
    desp_fag_cant_aceite_rotor_gearbox_heli number,
    desp_fag_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.gpl_t_comision 
  (
    com_id number not null,
    com_descripcion varchar2(100) not null,
    com_situacion number not null,
    constraint pk_gpl_t_comision primary key (com_id) 
  );
  /

create table ADMIN.aud_gpl_t_comision 
  (
    com_id number,
    com_descripcion varchar2(100),
    com_situacion number,
    desp_com_id number,
    desp_com_descripcion varchar2(100),
    desp_com_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /

create table ADMIN.aud_gpl_presidencial 
  (
    pre_id number,
    pre_grado_of number,
    pre_arma_of number,
    pre_catalogo number,
    pre_dependencia number,
    pre_desc_com varchar2(255),
    pre_t_comision number,
    pre_quien number,
    pre_hrs number(7,2),
    pre_tropa number,
    pre_esp number,
    pre_hora_salida TIMESTAMP,
    pre_hora_ent TIMESTAMP,
    pre_duracion number(10,2),
    pre_situacion number,
    desp_pre_id number,
    desp_pre_grado_of number,
    desp_pre_arma_of number,
    desp_pre_catalogo number,
    desp_pre_dependencia number,
    desp_pre_desc_com varchar2(255),
    desp_pre_t_comision number,
    desp_pre_quien number,
    desp_pre_hrs number(7,2),
    desp_pre_tropa number,
    desp_pre_esp number,
    desp_pre_hora_salida TIMESTAMP,
    desp_pre_hora_ent TIMESTAMP,
    desp_pre_duracion number(10,2),
    desp_pre_situacion number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null 
  );
  /



-- Table ADMIN.GPL_UBICACION creado.


-- Table ADMIN.AUD_GPL_UBICACION creado.


-- Table ADMIN.GPL_LUGAR creado.


-- Table ADMIN.AUD_GPL_LUGAR creado.


-- Table ADMIN.AUD_GPL_ASIG_LUGAR creado.


-- Table ADMIN.GPL_TRANSPORTE creado.


-- Table ADMIN.CONT_CURRICULO creado.


-- Table ADMIN.AUD_CONT_CURRICULO creado.


-- Table ADMIN.AUD_GPL_CONDUCTORES creado.


-- Table ADMIN.AUD_GPL_TRANSPORTE creado.


-- Table ADMIN.VLH_TOW creado.


-- Table ADMIN.DFAM_IPM creado.


-- Table ADMIN.PAFE_ALTERNOS creado.


-- Table ADMIN.DFDES_BANRURAL creado.


-- Table ADMIN.AUD_DFDES_BANRURAL creado.



create table ADMIN.com_ent_sal2 
  (
    es_codigo number not null,
    es_documento varchar2(55) not null,
    es_dep_llave_entrada number not null,
    es_dep_llave_salida number not null,
    es_forma number not null,
    es_fecha TIMESTAMP not null,
    es_galones number not null,
    es_cargo number not null,
    es_tipo number not null,
    es_saldo number(18,2) not null,
    es_precio number(18,2) not null,
    es_lugar number not null,
    es_situacion number not null,
    es_catalogo number,
    es_dependencia number,
    es_obs varchar2(250),
    constraint pk_com_ent_sal2 primary key (es_codigo)  
  );
  /

create table ADMIN.com_resumen 
  (
    res_id number not null,
    res_com number not null,
    res_factura varchar2(15) not null,
    res_fech date not null,
    res_cantc number not null,
    res_preuni number(18,2) not null,
    res_tipo number not null,
    res_total number(18,2) not null,
    res_sit varchar2(55) not null,
    res_obs varchar2(200) not null,
    constraint pk_com_resumen primary key (res_id)  
  );
  /

create table ADMIN.coc_area_mision 
  (
    are_codigo number not null,
    are_descripcion varchar2(50) not null,
    are_responsabilidad varchar2(250) not null,
    are_tipo_seg varchar2(50) not null,
    are_situacion number not null,
    constraint pk_coc_area_mision primary key (are_codigo)  
  );
  /

create table ADMIN.coc_metodo_ejec 
  (
    met_ejec_codigo number not null,
    met_ejec_descripcion varchar2(50) not null,
    met_ejec_situacion number not null,
    constraint pk_coc_metodo_ejec primary key (met_ejec_codigo)  
  );
  /


-- Table ADMIN.COC_METAS creado.


create table ADMIN.coc_coordenadas2 
  (
    coo_reporte number 
        default null,
    coo_anio number not null,
    coo_dep number not null,
    coo_id number not null,
    coo_lat_gra number 
        default null,
    coo_lat_min number 
        default null,
    coo_lat_seg number 
        default null,
    coo_long_gra number 
        default null,
    coo_long_min number 
        default null,
    coo_long_seg number 
        default null,
    coo_number_lat number(20,18) 
        default null,
    coo_number_long number(20,18) 
        default null,
    coo_utm_x number 
        default null,
    coo_utm_y number 
        default null,
    coo_lugar varchar2(150) 
        default null,
    constraint pk_coc_coordenadas2 primary key (coo_id)  
  );
  /

-- Table ADMIN.COC_VEHICULO_REP2 creado.


-- Table ADMIN.EF_FUERZA_RSVP creado.


-- Table ADMIN.EF_FUERZA_CE creado.


-- Table ADMIN.IPM_DFAM_TEMP creado.


create table ADMIN.coc_mensaje 
  (
    men_codigo number not null,
    men_ope_pla_cod number not null,
    men_dependencia number not null,
    men_fecha TIMESTAMP not null,
    men_lugar varchar2(50) not null,
    men_numero_men varchar2(50) not null,
    men_contenido varchar2(1500) not null,
    men_cat_comte number not null,
    men_comte_empleo varchar2(50) not null,
    men_cat_resp number not null,
    men_resp_empleo varchar2(50) not null,
    men_situacion number not null,
    men_observacion varchar2(230) not null,
    constraint pk_coc_mensaje primary key (men_codigo)  
  );
  /


-- Table ADMIN.AMP_REGISTRO_PERSONAL creado.


-- Table ADMIN.AMP_UBICACION_PERSONAL creado.


-- Table ADMIN.AMP_ASIG_PROPIETARIO creado.


-- Table ADMIN.AMP_LOTE creado.



create table ADMIN.amp_manzana 
  (
    man_id number not null,
    man_letra varchar2(6) not null,
    man_sit char(1) 
        default null,
    man_obs varchar2(30) 
        default null,
    constraint pk_v primary key (man_id)  
  );
  /


-- Table ADMIN.AMP_SECTOR creado.


-- Table ADMIN.OPAF_ABDOMINALES1 creado.



create table ADMIN.opaf_carrera2 
  (
    car_edad number not null,
    car_sexo char(1) not null,
    car_tiempo timestamp(0),
    car_punteo number
  );
  /


-- Table ADMIN.OPAF_DOMINADAS1 creado.



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


-- Table ADMIN.COC_CONTROL creado.



create table ADMIN.gpl_actividad 
  (
    act_id number not null,
    act_desc varchar2(100) not null,
    act_tipo_act varchar2(40) not null,
    act_ministerio number not null,
    act_dependencia number not null,
    act_situacion char(12) not null,
    constraint pk_gpl_actividad primary key (act_id)  
  );
  /

create table ADMIN.gpl_ministerios 
  (
    min_id number not null,
    min_descripcion varchar2(100) not null,
    min_desc_ct varchar2(25) not null,
    min_situacion char(10) not null,
    constraint pk_gpl_ministerios primary key (min_id)  
  );


-- Table ADMIN.GPL_ASIG_MISION creado.


-- Table ADMIN.GPL_CONDUCTORES creado.


-- Table ADMIN.GPL_ASIG_LUGAR creado.


-- Table ADMIN.OPAF_EVENTO_PER creado.

