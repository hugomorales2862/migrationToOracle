CREATE TABLE ADMIN.certificaciones_51_2022 ( 
    cert_id                 NUMBER NOT NULL,
    cert_dpi                VARCHAR2(15) NOT NULL,
    cert_nom1               VARCHAR2(20) NOT NULL,
    cert_nom2               VARCHAR2(20),
    cert_nom3               VARCHAR2(20),
    cert_ape1               VARCHAR2(20) NOT NULL,
    cert_ape2               VARCHAR2(20),
    cert_ape3               VARCHAR2(20),
    cert_sexo               VARCHAR2(2),
    cert_catalogo           VARCHAR2(10),
    cert_empleo             VARCHAR2(200),
    cert_fecha_alta         DATE,
    cert_grado_alta         VARCHAR2(30),
    cert_dep_alta           VARCHAR2(200),
    cert_fecha_baja         DATE,
    cert_grado_baja         VARCHAR2(30),
    cert_dep_baja           VARCHAR2(200),
    cert_motivo_baja        VARCHAR2(200),
    cert_doc_respaldo       VARCHAR2(60),
    cert_num_referencia     VARCHAR2(10),
    cert_tiempo             VARCHAR2(250),
    cert_cat_jefecerti      VARCHAR2(10),
    cert_graarm_certi       VARCHAR2(40),
    cert_nom_certi          VARCHAR2(60),
    cert_cat_jefesage       VARCHAR2(10),
    cert_graarm_jefesage    VARCHAR2(40),
    cert_nom_jefesage       VARCHAR2(60),
    cert_fecha_transac      DATE,
    cert_plaza_certi        VARCHAR2(20),
    cert_plaza_jefe         VARCHAR2(20),
    cert_cat_hizo           VARCHAR2(8),
    cert_motivo_cambio      VARCHAR2(250),
    cert_gen_solicito       VARCHAR2(1),
    cert_situacion          CHAR(1),
    PRIMARY KEY(cert_id)
);
/

create table ADMIN.aud_certificaciones_51_2022 
  (
    cert_id                 NUMBER,
    cert_dpi                VARCHAR2(15),
    cert_nom1               VARCHAR2(20),
    cert_nom2               VARCHAR2(20),
    cert_nom3               VARCHAR2(20),
    cert_ape1               VARCHAR2(20),
    cert_ape2               VARCHAR2(20),
    cert_ape3               VARCHAR2(20),
    cert_sexo               VARCHAR2(2),
    cert_catalogo           VARCHAR2(10),
    cert_empleo             VARCHAR2(200),
    cert_fecha_alta         DATE,
    cert_grado_alta         VARCHAR2(30),
    cert_dep_alta           VARCHAR2(200),
    cert_fecha_baja         DATE, 
    cert_grado_baja         VARCHAR2(30),
    cert_dep_baja           VARCHAR2(200),
    cert_motivo_baja        VARCHAR2(200),
    cert_doc_respaldo       VARCHAR2(60),
    cert_num_referencia     VARCHAR2(10),
    cert_tiempo             VARCHAR2(250),
    cert_cat_jefecerti      VARCHAR2(10),
    cert_graarm_certi       VARCHAR2(40),
    cert_nom_certi          VARCHAR2(60),
    cert_cat_jefesage       VARCHAR2(10),
    cert_graarm_jefesage    VARCHAR2(40),
    cert_nom_jefesage       VARCHAR2(60),
    cert_fecha_transac      DATE,
    cert_plaza_certi        VARCHAR2(20),
    cert_plaza_jefe         VARCHAR2(20),
    cert_cat_hizo           VARCHAR2(8),
    cert_motivo_cambio      VARCHAR2(250),
    cert_gen_solicito       VARCHAR2(1),
    cert_situacion          CHAR(1),
    desp_cert_id                 NUMBER,
    desp_cert_dpi                VARCHAR2(15),
    desp_cert_nom1               VARCHAR2(20),
    desp_cert_nom2               VARCHAR2(20),
    desp_cert_nom3               VARCHAR2(20),
    desp_cert_ape1               VARCHAR2(20),
    desp_cert_ape2               VARCHAR2(20),
    desp_cert_ape3               VARCHAR2(20),
    desp_cert_sexo               VARCHAR2(2),
    desp_cert_catalogo           VARCHAR2(10),
    desp_cert_empleo             VARCHAR2(200),
    desp_cert_fecha_alta         DATE,
    desp_cert_grado_alta         VARCHAR2(30),
    desp_cert_dep_alta           VARCHAR2(200),
    desp_cert_fecha_baja         DATE,
    desp_cert_grado_baja         VARCHAR2(30),
    desp_cert_dep_baja           VARCHAR2(200),
    desp_cert_motivo_baja        VARCHAR2(200),
    desp_cert_doc_respaldo       VARCHAR2(60),
    desp_cert_num_referencia     VARCHAR2(10),
    desp_cert_tiempo             VARCHAR2(250),
    desp_cert_cat_jefecerti      VARCHAR2(10),
    desp_cert_graarm_certi       VARCHAR2(40),
    desp_cert_nom_certi          VARCHAR2(60),
    desp_cert_cat_jefesage       VARCHAR2(10),
    desp_cert_graarm_jefesage    VARCHAR2(40),
    desp_cert_nom_jefesage       VARCHAR2(60),
    desp_cert_fecha_transac      DATE,
    desp_cert_plaza_certi        VARCHAR2(20),
    desp_cert_plaza_jefe         VARCHAR2(20),
    desp_cert_cat_hizo           VARCHAR2(8),
    desp_cert_motivo_cambio      VARCHAR2(250),
    desp_cert_gen_solicito       VARCHAR2(1),
    desp_cert_situacion          CHAR(1),

    accion char (1) not null,
	usuario char (12) not null,
	hora timestamp not null
    );
create table ADMIN.armas 
  (
    arm_codigo number not null ,
    arm_desc_lg char(30) not null ,
    arm_desc_md char(15) not null ,
    arm_desc_ct char(8) not null ,
    constraint pk_armas primary key (arm_codigo) 
  );
/
create table ADMIN.parentescos 
  (
    par_codigo number not null ,
    par_desc_md char(15) not null ,
    par_desc_ct char(12) not null ,
    constraint pk_parentescos primary key (par_codigo)  
  );
/
create table ADMIN.escuelas 
  (
    esc_codigo number not null ,
    esc_desc_lg char(30) not null ,
    esc_desc_md char(15) not null ,
    esc_desc_ct char(8) not null ,
    esc_pais number,
    esc_situacion char(1),
    constraint pk_escuelas primary key (esc_codigo)  
  );
/
create table ADMIN.cursos 
  (
    cur_codigo number not null ,
    cur_desc_lg char(45) not null ,
    cur_tipo char(1),
    cur_clasifica char(1),
    cur_equi number,
    cur_nivel_esc char(1),
    cur_creditos number(5,2),
    
    constraint ch_cursos check (cur_tipo IN ('M' ,'C' )), 
    constraint pk_cursos primary key (cur_codigo)  
  );
/
create table ADMIN.paises 
  (
    pai_codigo number not null ,
    pai_desc_lg char(30) not null ,
    constraint pk_paises primary key (pai_codigo)  
  );
/
create table ADMIN.meom 
  (
    meom_ceom char(6) not null ,
    meom_desc_lg char(35) not null ,
    meom_desc_md char(27) not null ,
    meom_desc_ct char(16) not null ,
    meom_serie char(3) not null ,
    meom_nivel number,
    meom_situacion number,
    
    constraint ch_meom_nivel check ((meom_nivel >= 0 ) AND (meom_nivel <= 8 ) ),    
    constraint ck_meom_serie check (meom_serie IN ('999' ,'E' ,'O' ,'T' ,'P' ,'TP' ,'AP' ,'X' ,'PE' )),
    constraint pk_meom primary key (meom_ceom)  
  );
/
create table ADMIN.grados 
  (
    gra_codigo number not null ,
    gra_desc_lg char(30) not null ,
    gra_desc_md char(15) not null ,
    gra_desc_ct char(8) not null ,
    gra_asc number,
    gra_tiempo number,
    gra_clase char(1) not null ,
    gra_demeritos number,
    
    constraint ch_gra_clase check (gra_clase IN ('1' ,'2' ,'3' ,'4' ,'5' ,'6' )),
    constraint pk_grados primary key (gra_codigo)  
  );
/
create table ADMIN.asignaciones 
  (
    asig_codigo number not null ,
    asig_desc_lg char(30) not null ,
    asig_desc_ct char(10) not null ,
    constraint pk_asignaciones primary key (asig_codigo)  
  );
/
create table ADMIN.menu_master 
  (
    mm_menu number not null ,
    mm_descrip char(80),
    constraint pk_menu_master primary key (mm_menu)  
  );
/
create table ADMIN.mfsub 
  (
    sub_dep number not null ,
    sub_prog char(20) not null ,
    sub_grupo number not null ,
    constraint pk_mf_sub primary key (sub_dep)  
  );
/
create table ADMIN.mfsue_e 
  (
    sue_grado number not null ,
    sue_serie char(1) not null ,
    sue_nivel number not null ,
    sue_sueldo number(16,2) not null ,
    sue_prima number(16,2) not null ,
    constraint pk_mfsue_e primary key (sue_grado,sue_serie,sue_nivel)  
  );
/
create table ADMIN.mfsue_o 
  (
    mfs_grado number not null ,
    mfs_arma number not null ,
    mfs_bienal number not null ,
    mfs_sueldo number(16,2) not null ,
    mfs_prima number(16,2) not null ,
    constraint pk_mfsue_o primary key (mfs_grado,mfs_arma,mfs_bienal)  
  );
/
create table ADMIN.mftro 
  (
    tro_grado number not null ,
    tro_dep number,
    tro_jerarquia char(10) not null ,
    tro_sueldo number(16,2) not null ,
    constraint pk_mftro primary key (tro_grado,tro_dep,tro_jerarquia)  
  );
/
create table ADMIN.pdinero 
  (
    p_num number not null ,
    p_num_desc char(30),
    constraint pk_pdinero primary key (p_num)  
  );
/
create table ADMIN.mfdep 
  (
    mfd_llave number not null ,
    mfd_descripcion char(30) not null ,
    constraint pk_mdfdep primary key (mfd_llave)  
  );
/
create table ADMIN.banderas 
  (
    ban_aplicacion char(1) not null ,
    ban_codigo number not null ,
    ban_fecha date,
    
    constraint ck_ban_aplicacion check (ban_aplicacion IN ('T' ,'O' )) ,
    
    constraint ck_ban_codigo check (ban_codigo IN (0 ,1 )),
    constraint pk_banderas primary key (ban_aplicacion)  
  );
/
create table ADMIN.sysmenus 
  (
    menuname char(18),
    title char(60)
  );
/
create table ADMIN.sysmenuitems 
  (
    imenuname char(18),
    itemnum number,
    mclob char(60),
    mtype char(1),
    progname char(60)
  );
/
create table ADMIN.tropabajas 
  (
    tb_catalogo number not null ,
    tb_fec_nomb date not null ,
    tb_situacion char(2) not null ,
    constraint pk_tropabajas primary key (tb_catalogo)  
  );
/
create table ADMIN.tropa_sp 
  (
    tsp_catalogo number not null ,
    tsp_plaza number not null ,
    tsp_fec_nomb date,
    tsp_fec_trans date not null ,
    tsp_operador char(8) not null ,
    tsp_grado number,
    constraint pk_tropa_sp primary key (tsp_catalogo)
  );  
/
create table ADMIN.asig_plaza 
  (
    asc_plaza number not null 
  );
/
create table ADMIN.permtropa 
  (
    pert_usuario char(10),
    pert_programa char(20),
    pert_permiso number,
    
    constraint ck_pert_permiso check (pert_permiso IN (0 ,100 ,200 ,300 ,400 )) ,
    constraint pk_permtropa primary key (pert_usuario,pert_programa)  
  );
/
create table ADMIN.dep_mun 
  (
    dm_codigo char(4) not null ,
    dm_desc_lg char(30) not null ,
    dm_desc_md char(15) not null ,
    dm_desc_ct char(8) not null ,
    constraint pk_dep_mun primary key (dm_codigo)  
  );
/
create table ADMIN.pcdtablr 
  (
    prodid char(8),
    line_no number,
    tabname char(18)
  );
/
create table ADMIN.cgdcolmr 
  (
    tabname char(18),
    colname char(18),
    language char(3),
    description char(30),
    col_label char(30),
    mssg_line char(74)
  );
/
create table ADMIN.cgdtablr 
  (
    tabname char(18),
    language char(3),
    description char(30),
    uniq_list char(60),
    tab_order char(60)
  );
/
create table ADMIN.cgmcmndd 
  (
    m_name char(8),
    m_order number,
    m_lang char(3),
    m_label char(20),
    m_help char(50)
  );
/
create table ADMIN.cgmcmndr 
  (
    m_name char(8),
    m_desc char(20),
    m_order number,
    m_type char(1),
    m_event char(8),
    m_class char(12),
    m_style char(1),
    m_rowon char(1),
    m_curon char(1),
    m_toton char(1),
    m_deton char(1),
    m_enter char(1)
  );
/
create table ADMIN.cgmmenud 
  (
    module char(8),
    prog char(8),
    scrid char(8),
    m_local number,
    m_name char(8),
    m_desc char(20),
    m_order number,
    m_type char(1),
    m_event char(8),
    m_class char(12),
    m_style char(1),
    m_rowon char(1),
    m_curon char(1),
    m_toton char(1),
    m_deton char(1),
    m_enter char(1)
  );
/
create table ADMIN.cgmmposr 
  (
    m_name char(8),
    m_type char(1),
    x_pos number,
    y_pos number,
    width number,
    hold char(1)
  );
/
create table ADMIN.cgrrimgd 
  (
    rptname char(30),
    image_name char(10),
    language char(3),
    line_no number,
    part_no number,
    line_image char(256)
  );
/
create table ADMIN.cgsscrnr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    scr_type char(15),
    maintab char(18),
    init_filter char(200),
    win_x number,
    win_y number,
    delimiters char(2),
    rturning char(18),
    scr_attr char(30),
    load_time number,
    trig_time number,
    non_src_frm char(1),
    eng_ver char(10),
    fgl_ver char(10)
  );
/
create table ADMIN.cgxsorcd 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    src_code char(3),
    src_name char(200)
  );
/
create table ADMIN.stxacknd 
  (
    ack_module char(8),
    ack_program char(8),
    line_no number,
    ack_clob char(60)
  );
/
create table ADMIN.stxactnr 
  (
    language char(3),
    act_key char(15),
    description char(30),
    os_command char(74),
    press_enter char(1)
  );
/
create table ADMIN.stxaddld 
  (
    filename char(18) not null ,
    record_key char(30),
    line_no number,
    data char(30)
  );
/
create table ADMIN.stxaddlr 
  (
    filename char(18) not null ,
    line_no number,
    field_label char(20)
  );
/
create table ADMIN.stxcompr 
  (
    comp_id char(8),
    db_name char(14),
    logfile char(150),
    line_no number,
    consolidate number
  );
/
create table ADMIN.stxerord 
  (
    language char(3),
    userdef char(1),
    err_module char(8),
    err_program char(8),
    err_number number,
    a_b char(1),
    line_no number,
    err_clob char(60)
  );
/
create table ADMIN.stxerorh 
  (
    language char(3),
    userdef char(1),
    err_module char(8),
    err_program char(8),
    err_number number,
    err_line char(40)
  );
/
create table ADMIN.stxfiler 
  (
    uniq_num ,
    line_no number not null ,
    line_clob char(248)
  );
/
create table ADMIN.stxfiltr 
  (
    unique_id char(15),
    seq_no number,
    sel_filter char(200)
  );
/
create table ADMIN.stxfuncr 
  (
    module char(8),
    progname char(8),
    funcname char(20),
    description char(30),
    allow_flag char(1),
    userdef char(1)
  );
/
create table ADMIN.stxgropd 
  (
    group_id char(8),
    user_id char(8)
  );
/
create table ADMIN.stxhelpd 
  (
    language char(3),
    userdef char(1),
    hlp_module char(18),
    hlp_program char(18),
    hlp_number number,
    line_no number,
    hlp_clob char(60)
  );
/
create table ADMIN.stxhotkd 
  (
    hot_key number,
    act_key char(15),
    hot_module char(8),
    hot_program char(8),
    hot_user char(10)
  );
/
create table ADMIN.stxkeysr 
  (
    key_code number,
    key_desc char(15)
  );
/
create table ADMIN.stxlangr 
  (
    language char(3),
    tr_tab_col char(37),
    tr_conclob char(10),
    native char(50),
    non_native char(50)
  );
/
create table ADMIN.stxmssgr 
  (
    language char(3),
    mssg_module char(8),
    mssg_program char(8),
    mssg_number number,
    message char(132)
  );
/
create table ADMIN.stxnoted 
  (
    filename char(18) not null ,
    record_key char(30),
    line_no number,
    data char(60)
  );
/
create table ADMIN.stxnvgtd 
  (
    act_key char(15),
    line_no number,
    nav_module char(8),
    nav_program char(8),
    nav_user char(10)
  );
/
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
    val_table ADMIN.char(30),
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
create table ADMIN.stxpermd 
  (
    user_id char(8),
    progname char(8),
    module char(8),
    permission char(1)
  );
/
create table ADMIN.stxpermr 
  (
    user_id char(8),
    lname char(20),
    fname char(20),
    minitial char(1),
    company char(30),
    dept char(15),
    responsibility char(30),
    phone char(15),
    pattern char(8)
  );
/
create table ADMIN.stxprogr 
  (
    module char(8),
    progname char(8),
    description char(30),
    use_trx number,
    userdef char(1)
  );
/
create table ADMIN.stxsecud 
  (
    user_id char(8),
    module char(8),
    progname char(8),
    funcname char(20),
    allow_flag char(1)
  );
/
create table ADMIN.stxtodod 
  (
    todo_user char(10),
    line_no number,
    todo_clob char(60)
  );
/
create table ADMIN.stxtxtdd 
  (
    txt_key char(30),
    line_no number,
    dflt_clob char(74)
  );
/
create table ADMIN.stxuniqc 
  (
    uniq number not null 
  );
/
create table ADMIN.cgsblobr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    fldname char(18),
    runprog char(60),
    progedit char(1)
  );
/
create table ADMIN.cgsclipr 
  (
    username char(12),
    clipname char(8),
    clip_title char(30),
    seqno number not null ,
    srow number,
    erow number,
    scol number,
    ecol number,
    clip_status char(1)
  );
/
create table ADMIN.cgscmdsd 
  (
    cmd_id number,
    line_no number,
    txt char(70),
    indent number,
    cont_line char(1),
    whitespace number
  );
/
create table ADMIN.cgscmdsr 
  (
    cmd_id number not null ,
    cmd_type char(1),
    cmd_order number,
    trig_code number,
    module char(14),
    prog char(14),
    cust_key char(3),
    filename char(14),
    load_time number,
    src_file char(14),
    funct_id char(18),
    block_id char(20),
    from_after char(1),
    from_str char(50),
    to_thru char(1),
    to_str char(50)
  );
/
create table ADMIN.cgsdpndd 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    src_type number,
    src_field char(18),
    dpnd_field char(18)
  );
/
create table ADMIN.cgsimged 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    line_no number,
    image_data char(132)
  );
/
create table ADMIN.cgsinptr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    scr_rec char(12),
    maintab char(18),
    sel_join char(200),
    sel_filter char(200),
    sel_order char(100),
    unique_key char(80),
    ok_delete char(1),
    auto_number char(18),
    scr_siz number,
    arr_max number
  );
/
create table ADMIN.cgsstypr 
  (
    set_key char(20),
    dflt_arr_max number,
    userdef char(1)
  );
/
create table ADMIN.cgstrigr 
  (
    trig_def char(30),
    trig_code number
  );
/
create table ADMIN.cgszoomr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    key_field char(18),
    zoom_scrid char(7),
    zoom_table ADMIN.char(18),
    noautozoom char(1),
    sel_filter char(200),
    zoom_from char(18)
  );
/
create table ADMIN.cgxfnamr 
  (
    set_key char(20),
    func_key char(10),
    func_name char(18)
  );
/
create table ADMIN.cgxfsetd 
  (
    set_key char(20),
    func_key char(10),
    userdef char(1)
  );
/
create table ADMIN.cgxlkupr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    lkup_name char(18),
    key_field char(18),
    lkup_table ADMIN.char(18),
    sel_filter char(200)
  );
/
create table ADMIN.cgxlntod 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    manual char(1),
    lkup_name char(18),
    lkup_into char(18),
    lkup_from char(18)
  );
/
create table ADMIN.cgxmathr 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    key_field char(18),
    math_clob char(100)
  );
/
create table ADMIN.stxparmh 
  (
    language char(3),
    module char(8),
    heading char(76)
  );
/
create table ADMIN.ipm_fact 
  (
    fact_catalogo number not null ,
    fact_cod_descuento number not null ,
    fact_fecha date not null ,
    fact_numero char(11) not null ,
    fact_procedencia char(2),
    fact_iva number(10,2) not null ,
    fact_monto number(10,2) not null ,
    fact_estado char(2),
    constraint pk_ipm_fact primary key (fact_catalogo,fact_numero)  
  );
/
create table ADMIN.banejer_acc 
  (
    acc_accionista char(11) not null ,
    acc_catalogo number not null ,
    acc_suscripcion number(16,2),
    acc_si_no char(1),
    constraint pk_banejer_acc primary key (acc_accionista,acc_catalogo)  
  );
/
create table ADMIN.pbienal 
  (
    catalogo number not null ,
    bienal1 number,
    bienal2 number,
    bienal3 number
  );
/
create table ADMIN.cgstrigd 
  (
    module char(8),
    prog char(8),
    scrid char(7),
    cust_key char(12),
    input_num number,
    trig_code number,
    arg_one char(18),
    trig_order number,
    trig_clob char(74)
  );
/
create table ADMIN.sinefecto 
  (
    catalogo number not null ,
    orden char(8) not null ,
    usuario char(12)
  );
/
create table ADMIN.partidas 
  (
    par_codigo number not null ,
    par_depen number not null ,
    par_fecha date not null ,
    par_descr char(35) not null ,
    par_clase number not null 
  );
/
create table ADMIN.noestan 
  (
    noe_catalogo number not null 
  );
/
create table ADMIN.empresas 
  (
    em_catalogo number not null ,
    em_codigo number not null ,
    em_fecha date not null ,
    em_monto number(16,2) not null ,
    em_mensual number(16,2) not null ,
    em_saldo number(16,2) not null ,
    em_control number not null 
  );
/
create table ADMIN.fmasi 
  (
    mas_codigo number not null ,
    mas_desc_ct char(8) not null ,
    mas_desc_md char(15) not null ,
    mas_desc_lg char(30) not null 
  );
/
create table ADMIN.fmdes 
  (
    mde_codigo number not null ,
    mde_desc_ct char(8) not null ,
    mde_desc_md char(15) not null ,
    mde_desc_lg char(30) not null 
  );
/
create table ADMIN.syscolval 
  (
    tabname char(18),
    colname char(18),
    attrname char(10),
    attrval char(64)
  );
/
create table ADMIN.cgsifldd 
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
    f_skip char(1)
  );
/
create table ADMIN.disr 
  (
    isr_catalogo number not null ,
    isr_cantidad number(16,2) not null 
  );
/
create table ADMIN.descuentos 
  (
    desc_codigo number not null ,
    desc_desc_lg char(30) not null ,
    desc_desc_ct char(8) not null ,
    desc_prioridad number,
    desc_pressobre number,
    desc_ordenvale number,
    constraint pk_descuentos primary key (desc_codigo)  
  );
/
create table ADMIN.permisos 
  (
    perm_usuario char(10),
    perm_programa char(20),
    perm_permiso number,
    
    constraint ck_perm_permiso check (perm_permiso IN (0 ,100 ,200 ,300 ,400 )) ,
    constraint permisos primary key (perm_usuario,perm_programa)  
  );
/
create table ADMIN.hdareal 
  (
    hdr_catalogo number,
    hdr_cantidad number(16,2)
  );
/
create table ADMIN.retencion 
  (
    ret_catalogo number not null ,
    ret_monto number(16,2),
    constraint pk_retencion primary key (ret_catalogo)  
  );
/
create table ADMIN.jefes 
  (
    jef_plaza number not null ,
    jef_categoria char(4) not null ,
    jef_puesto char(200) not null 
  );
/
create table ADMIN.fuerza 
  (
    f_dep number not null ,
    f_grado number not null ,
    f_total number not null ,
    f_situa char(1) not null 
  );
/
create table ADMIN.nopagados 
  (
    catalogo number not null 
  );
/
create table ADMIN.des_no_efec 
  (
    no_efec_catalogo number not null ,
    no_efec_codigo number not null ,
    no_efec_registro number,
    no_efec_fecha date not null ,
    no_efec_cantidad number(16,2) not null ,
    no_efec_corrida char(1) not null ,
    constraint pk_des_no_efec primary key (no_efec_catalogo,no_efec_codigo,no_efec_registro,no_efec_fecha) 
               
  );
/
create table ADMIN.tipo_docum 
  (
    tipo_codigo number not null ,
    tipo_desc char(30) not null ,
    constraint pk_tipo_docum primary key (tipo_codigo) 
  );
/
create table ADMIN.menus 
  (
    mnu_codigo number not null ,
    mnu_descripcion char(100) not null ,
    mnu_opcion char(100) not null ,
    constraint menus primary key (mnu_codigo)  
  );
/
create table ADMIN.usumenu 
  (
    um_nombre char(50) not null ,
    um_cod_menu number
  );
/
create table ADMIN.mcols 
  (
    mc_codigo number not null ,
    mc_orden number not null ,
    mc_descrip char(20) not null 
  );
/
create table ADMIN.mreps 
  (
    mr_codigo number not null ,
    mr_descrip char(60) not null ,
    mr_repo char(10) not null ,
    constraint pk_mreps primary key (mr_codigo)  
  );
/
create table ADMIN.depmun 
  (
    dm_codigo char(4) not null ,
    dm_desc_lg char(30) not null ,
    dm_desc_md char(15) not null ,
    dm_desc_ct char(8) not null ,
    dm_mun_dep char(60) not null ,
    constraint pk_depmun primary key (dm_codigo)  
  );
/
create table ADMIN.meop 
  (
    meom_ceom char(6) not null ,
    meom_desc_lg char(35) not null ,
    meom_desc_md char(27) not null ,
    meom_desc_ct char(16) not null ,
    meom_serie char(3),
    meom_nivel number,
    
    constraint ck_meom_nivel check ((meom_nivel >= 0 ) AND (meom_nivel <= 8 ) ),
    constraint pk_meop primary key (meom_ceom)  
  );
/
create table ADMIN.fbitacora 
  (
    fbit_user number,
    fbit_cod number,
    fbit_mes date,
    fbit_fecha date,
    constraint pk_fbitacora primary key (fbit_user,fbit_cod,fbit_mes)  
  );
/
create table ADMIN.categorias 
  (
    cat_codigo char(4) not null ,
    cat_descripcion char(30),
    constraint pk_categorias primary key (cat_codigo) 
    ); 
/
create table ADMIN.fnosalta 
  (
    fcatalogo number not null 
  );
/
create table ADMIN.tropa_pv 
  (
    tpv_plaza number not null ,
    tpv_fec_trans date not null ,
    tpv_catalogo number not null ,
    tpv_operador char(8) not null ,
    constraint pk_tropa_pv primary key (tpv_plaza) 
  );
/
create table ADMIN.doc_pendientes 
  (
    codigo number,
    fecha TIMESTAMP(0),
    oficina char(20),
    constraint pk_doc_pendientes primary key (codigo)  
  );
/
create table ADMIN.oficina 
  (
    of_dep number,
    of_codigo char(4) not null ,
    of_desc char(70),
    constraint pk_oficina primary key (of_codigo) 
  );
/
create table ADMIN.corr_seg 
  (
    seg_usuario number not null ,
    seg_passwd char(10),
    seg_dep number,
    seg_oficina char(4),
    constraint pk_corr_seg primary key (seg_usuario) 
  );
/
create table ADMIN.meomeop 
  (
    meom char(6) not null ,
    meop char(6) not null 
  );
/
create table ADMIN.tablas 
  (
    tabla char(20) not null ,
    sistema char(3),
    llave_primaria char(32),
    llaves_foraneas char(50),
    descripcion char(50),
    constraint pk_tablas primary key (tabla,sistema)  
  );
/
create table ADMIN.chunk 
  (
    ch_id number,
    ch_dbspace number,
    ch_tamano number,
    ch_path char(20),
    ch_creacion date,
    constraint u1022_531 primary key (ch_id)  
  );
/
create table ADMIN.cuentas 
  (
    cta_catalogo number not null ,
    cta_numero char(20),
    cta_banco number not null ,
    constraint pk_cuentas primary key (cta_catalogo)  
  );
/
create table ADMIN.mfsue_et 
  (
    sue_grado number not null ,
    sue_serie char(1) not null ,
    sue_nivel number not null ,
    sue_sueldo number(16,2) not null ,
    sue_prima number(16,2) not null ,
    constraint pk_mfsue_et primary key (sue_grado,sue_serie,sue_nivel) 
  );
/
create table ADMIN.mftror 
  (
    tro_grado number not null ,
    tro_dep number not null ,
    tro_jerarquia char(10) not null ,
    tro_sueldo number(16,2) not null ,
    constraint pk_mftror primary key (tro_grado,tro_dep,tro_jerarquia)  
  );
/
create table ADMIN.aud_mftro 
  (
    antes1 char(4),
    antes2 char(10),
    antes3 char(10),
    antes4 char(20),
    despues1 char(4),
    despues2 char(10),
    despues3 char(10),
    despues4 char(20),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_mfsue_et 
  (
    antes1 char(4),
    antes2 char(1),
    antes3 char(4),
    antes4 char(20),
    antes5 char(20),
    despues1 char(4),
    despues2 char(1),
    despues3 char(4),
    despues4 char(20),
    despues5 char(20),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.cmm_hospitalizados 
  (
    hos_catalogo number not null ,
    hos_fec_ingreso date not null ,
    hos_diag_ingreso char(45),
    hos_fec_egreso date,
    hos_diag_egreso char(100),
    hos_grado number,
    hos_depen number,
    
    constraint ck_cmm_hospitalizados check (hos_fec_ingreso <= hos_fec_egreso ) 
  );
/
create table ADMIN.cmm_rebajados 
  (
    reb_catalogo number not null ,
    reb_fec_inicio date not null ,
    reb_fec_final date,
    reb_diagnostico char(45),
    reb_tipo varchar2(250),
    reb_tiempo number,
    reb_grado number,
    reb_depen number,
    
    constraint ck_cmm_rebajados check (reb_fec_inicio <= reb_fec_final ) 
  );
/
create table ADMIN.mnums 
  (
    mn_codigo number not null ,
    mn_puesto number not null ,
    mn_orden number not null ,
    mn_dep number,
    mn_valor number not null 
  );
/
create table ADMIN.dfdes_tro 
  (
    dtd_catalogo number not null ,
    dtd_codigo number not null ,
    dtd_nu_reg number not null ,
    dtd_cod_control number not null ,
    dtd_tipo_desc char(1) not null ,
    dtd_fec_ini date not null ,
    dtd_ult_act date,
    dtd_fec_cer date,
    dtd_monto number(16,2) not null ,
    dtd_saldo number(16,2) not null ,
    dtd_mensual number(16,2) not null ,
    dtd_tot_cuotas number not null ,
    dtd_num_cuotas number not null ,
    dtd_documen char(6),
    dtd_codeudor number,
    dtd_nom_bene char(50),
    dtd_juz_con char(50),
    constraint pk_dfdes_tro primary key (dtd_catalogo,dtd_codigo,dtd_nu_reg)  
  );
/
create table ADMIN.permper 
  (
    perm_usuario char(10),
    perm_programa char(20),
    perm_permiso number,
    
    constraint ck_perm_permiso check (perm_permiso IN (0 ,100 ,150 ,200 ,250 ,300 ,350 ,400 ,410 ,420 ,450 ,500 ,550 )) ,
    constraint pk_permper primary key (perm_usuario,perm_programa)  
  );
/
create table ADMIN.permorga 
  (
    pero_usuario char(10),
    pero_programa char(20),
    pero_permiso number,
    
    constraint ck_pero_permiso check (pero_permiso IN (0 ,100 ,200 ,300 ,400 )) ,
    constraint pk_permorga primary key (pero_usuario,pero_programa)  
  );
/
create table ADMIN.process 
  (
    cod_process number not null ,
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
create table ADMIN.ubicacion_cerrados 
  (
    ub_correlativo number not null ,
    ub_cod_doc number not null ,
    ub_fec_in TIMESTAMP(0),
    ub_recibe number,
    ub_entrega number,
    ub_recibe_ok char(1),
    ub_observaciones char(100),
    ub_oficina char(3),
    ub_of_dep number,
    ub_doc_tipo_remite number,
    ub_doc_remite char(20),
    ub_int_ext char(1),
    ub_of_remite char(3),
    ub_of_dep_remite number,
    constraint pk_ubicacion_cerrados primary key (ub_correlativo,ub_cod_doc) 
  );
/
create table ADMIN.tr_armas 
  (
    tra_catalogo number not null ,
    tra_num_arma char(20) not null ,
    tra_tipo char(10) not null ,
    tra_asignacion char(1) not null ,
    tra_situacion number not null ,
    tra_plaza number not null ,
    tra_fecha date not null ,
    tra_accion number not null ,
    tra_persona number not null ,
    constraint pk_tr_armas primary key (tra_catalogo)  
  );
/
create table ADMIN.dcur 
  (
    cur_catalogo number not null ,
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
    
    constraint ck_cur_puesto check (cur_puesto IN ('1RO' ,'2DO' ,'3RO' ,'4TO' ,'5TO' ,'6TO' ,'RDA' ,'RMC' ,'SAT' ,'ESP' ,'NOG' ,'PES' ,'REN' ,'RFP' ,'RIN' ,'RSS' ,'RPB' ,'RPE' ,'RPF' ,'SNA' ,'UMN' ,'RNR' ,'ROS' )) ,
    constraint pk_dcur primary key (cur_catalogo,cur_curso,cur_fec_inicio)  
  );
/
create table ADMIN.dfdes_btrab 
  (
    dfdt_catalogo number not null ,
    dfdt_codigo number not null ,
    dfdt_nu_reg number not null ,
    dfdt_cod_control number not null ,
    dfdt_tipo_desc char(1) not null ,
    dfdt_fec_ini date,
    dfdt_ult_act date,
    dfdt_fec_cer date,
    dfdt_monto number(16,2) not null ,
    dfdt_saldo number(16,2) not null ,
    dfdt_mensual number(16,2) not null ,
    dfdt_tot_cuotas number,
    dfdt_num_cuotas number,
    dfdt_documen char(6),
    dfdt_codeudor number,
    dfdt_nom_bene char(50),
    dfdt_juz_con char(50),
    dfdt_si_no char(1),
    constraint pk_dfdes_btrab_catal_juz_con primary key (dfdt_catalogo,dfdt_juz_con) 
  );
/
create table ADMIN.ubicacion_docum 
  (
    ub_correlativo number not null ,
    ub_cod_doc number not null ,
    ub_fec_in TIMESTAMP(0),
    ub_recibe number,
    ub_entrega number,
    ub_recibe_ok char(1),
    ub_observaciones char(100),
    ub_oficina char(4),
    ub_of_dep number,
    ub_doc_tipo_remite number,
    ub_doc_remite char(20),
    ub_int_ext char(1),
    ub_of_remite char(4),
    ub_of_dep_remite number,
    constraint pk_ubicacion_doc primary key (ub_correlativo,ub_cod_doc)  
  );
/
create table ADMIN.sistemas 
  (
    sis_codigo char(3) not null ,
    sis_nombre char(20) not null ,
     constraint pk_sistemas  primary key (sis_codigo)  
  );
/
create table ADMIN.hist_rep 
  (
    hr_numero number not null ,
    hr_catalogo number,
    hr_terminal char(10),
    hr_fecha date,
    hr_hora char(8),
    hr_usuario char(30),
    hr_codigo char(10),
    constraint hist_rep primary key (hr_numero)  
  );
/
create table ADMIN.agui 
  (
    agui_catalogo number not null ,
    agui_aguinaldo number(16,2) not null ,
    agui_meses number not null 
  );
/
create table ADMIN.dfam 
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
    fam_dir_lugar char(4),
    fam_telefono number,
    fam_ocupacion char(30),
    fam_empresa char(30),
    fam_cheque number,
    fam_beneficiario number,
    fam_emergencia number,
    fam_clase_pasiva number,
    
    constraint ck_fam_ced_ordcheck (fam_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'�-15' ,'O-16' ,'P-17' ,'Q-18' ,'&-15' ,'�-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99' )) ,
    
    constraint ck_fam_est_civil check (fam_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    
    constraint ck_fam_sangre check (fam_sangre IN ('O+' ,'O-' ,'A+' ,'A-' ,'AB+' ,'AB-' ,'B+' ,'B-' ,'P' )) ,
    
    constraint ck_fam_sexo check (fam_sexo IN ('M' ,'F' )),
    constraint pk_dfam primary key (fam_cat_militar,fam_cat_familiar)  
  );
/
create table ADMIN.maestro 
  (
    mae_ord_gen char(7) not null ,
    mae_clase char(1) not null 
  );
/
create table ADMIN.aud_ubica_cerra 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(50),
    antes4 char(12),
    antes5 char(12),
    antes6 char(1),
    antes7 char(100),
    antes8 char(12),
    antes9 char(12),
    antes10 char(12),
    antes11 char(20),
    antes12 char(1),
    antes13 char(12),
    antes14 char(12),
    despues1 char(12),
    despues2 char(12),
    despues3 char(50),
    despues4 char(12),
    despues5 char(12),
    despues6 char(1),
    despues7 char(100),
    despues8 char(12),
    despues9 char(12),
    despues10 char(12),
    despues11 char(20),
    despues12 char(1),
    despues13 char(12),
    despues14 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.dfdes_ipm 
  (
    dfdp_catalogo number not null ,
    dfdp_codigo number not null ,
    dfdp_nu_reg number not null ,
    dfdp_cod_control number not null ,
    dfdp_tipo_desc char(1) not null ,
    dfdp_fec_ini date,
    dfdp_ult_act date,
    dfdp_fec_cer date,
    dfdp_monto number(16,2) not null ,
    dfdp_saldo number(16,2) not null ,
    dfdp_mensual number(16,2) not null ,
    dfdp_tot_cuotas number,
    dfdp_num_cuotas number,
    dfdp_documen char(6),
    dfdp_codeudor number,
    dfdp_nom_bene char(50),
    dfdp_juz_con char(50),
    dfdp_si_no char(1),
    constraint pk_dfdes_ipm primary key (dfdp_catalogo,dfdp_codigo,dfdp_nu_reg)  
  );
/
create table ADMIN.resutro 
  (
    res_nomina number not null ,
    res_contrato number not null ,
    res_depen number not null ,
    res_btn number not null ,
    res_cia number not null ,
    res_fecha date not null ,
    res_prog char(3) not null ,
    res_grupo char(3) not null ,
    res_sueldo number(16,2) not null ,
    res_alimentacion number(16,2) not null ,
    res_responsabilida number(16,2) not null ,
    res_reenganche number(16,2) not null ,
    res_profesional number(16,2) not null ,
    res_representacion number(16,2) not null ,
    res_bon_emerg number(16,2) not null ,
    res_bon_662000 number(16,2),
    res_otras_boni number(16,2) not null ,
    res_montepio number(16,2) not null ,
    res_ipm number(16,2) not null ,
    res_cmm number(16,2) not null ,
    res_total number(16,2) not null ,
    res_liquido number(16,2) not null ,
    res_profmil number(16,2)
  );
/
create table ADMIN.tsan 
  (
    tsan_codigo number not null ,
    tsan_descripcion char(80) not null ,
    tsan_tiempo number not null ,
    tsan_posterga number not null ,
    tsan_suspension number not null ,
    constraint pk_tsanx primary key (tsan_codigo)  
  );
/
create table ADMIN.mdep 
  (
    dep_llave number not null ,
    dep_desc_lg char(100) not null ,
    dep_desc_md char(35) not null ,
    dep_desc_ct char(15) not null ,
    dep_clase char(1),
    dep_precio char(1),
    dep_ejto char(1),
    constraint pk_mdep primary key (dep_llave)  
  );
/
create table ADMIN.aud_permorga 
  (
    antes1 char(10),
    antes2 char(20),
    antes3 char(8),
    despues1 char(10),
    despues2 char(20),
    despues3 char(8),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.documento 
  (
    doc_codigo number not null ,
    doc_tipo number not null ,
    doc_nombre char(20) not null ,
    doc_prioridad char(1),
    doc_asunto char(120),
    doc_fec_realizado date not null ,
    doc_fec_in date not null ,
    doc_num_hojas number not null ,
    doc_destino number not null ,
    doc_procedencia number not null ,
    doc_status char(1),
    doc_interesado char(50),
    doc_clasificacion number,
    doc_prefijo number,
    doc_proposito number,
    doc_recibe number not null ,
    doc_int_ext char(1),
    doc_solucion char(1),
    doc_referencia char(20),
    doc_of_actual char(4),
    doc_of_anterior char(4),
    doc_aceptado char(1),
    doc_fec_aceptado date,
    constraint pk_documento primary key (doc_codigo)  
  );
/
create table ADMIN.bono14 
  (
    b14_catalogo number not null ,
    b14_cantidad number(16,2) not null ,
    b14_meses number not null 
  );
/
create table ADMIN.aud_doc_pendientes 
  (
    antes1 char(12),
    antes2 char(18),
    antes3 char(20),
    despues1 char(12),
    despues2 char(18),
    despues3 char(20),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_mftror 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(10),
    antes4 char(20),
    despues1 char(12),
    despues2 char(12),
    despues3 char(10),
    despues4 char(20),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_meomeop 
  (
    antes1 char(12),
    antes2 char(12),
    despues1 char(12),
    despues2 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_tropabajas 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(12),
    despues1 char(12),
    despues2 char(12),
    despues3 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.marginado 
  (
    codigo number not null ,
    documento number not null ,
    marginado char(2) not null ,
    quien number not null ,
    fecha date not null ,
    enterado char(1) not null ,
    constraint pk_marginado primary key (codigo)  
  );
/
create table ADMIN.doc_cerrados 
  (
    doc_codigo number not null ,
    doc_tipo number not null ,
    doc_nombre char(20) not null ,
    doc_prioridad char(1),
    doc_asunto char(120),
    doc_fec_realizado date not null ,
    doc_fec_in date not null ,
    doc_num_hojas number not null ,
    doc_destino number not null ,
    doc_procedencia number not null ,
    doc_status char(1),
    doc_interesado char(50),
    doc_clasificacion number,
    doc_prefijo number,
    doc_proposito number,
    doc_recibe number not null ,
    doc_int_ext char(1),
    doc_solucion char(1),
    doc_referencia char(20),
    doc_of_actual char(4),
    doc_of_anterior char(4),
    doc_aceptado char(1),
    doc_fec_aceptado date,
    constraint pk_doc_cerrados primary key (doc_codigo)  
  );
/
create table ADMIN.aud_doc_cerrados 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(20),
    antes4 char(1),
    antes5 char(120),
    antes6 char(12),
    antes7 char(12),
    antes8 char(12),
    antes9 char(12),
    antes10 char(12),
    antes11 char(1),
    antes12 char(50),
    antes13 char(12),
    antes14 char(12),
    antes15 char(12),
    antes16 char(12),
    antes17 char(1),
    antes18 char(1),
    antes19 char(20),
    antes20 char(12),
    antes21 char(12),
    antes22 char(1),
    antes23 char(12),
    despues1 char(12),
    despues2 char(12),
    despues3 char(20),
    despues4 char(1),
    despues5 char(120),
    despues6 char(12),
    despues7 char(12),
    despues8 char(12),
    despues9 char(12),
    despues10 char(12),
    despues11 char(1),
    despues12 char(50),
    despues13 char(12),
    despues14 char(12),
    despues15 char(12),
    despues16 char(12),
    despues17 char(1),
    despues18 char(1),
    despues19 char(20),
    despues20 char(12),
    despues21 char(12),
    despues22 char(1),
    despues23 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_dcur 
  (
    catalogo number,
    grado number,
    curso number,
    fec_inicio date,
    fec_fin date,
    pais number,
    escuela number,
    valor number(16,2),
    punteo number(5,2),
    equi number,
    puesto char(3),
    obserba char(20),
    docto_auto char(10),
    nivel_esc char(1),
    desp_catalogo number,
    desp_grado number,
    desp_curso number,
    desp_fec_inicio date,
    desp_fec_fin date,
    desp_pais number,
    desp_escuela number,
    desp_valor number(16,2),
    desp_punteo number(5,2),
    desp_equi number,
    desp_puesto char(3),
    desp_obserba char(20),
    desp_docto_auto char(10),
    desp_nivel_esc char(1),
    accion char(1),
    usuario char(10),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.mlins 
  (
    ml_codigo number not null ,
    ml_puesto number not null ,
    ml_descrip char(35) not null 
  );
/
create table ADMIN.situaciones 
  (
    sit_codigo char(2) not null ,
    sit_desc_lg char(40) not null ,
    sit_desc_md char(25) not null ,
    sit_desc_ct char(15) not null ,
    constraint pk_situaciones primary key (sit_codigo)  
  );
/
create table ADMIN.tempdpue 
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
    pue_ord_gral char(7) not null ,
    pue_punto_og number not null ,
    pue_fec_cese date not null ,
    
    constraint ck_pue_nom_cese check (pue_fec_nomb <= pue_fec_cese ),
    constraint pk_dpuet primary key (pue_catalogo,pue_plaza,pue_fec_nomb) 
  );
/
create table ADMIN.usuariosnt 
  (
    catalogo char(10) not null ,
    observaciones char(30)
  );
/
create table ADMIN.aud_dpue 
  (
    catalogo number,
    grado number,
    arma number,
    dependencia number,
    jerarquia char(3),
    plaza number,
    ceom char(6),
    desc char(45),
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
create table ADMIN.permorden 
  (
    pero_usuario char(10) not null ,
    pero_programa char(10),
    pero_permiso number
  );
/
create table ADMIN.cla_cond 
  (
    cla_codigo char(2) not null ,
    cla_descripcion char(60) not null 
  );
/
create table ADMIN.lsm_marca 
  (
    marca_cod number not null ,
    marca_desc char(45),
    constraint pk_marcod_lsmarca primary key (marca_cod)  
  );
/
create table ADMIN.lsm_equipo 
  (
    equi_cat number not null ,
    equi_dep number not null ,
    equi_art number not null ,
    equi_serie char(45),
    equi_sit number,
    constraint pk_equicat_lsmeqip primary key (equi_cat,equi_dep)  
  );
/
create table ADMIN.menu_det 
  (
    md_menu number not null ,
    md_orden number(8,2) not null ,
    md_opcion char(45) not null ,
    md_ejecuta char(80) not null ,
    constraint u219_79 primary key (md_menu,md_orden)  
  );
/
create table ADMIN.orden 
  (
    ord_catalogo number not null ,
    ord_sit char(2) not null ,
    ord_plaza number not null ,
    ord_fecha_nom date not null ,
    ord_orden char(7),
    ord_punto_orden number,
    ord_clase char(1) not null ,
    ord_sitrasla char(2),
    
    constraint ck_ork_clase check (ord_clase IN ('O' ,'A' ,'E' )) ,
    constraint pk_orden primary key (ord_catalogo)
  );
/
create table ADMIN.orden_h 
  (
    ord_catalogo number not null ,
    ord_situacion char(2) not null ,
    ord_plaza number not null ,
    ord_fecha_nomb date not null ,
    ord_orden char(7),
    ord_punto number,
    ord_clase char(1) not null ,
    ord_sitrasla char(2),
    
    constraint ck_orden_h check (ord_clase IN ('O' ,'A' ,'E' )) 
  );
/
create table ADMIN.sitrasla 
  (
    sit_codigo char(2) not null ,
    sit_desc_lg char(40) not null ,
    sit_desc_ct char(12),
    constraint pk_sitrasla primary key (sit_codigo)  
  );
/
create table ADMIN.hfdes1 
  (
    hfd_catalogo number not null ,
    hfd_fecha date not null ,
    hfd_codigo number not null ,
    hfd_nu_reg number not null ,
    hfd_monto number(16,2) not null ,
    hfd_mensual number(16,2) not null ,
    hfd_saldo number(16,2) not null ,
    hfd_corrida char(1),
    hfd_varios char(15)
  );
/
create table ADMIN.hfasigc 
  (
    hfa_catalogo number not null ,
    hfa_fecha date not null ,
    hfa_codigo number not null ,
    hfa_nu_reg number not null ,
    hfa_monto number(16,2) not null ,
    hfa_mensual number(16,2) not null ,
    hfa_saldo number(16,2) not null ,
    hfa_corrida char(1),
    hfa_varios char(15),
    constraint pk_hfasigc primary key (hfa_catalogo,hfa_fecha,hfa_codigo,hfa_nu_reg)  
  );
/
create table ADMIN.dlicen 
  (
    lic_catalogo number not null ,
    lic_grado number not null ,
    lic_situacion char(2) not null ,
    lic_depen number not null ,
    lic_fecha_ini date not null ,
    lic_fecha_fin date not null ,
    lic_observacion char(100),
    lic_orden char(7),
    lic_punto_ord number,
    lic_estado char(2),
    constraint pk_dlicen_catal primary key (lic_catalogo,lic_fecha_ini)  
  );
/
create table ADMIN.tusuar 
  (
    tusuario char(10) not null ,
    tnombre char(40) not null ,
    tdependencia char(15) not null ,
    tseccion char(15) not null ,
    ttiempo number(16,2) not null ,
    constraint pk_tusuar primary key (tusuario) 
  );
/
create table ADMIN.indice_dau 
  (
    id_nombre char(15) not null ,
    id_aplicacion char(3) not null ,
    id_tipo char(1) not null ,
    id_desc char(100),
    
    constraint ch_id_tipo check (id_tipo IN ('P' ,'R' ,'F' ,'E' )) ,
    
    constraint ck_id_aplicacion check (id_aplicacion IN ('PER' ,'SEG' ,'ORD' ,'LOG' ,'FIN' ,'OPE' )) ,
    constraint pk_indice_dua primary key (id_nombre)  
  );
/
create table ADMIN.eva_detalle 
  (
    det_evaluacion number,
    det_aspecto number not null ,
    det_linea number not null ,
    det_clobo char(75) not null ,
    constraint eva_detalle primary key (det_evaluacion,det_aspecto,det_linea) 
  );
/
create table ADMIN.accesos 
  (
    a_sistema char(20) not null ,
    a_subsistema char(20) not null ,
    a_catalogo number not null ,
    a_dependencia char(40) not null ,
    a_negociado char(40) not null ,
    a_plaza number not null ,
    a_puesto_actual char(40) not null ,
    a_catal_solic number not null ,
    a_fec_solic TIMESTAMP(0) not null ,
    a_catal_autor number not null ,
    a_catal_opero number not null ,
    a_fec_opero TIMESTAMP(0) not null ,
    a_servidor char(3) not null ,
    a_basedatos char(10) not null ,
    a_asunto char(25) not null ,
    a_nom_objeto char(25)
  );
/
create table ADMIN.rh_evaluacion 
  (
    eva_numero number not null ,
    eva_catalogo number not null ,
    eva_fec_evaluacion date not null ,
    eva_tiempo_total number not null ,
    eva_plaza number not null ,
    eva_tiempo_plaza number not null ,
    eva_ceom_efectua char(6) not null ,
    eva_evaluador number not null ,
    eva_tiempo_obser number not null ,
    eva_fisa number not null ,
    eva_rela number not null ,
    eva_moet number not null ,
    eva_educ number not null ,
    eva_total number not null ,
    eva_ofi_personal number not null ,
    eva_comandante number not null ,
    eva_categoria number not null ,
    constraint pk_rh_evaluacion primary key (eva_numero) 
  );
/
create table ADMIN.rh_aspecto 
  (
    asp_codigo number not null ,
    asp_tipo number not null ,
    asp_descripcion char(75) not null ,
    constraint pk_rh_aspecto primary key (asp_codigo) 
  );
/
create table ADMIN.rh_tipo_aspecto 
  (
    tip_codigo number not null ,
    tip_descripcion char(30) not null ,
    constraint pk_rh_tipo_aspecto primary key (tip_codigo) 
  );
/
create table ADMIN.rh_categoria 
  (
    cat_codigo number not null ,
    cat_descripcion char(25) not null ,
    cat_minimo number not null ,
    cat_maximo number not null ,
    constraint pk_rh_categoria primary key (cat_codigo)  
  );
/
create table ADMIN.rh_det_evaluacion 
  (
    det_evaluacion number not null ,
    det_aspecto number not null ,
    det_linea number not null ,
    det_clobo char(70),
    constraint pk_rh_det_evaluacion primary key (det_evaluacion,det_aspecto,det_linea) 
  );
/
create table ADMIN.aud_asamblea 
  (
    as_catalogo number,
    as_cantidad number,
    desp_as_catalogo number,
    desp_as_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_asig_cat 
  (
    asc_tipo char(1),
    asc_catalogo number,
    desp_asc_tipo char(1),
    desp_asc_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_asig_plaza 
  (
    asc_plaza number,
    desp_asc_plaza number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_categorias 
  (
    cat_codigo char(4),
    cat_descripcion char(30),
    desp_cat_codigo char(4),
    desp_cat_descripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cmm_rebajados 
  (
    reb_catalogo number,
    reb_fec_inicio date,
    reb_fec_final date,
    reb_diagnostico char(45),
    reb_tipo varchar2(250),
    reb_tiempo number,
    reb_grado number,
    reb_depen number,
    desp_reb_catalogo number,
    desp_reb_fec_inicio date,
    desp_reb_fec_final date,
    desp_reb_diagnostico char(45),
    desp_reb_tipo varchar2(250),
    desp_reb_tiempo number,
    desp_reb_grado number,
    desp_reb_depen number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_depmun 
  (
    dm_codigo char(4),
    dm_desc_lg char(30),
    dm_desc_md char(15),
    dm_desc_ct char(8),
    dm_mun_dep char(60),
    desp_dm_codigo char(4),
    desp_dm_desc_lg char(30),
    desp_dm_desc_md char(15),
    desp_dm_desc_ct char(8),
    desp_dm_mun_dep char(60),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_des_no_efec 
  (
    no_efec_catalogo number,
    no_efec_codigo number,
    no_efec_registro number,
    no_efec_fecha date,
    no_efec_cantidad number(16,2),
    no_efec_corrida char(1),
    desp_no_efec_catalogo number,
    desp_no_efec_codigo number,
    desp_no_efec_registro number,
    desp_no_efec_fecha date,
    desp_no_efec_cantidad number(16,2),
    desp_no_efec_corrida char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_descripciones 
  (
    cod_dependencia number,
    usu_upd_menu char(50),
    servidor char(25),
    mdibmp char(25),
    desp_cod_dependencia number,
    desp_usu_upd_menu char(50),
    desp_servidor char(25),
    desp_mdibmp char(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_eva_detalle 
  (
    det_evaluacion number,
    det_aspecto number,
    det_linea number,
    det_clobo char(75),
    desp_det_evaluacion number,
    desp_det_aspecto number,
    desp_det_linea number,
    desp_det_clobo char(75),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_disr 
  (
    isr_catalogo number,
    isr_cantidad number(16,2),
    desp_isr_catalogo number,
    desp_isr_cantidad number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.insp_tipos 
  (
    tip_codigo number not null ,
    tip_descct char(50),
    tip_descmd char(50),
    tip_desclg char(50),
    constraint pk_insp_tipos primary key (tip_codigo)  
  );
/
create table ADMIN.insp_situacion 
  (
    sit_codigo number not null ,
    sit_descct char(50),
    sit_descmd char(50),
    sit_desclg char(250),
    constraint pk_insp_situacion primary key (sit_codigo)  
  );
/
create table ADMIN.insp_nueva 
  (
    codigo number not null ,
    corta char(50),
    mediana char(50),
    larga char(50),
    host char(50),
    usuario char(50),
    date date,
    del number,
    constraint pk_insp_nueva primary key (codigo)  
  );
/
create table ADMIN.insp_ianota 
  (
    a_codigo number not null ,
    a_descripcion char(250),
    a_edif_terreno number,
    constraint pk_insp_ianota primary key (a_codigo)  
  );
/
create table ADMIN.insp_estado 
  (
    est_codigo number not null ,
    est_descct char(50),
    est_descmd char(50),
    est_desclg char(50),
    constraint pk_insp_estado primary key (est_codigo)  
  );
/
create table ADMIN.insp_anotaciones 
  (
    a_cat number not null ,
    a_anota number not null ,
    a_fecha date,
    a_si_no char(1),
    a_observaciones char(150),
    constraint pk_insp_anotaciones primary key (a_cat,a_anota,a_fecha)  
  );
/
create table ADMIN.aud_insp_nueva 
  (
    codigo number,
    corta char(50),
    mediana char(50),
    larga char(50),
    host char(50),
    usuarios char(50),
    date date,
    del number,
    desp_codigo number,
    desp_corta char(50),
    desp_mediana char(50),
    desp_larga char(50),
    desp_host char(50),
    desp_usuarios char(50),
    desp_date date,
    desp_del number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_insp_situacion 
  (
    sit_codigo number,
    sit_descct char(50),
    sit_descmd char(50),
    sit_desclg char(50),
    desp_sit_codigo number,
    desp_sit_descct char(50),
    desp_sit_descmd char(50),
    desp_sit_desclg char(50),
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.aud_insp_estado 
  (
    est_codigo number,
    est_descct char(50),
    est_descmd char(50),
    est_desclg char(50),
    desp_est_codigo number,
    desp_est_descct char(50),
    desp_est_descmd char(50),
    desp_est_desclg char(50),
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.aud_insp_tipos 
  (
    tip_codigo number,
    tip_descct char(50),
    tip_descmd char(50),
    tip_desclg char(50),
    desp_tip_codigo number,
    desp_tip_descct char(50),
    desp_tip_descmd char(50),
    desp_tip_desclg char(50),
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.aud_insp_anotaciones 
  (
    a_cat number,
    a_anota number,
    a_fecha date,
    a_si_no char(1),
    a_observaciones char(150),
    desp_a_cat number,
    desp_a_anota number,
    desp_a_fecha date,
    desp_a_si_no char(1),
    desp_a_observaciones char(150),
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.aud_insp_ianota 
  (
    a_codigo number,
    a_descripcion char(250),
    a_edif_terreno number,
    desp_a_codigo number,
    desp_a_descripcion char(250),
    desp_a_edif_terreno number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cc_tip_requerimiento 
  (
    tipcodigo number not null ,
    tipdescripcion char(30) not null ,
    constraint pk_cc_tip_requerimiento primary key (tipcodigo) 
  );
/
create table ADMIN.cc_divisiones 
  (
    divcodigo number not null ,
    divnombre char(50) not null ,
    divresponsable number not null ,
    constraint pk_cc_divisiones primary key (divcodigo) 
  );
/
create table ADMIN.cc_situaciones 
  (
    sitcodigo number not null ,
    sitdescripcion char(30) not null ,
    constraint pk_cc_situaciones primary key (sitcodigo) 
  );
/
create table ADMIN.cc_problemas 
  (
    procodigo number not null ,
    proproblema varchar2(180) not null ,
    prosolucion varchar2(180) not null ,
    constraint pk_cc_problemas primary key (procodigo) 
  );
/
create table ADMIN.aud_cc_divisiones 
  (
    divcodigo number,
    divnombre char(50),
    divresponsable number,
    desp_divcodigo number,
    desp_divnombre char(50),
    desp_divresponsable number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cc_problemas 
  (
    procodigo number,
    proproblema varchar2(180),
    prosolucion varchar2(180),
    desp_procodigo number,
    desp_proproblema varchar2(180),
    desp_prosolucion varchar2(180),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cc_situaciones 
  (
    sitcodigo number,
    sitdescripcion char(30),
    desp_sitcodigo number,
    desp_sitdescripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cc_tip_requerimiento 
  (
    tipcodigo number,
    tipdescripcion char(30),
    desp_tipcodigo number,
    desp_tipdescripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_inv 
  (
    dfdi_catalogo number,
    dfdi_codigo number,
    dfdi_nu_reg number,
    dfdi_cod_control number,
    dfdi_tipo_desc char(1),
    dfdi_fec_ini date,
    dfdi_ult_act date,
    dfdi_fec_cer date,
    dfdi_monto number(16,2),
    dfdi_saldo number(16,2),
    dfdi_mensual number(16,2),
    dfdi_tot_cuotas number,
    dfdi_num_cuotas number,
    dfdi_documen char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_juz_con char(50),
    dfdi_si_no char(1),
    desp_dfdi_catalogo number,
    desp_dfdi_codigo number,
    desp_dfdi_nu_reg number,
    desp_dfdi_cod_control number,
    desp_dfdi_tipo_desc char(1),
    desp_dfdi_fec_ini date,
    desp_dfdi_ult_act date,
    desp_dfdi_fec_cer date,
    desp_dfdi_monto number(16,2),
    desp_dfdi_saldo number(16,2),
    desp_dfdi_mensual number(16,2),
    desp_dfdi_tot_cuotas number,
    desp_dfdi_num_cuotas number,
    desp_dfdi_documen char(6),
    desp_dfdi_codeudor number,
    desp_dfdi_nom_bene char(50),
    desp_dfdi_juz_con char(50),
    desp_dfdi_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_invt 
  (
    dfdi_catalogo number,
    dfdi_codigo number,
    dfdi_nu_reg number,
    dfdi_cod_control number,
    dfdi_tipo_desc char(1),
    dfdi_fec_ini date,
    didi_ult_act date,
    dfdi_fec_cer date,
    dfdi_monto number(16,2),
    dfdi_saldo number(16,2),
    dfdi_mensual number(16,2),
    dfdi_tot_cuotas number,
    dfdi_num_cuotas number,
    dfdi_documen char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_juz_con char(50),
    dfdi_si_no char(1),
    desp_dfdi_catalogo number,
    desp_dfdi_codigo number,
    desp_dfdi_nu_reg number,
    desp_dfdi_cod_control number,
    desp_dfdi_tipo_desc char(1),
    desp_dfdi_fec_ini date,
    desp_didi_ult_act date,
    desp_dfdi_fec_cer date,
    desp_dfdi_monto number(16,2),
    desp_dfdi_saldo number(16,2),
    desp_dfdi_mensual number(16,2),
    desp_dfdi_tot_cuotas number,
    desp_dfdi_num_cuotas number,
    desp_dfdi_documen char(6),
    desp_dfdi_codeudor number,
    desp_dfdi_nom_bene char(50),
    desp_dfdi_juz_con char(50),
    desp_dfdi_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_ipm 
  (
    dfdp_catalogo number,
    dfdp_codigo number,
    dfdp_nu_reg number,
    dfdp_cod_control number,
    dfdp_tipo_desc char(1),
    dfdp_fec_ini date,
    dfdp_ult_act date,
    dfdp_fec_cer date,
    dfdp_monto number(16,2),
    dfdp_saldo number(16,2),
    dfdp_mensual number(16,2),
    dfdp_tot_cuotas number,
    dfdp_num_cuotas number,
    dfdp_documen char(6),
    dfdp_codeudor number,
    dfdp_nom_bene char(50),
    dfdp_juz_con char(50),
    dfdp_si_no char(1),
    desp_dfdp_catalogo number,
    desp_dfdp_codigo number,
    desp_dfdp_nu_reg number,
    desp_dfdp_cod_control number,
    desp_dfdp_tipo_desc char(1),
    desp_dfdp_fec_ini date,
    desp_dfdp_ult_act date,
    desp_dfdp_fec_cer date,
    desp_dfdp_monto number(16,2),
    desp_dfdp_saldo number(16,2),
    desp_dfdp_mensual number(16,2),
    desp_dfdp_tot_cuotas number,
    desp_dfdp_num_cuotas number,
    desp_dfdp_documen char(6),
    desp_dfdp_codeudor number,
    desp_dfdp_nom_bene char(50),
    desp_dfdp_juz_con char(50),
    desp_dfdp_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.insp_inmuebles 
  (
    i_catalogo number not null ,
    i_comando number not null ,
    i_tipo number,
    i_inventariada char(1) not null ,
    i_no_inventario number,
    i_nombre char(250),
    i_uso char(250),
    i_costo number(16,2),
    i_ubicacion char(250),
    i_estado number,
    i_situacion number,
    i_fecha_apertura date,
    i_observaciones char(255),
    i_folio number,
    i_nfinca number,
    i_libro char(50),
    i_extension char(80),
    i_fecaval date,
    constraint pk_insp_inmuebles primary key (i_catalogo)  
  );
/
create table ADMIN.aud_accesos 
  (
    a_sistema char(20),
    a_subsistema char(20),
    a_catalogo number,
    a_dependencia char(40),
    a_negociado char(40),
    a_plaza number,
    a_puesto_actual char(40),
    a_catal_solic number,
    a_fec_solic TIMESTAMP(0),
    a_catal_autor number,
    a_catal_opero number,
    a_fec_opero TIMESTAMP(0),
    a_servidor char(3),
    a_basedatos char(10),
    a_asunto char(25),
    a_nom_objeto char(25),
    desp_a_sistema char(20),
    desp_a_subsistema char(20),
    desp_a_catalogo number,
    desp_a_dependencia char(40),
    desp_a_negociado char(40),
    desp_a_plaza number,
    desp_a_puesto_actual char(40),
    desp_a_catal_solic number,
    desp_a_fec_solic TIMESTAMP(0),
    desp_a_catal_autor number,
    desp_a_catal_opero number,
    desp_a_fec_opero TIMESTAMP(0),
    desp_a_servidor char(3),
    desp_a_basedatos char(10),
    desp_a_asunto char(25),
    desp_a_nom_objeto char(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_chunk 
  (
    ch_id number,
    ch_dbspace number,
    ch_tamano number,
    ch_path char(20),
    ch_creacion date,
    desp_ch_id number,
    desp_ch_dbspace number,
    desp_ch_tamano number,
    desp_ch_path char(20),
    desp_ch_creacion date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cla_cond 
  (
    cla_codigo char(2),
    cla_descripcion char(30),
    desp_cla_codigo char(2),
    desp_cla_descripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_empresas 
  (
    em_catalogo number,
    em_codigo number,
    em_fecha date,
    em_monto number(16,2),
    em_mensual number(16,2),
    em_saldo number(16,2),
    em_control number,
    desp_em_catalogo number,
    desp_em_codigo number,
    desp_em_fecha date,
    desp_em_monto number(16,2),
    desp_em_mensual number(16,2),
    desp_em_saldo number(16,2),
    desp_em_control number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fbitacora 
  (
    fbit_user number,
    fbit_cod number,
    fbit_mes date,
    fbit_fecha date,
    desp_fbit_user number,
    desp_fbit_cod number,
    desp_fbit_mes date,
    desp_fbit_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fmasi 
  (
    mas_codigo number,
    mas_desc_ct char(8),
    mas_desc_md char(15),
    mas_desc_lg char(30),
    desp_mas_codigo number,
    desp_mas_desc_ct char(8),
    desp_mas_desc_md char(15),
    desp_mas_desc_lg char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fmdes 
  (
    mde_codigo number,
    mde_desc_ct char(8),
    mde_desc_md char(15),
    mde_desc_lg char(30),
    desp_mde_codigo number,
    desp_mde_desc_ct char(8),
    desp_mde_desc_md char(15),
    desp_mde_desc_lg char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fnosalta 
  (
    fcatalogo number,
    desp_fcatalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_fuerza 
  (
    f_dep number,
    f_grado number,
    f_total number,
    f_situa char(1),
    desp_f_dep number,
    desp_f_grado number,
    desp_f_total number,
    desp_f_situa char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hdareal 
  (
    hdr_catalogo number,
    hdr_cantidad number(16,2),
    desp_hdr_catalogo number,
    desp_hdr_cantidad number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hist_rep 
  (
    hr_numero number,
    hr_catalogo number,
    hr_terminal char(10),
    hr_fecha date,
    hr_hora char(8),
    hr_usuario char(30),
    hr_codigo char(10),
    desp_hr_numero number,
    desp_hr_catalogo number,
    desp_hr_terminal char(10),
    desp_hr_fecha date,
    desp_hr_hora char(8),
    desp_hr_usuario char(30),
    desp_hr_codigo char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_indice_dau 
  (
    id_nombre char(15),
    id_aplicacion char(3),
    id_tipo char(1),
    id_desc char(100),
    desp_id_nombre char(15),
    desp_id_aplicacion char(3),
    desp_id_tipo char(1),
    desp_id_desc char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.insp_observaciones 
  (
    obs_cod number not null ,
    obs_cat number not null ,
    obs_linea number,
    obs_desc char(100),
    constraint pk_insp_observaciones primary key (obs_cod) 
  );
/
create table ADMIN.aud_insp_observaciones 
  (
    obs_cod number,
    obs_cat number,
    obs_linea number,
    obs_desc char(100),
    desp_obs_cod number,
    desp_obs_cat number,
    desp_obs_linea number,
    desp_obs_desc char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lsm_equipo 
  (
    equi_cat number,
    equi_dep number,
    equi_art number,
    equi_serie char(45),
    equi_sit number,
    desp_equi_cat number,
    desp_equi_dep number,
    desp_equi_art number,
    desp_equi_serie char(45),
    desp_equi_sit number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lsm_marca 
  (
    marca_cod number,
    marca_desc char(45),
    desp_marca_cod number,
    desp_marca_desc char(45),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_maestro 
  (
    mae_ord_gen char(7),
    mae_clase char(1),
    desp_mae_ord_gen char(7),
    desp_mae_clase char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mcols 
  (
    mc_codigo number,
    mc_orden number,
    mc_descrip char(20),
    desp_mc_codigo number,
    desp_mc_orden number,
    desp_mc_descrip char(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mlins 
  (
    ml_codigo number,
    ml_puesto number,
    ml_descrip char(35),
    desp_ml_codigo number,
    desp_ml_puesto number,
    desp_ml_descrip char(35),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mnums 
  (
    mn_codigo number,
    mn_puesto number,
    mn_orden number,
    mn_dep number,
    mn_valor number,
    desp_mn_codigo number,
    desp_mn_puesto number,
    desp_mn_orden number,
    desp_mn_dep number,
    desp_mn_valor number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mreps 
  (
    mr_codigo number,
    mr_descrip char(60),
    mr_repo char(10),
    desp_mr_codigo number,
    desp_mr_descrip char(60),
    desp_mr_repo char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rh_aspecto 
  (
    asp_codigo number,
    asp_tipo number,
    asp_descripcion char(75),
    desp_asp_codigo number,
    desp_asp_tipo number,
    desp_asp_descripcion char(75),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rh_categoria 
  (
    cat_codigo number,
    cat_descripcion char(25),
    cat_minimo number,
    cat_maximo number,
    desp_cat_codigo number,
    desp_cat_descripcion char(25),
    desp_cat_minimo number,
    desp_cat_maximo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rh_det_evaluacion 
  (
    det_evaluacion number,
    det_aspecto number,
    det_linea number,
    det_clobo char(70),
    desp_det_evaluacion number,
    desp_det_aspecto number,
    desp_det_linea number,
    desp_det_clobo char(70),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rh_evaluacion 
  (
    eva_numero number,
    eva_catalogo number,
    eva_fec_evaluacion date,
    eva_tiempo_total number,
    eva_plaza number,
    eva_tiempo_plaza number,
    eva_ceom_efectua char(6),
    eva_evaluador number,
    eva_tiempo_obser number,
    eva_fisa number,
    eva_rela number,
    eva_moet number,
    eva_educ number,
    eva_total number,
    eva_ofi_personal number,
    eva_comandante number,
    eva_categoria number,
    desp_eva_numero number,
    desp_eva_catalogo number,
    desp_eva_fec_evaluacion date,
    desp_eva_tiempo_total number,
    desp_eva_plaza number,
    desp_eva_tiempo_plaza number,
    desp_eva_ceom_efectua char(6),
    desp_eva_evaluador number,
    desp_eva_tiempo_obser number,
    desp_eva_fisa number,
    desp_eva_rela number,
    desp_eva_moet number,
    desp_eva_educ number,
    desp_eva_total number,
    desp_eva_ofi_personal number,
    desp_eva_comandante number,
    desp_eva_categoria number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rh_tipo_aspecto 
  (
    tip_codigo number,
    tip_descripcion char(30),
    desp_tip_codigo number,
    desp_tip_descripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_noestan 
  (
    noe_catalogo number,
    desp_noe_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_nopagados 
  (
    catalogo number,
    desp_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_orden_h 
  (
    ord_catalogo number,
    ord_situacion char(2),
    ord_plaza number,
    ord_fecha_nomb date,
    ord_orden char(7),
    ord_punto number,
    ord_clase char(1),
    ord_sitrasla char(2),
    desp_ord_catalogo number,
    desp_ord_situacion char(2),
    desp_ord_plaza number,
    desp_ord_fecha_nomb date,
    desp_ord_orden char(7),
    desp_ord_punto number,
    desp_ord_clase char(1),
    desp_ord_sitrasla char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pdinero 
  (
    p_num number,
    p_num_desc char(30),
    desp_p_num number,
    desp_p_num_desc char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_permorden 
  (
    pero_usuario char(10),
    pero_programa char(10),
    pero_permiso number,
    desp_pero_usuario char(10),
    desp_pero_programa char(10),
    desp_pero_permiso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
  create table ADMIN.aud_process 
  (
    cod_process number,
    oper_process number,
    h_ini_process timestamp,
    comm_process char(15),
    desc_process char(45),
    h_fin_process timestamp,
    fec_process date,
    host_process char(10),
    cinta_process char(10),
    param_process number,
    desp_cod_process number,
    desp_oper_process number,
    desp_h_ini_process timestamp,
    desp_comm_process char(15),
    desp_desc_process char(45),
    desp_h_fin_process timestamp,
    desp_fec_process date,
    desp_host_process char(10),
    desp_cinta_process char(10),
    desp_param_process number,
    accion char(1) not null,
    usuario char(12) not null,
    hora TIMESTAMP(0) not null
  );

/
create table ADMIN.aud_retencion 
  (
    ret_catalogo number,
    ret_monto number(16,2),
    desp_ret_catalogo number,
    desp_ret_monto number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sinefecto 
  (
    catalogo number,
    orden char(8),
    usuarios char(12),
    desp_catalogo number,
    desp_orden char(8),
    desp_usuarios char(12),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sistemas 
  (
    sis_codigo char(3),
    sis_nombre char(20),
    desp_sis_codigo char(3),
    desp_sis_nombre char(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sitrasla 
  (
    sit_codigo char(2),
    sit_desc_lg char(40),
    sit_desc_ct char(12),
    desp_sit_codigo char(2),
    desp_sit_desc_lg char(40),
    desp_sit_desc_ct char(12),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_t_org 
  (
    torg_plaza number,
    torg_ceom char(6),
    torg_dependencia number,
    torg_jerarquia char(10),
    torg_grado number,
    torg_plaza_desc char(30),
    torg_situacion char(1),
    torg_cod_pago char(1),
    torg_hrs_trab number,
    torg_fec_ult_mod date,
    torg_ord_gral char(7),
    torg_dep_auto number,
    torg_docu_auto char(10),
    torg_fec_auto date,
    torg_nominas char(1),
    torg_usuario char(8),
    torg_fec_hora TIMESTAMP(0),
    torg_terminal char(20),
    torg_accion char(1),
    torg_catalogo number,
    desp_torg_plaza number,
    desp_torg_ceom char(6),
    desp_torg_dependencia number,
    desp_torg_jerarquia char(10),
    desp_torg_grado number,
    desp_torg_plaza_desc char(30),
    desp_torg_situacion char(1),
    desp_torg_cod_pago char(1),
    desp_torg_hrs_trab number,
    desp_torg_fec_ult_mod date,
    desp_torg_ord_gral char(7),
    desp_torg_dep_auto number,
    desp_torg_docu_auto char(10),
    desp_torg_fec_auto date,
    desp_torg_nominas char(1),
    desp_torg_usuario char(8),
    desp_torg_fec_hora TIMESTAMP(0),
    desp_torg_terminal char(20),
    desp_torg_accion char(1),
    desp_torg_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tablas 
  (
    tabla char(20),
    sistema char(3),
    llave_primaria char(32),
    llaves_foraneas char(50),
    descripcion char(50),
    desp_tabla char(20),
    desp_sistema char(3),
    desp_llave_primaria char(32),
    desp_llaves_foraneas char(50),
    desp_descripcion char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tconec 
  (
    dia char(8),
    tiempo number(16,2),
    usuarios char(10),
    dependencia char(15),
    seccion char(15),
    menu number,
    fecha date,
    desp_dia char(8),
    desp_tiempo number(16,2),
    desp_usuarios char(10),
    desp_dependencia char(15),
    desp_seccion char(15),
    desp_menu number,
    desp_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tauth 
  (
    usu_user char(8),
    usu_nombre char(40),
    desp_usu_user char(8),
    desp_usu_nombre char(40),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_telefonos 
  (
    tinstitucion number,
    tnombre char(50),
    tclase char(3),
    tnumero char(12),
    clobension char(5),
    desp_tinstitucion number,
    desp_tnombre char(50),
    desp_tclase char(3),
    desp_tnumero char(12),
    desp_clobension char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tempdpue 
  (
    pue_catalogo number,
    pue_grado number,
    pue_arma number,
    pue_dependencia number,
    pue_jerarquia char(3),
    pue_plaza number,
    pue_ceom char(6),
    pue_desc char(45),
    pue_situacion char(2),
    pue_fec_nomb date,
    pue_ord_gral char(7),
    pue_punto_og number,
    pue_fec_cese date,
    desp_pue_catalogo number,
    desp_pue_grado number,
    desp_pue_arma number,
    desp_pue_dependencia number,
    desp_pue_jerarquia char(3),
    desp_pue_plaza number,
    desp_pue_ceom char(6),
    desp_pue_desc char(45),
    desp_pue_situacion char(2),
    desp_pue_fec_nomb date,
    desp_pue_ord_gral char(7),
    desp_pue_punto_og number,
    desp_pue_fec_cese date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tr_armas 
  (
    tra_catalogo number,
    tra_num_arma char(20),
    tra_tipo char(10),
    tra_asignacion char(1),
    tra_situacion number,
    tra_plaza number,
    tra_fecha date,
    tra_accion number,
    tra_persona number,
    desp_tra_catalogo number,
    desp_tra_num_arma char(20),
    desp_tra_tipo char(10),
    desp_tra_asignacion char(1),
    desp_tra_situacion number,
    desp_tra_plaza number,
    desp_tra_fecha date,
    desp_tra_accion number,
    desp_tra_persona number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tusuar 
  (
    tusuario char(10),
    tnombre char(40),
    tdependencia char(15),
    tseccion char(15),
    ttiempo number(16,2),
    desp_tusuario char(10),
    desp_tnombre char(40),
    desp_tdependencia char(15),
    desp_tseccion char(15),
    desp_ttiempo number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_usuarios 
  (
    grantee number,
    tabauth char(9),
    tabname char(25),
    desp_grantee number,
    desp_tabauth char(9),
    desp_tabname char(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_usuarios_sistema 
  (
    usuarios char(15),
    nombre char(70),
    desp_usuarios char(15),
    desp_nombre char(70),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_usuariosnt 
  (
    catalogo char(10),
    observaciones char(30),
    desp_catalogo char(10),
    desp_observaciones char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_usumenu 
  (
    um_nombre char(50),
    um_cod_menu number,
    desp_um_nombre char(50),
    desp_um_cod_menu number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
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
    constraint pk_cc_dticket primary key (dtitransaccion,dtiorden) 
  );
/
create table ADMIN.cc_mticket 
  (
    mtitransaccion number not null ,
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
    accion char(1) not null ,
    usuario char(12) not null ,
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_insp_inmuebles 
  (
    i_catalogo number,
    i_comando number,
    i_tipo number,
    i_inventariada char(1),
    i_no_inventario number,
    i_nombre char(250),
    i_uso char(250),
    i_costo number(16,2),
    i_ubicacion char(250),
    i_estado number,
    i_situacion number,
    i_fecha_apertura date,
    i_observaciones char(255),
    i_folio number,
    i_nfinca number,
    i_libro char(50),
    i_extension char(80),
    i_fecaval date,
    desp_i_catalogo number,
    desp_i_comando number,
    desp_i_tipo number,
    desp_i_inventariada char(1),
    desp_i_no_inventario number,
    desp_i_nombre char(250),
    desp_i_uso char(250),
    desp_i_costo number(16,2),
    desp_i_ubicacion char(250),
    desp_i_estado number,
    desp_i_situacion number,
    desp_i_fecha_apertura date,
    desp_i_observaciones char(255),
    desp_i_folio number,
    desp_i_nfinca number,
    desp_i_libro char(50),
    desp_i_extension char(80),
    desp_i_fecaval date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.c_proposito 
  (
    prop_codigo number not null ,
    prop_desc char(100) not null ,
    constraint pk_c_proposito primary key (prop_codigo) 
  );
/
create table ADMIN.aud_c_proposito 
  (
    prop_codigo number,
    prop_desc char(100),
    desp_prop_codigo number,
    desp_prop_desc char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.c_empresas 
  (
    emp_codigo number not null ,
    emp_desc_lg char(40) not null ,
    emp_desc_md char(20) not null ,
    emp_desc_ct char(10) not null ,
    primary key (emp_codigo) 
  );
/
create table ADMIN.aud_c_empresas 
  (
    emp_codigo number,
    emp_desc_lg char(40),
    emp_desc_md char(20),
    emp_desc_ct char(10),
    desp_emp_codigo number,
    desp_emp_desc_lg char(40),
    desp_emp_desc_md char(20),
    desp_emp_desc_ct char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_oficinas 
  (
    of_codigo number,
    of_dep number,
    of_desc char(70),
    desp_of_codigo number,
    desp_of_dep number,
    desp_of_desc char(70),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_tipo_docum 
  (
    tipo_codigo number,
    tipo_desc char(30),
    desp_tipo_codigo number,
    desp_tipo_desc char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_corr_seg 
  (
    seg_usuario number,
    seg_passwd char(10),
    seg_dep number,
    seg_oficina number,
    desp_seg_usuario number,
    desp_seg_passwd char(10),
    desp_seg_dep number,
    desp_seg_oficina number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pcdtablr 
  (
    prodid char(8),
    line_no number,
    tabname char(18),
    desp_prodid char(8),
    desp_line_no number,
    desp_tabname char(18),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_armas 
  (
    arm_codigo number,
    arm_desc_lg char(30),
    arm_desc_md char(15),
    arm_desc_ct char(8),
    desp_arm_codigo number,
    desp_arm_desc_lg char(30),
    desp_arm_desc_md char(15),
    desp_arm_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_asignaciones 
  (
    asig_codigo number,
    asig_desc_lg char(30),
    asig_desc_ct char(10),
    desp_asig_codigo number,
    desp_asig_desc_lg char(30),
    desp_asig_desc_ct char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_banderas 
  (
    ban_aplicacion char(1),
    ban_codigo number,
    ban_fecha date,
    desp_ban_aplicacion char(1),
    desp_ban_codigo number,
    desp_ban_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cond 
  (
    con_codigo number,
    con_desc_lg char(250),
    con_clase char(2),
    con_pais number,
    con_creditos number(5,2),
    con_tipo_fund char(2),
    con_fundamento varchar2(100),
    desp_con_codigo number,
    desp_con_desc_lg char(250),
    desp_con_clase char(2),
    desp_con_pais number,
    desp_con_creditos number(5,2),
    desp_con_tipo_fund char(2),
    desp_con_fundamento varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cursos 
  (
    cur_codigo number,
    cur_desc_lg char(45),
    cur_tipo char(1),
    desp_cur_codigo number,
    desp_cur_desc_lg char(45),
    desp_cur_tipo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dep_mun 
  (
    dm_codigo char(4),
    dm_desc_lg char(30),
    dm_desc_md char(15),
    dm_desc_ct char(8),
    desp_dm_codigo char(4),
    desp_dm_desc_lg char(30),
    desp_dm_desc_md char(15),
    desp_dm_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_descuentos 
  (
    desc_codigo number,
    desc_desc_lg char(30),
    desc_desc_ct char(8),
    desc_prioridad number,
    desc_pressobre number,
    desc_ordenvale number,
    desp_desc_codigo number,
    desp_desc_desc_lg char(30),
    desp_desc_desc_ct char(8),
    desp_desc_prioridad number,
    desp_desc_pressobre number,
    desp_desc_ordenvale number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dlicen 
  (
    lic_catalogo number,
    lic_grado number,
    lic_situacion char(2),
    lic_depen number,
    lic_fecha_ini date,
    lic_fecha_fin date,
    lic_observacion char(100),
    lic_orden char(7),
    lic_punto_ord number,
    lic_estado char(2),
    desp_lic_catalogo number,
    desp_lic_grado number,
    desp_lic_situacion char(2),
    desp_lic_depen number,
    desp_lic_fecha_ini date,
    desp_lic_fecha_fin date,
    desp_lic_observacion char(100),
    desp_lic_orden char(7),
    desp_lic_punto_ord number,
    desp_lic_estado char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_escuelas 
  (
    esc_codigo number,
    esc_desc_lg char(30),
    esc_desc_md char(15),
    esc_desc_ct char(8),
    desp_esc_codigo number,
    desp_esc_desc_lg char(30),
    desp_esc_desc_md char(15),
    desp_esc_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_evaluacion 
  (
    eva_catalogo number,
    eva_fecha date,
    eva_grado number,
    eva_plaza number,
    eva_te char(8),
    eva_tp char(8),
    eva_cat_ev number,
    desp_eva_catalogo number,
    desp_eva_fecha date,
    desp_eva_grado number,
    desp_eva_plaza number,
    desp_eva_te char(8),
    desp_eva_tp char(8),
    desp_eva_cat_ev number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_grados 
  (
    gra_codigo number,
    gra_desc_lg char(30),
    gra_desc_md char(15),
    gra_desc_ct char(8),
    gra_asc number,
    gra_tiempo number,
    gra_clase char(1),
    desp_gra_codigo number,
    desp_gra_desc_lg char(30),
    desp_gra_desc_md char(15),
    desp_gra_desc_ct char(8),
    desp_gra_asc number,
    desp_gra_tiempo number,
    desp_gra_clase char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_marginado 
  (
    codigo number,
    documento number,
    marginado char(2),
    quien number,
    fecha date,
    enterado char(1),
    desp_codigo number,
    desp_documento number,
    desp_marginado char(2),
    desp_quien number,
    desp_fecha date,
    desp_enterado char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mdep 
  (
    dep_llave number,
    dep_desc_lg char(75),
    dep_desc_md char(35),
    dep_desc_ct char(15),
    dep_clase char(1),
    dep_precio char(1),
    dep_ejto char(1),
    desp_dep_llave number,
    desp_dep_desc_lg char(75),
    desp_dep_desc_md char(35),
    desp_dep_desc_ct char(15),
    desp_dep_clase char(1),
    desp_dep_precio char(1),
    desp_dep_ejto char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_menu_det 
  (
    md_menu number,
    md_orden number(8,2),
    md_opcion char(45),
    md_ejecuta char(80),
    desp_md_menu number,
    desp_md_orden number(8,2),
    desp_md_opcion char(45),
    desp_md_ejecuta char(80),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_menu_master 
  (
    mm_menu number,
    mm_descrip char(80),
    desp_mm_menu number,
    desp_mm_descrip char(80),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_menus 
  (
    mnu_codigo number,
    mnu_descripcion char(100),
    mnu_opcion char(100),
    desp_mnu_codigo number,
    desp_mnu_descripcion char(100),
    desp_mnu_opcion char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_meom 
  (
    meom_ceom char(6),
    meom_desc_lg char(35),
    meom_desc_md char(27),
    meom_desc_ct char(16),
    meom_serie char(3),
    meom_nivel number,
    meom_situacion number,
    desp_meom_ceom char(6),
    desp_meom_desc_lg char(35),
    desp_meom_desc_md char(27),
    desp_meom_desc_ct char(16),
    desp_meom_serie char(3),
    desp_meom_nivel number,
    desp_meom_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_meop 
  (
    meom_ceom char(6),
    meom_desc_lg char(35),
    meom_desc_md char(27),
    meom_desc_ct char(16),
    meom_serie char(3),
    meom_nivel number,
    desp_meom_ceom char(6),
    desp_meom_desc_lg char(35),
    desp_meom_desc_md char(27),
    desp_meom_desc_ct char(16),
    desp_meom_serie char(3),
    desp_meom_nivel number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mfdep 
  (
    mfd_llave number,
    mfd_descripcion char(30),
    desp_mfd_llave number,
    desp_mfd_descripcion char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mfsub 
  (
    sub_dep number,
    sub_prog char(20),
    sub_grupo number,
    desp_sub_dep number,
    desp_sub_prog char(20),
    desp_sub_grupo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mfsue_e 
  (
    sue_grado number,
    sue_serie char(1),
    sue_nivel number,
    sue_sueldo number(16,2),
    sue_prima number(16,2),
    desp_sue_grado number,
    desp_sue_serie char(1),
    desp_sue_nivel number,
    desp_sue_sueldo number(16,2),
    desp_sue_prima number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mfsue_o 
  (
    mfs_grado number,
    mfs_arma number,
    mfs_bienal number,
    mfs_sueldo number(16,2),
    mfs_prima number(16,2),
    desp_mfs_grado number,
    desp_mfs_arma number,
    desp_mfs_bienal number,
    desp_mfs_sueldo number(16,2),
    desp_mfs_prima number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oficina 
  (
    of_dep number,
    of_codigo char(4),
    of_desc char(70),
    desp_of_dep number,
    desp_of_codigo char(4),
    desp_of_desc char(70),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_paises 
  (
    pai_codigo number,
    pai_desc_lg char(30),
    desp_pai_codigo number,
    desp_pai_desc_lg char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_parentescos 
  (
    par_codigo number,
    par_desc_md char(15),
    par_desc_ct char(8),
    desp_par_codigo number,
    desp_par_desc_md char(15),
    desp_par_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pbienal 
  (
    catalogo number,
    bienal1 number,
    bienal2 number,
    bienal3 number,
    desp_catalogo number,
    desp_bienal1 number,
    desp_bienal2 number,
    desp_bienal3 number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_permisos 
  (
    perm_usuario char(10),
    perm_programa char(20),
    perm_permiso number,
    desp_perm_usuario char(10),
    desp_perm_programa char(20),
    desp_perm_permiso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_permper 
  (
    perm_usuario char(10),
    perm_programa char(20),
    perm_permiso number,
    desp_perm_usuario char(10),
    desp_perm_programa char(20),
    desp_perm_permiso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_permtropa 
  (
    pert_usuario char(10),
    pert_programa char(20),
    pert_permiso number,
    desp_pert_usuario char(10),
    desp_pert_programa char(20),
    desp_pert_permiso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_situaciones 
  (
    sit_codigo char(2),
    sit_desc_lg char(40),
    sit_desc_md char(25),
    sit_desc_ct char(15),
    desp_sit_codigo char(2),
    desp_sit_desc_lg char(40),
    desp_sit_desc_md char(25),
    desp_sit_desc_ct char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tipo_docum 
  (
    tipo_codigo number,
    tipo_desc char(30),
    desp_tipo_codigo number,
    desp_tipo_desc char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tropa_pv 
  (
    tpv_plaza number,
    tpv_fec_trans date,
    tpv_catalogo number,
    tpv_operador char(8),
    desp_tpv_plaza number,
    desp_tpv_fec_trans date,
    desp_tpv_catalogo number,
    desp_tpv_operador char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tropa_sp 
  (
    tsp_catalogo number,
    tsp_plaza number,
    tsp_fec_nomb date,
    tsp_fec_trans date,
    tsp_operador char(8),
    tsp_grado number,
    desp_tsp_catalogo number,
    desp_tsp_plaza number,
    desp_tsp_fec_nomb date,
    desp_tsp_fec_trans date,
    desp_tsp_operador char(8),
    desp_tsp_grado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_tsan 
  (
    tsan_codigo number,
    tsan_descripcion char(80),
    tsan_tiempo number,
    tsan_posterga number,
    tsan_suspension number,
    desp_tsan_codigo number,
    desp_tsan_descripcion char(80),
    desp_tsan_tiempo number,
    desp_tsan_posterga number,
    desp_tsan_suspension number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_jefes 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(200),
    despues1 char(12),
    despues2 char(12),
    despues3 char(200),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_corr_seg 
  (
    antes1 char(12),
    antes2 char(12),
    antes3 char(12),
    antes4 char(12),
    despues1 char(12),
    despues2 char(12),
    despues3 char(12),
    despues4 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_sand 
  (
    ant_dsan_tran number,
    ant_dsan_linea number,
    ant_dsan_clobo char(70),
    nue_dsan_tran number,
    nue_dsan_linea number,
    nue_dsan_clobo char(70),
    usuario char(8) not null ,
    hora TIMESTAMP(0) not null ,
    accion char(2) not null ,
    terminal char(9) not null 
  );
/
create table ADMIN.c_oficinas 
  (
    of_codigo number not null ,
    of_dep number not null ,
    of_desc char(70),
    constraint pk_c_oficinas primary key (of_codigo,of_dep) 
  );
/
create table ADMIN.c_tipo_docum 
  (
    tipo_codigo number not null ,
    tipo_desc char(30) not null ,
    constraint pk_c_tipo_docum primary key (tipo_codigo) 
  );
/
create table ADMIN.r_papel 
  (
    p_codigo number not null ,
    p_desc_ct char(15) not null ,
    p_desc_lg char(30) not null ,
    constraint pk_r_papel primary key (p_codigo) 
  );
/
create table ADMIN.r_programas 
  (
    prog_codigo number not null ,
    prog_fuente char(12) not null ,
    prog_desc char(60) not null ,
    prog_sistema number not null ,
    constraint pk_r_programas primary key (prog_codigo) 
  );
/
create table ADMIN.aud_r_programas 
  (
    prog_codigo number,
    prog_fuente char(12),
    prog_desc char(50),
    prog_sistema number,
    desp_prog_codigo number,
    desp_prog_fuente char(12),
    desp_prog_desc char(50),
    desp_prog_sistema number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_r_papel 
  (
    p_codigo number,
    p_desc_ct char(15),
    p_desc_lg char(30),
    desp_p_codigo number,
    desp_p_desc_ct char(15),
    desp_p_desc_lg char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_r_det_requerimientos 
  (
    dre_requerimiento number,
    dre_correlativo number,
    dre_numprog number,
    dre_clapapel number,
    dre_copias number,
    dre_paginas number,
    desp_dre_requerimiento number,
    desp_dre_correlativo number,
    desp_dre_numprog number,
    desp_dre_clapapel number,
    desp_dre_copias number,
    desp_dre_paginas number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.economato 
  (
    eco_catalogo number not null ,
    eco_mensual number(16,2) not null ,
    eco_num number not null ,
    eco_control char(1),
    eco_tipo char(1),
    constraint pk_economato primary key (eco_catalogo,eco_num)  
  );
/
create table ADMIN.aud_f_hreal 
  (
    hr_catalogo number,
    hr_mensual number(16,2),
    hr_saldo number(16,2),
    hr_control char(1),
    desp_hr_catalogo number,
    desp_hr_mensual number(16,2),
    desp_hr_saldo number(16,2),
    desp_hr_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.r_requerimientos 
  (
    req_codigo number not null ,
    req_numdoc char(20) not null ,
    req_solicita number not null ,
    req_destino number not null ,
    req_sistema number not null ,
    req_fecha TIMESTAMP(0) not null ,
    constraint pk_r_requerimientos primary key (req_codigo) 
  );
/
create table ADMIN.aud_r_requerimientos 
  (
    req_codigo number,
    req_numdoc char(20),
    req_solicita number,
    req_destino number,
    req_sistema number,
    req_fecha TIMESTAMP(0),
    desp_req_codigo number,
    desp_req_numdoc char(20),
    desp_req_solicita number,
    desp_req_destino number,
    desp_req_sistema number,
    desp_req_fecha TIMESTAMP(0),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.r_det_req 
  (
    dre_requerimiento number not null ,
    dre_correlativo number not null ,
    dre_nomprog number not null ,
    dre_clapapel number not null ,
    dre_copias number not null ,
    dre_paginas number not null ,
    constraint pk_r_det_req primary key (dre_requerimiento,dre_correlativo) 
  );
/
create table ADMIN.aud_vocales 
  (
    voc_codigo number,
    voc_desc_lg char(30),
    voc_desc_md char(20),
    voc_desc_ct char(10),
    desp_voc_codigo number,
    desp_voc_desc_lg char(30),
    desp_voc_desc_md char(20),
    desp_voc_desc_ct char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vocales 
  (
    voc_codigo number not null ,
    voc_desc_lg char(30) not null ,
    voc_desc_md char(20) not null ,
    voc_desc_ct char(10) not null ,
    constraint pk_vocales primary key (voc_codigo) 
  );
/
create table ADMIN.usuapli 
  (
    usuario char(32),
    tabla varchar2(128),
    permisos char(9),
    sistema char(3)
  );
/
create table ADMIN.c_control 
  (
    c_codigo char(6) not null ,
    c_nombre char(20) not null 
  );
/
create table ADMIN.aud_usu_opera 
  (
    usu_catalogo char(50),
    usu_codigo number,
    desp_usu_catalogo char(50),
    desp_usu_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opera_menu 
  (
    om_codigo number,
    om_descripcion char(100),
    om_opcion char(100),
    desp_om_codigo number,
    desp_om_descripcion char(100),
    desp_om_opcion char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opera_menu 
  (
    om_codigo number not null ,
    om_descripcion char(100),
    om_opcion char(100),
    primary key (om_codigo) 
  );
/
create table ADMIN.usu_opera 
  (
    usu_catalogo char(50) not null ,
    usu_codigo number,
    constraint pk_usu_opera primary key (usu_catalogo,usu_codigo) 
  );
/
create table ADMIN.co_mper 
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
    
    constraint ck_per_ced_ord check (per_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'�-15' ,'O-16' ,'P-17' ,'Q-18' ,'&-15' ,'�-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99' )) ,
    
    constraint ck_per_est_civil check (per_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    
    constraint ck_per_sexo check (per_sexo IN ('M' ,'F' )),
    
    constraint ck_per_afil_ipm check (per_afil_ipm IN ('0' ,'1' ,'2' )),
    
    constraint ck_per_sangre check (per_sangre IN ('O+' ,'O-' ,'A+' ,'A-' ,'AB+' ,'AB-' ,'B+' ,'B-' ,'P' )),
    constraint pk_co_mper primary key (per_catalogo)  
  );
/
create table ADMIN.aud_co_mper 
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
create table ADMIN.aud_sysmenus 
  (
    menuname char(18),
    title char(60),
    desp_menuname char(18),
    desp_title char(60),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.diagnosticos 
  (
    d_codigo number,
    d_descrip char(35),
    constraint pk_diagnosticos primary key (d_codigo) 
  );
/
create table ADMIN.aud_diagnosticos 
  (
    d_codigo number,
    d_descrip char(35),
    desp_d_codigo number,
    desp_d_descrip char(35),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ingreso 
  (
    numero number,
    catalogo number,
    dep number,
    entro date,
    horas char(15),
    desp_numero number,
    desp_catalogo number,
    desp_dep number,
    desp_entro date,
    desp_hora char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_busqueda 
  (
    ingreso number,
    cant number,
    busco number,
    desp_ingreso number,
    desp_cant number,
    desp_busco number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluaciones_ant 
  (
    e_catalogo number not null ,
    e_evaluacion number not null ,
    e_edad number,
    e_peso number,
    e_talla number(3,2),
    e_imc number(4,2),
    e_diagnost number,
    e_ref_dd char(1),
    e_fecha date,
    e_asist_dd char(1),
    constraint pk_evaluaciones_ant primary key (e_catalogo,e_evaluacion) 
  );
/
create table ADMIN.aud_documento 
  (
    antes1 number,
    antes2 number,
    antes3 char(20),
    antes4 char(1),
    antes5 char(100),
    antes6 date,
    antes7 date,
    antes8 number,
    antes9 number,
    antes10 number,
    antes11 char(1),
    antes12 char(50),
    antes13 number,
    antes14 number,
    antes15 number,
    antes16 char(1),
    antes17 char(20),
    despues1 number,
    despues2 number,
    despues3 char(20),
    despues4 char(1),
    despues5 char(100),
    despues6 date,
    despues7 date,
    despues8 number,
    despues9 number,
    despues10 number,
    despues11 char(1),
    despues12 char(50),
    despues13 number,
    despues14 number,
    despues15 number,
    despues16 char(1),
    despues17 char(20),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_ubica_docum 
  (
    antes1 char(8),
    antes2 char(12),
    antes3 char(35),
    antes4 char(12),
    antes5 char(12),
    antes6 char(1),
    antes7 char(100),
    antes8 char(12),
    antes9 char(8),
    antes10 char(8),
    antes11 char(20),
    antes12 char(1),
    antes13 char(12),
    antes14 char(8),
    despues1 char(8),
    despues2 char(12),
    despues3 char(35),
    despues4 char(12),
    despues5 char(12),
    despues6 char(1),
    despues7 char(100),
    despues8 char(12),
    despues9 char(8),
    despues10 char(8),
    despues11 char(20),
    despues12 char(1),
    despues13 char(12),
    despues14 char(8),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_msan 
  (
    ant_san_catalogo number,
    ant_san_tran number,
    ant_san_grado number,
    ant_san_sancion number,
    ant_san_tiempo number,
    ant_san_fec_inicio date,
    ant_san_depen number,
    ant_san_ord_gral char(7),
    ant_san_fec_og date,
    ant_san_punto_og char(4),
    ant_san_estado char(2),
    nue_catalogo number,
    nue_san_tran number,
    nue_san_grado number,
    nue_san_sancion number,
    nue_san_tiempo number,
    nue_san_fec_inicio date,
    nue_san_depen number,
    nue_san_ord_gral char(7),
    nue_san_fec_og date,
    nue_san_punto_og char(4),
    nue_san_estado char(2),
    usuario char(8),
    hora TIMESTAMP(0) not null ,
    accion char(2) not null ,
    terminal char(9) not null 
  );
/
create table ADMIN.resofi 
  (
    res_nomina char(1),
    res_partida char(1),
    res_fecha date,
    res_unidad char(5),
    res_subprog char(2),
    res_sueldo number(16,2),
    res_bienal number(16,2),
    res_respon number(16,2),
    res_emerg number(16,2),
    res_repres number(16,2),
    res_profes number(16,2),
    res_constru number(16,2),
    res_tot_nomi number(16,2),
    res_ipm number(16,2),
    res_montepio number(16,2),
    res_fianza number(16,2),
    res_devengado number(16,2),
    res_descuentos number(16,2),
    res_liquido number(16,2),
    res_bon_662000 number(16,2),
    res_pri_prof_mil number(16,2),
    res_depen number
  );
/
create table ADMIN.descripciones 
  (
    cod_dependencia number not null ,
    usu_upd_menu char(50) not null ,
    servidor char(25) not null ,
    mdibmp char(25) not null 
  );
/
create table ADMIN.f_hfag 
  (
    fag_catalogo number,
    fag_codigo number,
    fag_monto number(16,2),
    constraint pk_f_hfag primary key (fag_catalogo) 
  );
/
create table ADMIN.aud_f_hfag 
  (
    fag_catalogo number,
    fag_codigo number,
    fag_monto number(16,2),
    desp_fag_catalogo number,
    desp_fag_codigo number,
    desp_fag_monto number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.hfasig 
  (
    hfa_catalogo number not null ,
    hfa_fecha date not null ,
    hfa_prog char(20) not null ,
    hfa_grupo number not null ,
    hfa_clase char(1) not null ,
    hfa_grado number not null ,
    hfa_arma number not null ,
    hfa_sexo char(1) not null ,
    hfa_plaza number not null ,
    hfa_desc_empleo char(45) not null ,
    hfa_ceom char(6) not null ,
    hfa_jerarquia char(12),
    hfa_hrs_trab number not null ,
    hfa_ord_gral char(7) not null ,
    hfa_bienal number not null ,
    hfa_depen number not null ,
    hfa_sueldo number(16,2) not null ,
    hfa_bon_bienal number(8,2) not null ,
    hfa_prima_resp number(8,2) not null ,
    hfa_prima_esp number(8,2) not null ,
    hfa_gastos_rep number(8,2) not null ,
    hfa_bon_emerg number(8,2),
    hfa_dividendos number(8,2) not null ,
    hfa_aguinaldo number(8,2) not null ,
    hfa_bono_vac number(8,2) not null ,
    hfa_bono_14 number(8,2) not null ,
    hfa_bono_trans number(8,2) not null ,
    hfa_prima_ing number(8,2) not null ,
    hfa_prima_prof number(8,2) not null ,
    hfa_ipm number(8,2) not null ,
    hfa_montepio number(8,2) not null ,
    hfa_fianza number(8,2) not null ,
    hfa_hos_mil number(8,2) not null ,
    hfa_club_ofi number(8,2) not null ,
    hfa_club_esp number(8,2) not null ,
    hfa_liquido number(8,2) not null ,
    hfa_corrida char(1),
    hfa_unidad number,
    hfa_complemento number(8,2),
    hfa_cuenta char(20),
    hfa_prima_ext number(8,2),
    hfa_bono_ali number(8,2),
    constraint pk_hfasig primary key (hfa_catalogo,hfa_fecha)  
  );
/
create table ADMIN.hfdes 
  (
    hfd_catalogo number not null ,
    hfd_fecha date not null ,
    hfd_codigo number not null ,
    hfd_nu_reg number not null ,
    hfd_monto number(16,2) not null ,
    hfd_mensual number(16,2) not null ,
    hfd_saldo number(16,2) not null ,
    hfd_corrida char(1),
    hfd_varios char(15),
    constraint pk_hfdes primary key (hfd_catalogo,hfd_fecha,hfd_codigo,hfd_nu_reg) 
  );
/
create table ADMIN.aud_f_bac 
  (
    bac_prestamo char(11),
    bac_catalogo number,
    bac_nombre char(40),
    bac_monto number(16,2),
    bac_cuota number(16,2),
    bac_saldo number(16,2),
    bac_intereses number(16,2),
    bac_si_no char(1),
    bac_cod_1_2 number,
    desp_bac_prestamo char(11),
    desp_bac_catalogo number,
    desp_bac_nombre char(40),
    desp_bac_monto number(16,2),
    desp_bac_cuota number(16,2),
    desp_bac_saldo number(16,2),
    desp_bac_intereses number(16,2),
    desp_bac_si_no char(1),
    desp_bac_cod_1_2 number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_amt 
  (
    amt_catalogo number,
    amt_codigo number,
    amt_fecha date,
    amt_fact char(8),
    amt_monto number(16,2),
    amt_si_no char(1),
    desp_amt_catalogo number,
    desp_amt_codigo number,
    desp_amt_fecha date,
    desp_amt_fact char(8),
    desp_amt_monto number(16,2),
    desp_amt_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_icombus 
  (
    com_codigo number,
    com_desc char(30),
    desp_com_codigo number,
    desp_com_desc char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.icombus 
  (
    com_codigo number not null ,
    com_desc char(30) not null ,
    constraint pk_icombus primary key (com_codigo) 
  );
/
create table ADMIN.icorep 
  (
    rep_numero number not null ,
    rep_depen number not null ,
    rep_fecha date not null ,
    rep_fecha_del date not null ,
    rep_fecha_al date not null ,
    contraint pk_icorep primary key (rep_numero) 
  );
/
create table ADMIN.icobsrep 
  (
    obs_numero number not null ,
    obs_linea number not null ,
    obs_clobo char(65),
    constraint icobsrep primary key (obs_numero,obs_linea) 
  );
/
create table ADMIN.aud_icorep 
  (
    rep_numero number,
    rep_depen number,
    rep_fecha date,
    rep_fecha_del date,
    rep_fecha_al date,
    desp_rep_numero number,
    desp_rep_depen number,
    desp_rep_fecha date,
    desp_rep_fecha_del date,
    desp_rep_fecha_al date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_icodetrep 
  (
    dr_numero number,
    dr_comb number,
    dr_sasede number,
    dr_sabm number,
    dr_isede number,
    dr_ibm number,
    dr_esede number,
    dr_emb number,
    dr_evap number,
    dr_doc char(20),
    dr_ssede number,
    dr_sbm number,
    desp_dr_numero number,
    desp_dr_comb number,
    desp_dr_sasede number,
    desp_dr_sabm number,
    desp_dr_isede number,
    desp_dr_ibm number,
    desp_dr_esede number,
    desp_dr_emb number,
    desp_dr_evap number,
    desp_dr_doc char(20),
    desp_dr_ssede number,
    desp_dr_sbm number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_icobsrep 
  (
    obs_numero number,
    obs_linea number,
    obs_clobo char(65),
    desp_obs_numero number,
    desp_obs_linea number,
    desp_obs_clobo char(65),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.icodetrep 
  (
    dr_numero number not null ,
    dr_comb number not null ,
    dr_sasede number,
    dr_sabm number,
    dr_isede number,
    dr_ibm number,
    dr_esede number,
    dr_emb number,
    dr_evap number,
    dr_doc char(20),
    dr_ssede number,
    dr_sbm number,
    constraint pk_icodetrep primary key (dr_numero,dr_comb) 
  );
/
create table ADMIN.chn 
  (
    cat number,
    codigo number,
    be char(20),
    chn char(20)
  );
/
create table ADMIN.aud_chn 
  (
    cat number,
    codigo number,
    be char(20),
    chn char(20),
    desp_cat number,
    desp_codigo number,
    desp_be char(20),
    desp_chn char(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fceom 
  (
    fc_catalogo number,
    fc_plaza number,
    fc_ceom char(6),
    constraint pk_fceom primary key (fc_catalogo) 
  );
/
create table ADMIN.aud_fceom 
  (
    fc_catalogo number,
    fc_plaza number,
    fc_ceom char(6),
    desp_fc_catalogo number,
    desp_fc_plaza number,
    desp_fc_ceom char(6),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.asigna 
  (
    a_catalogo number,
    a_sueldo number(16,2),
    a_bienal number(8,2),
    a_prima_resp number(8,2),
    a_prima_esp number(16,8),
    a_gastos_rep number(8,2),
    a_bon_emerg number(8,2),
    a_dividendos number(8,2),
    a_aguinaldo number(16,2),
    a_bono_vac number(8,2),
    a_bono14 number(16,2),
    a_bono_trans number(8,2),
    a_prima_ing number(8,2),
    a_prima_prof number(8,2),
    a_complemento number(8,2),
    a_prima_ext number(8,2),
    a_bono_ali number(8,2),
    a_docencia number(8,2),
    a_kaibil number(8,2),
    a_salto number(8,2),
    a_662000 number(8,2),
    a_clase3 number(8,2),
    a_ppm number(8,2),
    a_riesgo number(8,2)
  );
/
create table ADMIN.ftempo 
  (
    fplaza number,
    fceom char(6),
    constraint  pk_ftempo primary key (fplaza) 
  );
/
create table ADMIN.aud_ftempo 
  (
    f_plaza number,
    fceom char(6),
    desp_f_plaza number,
    desp_fceom char(6),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_mulfar 
  (
    mf_catalogo number,
    mf_mensual number(16,2),
    mf_fact number,
    mf_control char(1),
    desp_mf_catalogo number,
    desp_mf_mensual number(16,2),
    desp_mf_fact number,
    desp_mf_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_mulfar 
  (
    mf_catalogo number not null ,
    mf_mensual number(16,2),
    mf_fact number not null ,
    mf_control char(1),
    contraint pk_f_mulfar primary key (mf_catalogo,mf_fact) 
  );
/
create table ADMIN.aud_yakis 
  (
    catalogo number,
    serie char(8),
    grado number,
    arma number,
    nom1 char(15),
    nom2 char(15),
    ape1 char(15),
    ape2 char(15),
    ape3 char(15),
    ced_ord char(4),
    ced_reg number,
    fec_ext_ced char(20),
    ext_ced_lugar char(4),
    est_civil char(1),
    direccion char(50),
    zona number,
    dir_lugar char(4),
    telefono number,
    sexo char(1),
    fec_nac char(20),
    nac_lugar char(4),
    promocion number,
    afil_ipm char(1),
    sangre char(3),
    antiguedad number,
    bienal number,
    plaza number,
    desc_empleo char(45),
    fec_nomb char(20),
    ord_gral char(7),
    punto_og number,
    situacion char(2),
    prima_prof number,
    desp_catalogo number,
    desp_serie char(8),
    desp_grado number,
    desp_arma number,
    desp_nom1 char(15),
    desp_nom2 char(15),
    desp_ape1 char(15),
    desp_ape2 char(15),
    desp_ape3 char(15),
    desp_ced_ord char(4),
    desp_ced_reg number,
    desp_fec_ext_ced char(20),
    desp_ext_ced_lugar char(4),
    desp_est_civil char(1),
    desp_direccion char(50),
    desp_zona number,
    desp_dir_lugar char(4),
    desp_telefono number,
    desp_sexo char(1),
    desp_fec_nac char(20),
    desp_nac_lugar char(4),
    desp_promocion number,
    desp_afil_ipm char(1),
    desp_sangre char(3),
    desp_antiguedad number,
    desp_bienal number,
    desp_plaza number,
    desp_desc_empleo char(45),
    desp_fec_nomb char(20),
    desp_ord_gral char(7),
    desp_punto_og number,
    desp_situacion char(2),
    desp_prima_prof number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_evaluaciones_ant 
  (
    e_catalogo number,
    e_evaluacion number,
    e_edad number,
    e_peso number,
    e_talla number(3,2),
    e_imc number(4,2),
    e_diagnost number,
    e_ref_dd char(1),
    e_fecha date,
    e_asist_dd char(1),
    desp_e_catalogo number,
    desp_e_evaluacion number,
    desp_e_edad number,
    desp_e_peso number,
    desp_e_talla number(3,2),
    desp_e_imc number(4,2),
    desp_e_diagnost number,
    desp_e_ref_dd char(1),
    desp_e_fecha date,
    desp_e_asist_dd char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pacceso 
  (
    acccatalogo number,
    accpwd char(10),
    accpermiso number,
    contraint pk_pacceso primary key (acccatalogo)  
  );
/
create table ADMIN.pdocumento 
  (
    doccorrelativo number not null ,
    docsolicita number,
    doctipo number,
    docestado number,
    docgenero number,
    docfecgenerado char(20),
    docasunto char(150),
    docmotivo char(150),
    docdirigido number,
    docconducto number,
    docfecinicio char(20),
    docfecfinaliza char(20),
    docautoriza number,
    docvobo number,
    docnegociado number,
    docnum number,
    docreferencia char(10),
    constraint pk_pdocumento primary key (doccorrelativo)  
  );
/
create table ADMIN.pestado 
  (
    estcodigo number,
    estdesc char(15),
    constraint pk_pestado primary key (estcodigo)  
  );
/
create table ADMIN.pnegociado 
  (
    negcodigo number,
    negdesc char(50),
    contraint pk_pnegociado primary key (negcodigo)  
  );
/
create table ADMIN.ptipo 
  (
    tipcodigo number,
    tipdesc char(50),
     constraint pk_ptipo primary key (tipcodigo) 
  );
/
create table ADMIN.aud_pdocumento 
  (
    doccorrelativo number,
    docsolicita number,
    doctipo number,
    docestado number,
    docgenero number,
    docfecgenerado char(20),
    docasunto char(150),
    docmotivo char(150),
    docdirigido number,
    docconducto number,
    docfecinicio char(20),
    docfecfinaliza char(20),
    docautoriza number,
    docvobo number,
    docnegociado number,
    docnum number,
    docreferencia char(10),
    desp_doccorrelativo number,
    desp_docsolicita number,
    desp_doctipo number,
    desp_docestado number,
    desp_docgenero number,
    desp_docfecgenerado char(20),
    desp_docasunto char(150),
    desp_docmotivo char(150),
    desp_docdirigido number,
    desp_docconducto number,
    desp_docfecinicio char(20),
    desp_docfecfinaliza char(20),
    desp_docautoriza number,
    desp_docvobo number,
    desp_docnegociado number,
    desp_docnum number,
    desp_docreferencia char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ptipo 
  (
    tipcodigo number,
    tipdesc char(50),
    desp_tipcodigo number,
    desp_tipdesc char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pestado 
  (
    estcodigo number,
    estdesc char(15),
    desp_estcodigo number,
    desp_estdesc char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pnegociado 
  (
    negcodigo number,
    negdesc char(50),
    desp_negcodigo number,
    desp_negdesc char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pacceso 
  (
    acccatalogo number,
    accpwd char(10),
    accpermiso number,
    desp_acccatalogo number,
    desp_accpwd char(10),
    desp_accpermiso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ptiempos 
  (
    tiempodoc number,
    tiempoano char(4),
    tiempomes char(2),
    tiempo1 char(6),
    tiempo2 char(6),
    tiempo3 char(6),
    tiempo4 char(6),
    tiempo5 char(6),
    desp_tiempodoc number,
    desp_tiempoano char(4),
    desp_tiempomes char(2),
    desp_tiempo1 char(6),
    desp_tiempo2 char(6),
    desp_tiempo3 char(6),
    desp_tiempo4 char(6),
    desp_tiempo5 char(6),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ptiempos 
  (
    tiempodoc number not null ,
    tiempoano char(4),
    tiempomes char(2),
    tiempo1 char(6),
    tiempo2 char(6),
    tiempo3 char(6),
    tiempo4 char(6),
    tiempo5 char(6),
    primary key (tiempodoc) 
  );
/
create table ADMIN.tconec 
  (
    dia char(8) not null ,
    tiempo number(16,2) not null ,
    usuario char(10) not null ,
    dependencia char(15) not null ,
    seccion char(15) not null ,
    menu number not null ,
    fecha date,
    primary key (dia,usuario) 
  );
/
create table ADMIN.fincas 
  (
    fin_numero number not null ,
    fin_nombre char(40) not null ,
    fin_ubicacion char(50) not null ,
    primary key (fin_numero) 
  );
/
create table ADMIN.aud_fincas 
  (
    fin_numero number,
    fin_nombre char(40),
    fin_ubicacion char(50),
    desp_fin_numero number,
    desp_fin_descripcion char(40),
    desp_fin_ubicacion char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.asig_cat 
  (
    asc_tipo char(1) not null ,
    asc_catalogo number not null ,
    
    constraint ck_asc_tipo check (asc_tipo IN ('O' ,'T' )) ,
    constraint pk_asig_cat primary key (asc_tipo)  
  );
/
create table ADMIN.c_corr_seg 
  (
    seg_usuario number not null ,
    seg_passwd char(10) not null ,
    seg_dep number not null ,
    seg_oficina number not null ,
    containt pk_c_corr_seg primary key (seg_usuario) 
  );
/
create table ADMIN.c_documento 
  (
    doc_codigo number not null ,
    doc_depend number not null ,
    doc_tipo number not null ,
    doc_nombre char(50) not null ,
    doc_prioridad char(1) not null ,
    doc_asunto char(250) not null ,
    doc_fec_realizado TIMESTAMP not null ,
    doc_fec_in TIMESTAMP not null ,
    doc_num_hojas number not null ,
    doc_destino number not null ,
    doc_procedencia number not null ,
    doc_status char(1) not null ,
    doc_interesado char(50),
    doc_clasificacion number not null ,
    doc_prefijo number not null ,
    doc_proposito number not null ,
    doc_recibe number not null ,
    doc_int_ext char(1) not null ,
    doc_solucion char(1),
    doc_referencia char(20),
    doc_of_actual number not null ,
    doc_ult_tras TIMESTAMP,
    constraint pk_c_documento primary key (doc_codigo,doc_depend) 
  );
/
create table ADMIN.c_ubicacion_docum 
  (
    ub_correlativo number not null ,
    ub_cod_doc number not null ,
    ub_cod_depend number not null ,
    ub_fec_in TIMESTAMP,
    ub_recibe number,
    ub_entrega number,
    ub_recibe_ok char(1),
    ub_observaciones char(175),
    ub_oficina number,
    ub_of_dep number,
    ub_doc_tipo_remite number,
    ub_doc_remite char(20),
    ub_int_ext char(1),
    ub_of_remite number,
    ub_of_dep_remite number,
    constraint pk_c_ubicacion_docum primary key (ub_correlativo,ub_cod_doc,ub_cod_depend) 
  );
/
create table ADMIN.dpue 
  (
    pue_catalogo number not null ,
    pue_grado number not null ,
    pue_arma number not null ,
    pue_dependencia number not null ,
    pue_jerarquia char(3),
    pue_plaza number not null ,
    pue_ceom char(6) not null ,
    pue_desc char(45) not null ,
    pue_situacion char(2) not null ,
    pue_fec_nomb date not null ,
    pue_ord_gral char(7) not null ,
    pue_punto_og number not null ,
    pue_fec_cese date not null ,
    
    constraint ck_pue_nomb_cese check (pue_fec_nomb <= pue_fec_cese ) ,
    constraint pk_dpue primary key (pue_catalogo,pue_plaza,pue_fec_nomb)  
  );
/
create table ADMIN.mtit 
  (
    tit_depen number not null ,
    tit_llave char(8) not null ,
    tit_desc_ct char(20) not null ,
    tit_desc_md char(27) not null ,
    tit_desc_lg char(300) not null 
  );
/
create table ADMIN.sand 
  (
    dsan_tran number not null ,
    dsan_linea number not null ,
    dsan_clobo char(70) not null ,
    constraint pk_sand primary key (dsan_tran,dsan_linea)  
  );
/
create table ADMIN.telefonos 
  (
    tinstitucion number not null ,
    tnombre char(50) not null ,
    tclase char(3) not null ,
    tnumero char(12),
    clobension char(5)
  );
/
create table ADMIN.t_org 
  (
    torg_plaza number not null ,
    torg_ceom char(6) not null ,
    torg_dependencia number not null ,
    torg_jerarquia char(10) not null ,
    torg_grado number not null ,
    torg_plaza_desc char(30) not null ,
    torg_situacion char(1),
    torg_cod_pago char(1),
    torg_hrs_trab number not null ,
    torg_fec_ult_mod date,
    torg_ord_gral char(7),
    torg_dep_auto number not null ,
    torg_docu_auto char(10) not null ,
    torg_fec_auto date not null ,
    torg_nominas char(1),
    torg_usuario char(8),
    torg_fec_hora TIMESTAMP(0),
    torg_terminal char(20),
    torg_accion char(1),
    torg_catalogo number,
    
    constraint ck_torg_nominas check (torg_nominas IN ('0' ,'1' ,'2' ,'3' ,'4' ,'5' ,'6' ,'7' ,'8' ,'9' )),
    
    constraint ck_torg_accion check (torg_accion IN ('A' ,'I' )),
    
    constraint ck_torg_situacion check (torg_situacion IN ('A' ,'B' ,'C' )) 
  );
/
create table ADMIN.ret_of_carre_res 
  (
    no number,
    catalogo number,
    grado char(50),
    arma char(30),
    dem char(10),
    t_servicio number,
    nombre char(100),
    lugar_alta char(100),
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    constraint pk_ret_of_carre_res  primary key (catalogo) 
  );
/
create table ADMIN.ret_tropa 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    t_servicio number,
    comando char(100),
    monto number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    total number(16,2),
    constraint pk_ret_tropa primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_im 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    d_descuento char(100),
    saldo number(16,2),
    constraint pk_ret_desc_im primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_hr 
  (
    no number,
    catalogo number,
    grado char(50),
    apellido char(100),
    nombre char(100),
    d_descuento char(100),
    saldo number(16,2),
    constraint pk_ret_desc_hr primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_ipm_asim 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamientos number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    constraint pk_ret_desc_ipm_asim primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_ipm_esptas 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    linda_vista number(16,2),
    total number(16,2),
    constraint pk_ret_desc_ipm_esptas primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_ipm_of 
  (
    no number,
    catalogo number,
    grado char(50),
    arma char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    constraint pk_ret_desc_ipm_of primary key (catalogo) 
  );
/
create table ADMIN.ret_desc_ipm_sgtos_may 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    constraint pk_ret_desc_ipm_sgtos_may primary key (catalogo) 
  );
/
create table ADMIN.ret_of_asim 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    comando char(100),
    t_servicio number,
    especialidad char(50),
    horas number,
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    constraint pk_ret_of_asim primary key (catalogo) 
  );
/
create table ADMIN.ret_esptas 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    t_servicio number,
    puesto char(100),
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    constraint pk_ret_esptas primary key (catalogo) 
  );
/
create table ADMIN.ret_sgtos_may 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    comando char(100),
    t_servicio number,
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    constraint pk_ret_sgtos_may primary key (catalogo) 
  );
/
create table ADMIN.aud_ret_desc_hr 
  (
    no number,
    catalogo number,
    grado char(50),
    apellido char(100),
    nombre char(100),
    d_descuento char(100),
    saldo number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_apellido char(100),
    desp_nombre char(100),
    desp_d_descuento char(100),
    desp_saldo number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_desc_im 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    d_descuento char(100),
    saldo number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_d_descuento char(100),
    desp_saldo number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_desc_ipm_esptas 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    linda_vista number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_prestamos number(16,2),
    desp_optica number(16,2),
    desp_pc number(16,2),
    desp_financiamiento number(16,2),
    desp_bazar number(16,2),
    desp_boletos number(16,2),
    desp_linda_vista number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_desc_ipm_of 
  (
    no number,
    catalogo number,
    grado char(50),
    arma char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_arma char(50),
    desp_nombre char(100),
    desp_prestamos number(16,2),
    desp_optica number(16,2),
    desp_pc number(16,2),
    desp_financiamiento number(16,2),
    desp_bazar number(16,2),
    desp_boletos number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_desc_ipm_sgtos_may 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamiento number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_prestamos number(16,2),
    desp_optica number(16,2),
    desp_pc number(16,2),
    desp_financiamiento number(16,2),
    desp_bazar number(16,2),
    desp_boletos number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_of_asim 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    comando char(100),
    t_servicio number,
    especialidad char(50),
    horas number,
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_comando char(100),
    desp_t_servicio number,
    desp_especialidad char(50),
    desp_horas number,
    desp_bono_retiro number(16,2),
    desp_sueldo number(16,2),
    desp_bono14 number(16,2),
    desp_aguinaldo number(16,2),
    desp_bono_vac number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_of_carre_res 
  (
    no number,
    catalogo number,
    grado char(50),
    arma char(30),
    dem char(10),
    t_servicio number,
    nombre char(100),
    lugar_alta char(100),
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_arma char(30),
    desp_dem char(10),
    desp_t_servicio number,
    desp_nombre char(100),
    desp_lugar_alta char(100),
    desp_bono_retiro number(16,2),
    desp_sueldo number(16,2),
    desp_bono14 number(16,2),
    desp_aguinaldo number(16,2),
    desp_bono_vac number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_sgtos_may 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    comando char(100),
    t_servicio number,
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_comando char(100),
    desp_t_servicio number,
    desp_bono_retiro number(16,2),
    desp_sueldo number(16,2),
    desp_bono14 number(16,2),
    desp_aguinaldo number(16,2),
    desp_bono_vac number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_desc_ipm_asim 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    prestamos number(16,2),
    optica number(16,2),
    pc number(16,2),
    financiamientos number(16,2),
    bazar number(16,2),
    boletos number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_prestamos number(16,2),
    desp_optica number(16,2),
    desp_pc number(16,2),
    desp_financiamientos number(16,2),
    desp_bazar number(16,2),
    desp_boletos number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.retiro 
  (
    catalogo number,
    gra_codigo number,
    grado char(20),
    nombre char(50),
    clase number,
    tiempo number,
    banco number,
    cuenta char(15),
    dependencia number,
    depen char(50),
    cedord char(4),
    registro number,
    plataforma number,
    sueldo number(10,2),
    bono number(10,2),
    indenmiza number(10,2),
    completa number(10,2),
    bono14 number(10,2),
    aguinaldo number(10,2),
    vacacional number(10,2),
    totasig number(10,2),
    presipm number(10,2),
    finipm number(10,2),
    optipm number(10,2),
    pcsipm number(10,2),
    bazipm number(10,2),
    vivipm number(10,2),
    faripm number(10,2),
    bolipm number(10,2),
    totipm number(10,2),
    hreal number(10,2),
    indus number(10,2),
    totdesc number(10,2),
    mfp number(10,2),
    mdn number(10,2),
    total number(10,2),
    primary key (catalogo) 
  );
/
create table ADMIN.aud_asigna 
  (
    a_catalogo number,
    a_sueldo number(16,2),
    a_bienal number(8,2),
    a_prima_resp number(8,2),
    a_prima_esp number(16,8),
    a_gastos_rep number(8,2),
    a_bon_emerg number(8,2),
    a_dividendos number(8,2),
    a_aguinaldo number(16,2),
    a_bono_vac number(8,2),
    a_bono14 number(16,2),
    a_bono_trans number(8,2),
    a_prima_ing number(8,2),
    a_prima_prof number(8,2),
    a_complemento number(8,2),
    a_prima_ext number(8,2),
    a_bono_ali number(8,2),
    a_docencia number(8,2),
    a_kaibil number(8,2),
    a_salto number(8,2),
    a_662000 number(8,2),
    a_clase3 number(8,2),
    a_ppm number(8,2),
    a_riesgo number(8,2),
    desp_a_catalogo number,
    desp_a_sueldo number(16,2),
    desp_a_bienal number(8,2),
    desp_a_prima_resp number(8,2),
    desp_a_prima_esp number(16,8),
    desp_a_gastos_rep number(8,2),
    desp_a_bon_emerg number(8,2),
    desp_a_dividendos number(8,2),
    desp_a_aguinaldo number(16,2),
    desp_a_bono_vac number(8,2),
    desp_a_bono14 number(16,2),
    desp_a_bono_trans number(8,2),
    desp_a_prima_ing number(8,2),
    desp_a_prima_prof number(8,2),
    desp_a_complemento number(8,2),
    desp_a_prima_ext number(8,2),
    desp_a_bono_ali number(8,2),
    desp_a_docencia number(8,2),
    desp_a_kaibil number(8,2),
    desp_a_salto number(8,2),
    desp_a_662000 number(8,2),
    desp_a_clase3 number(8,2),
    desp_a_ppm number(8,2),
    desp_a_riesgo number(8,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_control 
  (
    c_codigo char(6),
    c_nombre char(20),
    desp_c_codigo char(6),
    desp_c_nombre char(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_usuapli 
  (
    usuarios char(32),
    tabla varchar2(128),
    permisos char(9),
    sistema char(3),
    desp_usuarios char(32),
    desp_tabla varchar2(128),
    desp_permisos char(9),
    desp_sistema char(3),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cmm_hospitalizados 
  (
    hos_catalogo number,
    hos_fec_ingreso date,
    hos_diag_ingreso char(45),
    hos_fec_egreso date,
    hos_diag_egreso char(100),
    hos_grado number,
    hos_depen number,
    desp_hos_catalogo number,
    desp_hos_fec_ingreso date,
    desp_hos_diag_ingreso char(45),
    desp_hos_fec_egreso date,
    desp_hos_diag_egreso char(100),
    desp_hos_grado number,
    desp_hos_depen number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_retiro 
  (
    catalogo number,
    gra_codigo number,
    grado char(20),
    nombre char(50),
    clase number,
    tiempo number,
    banco number,
    cuenta char(15),
    dependencia number,
    depen char(50),
    cedord char(4),
    registro number,
    plataforma number,
    sueldo number(10,2),
    bono number(10,2),
    indenmiza number(10,2),
    completa number(10,2),
    bono14 number(10,2),
    aguinaldo number(10,2),
    vacacional number(10,2),
    totasig number(10,2),
    presipm number(10,2),
    finipm number(10,2),
    optipm number(10,2),
    pcsipm number(10,2),
    bazipm number(10,2),
    vivipm number(10,2),
    faripm number(10,2),
    bolipm number(10,2),
    totipm number(10,2),
    hreal number(10,2),
    indus number(10,2),
    totdesc number(10,2),
    mfp number(10,2),
    mdn number(10,2),
    total number(10,2),
    desp_catalogo number,
    desp_gra_codigo number,
    desp_grado char(20),
    desp_nombre char(50),
    desp_clase number,
    desp_tiempo number,
    desp_banco number,
    desp_cuenta char(15),
    desp_dependencia number,
    desp_depen char(50),
    desp_cedord char(4),
    desp_registro number,
    desp_plataforma number,
    desp_sueldo number(10,2),
    desp_bono number(10,2),
    desp_indenmiza number(10,2),
    desp_completa number(10,2),
    desp_bono14 number(10,2),
    desp_aguinaldo number(10,2),
    desp_vacacional number(10,2),
    desp_totasig number(10,2),
    desp_presipm number(10,2),
    desp_finipm number(10,2),
    desp_optipm number(10,2),
    desp_pcsipm number(10,2),
    desp_bazipm number(10,2),
    desp_vivipm number(10,2),
    desp_faripm number(10,2),
    desp_bolipm number(10,2),
    desp_totipm number(10,2),
    desp_hreal number(10,2),
    desp_indus number(10,2),
    desp_totdesc number(10,2),
    desp_mfp number(10,2),
    desp_mdn number(10,2),
    desp_total number(10,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_resumen 
  (
    r_year number not null ,
    r_mes number not null ,
    r_clase char(30) not null ,
    r_cgrado number not null ,
    r_grado char(15) not null ,
    r_asignacion char(35) not null ,
    r_cantidad number not null ,
    r_monto number(16,2)
  );
/
create table ADMIN.f_datosfza 
  (
    df_cdep number not null ,
    df_dependencia char(45) not null ,
    df_clase char(1) not null ,
    df_dclase char(20) not null ,
    df_cgrado number not null ,
    df_totales number not null ,
    df_llenas number not null ,
    df_vacantes number not null 
  );
/
create table ADMIN.aplicaciones 
  (
    codigo number not null ,
    aplicacion char(50) not null ,
    constraint pk_aplicaciones primary key (codigo) 
  );
/
create table ADMIN.divisiones 
  (
    codigo number not null ,
    division char(50) not null ,
    constraint pk_aplicaciones primary key (codigo) 
  );
/
create table ADMIN.negociados 
  (
    codigo number not null ,
    negociado char(50) not null ,
    constraint pk_negociados primary key (codigo) 
  );
/
create table ADMIN.u_comisiones 
  (
    usuaryo number not null ,
    clave char(50) not null ,
    constraint pk_u_comisiones primary key (usuaryo) 
  );
/
create table ADMIN.aud_aplicaciones 
  (
    codigo number,
    aplicacion char(50),
    desp_codigo number,
    desp_aplicacion char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_divisiones 
  (
    codigo number,
    division char(50),
    desp_codigo number,
    desp_division char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_negociados 
  (
    codigo number,
    negociado char(50),
    desp_codigo number,
    desp_negociado char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_u_comisiones 
  (
    usuaryo number,
    clave char(50),
    desp_usuaryo number,
    desp_clave char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_ipm_cart 
  (
    ipc_correlativo number not null ,
    ipc_fecha_env date not null ,
    ipc_nu_credito char(9) not null ,
    ipc_catalogo number not null ,
    ipc_monto number(10,2) not null ,
    ipc_codigo char(2) not null ,
    ipc_status char(1) not null ,
    ipc_motivo char(15) not null ,
    ipc_saldo number(18,2),
    constraint pk_f_ipm_cart primary key (ipc_correlativo) 
  );
/
create table ADMIN.agtsa 
  (
    ag_catalogo number not null ,
    ag_monto number(16,2),
    ag_descuento number(16,2),
    ag_saldo char(8),
    ag_des_flag char(1),
    ag_poliza char(9),
    ag_recibo char(8),
    ag_agente number,
    ag_depen number,
    ag_grado number,
    ag_clase char(1)
  );
/
create table ADMIN.asamblea 
  (
    as_catalogo number not null ,
    as_cantidad number not null 
  );
/
create table ADMIN.banejer_car 
  (
    car_prestamo char(13) not null ,
    car_catalogo number not null ,
    car_nombre char(40),
    car_monto number(16,2),
    car_cuota number(16,2),
    car_saldo number(16,2),
    car_intereses number(16,2),
    car_si_no char(1),
    car_cod_1_2 number
  );
/
create table ADMIN.dfdes_gra 
  (
    dfdg_catalogo number not null ,
    dfdg_codigo number not null ,
    dfdg_nu_reg number not null ,
    dfdg_cod_control number not null ,
    dfdg_tipo_desc char(1) not null ,
    dfdg_fec_ini date not null ,
    dfdg_ult_act date,
    dfdg_fec_cer date,
    dfdg_monto number(16,2) not null ,
    dfdg_saldo number(16,2) not null ,
    dfdg_mensual number(16,2) not null ,
    dfdg_tot_cuotas number not null ,
    dfdg_num_cuotas number not null ,
    dfdg_documen char(6),
    dfdg_codeudor number,
    dfdg_nom_bene char(50),
    dfdg_juz_con char(50),
    dfdg_si_no char(1)
  );
/
create table ADMIN.dfdes_grat 
  (
    dfdg_catalogo number not null ,
    dfdg_codigo number not null ,
    dfdg_nu_reg number not null ,
    dfdg_cod_control number not null ,
    dfdg_tipo_desc char(1) not null ,
    dfdg_fec_ini date not null ,
    dfdg_ult_act date,
    dfdg_fec_cer date,
    dfdg_monto number(16,2) not null ,
    dfdg_saldo number(16,2) not null ,
    dfdg_mensual number(16,2) not null ,
    dfdg_tot_cuotas number not null ,
    dfdg_num_cuotas number not null ,
    dfdg_documen char(6),
    dfdg_codeudor number,
    dfdg_nom_bene char(50),
    dfdg_juz_con char(50),
    dfdg_si_no char(1)
  );
/
create table ADMIN.dfdes_inv 
  (
    dfdi_catalogo number not null ,
    dfdi_codigo number not null ,
    dfdi_nu_reg number not null ,
    dfdi_cod_control number not null ,
    dfdi_tipo_desc char(1) not null ,
    dfdi_fec_ini date not null ,
    dfdi_ult_act date,
    dfdi_fec_cer date,
    dfdi_monto number(16,2) not null ,
    dfdi_saldo number(16,2) not null ,
    dfdi_mensual number(16,2) not null ,
    dfdi_tot_cuotas number not null ,
    dfdi_num_cuotas number not null ,
    dfdi_documen char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_juz_con char(50),
    dfdi_si_no char(1)
  );
/
create table ADMIN.dfdes_invt 
  (
    dfdi_catalogo number not null ,
    dfdi_codigo number not null ,
    dfdi_nu_reg number not null ,
    dfdi_cod_control number not null ,
    dfdi_tipo_desc char(1) not null ,
    dfdi_fec_ini date not null ,
    didi_ult_act date,
    dfdi_fec_cer date,
    dfdi_monto number(16,2) not null ,
    dfdi_saldo number(16,2) not null ,
    dfdi_mensual number(16,2) not null ,
    dfdi_tot_cuotas number not null ,
    dfdi_num_cuotas number not null ,
    dfdi_documen char(6),
    dfdi_codeudor number,
    dfdi_nom_bene char(50),
    dfdi_juz_con char(50),
    dfdi_si_no char(1)
  );
/
create table ADMIN.f_amt 
  (
    amt_catalogo number not null ,
    amt_codigo number,
    amt_fecha date,
    amt_fact char(8),
    amt_monto number(16,2),
    amt_si_no char(1)
  );
/
create table ADMIN.f_bac 
  (
    bac_prestamo char(11) not null ,
    bac_catalogo number not null ,
    bac_nombre char(40),
    bac_monto number(16,2),
    bac_cuota number(16,2),
    bac_saldo number(16,2),
    bac_intereses number(16,2),
    bac_si_no char(1),
    bac_cod_1_2 number
  );
/
create table ADMIN.f_combust 
  (
    ic_cat number not null ,
    ic_comb number,
    ic_monto number(16,2),
    ic_otro char(1)
  );
/
create table ADMIN.f_hreal 
  (
    hr_catalogo number not null ,
    hr_mensual number(16,2) not null ,
    hr_saldo number(16,2) not null ,
    hr_control char(1)
  );
/
create table ADMIN.findustria 
  (
    ind_catalogo number not null ,
    ind_mensual number(16,2) not null ,
    ind_num number not null ,
    ind_control char(1)
  );
/
create table ADMIN.f_asgral 
  (
    as_catalogo number not null ,
    as_nombre char(40),
    as_mensual number(16,2),
    as_si_no char(1),
    as_poliza char(10),
    as_solicitud char(9),
    as_moneda char(1)
  );
/
create table ADMIN.mper 
  (
    per_catalogo number not null ,
    per_serie char(8),
    per_grado number not null ,
    per_arma number not null ,
    per_nom1 char(15),
    per_nom2 char(15),
    per_ape1 char(15),
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
    
    constraint ck_per_est_civil check (per_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    constraint pk_mper primary key (per_catalogo)
  );
/
create table ADMIN.aud_permiso 
  (
    per_codigo number,
    catalogo number,
    fecha_inicio char(10),
    fecha_fin char(10),
    h_salida number,
    h_entrada number,
    autorizo number,
    per_division number,
    per_observacion char(200),
    desp_per_codigo number,
    desp_catalogo number,
    desp_fecha_inicio char(10),
    desp_fecha_fin char(10),
    desp_h_salida number,
    desp_h_entrada number,
    desp_autorizo number,
    desp_per_division number,
    desp_per_observacion char(200),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.permiso 
  (
    per_codigo number not null ,
    catalogo number not null ,
    fecha_inicio char(10) not null ,
    fecha_fin char(10) not null ,
    h_salida number not null ,
    h_entrada number not null ,
    autorizo number not null ,
    per_division number not null ,
    per_observacion char(200),
    constraint pk_permiso primary key (per_codigo) 
  );
/
create table ADMIN.fn_motivos 
  (
    mot_codigo char(2) not null ,
    mot_desc char(25) not null ,
    constraint pk_fn_motivos primary key (mot_codigo) 
  );
/
create table ADMIN.aud_fn_motivos 
  (
    mot_codigo char(2),
    mot_desc char(25),
    desp_mot_codigo char(2),
    desp_mot_desc char(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_cmm 
  (
    cmm_catalogo number,
    cmm_trans number,
    cmm_fec_ini date,
    cmm_ful_act date,
    cmm_fec_cer date,
    cmm_monto number(16,2),
    cmm_saldo number(16,2),
    cmm_mensual number(16,2),
    cmm_tot_cuotas number,
    cmm_num_cuotas number,
    cmm_contrato char(15),
    cmm_control char(2),
    desp_cmm_catalogo number,
    desp_cmm_trans number,
    desp_cmm_fec_ini date,
    desp_cmm_ful_act date,
    desp_cmm_fec_cer date,
    desp_cmm_monto number(16,2),
    desp_cmm_saldo number(16,2),
    desp_cmm_mensual number(16,2),
    desp_cmm_tot_cuotas number,
    desp_cmm_num_cuotas number,
    desp_cmm_contrato char(15),
    desp_cmm_control char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_cmm 
  (
    cmm_catalogo number not null ,
    cmm_trans number not null ,
    cmm_fec_ini date not null ,
    cmm_ful_act date not null ,
    cmm_fec_cer date,
    cmm_monto number(16,2) not null ,
    cmm_saldo number(16,2) not null ,
    cmm_mensual number(16,2) not null ,
    cmm_tot_cuotas number not null ,
    cmm_num_cuotas number not null ,
    cmm_contrato char(15) not null ,
    cmm_control char(2)
  );
/
create table ADMIN.hftro_des 
  (
    htd_catalogo number not null ,
    htd_fecha date not null ,
    htd_codigo number not null ,
    htd_nu_reg number not null ,
    htd_monto number(16,2) not null ,
    htd_mensual number(16,2) not null ,
    htd_saldo number(16,2) not null ,
    htd_corrida char(1),
    htd_varios char(15),
    constraint pk_hftro_des primary key (htd_catalogo,htd_fecha,htd_codigo,htd_nu_reg)  
  );
/
create table ADMIN.ft_asigna 
  (
    ta_plaza number not null ,
    ta_codigo number not null ,
    ta_monto number(16,2) not null ,
    constraint pk_ft_asigna primary key (ta_plaza,ta_codigo) 
  );
/
create table ADMIN.aud_ft_asigna 
  (
    ta_plaza number,
    ta_codigo number,
    ta_monto number(16,2),
    desp_ta_plaza number,
    desp_ta_codigo number,
    desp_ta_monto number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.busqueda 
  (
    ingreso number,
    cant number,
    busco number
  );
/
create table ADMIN.ingreso 
  (
    numero number,
    catalogo number,
    dep number,
    entro date,
    hora char(15),
    constraint pk_ingreso primary key (numero,catalogo) 
  );
/
create table ADMIN.fcatnop 
  (
    fcat_catalogo number not null ,
    fcat_date date not null ,
    constraint pk_fcatnop primary key (fcat_catalogo,fcat_date) 
  );
/
create table ADMIN.aud_fcatnop 
  (
    fcat_catalogo number,
    fcat_date date,
    desp_fcat_catalogo number,
    desp_fcat_date date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cna 
  (
    cna_codigo number not null ,
    cna_desc_lg char(50) not null ,
    constraint pk_cna primary key (cna_codigo) 
  );
/
create table ADMIN.religiones 
  (
    rel_codigo number not null ,
    rel_desc char(30) not null ,
    constraint pk_religiones primary key (rel_codigo) 
  );
/
create table ADMIN.rel_detalle 
  (
    rel_det_catalogo number not null ,
    rel_det_religion number not null ,
    constraint pk_rel_detalle primary key (rel_det_catalogo) 
  );
/
create table ADMIN.aud_religiones 
  (
    rel_codigo number,
    rel_desc char(30),
    desp_rel_codigo number,
    desp_rel_desc char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_rel_detalle 
  (
    rel_det_catalogo number,
    rel_det_religion number,
    desp_rel_det_catalogo number,
    desp_rel_det_religion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cnc 
  (
    nombre char(20) not null ,
    objeto char(25) not null ,
    acceso char(9) not null ,
    fecha date not null ,
    db char(10) not null 
  );
/
create table ADMIN.radius1 
  (
    codigo number not null ,
    comando char(150) not null ,
    usuario_nt char(50) not null ,
    e_mail char(50) not null ,
    pwd1_nt char(8),
    pwd2_nt char(8),
    pwd3_nt char(8),
    pwd4_nt char(8),
    cta_radius char(50) not null ,
    pwd1_rad char(8),
    pwd2_rad char(8),
    pwd3_rad char(8),
    pwd4_rad char(8)
  );
/
create table ADMIN.aud_oestoe 
  (
    est_codigo number,
    est_depcia char(60),
    est_gd_ii number,
    est_gd_v number,
    est_gb_ii number,
    est_gb_v number,
    est_cnel_ii number,
    est_cnel_v number,
    est_tcnel_ii number,
    est_tcnel_v number,
    est_may_ii number,
    est_may_v number,
    est_o_sg_ii number,
    est_o_sg_v number,
    est_cap1_ii number,
    est_cap1_v number,
    est_cap2_ii number,
    est_cap2_v number,
    est_tte_ii number,
    est_tte_v number,
    est_subte_ii number,
    est_subte_v number,
    est_sgto_cp_ii number,
    est_sgto_cp_v number,
    est_as_ii number,
    est_as_v number,
    est_as_sg_ii number,
    est_as_sg_v number,
    est_sm_esp_ii number,
    est_sm_esp_v number,
    est_st_esp_ii number,
    est_st_esp_v number,
    est_s_1ro_esp_ii number,
    est_s_1ro_esp_v number,
    est_s_2do_esp_ii number,
    est_s_2do_esp_v number,
    est_cabo_esp_ii number,
    est_cabo_esp_v number,
    est_sold_1ra_esp_ii number,
    est_sold_1ra_esp_v number,
    est_sold_2da_esp_ii number,
    est_sold_2da_esp_v number,
    est_sgt_1ro_ii number,
    est_sgt_1ro_v number,
    est_sgt_2do_ii number,
    est_sgt_2do_v number,
    est_cabo_ii number,
    est_cabo_v number,
    est_sold_1ra_ii number,
    est_sold_1ra_v number,
    est_sold_2da_ii number,
    est_sold_2da_v number,
    est_cad_ii number,
    est_cad_v number,
    desp_est_codigo number,
    desp_est_depcia char(60),
    desp_est_gd_ii number,
    desp_est_gd_v number,
    desp_est_gb_ii number,
    desp_est_gb_v number,
    desp_est_cnel_ii number,
    desp_est_cnel_v number,
    desp_est_tcnel_ii number,
    desp_est_tcnel_v number,
    desp_est_may_ii number,
    desp_est_may_v number,
    desp_est_o_sg_ii number,
    desp_est_o_sg_v number,
    desp_est_cap1_ii number,
    desp_est_cap1_v number,
    desp_est_cap2_ii number,
    desp_est_cap2_v number,
    desp_est_tte_ii number,
    desp_est_tte_v number,
    desp_est_subte_ii number,
    desp_est_subte_v number,
    desp_est_sgto_cp_ii number,
    desp_est_sgto_cp_v number,
    desp_est_as_ii number,
    desp_est_as_v number,
    desp_est_as_sg_ii number,
    desp_est_as_sg_v number,
    desp_est_sm_esp_ii number,
    desp_est_sm_esp_v number,
    desp_est_st_esp_ii number,
    desp_est_st_esp_v number,
    desp_est_s_1ro_esp_ii number,
    desp_est_s_1ro_esp_v number,
    desp_est_s_2do_esp_ii number,
    desp_est_s_2do_esp_v number,
    desp_est_cabo_esp_ii number,
    desp_est_cabo_esp_v number,
    desp_est_sold_1ra_esp_ii number,
    desp_est_sold_1ra_esp_v number,
    desp_est_sold_2da_esp_ii number,
    desp_est_sold_2da_esp_v number,
    desp_est_sgt_1ro_ii number,
    desp_est_sgt_1ro_v number,
    desp_est_sgt_2do_ii number,
    desp_est_sgt_2do_v number,
    desp_est_cabo_ii number,
    desp_est_cabo_v number,
    desp_est_sold_1ra_ii number,
    desp_est_sold_1ra_v number,
    desp_est_sold_2da_ii number,
    desp_est_sold_2da_v number,
    desp_est_cad_ii number,
    desp_est_cad_v number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.oestoe 
  (
    est_codigo number not null ,
    est_depcia char(60),
    est_gd_ii number,
    est_gd_v number,
    est_gb_ii number,
    est_gb_v number,
    est_cnel_ii number,
    est_cnel_v number,
    est_tcnel_ii number,
    est_tcnel_v number,
    est_may_ii number,
    est_may_v number,
    est_o_sg_ii number,
    est_o_sg_v number,
    est_cap1_ii number,
    est_cap1_v number,
    est_cap2_ii number,
    est_cap2_v number,
    est_tte_ii number,
    est_tte_v number,
    est_subte_ii number,
    est_subte_v number,
    est_sgto_cp_ii number,
    est_sgto_cp_v number,
    est_as_ii number,
    est_as_v number,
    est_as_sg_ii number,
    est_as_sg_v number,
    est_sm_esp_ii number,
    est_sm_esp_v number,
    est_st_esp_ii number,
    est_st_esp_v number,
    est_s_1ro_esp_ii number,
    est_s_1ro_esp_v number,
    est_s_2do_esp_ii number,
    est_s_2do_esp_v number,
    est_cabo_esp_ii number,
    est_cabo_esp_v number,
    est_sold_1ra_esp_ii number,
    est_sold_1ra_esp_v number,
    est_sold_2da_esp_ii number,
    est_sold_2da_esp_v number,
    est_sgt_1ro_ii number,
    est_sgt_1ro_v number,
    est_sgt_2do_ii number,
    est_sgt_2do_v number,
    est_cabo_ii number,
    est_cabo_v number,
    est_sold_1ra_ii number,
    est_sold_1ra_v number,
    est_sold_2da_ii number,
    est_sold_2da_v number,
    est_cad_ii number,
    est_cad_v number,
    constraint pk_oestoe primary key (est_codigo) 
  );
/
create table ADMIN.aud_mtit 
  (
    tit_depen number,
    tit_llave char(8),
    tit_desc_ct char(20),
    tit_desc_md char(27),
    tit_desc_lg char(300),
    desp_tit_depen number,
    desp_tit_llave char(8),
    desp_tit_desc_ct char(20),
    desp_tit_desc_md char(27),
    desp_tit_desc_lg char(300),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_resofi 
  (
    res_nomina char(1),
    res_partida char(1),
    res_fecha date,
    res_unidad char(5),
    res_subprog char(2),
    res_sueldo number(16,2),
    res_bienal number(16,2),
    res_respon number(16,2),
    res_emerg number(16,2),
    res_repres number(16,2),
    res_profes number(16,2),
    res_constru number(16,2),
    res_tot_nomi number(16,2),
    res_ipm number(16,2),
    res_montepio number(16,2),
    res_fianza number(16,2),
    res_devengado number(16,2),
    res_descuentos number(16,2),
    res_liquido number(16,2),
    res_bon_662000 number(16,2),
    res_pri_prof_mil number(16,2),
    res_depen number,
    desp_res_nomina char(1),
    desp_res_partida char(1),
    desp_res_fecha date,
    desp_res_unidad char(4),
    desp_res_subprog char(2),
    desp_res_sueldo number(16,2),
    desp_res_bienal number(16,2),
    desp_res_respon number(16,2),
    desp_res_emerg number(16,2),
    desp_res_repres number(16,2),
    desp_res_profes number(16,2),
    desp_res_constru number(16,2),
    desp_res_tot_nomi number(16,2),
    desp_res_ipm number(16,2),
    desp_res_montepio number(16,2),
    desp_res_fianza number(16,2),
    desp_res_devengado number(16,2),
    desp_res_descuentos number(16,2),
    desp_res_liquido number(16,2),
    desp_res_bon_662000 number(16,2),
    desp_res_pri_prof_mil number(16,2),
    desp_res_depen number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_resumen 
  (
    r_year number,
    r_mes number,
    r_clase char(30),
    r_cgrado number,
    r_grado char(15),
    r_asignacion char(35),
    r_cantidad number,
    r_monto number(16,2),
    desp_r_year number,
    desp_r_mes number,
    desp_r_clase char(30),
    desp_r_cgrado number,
    desp_r_grado char(15),
    desp_r_asignacion char(35),
    desp_r_cantidad number,
    desp_r_monto number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ret_esptas 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    t_servicio number,
    puesto char(100),
    bono_retiro number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    bono_vac number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_t_servicio number,
    desp_puesto char(100),
    desp_bono_retiro number(16,2),
    desp_sueldo number(16,2),
    desp_bono14 number(16,2),
    desp_aguinaldo number(16,2),
    desp_bono_vac number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_findustria 
  (
    ind_catalogo number,
    ind_mensual number(16,2),
    ind_num number,
    ind_control char(1),
    desp_ind_catalogo number,
    desp_ind_mensual number(16,2),
    desp_ind_num number,
    desp_ind_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_banejer_acc 
  (
    antes1 char(11),
    antes2 char(12),
    antes3 char(20),
    antes4 char(1),
    despues1 char(11),
    despues2 char(12),
    despues3 char(20),
    despues4 char(1),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.xsql_languages 
  (
    source char(254) not null ,
    source_year char(254),
    conformance char(254),
    integrity char(254),
    implementation char(254),
    binding_style char(254),
    programming_lang char(254)
  );
/
create table ADMIN.xserver_info 
  (
    server_attribute char(254) not null ,
    attribute_value char(254)
  );
/
create table ADMIN.dfdes_frasa 
  (
    dfdf_catalogo number not null ,
    dfdf_codigo number not null ,
    dfdf_nu_reg number not null ,
    dfdf_cod_control number not null ,
    dfdf_tipo_desc char(1) not null ,
    dfdf_fec_ini date,
    dfdf_ult_act date,
    dfdf_fec_cer date,
    dfdf_monto number(16,2) not null ,
    dfdf_saldo number(16,2) not null ,
    dfdf_mensual number(16,2) not null ,
    dfdf_tot_cuotas number not null ,
    dfdf_num_cuotas number not null ,
    dfdf_documen char(6),
    dfdf_codeudor number,
    dfdf_nom_bene char(50),
    dfdf_juz_con char(50),
    dfdf_si_no char(1),
    constraint pk_dfdes_frasa primary key (dfdf_catalogo) 
  );
/
create table ADMIN.aud_dfdes_frasa 
  (
    dfdf_catalogo number,
    dfdf_codigo number,
    dfdf_nu_reg number,
    dfdf_cod_control number,
    dfdf_tipo_desc char(1),
    dfdf_fec_ini date,
    dfdf_ult_act date,
    dfdf_fec_cer date,
    dfdf_monto number(16,2),
    dfdf_saldo number(16,2),
    dfdf_mensual number(16,2),
    dfdf_tot_cuotas number,
    dfdf_num_cuotas number,
    dfdf_documen char(6),
    dfdf_codeudor number,
    dfdf_nom_bene char(50),
    dfdf_juz_con char(50),
    dfdf_si_no char(1),
    desp_dfdf_catalogo number,
    desp_dfdf_codigo number,
    desp_dfdf_nu_reg number,
    desp_dfdf_cod_control number,
    desp_dfdf_tipo_desc char(1),
    desp_dfdf_fec_ini date,
    desp_dfdf_ult_act date,
    desp_dfdf_fec_cer date,
    desp_dfdf_monto number(16,2),
    desp_dfdf_saldo number(16,2),
    desp_dfdf_mensual number(16,2),
    desp_dfdf_tot_cuotas number,
    desp_dfdf_num_cuotas number,
    desp_dfdf_documen char(6),
    desp_dfdf_codeudor number,
    desp_dfdf_nom_bene char(50),
    desp_dfdf_juz_con char(50),
    desp_dfdf_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.msan 
  (
    san_catalogo number not null ,
    san_tran number not null ,
    san_grado number not null ,
    san_sancion number not null ,
    san_tiempo number,
    san_fec_inicio date not null ,
    san_depen number not null ,
    san_ord_gral char(7),
    san_fec_og date,
    san_punto_og char(4),
    san_estado char(2),
    sam_horas number,
    constraint pk_msan primary key (san_tran)  
  );
/
create table ADMIN.aud_resutro 
  (
    res_nomina number,
    res_contrato number,
    res_depen number,
    res_btn number,
    res_cia number,
    res_fecha date,
    res_prog char(3),
    res_grupo char(3),
    res_sueldo number(16,2),
    res_alimentacion number(16,2),
    res_responsabilida number(16,2),
    res_reenganche number(16,2),
    res_profesional number(16,2),
    res_representacion number(16,2),
    res_bon_emerg number(16,2),
    res_bon_662000 number(16,2),
    res_otras_boni number(16,2),
    res_montepio number(16,2),
    res_ipm number(16,2),
    res_cmm number(16,2),
    res_total number(16,2),
    res_liquido number(16,2),
    res_profmil number(16,2),
    desp_res_nomina number,
    desp_res_contrato number,
    desp_res_depen number,
    desp_res_btn number,
    desp_res_cia number,
    desp_res_fecha date,
    desp_res_prog char(3),
    desp_res_grupo char(3),
    desp_res_sueldo number(16,2),
    desp_res_alimentacion number(16,2),
    desp_res_responsabilida number(16,2),
    desp_res_reenganche number(16,2),
    desp_res_profesional number(16,2),
    desp_res_representacion number(16,2),
    desp_res_bon_emerg number(16,2),
    desp_res_bon_662000 number(16,2),
    desp_res_otras_boni number(16,2),
    desp_res_montepio number(16,2),
    desp_res_ipm number(16,2),
    desp_res_cmm number(16,2),
    desp_res_total number(16,2),
    desp_res_liquido number(16,2),
    desp_res_profmil number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hftro_des 
  (
    htd_catalogo number,
    htd_fecha date,
    htd_codigo number,
    htd_nu_reg number,
    htd_monto number(16,2),
    htd_mensual number(16,2),
    htd_saldo number(16,2),
    htd_corrida char(1),
    htd_varios char(15),
    desp_htd_catalogo number,
    desp_htd_fecha date,
    desp_htd_codigo number,
    desp_htd_nu_reg number,
    desp_htd_monto number(16,2),
    desp_htd_mensual number(16,2),
    desp_htd_saldo number(16,2),
    desp_htd_corrida char(1),
    desp_htd_varios char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_partidas 
  (
    par_codigo number,
    par_depen number,
    par_fecha date,
    par_descr char(35),
    par_clase number,
    desp_par_codigo number,
    desp_par_depen number,
    desp_par_fecha date,
    desp_par_descr char(35),
    desp_par_clase number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_orden 
  (
    ord_catalogo number,
    ord_sit char(2),
    ord_plaza number,
    ord_fecha_nom date,
    ord_orden char(7),
    ord_punto_orden number,
    ord_clase char(1),
    ord_sitrasla char(2),
    desp_ord_catalogo number,
    desp_ord_sit char(2),
    desp_ord_plaza number,
    desp_ord_fecha_nom date,
    desp_ord_orden char(7),
    desp_ord_punto_orden number,
    desp_ord_clase char(1),
    desp_ord_sitrasla char(2),
    accion char(1),
    usuario char(10),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.aud_ret_tropa 
  (
    no number,
    catalogo number,
    grado char(50),
    nombre char(100),
    t_servicio number,
    comando char(100),
    monto number(16,2),
    sueldo number(16,2),
    bono14 number(16,2),
    aguinaldo number(16,2),
    total number(16,2),
    desp_no number,
    desp_catalogo number,
    desp_grado char(50),
    desp_nombre char(100),
    desp_t_servicio number,
    desp_comando char(100),
    desp_monto number(16,2),
    desp_sueldo number(16,2),
    desp_bono14 number(16,2),
    desp_aguinaldo number(16,2),
    desp_total number(16,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_datosfza 
  (
    df_cdep number,
    df_dependencia char(45),
    df_clase char(1),
    df_dclase char(20),
    df_cgrado number,
    df_totales number,
    df_llenas number,
    df_vacantes number,
    desp_df_cdep number,
    desp_df_dependencia char(45),
    desp_df_clase char(1),
    desp_df_dclase char(20),
    desp_df_cgrado number,
    desp_df_totales number,
    desp_df_llenas number,
    desp_df_vacantes number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_asgral 
  (
    as_catalogo number,
    as_nombre char(40),
    as_mensual number(16,2),
    as_si_no char(1),
    as_poliza char(10),
    as_solicitud char(9),
    as_moneda char(1),
    desp_as_catalogo number,
    desp_as_nombre char(40),
    desp_as_mensual number(16,2),
    desp_as_si_no char(1),
    desp_as_poliza char(10),
    desp_as_solicitud char(9),
    desp_as_moneda char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_combust 
  (
    ic_cat number,
    ic_comb number,
    ic_monto number(16,2),
    ic_otro char(1),
    desp_ic_cat number,
    desp_ic_comb number,
    desp_ic_monto number(16,2),
    desp_ic_otro char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.f_seguros_gt 
  (
    fgt_catalogo number not null ,
    fgt_codigo number not null ,
    fgt_fec_ini date,
    fgt_fecha date,
    fgt_registro char(15),
    fgt_mensual number(16,2),
    fgt_control char(1),
    constraint pkf_seguros_gt primary key (fgt_catalogo) 
  );
/
create table ADMIN.aud_hftro 
  (
    hft_plaza number,
    hft_fecha date,
    hft_depen number,
    hft_jerarquia char(10),
    hft_catalogo number,
    hft_grado number,
    hft_empleo char(45),
    hft_situacion char(2),
    hft_prog char(3),
    hft_grupo number,
    hft_sueldo number(16,2),
    hft_reenganche number(16,2),
    hft_prima_prof number(16,2),
    hft_representacion number(16,2),
    hft_responsabilida number(16,2),
    hft_alimentacion number(16,2),
    hft_aguinaldo number(16,2),
    hft_bono_14 number(16,2),
    hft_bon_emerg number(16,2),
    hft_bono_662000 number(16,2),
    hft_ipm number(16,2),
    hft_centro_med_mil number(16,2),
    hft_total number(16,2),
    hft_liquido number(16,2),
    hft_familiar number,
    hft_corrida char(1),
    hft_cuenta char(20),
    hft_valor number,
    hft_che_situ char(1),
    hft_gastos_rep number(6,2),
    desp_hft_plaza number,
    desp_hft_fecha date,
    desp_hft_depen number,
    desp_hft_jerarquia char(10),
    desp_hft_catalogo number,
    desp_hft_grado number,
    desp_hft_empleo char(45),
    desp_hft_situacion char(2),
    desp_hft_prog char(3),
    desp_hft_grupo number,
    desp_hft_sueldo number(16,2),
    desp_hft_reenganche number(16,2),
    desp_hft_prima_prof number(16,2),
    desp_hft_representacion number(16,2),
    desp_hft_responsabilida number(16,2),
    desp_hft_alimentacion number(16,2),
    desp_hft_aguinaldo number(16,2),
    desp_hft_bono_14 number(16,2),
    desp_hft_bon_emerg number(16,2),
    desp_hft_bono_662000 number(16,2),
    desp_hft_ipm number(16,2),
    desp_hft_centro_med_mil number(16,2),
    desp_hft_total number(16,2),
    desp_hft_liquido number(16,2),
    desp_hft_familiar number,
    desp_hft_corrida char(1),
    desp_hft_cuenta char(20),
    desp_hft_valor number,
    desp_hft_che_situ char(1),
    desp_hft_gastos_rep number(6,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_pafe_oficiales 
  (
    pafe_catalogo number,
    pafe_numero number,
    pafe_fecha date,
    pafe_dominadas number(6,2),
    pafe_abdominales number(6,2),
    pafe_carrera number(6,2),
    pafe_alterno number(6,2),
    pafe_nota number(6,2),
    desp_pafe_catalogo number,
    desp_pafe_numero number,
    desp_pafe_fecha date,
    desp_pafe_dominadas number(6,2),
    desp_pafe_abdominales number(6,2),
    desp_pafe_carrera number(6,2),
    desp_pafe_alterno number(6,2),
    desp_pafe_nota number(6,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pafe_oficiales 
  (
    pafe_catalogo number not null ,
    pafe_numero number not null ,
    pafe_fecha date not null ,
    pafe_dominadas number(6,2),
    pafe_abdominales number(6,2),
    pafe_carrera number(6,2),
    pafe_alterno number(6,2),
    pafe_nota number(6,2) not null 
  );
/
create table ADMIN.dfasig 
  (
    dfa_catalogo number not null ,
    dfa_codigo number not null ,
    dfa_fecha_ini date not null ,
    dfa_cantidad number(16,2) not null ,
    constraint pk_dfasig primary key (dfa_catalogo,dfa_codigo) 
  );
/
create table ADMIN.c_tareas 
  (
    tar_codigo number not null ,
    tar_fecha_fin TIMESTAMP,
    tar_tarea number,
    constraint pk_c_tareas primary key (tar_codigo) 
  );
/
create table ADMIN.aud_c_tareas 
  (
    tar_codigo number,
    tar_fecha_fin TIMESTAMP,
    tar_tarea number,
    desp_tar_codigo number,
    desp_tar_fecha_fin TIMESTAMP,
    desp_tar_tarea number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.recepcion 
  (
    rec_codigo number not null ,
    rec_registro char(10) not null ,
    rec_oficio char(40) not null ,
    rec_fec_recibe date not null ,
    rec_usuario char(50) not null ,
    rec_dependencia number not null ,
    rec_tecnico number not null ,
    rec_tel number,
    rec_equipo number not null ,
    rec_marca number not null ,
    rec_modelo char(30),
    rec_problema char(150) not null ,
    rec_diagnostico char(150),
    rec_reparacion char(150),
    rec_proceso char(7) not null ,
    rec_obs char(50),
    rec_entrega number,
    rec_recibe char(50),
    rec_fec_entrega date,
    constraint pk_recepcion primary key (rec_codigo) 
  );
/
create table ADMIN.marca 
  (
    mar_codigo number not null ,
    mar_marca char(50) not null ,
    primary key (mar_codigo) 
  );
/
create table ADMIN.equipos 
  (
    eq_codigo number not null ,
    eq_tipo char(50) not null ,
    constraint pk_marca primary key (eq_codigo) 
  );
/
create table ADMIN.aud_equipos 
  (
    eq_codigo number,
    eq_tipo char(50),
    desp_eq_codigo number,
    desp_eq_tipo char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_marca 
  (
    mar_codigo number,
    mar_marca char(50),
    desp_mar_codigo number,
    desp_mar_marca char(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_recepcion 
  (
    rec_codigo number,
    rec_registro char(10),
    rec_oficio char(40),
    rec_fec_recibe date,
    rec_usuario char(50),
    rec_dependencia number,
    rec_tecnico number,
    rec_tel number,
    rec_equipo number,
    rec_marca number,
    rec_modelo char(30),
    rec_problema char(150),
    rec_diagnostico char(150),
    rec_reparacion char(150),
    rec_proceso char(7),
    rec_obs char(50),
    rec_entrega number,
    rec_recibe char(50),
    rec_fec_entrega date,
    desp_rec_codigo number,
    desp_rec_registro char(10),
    desp_rec_oficio char(40),
    desp_rec_fec_recibe date,
    desp_rec_usuario char(50),
    desp_rec_dependencia number,
    desp_rec_tecnico number,
    desp_rec_tel number,
    desp_rec_equipo number,
    desp_rec_marca number,
    desp_rec_modelo char(30),
    desp_rec_problema char(150),
    desp_rec_diagnostico char(150),
    desp_rec_reparacion char(150),
    desp_rec_proceso char(7),
    desp_rec_obs char(50),
    desp_rec_entrega number,
    desp_rec_recibe char(50),
    desp_rec_fec_entrega date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eacciones 
  (
    e_registro number not null ,
    e_catalogo number not null ,
    e_grado number not null ,
    e_puesto char(45) not null ,
    e_fecha date not null ,
    e_direccion char(2) not null ,
    constraint pk_eacciones primary key (e_registro) 
  );
/
create table ADMIN.eusuarios 
  (
    eu_catalogo number not null ,
    eu_direccion char(2),
    constraint pk_eusuarios primary key (eu_catalogo) 
  );
/
create table ADMIN.aud_det_acciones 
  (
    det_a_registro number,
    det_a_linea number,
    det_a_accion char(254),
    det_a_tipo char(8),
    desp_det_a_registro number,
    desp_det_a_linea number,
    desp_det_a_accion char(254),
    desp_det_a_tipo char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_eacciones 
  (
    e_registro number,
    e_catalogo number,
    e_grado number,
    e_puesto char(45),
    e_fecha date,
    e_direccion char(2),
    desp_e_registro number,
    desp_e_catalogo number,
    desp_e_grado number,
    desp_e_puesto char(45),
    desp_e_fecha date,
    desp_e_direccion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_eusuarios 
  (
    eu_catalogo number,
    eu_direccion char(2),
    desp_eu_catalogo number,
    desp_eu_direccion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.det_acciones 
  (
    det_a_registro number not null ,
    det_a_linea number not null ,
    det_a_accion char(254),
    det_a_tipo char(8),
    primary key (det_a_registro,det_a_linea) 
  );
/
create table ADMIN.paf_actas 
  (
    act_codigo number not null ,
    act_desc char(10),
    act_fecha char(10),
    constraint pk_det_acciones primary key (act_codigo) 
  );
/
create table ADMIN.paf_calendario 
  (
    cal_periodo number not null ,
    cal_fecha char(10) not null ,
    cal_habil_sino char(1),
    constraint pk_paf_calendario primary key (cal_periodo,cal_fecha) 
  );
/
create table ADMIN.paf_periodos 
  (
    per_periodo number not null ,
    per_pcerrado number,
    per_visible number,
    constraint pk_paf_periodos primary key (per_periodo) 
  );
/
create table ADMIN.paf_grafica 
  (
    gra_serie varchar2(50),
    gra_dato number
  );
/
create table ADMIN.aud_paf_actas 
  (
    act_codigo number,
    act_desc char(10),
    act_fecha char(10),
    desp_act_codigo number,
    desp_act_desc char(10),
    desp_act_fecha char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_paf_calendario 
  (
    cal_periodo number,
    cal_fecha char(10),
    cal_habil_sino char(1),
    desp_cal_periodo number,
    desp_cal_fecha char(10),
    desp_cal_habil_sino char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_paf_detalle 
  (
    det_catalogo number,
    det_nperiodo number,
    det_evento1 number,
    det_evento2 number,
    det_evento3 number,
    det_nota number,
    det_observa varchar2(50),
    det_actanumero number,
    det_cod_grado number,
    desp_det_catalogo number,
    desp_det_nperiodo number,
    desp_det_evento1 number,
    desp_det_evento2 number,
    desp_det_evento3 number,
    desp_det_nota number,
    desp_det_observa varchar2(50),
    desp_det_actanumero number,
    desp_det_cod_grado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_paf_periodos 
  (
    per_periodo number,
    per_pcerrado number,
    per_visible number,
    desp_per_periodo number,
    desp_per_pcerrado number,
    desp_per_visible number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_paf_programador 
  (
    pro_catalogo number,
    pro_nperiodo number,
    pro_fecha_prog char(10),
    pro_recal char(10),
    pro_evaluado char(10),
    pro_cerrado number,
    desp_pro_catalogo number,
    desp_pro_nperiodo number,
    desp_pro_fecha_prog char(10),
    desp_pro_recal char(10),
    desp_pro_evaluado char(10),
    desp_pro_cerrado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.paf_programador 
  (
    pro_catalogo number not null ,
    pro_nperiodo number,
    pro_fecha_prog char(10),
    pro_recal char(10),
    pro_evaluado char(10),
    pro_cerrado number,
    constraint pk_paf_programador primary key (pro_catalogo,pro_nperiodo) 
  );
/
create table ADMIN.paf_detalle 
  (
    det_catalogo number not null ,
    det_nperiodo number not null ,
    det_evento1 number,
    det_evento2 number,
    det_evento3 number,
    det_nota number(6,2),
    det_observa varchar2(50),
    det_actanumero number,
    det_cod_grado number,
    constraint pk_paf_detalle primary key (det_catalogo,det_nperiodo) 
  );
/
create table ADMIN.aud_tiempos 
  (
    t_catalogo number,
    t_total number,
    t_jubilacion number,
    t_oficial number,
    t_esp_ofi number,
    t_form_mil number,
    t_grado number,
    t_depen number,
    t_ult_asc char(10),
    t_prox_asc char(10),
    t_puesto number,
    t_edad number,
    t_alta date,
    desp_t_catalogo number,
    desp_t_total number,
    desp_t_jubilacion number,
    desp_t_oficial number,
    desp_t_esp_ofi number,
    desp_t_form_mil number,
    desp_t_grado number,
    desp_t_depen number,
    desp_t_ult_asc char(10),
    desp_t_prox_asc char(10),
    desp_t_puesto number,
    desp_t_edad number,
    desp_t_alta date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.freforma 
  (
    fr_catalogo number not null ,
    fr_codigo number not null ,
    fr_fec_ini date,
    fr_fecha date,
    fr_registro char(15),
    fr_mensual number(16,2),
    fr_control char(1),
    constraint pk_freforma primary key (fr_catalogo) 
  );
/
create table ADMIN.aud_freforma 
  (
    antes_fr_catalogo number,
    antes_fr_codigo number,
    antes_fr_fec_ini date,
    antes_fr_fecha date,
    antes_fr_registro char(15),
    antes_fr_mensual number(16,2),
    antes_fr_control char(1),
    despues_fr_catalogo number,
    despues_fr_codigo number,
    despues_fr_fec_ini date,
    despues_fr_fecha date,
    despues_fr_registro char(15),
    despues_fr_mensual number(16,2),
    despues_fr_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.licencias 
  (
    lic_catalogo number not null ,
    lic_situacion char(2) not null ,
    lic_inicia date not null ,
    lic_finaliza date not null ,
    lic_obs varchar2(1,1)
  );
/
create table ADMIN.aud_licencias 
  (
    lic_catalogo number,
    lic_situacion char(2),
    lic_inicia date,
    lic_finaliza date,
    lic_obs varchar2(1,1),
    desp_lic_catalogo number,
    desp_lic_situacion char(2),
    desp_lic_inicia date,
    desp_lic_finaliza date,
    desp_lic_obs varchar2(1,1),
    usuario number,
    accion char(1),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.msanlla 
  (
    san_catalogo number not null ,
    san_tran number not null ,
    san_grado number not null ,
    san_sancion number not null ,
    san_tiempo number,
    san_fec_inicio date not null ,
    san_depen number not null ,
    san_ord_gral char(7),
    san_fec_og date,
    san_punto_og char(4),
    san_estado char(2),
    sam_horas number,
    constraint pk_msand primary key (san_tran) 
  );
/
create table ADMIN.sandlla 
  (
    dsan_tran number not null ,
    dsan_linea number not null ,
    dsan_clobo char(70) not null ,
    constraint pk_sandlla primary key (dsan_tran,dsan_linea)  
  );
/
create table ADMIN.psan_orden 
  (
    ord_catalogo number not null ,
    ord_fecha date not null ,
    ord_sancion number not null ,
    ord_ord_gnl char(7) not null ,
    ord_punto_og number not null ,
    ord_fecha_og date not null ,
    constraint pk_psan_orden primary key (ord_catalogo,ord_fecha,ord_sancion) 
  );
/
create table ADMIN.psan_estadistica 
  (
    est_catalogo number not null ,
    est_grado number not null ,
    est_horas number not null ,
    est_demeritos number not null ,
    est_situacion number,
    constraint pk_psan_estadistica primary key (est_catalogo,est_grado) 
  );
/
create table ADMIN.psan_registro 
  (
    reg_codigo number not null ,
    reg_descripcion varchar2(50) not null ,
    reg_documento varchar2(30) not null ,
    reg_vigente date not null ,
    reg_derogado date,
    constraint pk_psan_registro primary key (reg_codigo) 
  );
/
create table ADMIN.aud_psan_orden 
  (
    ord_catalogo number,
    ord_fecha date,
    ord_sancion number,
    ord_ord_gnl char(7),
    ord_punto_og number,
    ord_fecha_og date,
    desp_ord_catalogo number,
    desp_ord_fecha date,
    desp_ord_sancion number,
    desp_ord_ord_gnl char(7),
    desp_ord_punto_og number,
    desp_ord_fecha_og date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_psan_estadistica 
  (
    est_catalogo number,
    est_grado number,
    est_horas number,
    est_demeritos number,
    desp_est_catalogo number,
    desp_est_grado number,
    desp_est_horas number,
    desp_est_demeritos number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_psan_registro 
  (
    reg_codigo number,
    reg_descripcion varchar2(50),
    reg_documento varchar2(30),
    reg_vigente date,
    reg_derogado date,
    desp_reg_codigo number,
    desp_reg_descripcion varchar2(50),
    desp_reg_documento varchar2(30),
    desp_reg_vigente date,
    desp_reg_derogado date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_mper 
  (
    catalogo number,
    serie char(8),
    grado number,
    arma number,
    nom1 char(15),
    nom2 char(15),
    ape1 char(15),
    ape2 char(15),
    ape3 char(15),
    ced_ord char(4),
    ced_reg number,
    fec_ext_ced date,
    ext_ced_lugar char(4),
    est_civil char(1),
    direccion char(50),
    zona number,
    dir_lugar char(4),
    telefono number,
    sexo char(1),
    fec_nac date,
    nac_lugar char(4),
    promocion number,
    afil_ipm char(1),
    sangre char(3),
    antiguedad number,
    bienal number,
    plaza number,
    desc_empleo char(45),
    fec_nomb date,
    ord_gral char(7),
    punto_og number,
    situacion char(2),
    prima_prof number,
    dpi char(15),
    desp_catalogo number,
    desp_serie char(8),
    desp_grado number,
    desp_arma number,
    desp_nom1 char(15),
    desp_nom2 char(15),
    desp_ape1 char(15),
    desp_ape2 char(15),
    desp_ape3 char(15),
    desp_ced_ord char(4),
    desp_ced_reg number,
    desp_fec_ext_ced date,
    desp_ext_ced_lugar char(4),
    desp_est_civil char(1),
    desp_direccion char(50),
    desp_zona number,
    desp_dir_lugar char(4),
    desp_telefono number,
    desp_sexo char(1),
    desp_fec_nac date,
    desp_nac_lugar char(4),
    desp_promocion number,
    desp_afil_ipm char(1),
    desp_sangre char(3),
    desp_antiguedad number,
    desp_bienal number,
    desp_plaza number,
    desp_desc_empleo char(45),
    desp_fec_nomb date,
    desp_ord_gral char(7),
    desp_punto_og number,
    desp_situacion char(2),
    desp_prima_prof number,
    desp_dpi char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_agtsa 
  (
    antes1 char(12),
    antes2 char(20),
    antes3 char(20),
    antes4 char(12),
    antes5 char(1),
    antes6 char(12),
    antes7 char(12),
    antes8 char(8),
    antes9 char(8),
    antes10 char(8),
    antes11 char(1),
    despues1 char(12),
    despues2 char(20),
    despues3 char(20),
    despues4 char(12),
    despues5 char(1),
    despues6 char(12),
    despues7 char(12),
    despues8 char(8),
    despues9 char(8),
    despues10 char(8),
    despues11 char(1),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_f_seguros_gt 
  (
    fgt_catalogo number,
    fgt_codigo number,
    fgt_fec_ini date,
    fgt_fecha date,
    fgt_registro char(15),
    fgt_mensual number(16,2),
    fgt_control char(1),
    desp_fgt_catalogo number,
    desp_fgt_codigo number,
    desp_fgt_fec_ini date,
    desp_fgt_fecha date,
    desp_fgt_registro char(15),
    desp_fgt_mensual number(16,2),
    desp_fgt_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_banejer_car 
  (
    antes1 char(13),
    antes2 char(12),
    antes3 char(40),
    antes4 char(20),
    antes5 char(20),
    antes6 char(20),
    antes7 char(20),
    antes8 char(1),
    antes9 char(8),
    despues1 char(13),
    despues2 char(12),
    despues3 char(40),
    despues4 char(20),
    despues5 char(20),
    despues6 char(20),
    despues7 char(20),
    despues8 char(1),
    despues9 char(8),
    hora TIMESTAMP(0),
    accion char(1) not null ,
    usuario char(12) not null ,
    tabname char(15) not null 
  );
/
create table ADMIN.aud_economato 
  (
    eco_catalogo number,
    eco_mensual number(16,2),
    eco_num number,
    eco_control char(1),
    eco_tipo char(1),
    desp_eco_catalogo number,
    desp_eco_mensual number(16,2),
    desp_eco_num number,
    desp_eco_control char(1),
    desp_eco_tipo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ipm_fact 
  (
    fact_catalogo number,
    fact_cod_descuento number,
    fact_fecha date,
    fact_numero char(11),
    fact_procedencia char(2),
    fact_iva number(10,2),
    fact_monto number(10,2),
    fact_estado char(2),
    desp_fact_catalogo number,
    desp_fact_cod_descuento number,
    desp_fact_fecha date,
    desp_fact_numero char(11),
    desp_fact_procedencia char(2),
    desp_fact_iva number(10,2),
    desp_fact_monto number(10,2),
    desp_fact_estado char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.insti 
  (
    icodigo number not null ,
    inombre char(50) not null ,
    idireccion char(50),
    icategoria char(1) not null ,
    idep number
  );
/
create table ADMIN.aud_insti 
  (
    icodigo number,
    inombre char(50),
    idireccion char(50),
    icategoria char(1),
    idep number,
    desp_icodigo number,
    desp_inombre char(50),
    desp_idireccion char(50),
    desp_icategoria char(1),
    desp_idep number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tdfasig 
  (
    tdfa_catalogo number not null ,
    tdfa_codigo number not null ,
    tdfa_fecha_ini date not null ,
    tdfa_cantidad number(16,2) not null ,
    tdfa_usuario char(8) not null ,
    tdfa_fec_hora TIMESTAMP(0) not null ,
    tdfa_terminal char(5),
    tdfa_accion char(1) not null ,
    tdfa_depen number not null ,
    tdfa_doc char(30) not null ,
    tdfa_fec_auto date not null 
  );
/
create table ADMIN.tdfdes 
  (
    tdfd_catalogo number not null ,
    tdfd_codigo number not null ,
    tdfd_nu_reg number not null ,
    tdfd_cod_control number not null ,
    tdfd_tipo_desc char(1) not null ,
    tdfd_fec_ini date not null ,
    tdfd_ult_act date,
    tdfd_fec_cer date,
    tdfd_monto number(16,2) not null ,
    tdfd_saldo number(16,2) not null ,
    tdfd_mensual number(16,2) not null ,
    tdfd_tot_cuotas number not null ,
    tdfd_num_cuotas number not null ,
    tdfd_documen char(6),
    tdfd_codeudor number,
    tdfd_nom_bene char(50),
    tdfd_juz_con char(50),
    tdfd_usuario char(8) not null ,
    tdfd_fec_hora TIMESTAMP(0) not null ,
    tdfd_terminal char(5) not null ,
    tdfd_accion char(1),
    
    constraint ck_tdfdes check (tdfd_accion IN ('A' ,'I' ,'B' )) 
  );
/
create table ADMIN.tmper 
  (
    tper_catalogo number not null ,
    tper_serie char(8),
    tper_grado number not null ,
    tper_arma number not null ,
    tper_nom1 char(15) not null ,
    tper_nom2 char(15),
    tper_ape1 char(15) not null ,
    tper_ape2 char(15),
    tper_ape3 char(15),
    tper_ced_ord char(4),
    tper_ced_reg number,
    tper_fec_ext_ced date,
    tper_ext_ced_lugar char(4) not null ,
    tper_est_civil char(1),
    tper_direccion char(50),
    tper_zona number,
    tper_dir_lugar char(4) not null ,
    tper_telefono number,
    tper_sexo char(1),
    tper_fec_nac date,
    tper_nac_lugar char(4) not null ,
    tper_promocion number,
    tper_afil_ipm char(1),
    tper_sangre char(3),
    tper_antiguedad number,
    tper_bienal number not null ,
    tper_plaza number not null ,
    tper_desc_empleo char(45) not null ,
    tper_fec_nomb date,
    tper_ord_gral char(7),
    tper_punto_og number,
    tper_situacion char(2) not null ,
    tper_prima_prof number,
    tper_usuario char(8) not null ,
    tper_cat_usuario number not null ,
    tper_fec_hora TIMESTAMP(0) not null ,
    tper_terminal char(5),
    tper_accion char(1),
    constraint pk_tmper primary key (tper_catalogo,tper_fec_hora)  
  );
/
create table ADMIN.boleta 
  (
    num_boleta number not null ,
    sol_boleta char(100) not null ,
    fecha_boleta date not null ,
    depend_boleta char(50) not null ,
    req_boleta char(50) not null ,
    datos_boleta char(50) not null ,
    ordenam_boleta char(30),
    recibio char(30),
    genero char(30),
    constraint pk_boleta primary key (num_boleta)  
  );
/
create table ADMIN.cuentas15 
  (
    cat number,
    cta char(20),
    banco number
  );
/
create table ADMIN.despachos 
  (
    des_catalogo number not null ,
    des_cantidad number(8,2) not null ,
    constraint pk_despachos primary key (des_catalogo)  
  );
/
create table ADMIN.det_isr 
  (
    ris_catalogo number not null ,
    ris_grado number not null ,
    ris_arma number not null ,
    ris_renneta number(16,2) not null ,
    ris_ipmcmm number(16,2) not null ,
    ris_retenc number(16,2) not null ,
    ris_saldo number(16,2) not null ,
    ris_situac char(2)
  );
/
create table ADMIN.detalle 
  (
    det_con_nit char(10) not null ,
    det_ven_nit char(10) not null ,
    det_articulo char(34) not null ,
    det_fec date not null ,
    det_correl char(9) not null ,
    det_valor number(16,2) not null 
  );
/
create table ADMIN.devoluciones 
  (
    dev_catalogo number not null ,
    dev_cantidad number(16,2) not null ,
    constraint pk_devoluciones primary key (dev_catalogo)  
  );
/
create table ADMIN.dper 
  (
    cod_conf char(4) not null ,
    catalogo number not null ,
    fecha date not null ,
    hora char(8) not null 
  );
/
create table ADMIN.fmdescue 
  (
    mde_codigo number not null ,
    mde_desc_ct char(8) not null ,
    mde_desc_md char(15) not null ,
    mde_desc_lg char(30) not null 
  );
/
create table ADMIN.fthreal400 
  (
    hreal_catal number not null ,
    hreal_acumul number not null 
  );
/
create table ADMIN.hisfin 
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
    ovarios char(15)
  );
/
create table ADMIN.ipm_cart 
  (
    ipm_credito char(9),
    ipm_catalogo number,
    ipm_nombre char(40),
    ipm_total_cuotas number,
    ipm_cuotas_van number,
    ipm_cod_unidad number,
    ipm_saldo_capital number(10,2),
    ipm_int_mora number(10,2),
    ipm_int_anio_ant number(10,2),
    ipm_int_mes_ant number(10,2),
    ipm_int_mes number(10,2),
    ipm_g_admon_ant number(10,2),
    ipm_seg_viv_ant number(10,2),
    ipm_g_admon number(10,2),
    ipm_seg_vivienda number(10,2),
    ipm_capital number(10,2),
    ipm_iva_mes_ant number(10,2),
    ipm_iva_mes number(10,2),
    ipm_total_desc number(10,2),
    ipm_fecha6 date,
    ipm_fecha8 date,
    ipm_hora8 char(10),
    ipm_usuario char(3),
    ipm_terminal char(3),
    ipm_cod number,
    ipm_paga1 char(1),
    ipm_paga2 char(1),
    constraint pk_ipm_cart_credito_cal primary key (ipm_credito,ipm_catalogo)  
  );
/
create table ADMIN.ipm_manto 
  (
    man_catalogo number not null ,
    man_cod_desc number,
    man_fecha date,
    man_cuota number(5,2),
    man_descontada char(1),
    constraint pk_ipm_manto primary key (man_catalogo,man_cod_desc)  
  );
/
create table ADMIN.seguridad 
  (
    seg_login char(10),
    seg_catalogo number,
    seg_plaza number
  );
/
create table ADMIN.pickers 
  (
    pic_prefijo number not null ,
    pic_codigo char(10) not null ,
    pic_descrip char(30) not null 
  );
/
create table ADMIN.n_asig_plaza 
  (
    asc_plaza number not null 
  );
/
create table ADMIN.n_control_plaza 
  (
    cp_catalogo number not null ,
    cp_plaza_a number not null ,
    cp_plaza_n number not null ,
    constraint pk_n_control_plaza primary key (cp_catalogo,cp_plaza_a,cp_plaza_n) 
  );
/
create table ADMIN.n_morg 
  (
    org_plaza number not null ,
    org_ceom char(6) not null ,
    org_dependencia number not null ,
    org_jerarquia char(10) not null ,
    org_grado number not null ,
    org_plaza_desc char(75) not null ,
    org_situacion char(1),
    org_cod_pago char(1),
    org_hrs_trab number not null ,
    org_fec_ult_mod date,
    org_ord_gral char(7),
    org_nominas char(1),
    
    constraint n_chk_org_cod_pa check (org_cod_pago IN ('1' ,'2' )) ,
    constraint pk_n_n_morg primary key (org_plaza)  
  );
/
create table ADMIN.n_mper 
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
    per_sexo char(1) not null ,
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
    
     constraint n_ck_per_afil_ipm check (per_afil_ipm IN ('0' ,'1' ,'2' )),
    
    constraint n_ck_per_ced_ord check (per_ced_ord IN ('A-1' ,'B-2' ,'C-3' ,'D-4' ,'E-5' ,'F-6' ,'G-7' ,'H-8' ,'I-9' ,'J-10' ,'K-11' ,'L-12' ,'M-13' ,'N-14' ,'�-15' ,'O-16' ,'P-17' ,'Q-18' ,'&-15' ,'�-15' ,'R-19' ,'S-20' ,'T-21' ,'U-22' ,'P-99' )) ,
    
    constraint n_ck_per_est_civil check (per_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )) ,
    
    constraint n_ck_per_sangre check (per_sangre IN ('O+' ,'O-' ,'A+' ,'A-' ,'AB+' ,'AB-' ,'B+' ,'B-' ,'P' )) ,
    constraint n_pk_n_mper primary key (per_catalogo)  
  );
/
create table ADMIN.n_mtit 
  (
    tit_depen number,
    tit_llave char(8) not null ,
    tit_desc_ct char(20) not null ,
    tit_desc_md char(27) not null ,
    tit_desc_lg char(300) not null 
  );
/
create table ADMIN.n_orgfun 
  (
    fun_plaza number,
    fun_ceom char(6),
    constraint pk_n_orgfun primary key (fun_plaza,fun_ceom) 
  );
/
create table ADMIN.n_plaza 
  (
    plaza number not null ,
    constraint pk_n_plaza primary key (plaza) 
  );
/
create table ADMIN.aud_conyugues 
  (
    militar number,
    e1 char(15),
    e2 char(15),
    e3 char(15),
    e4 char(15),
    desp_militar number,
    desp_e1 char(15),
    desp_e2 char(15),
    desp_e3 char(15),
    desp_e4 char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.conyugues 
  (
    militar number,
    e1 char(15) not null ,
    e2 char(15),
    e3 char(15) not null ,
    e4 char(15)
  );
/
create table ADMIN.lves_tallas 
  (
    lvt_catalogo number,
    lvt_pan number,
    lvt_cam number,
    lvt_zap number,
    lvt_birr number,
    lvt_pix char(5),
    lvt_som char(2),
    lvt_swt char(2),
    lvt_chu char(2),
    lvt_bot number,
    constraint pk_lves_tallas primary key (lvt_catalogo) 
  );
/
create table ADMIN.aud_lves_tallas 
  (
    lvt_catalogo number,
    lvt_pan number,
    lvt_cam number,
    lvt_zap number,
    lvt_birr number,
    lvt_pix char(5),
    lvt_som char(2),
    lvt_swt char(2),
    lvt_chu char(2),
    lvt_bot number,
    desp_lvt_catalogo number,
    desp_lvt_pan number,
    desp_lvt_cam number,
    desp_lvt_zap number,
    desp_lvt_birr number,
    desp_lvt_pix char(5),
    desp_lvt_som char(2),
    desp_lvt_swt char(2),
    desp_lvt_chu char(2),
    desp_lvt_bot number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.morg_temp 
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
    org_categoria varchar2(4)
  );
/
create table ADMIN.org_meom_detalle 
  (
    dmeom_codigo varchar2(6) not null ,
    dmeom_req number not null ,
    dmeom_orden number not null ,
    constraint pk_org_meom_detalle primary key (dmeom_codigo,dmeom_orden) 
  );
/
create table ADMIN.org_meom_funciones 
  (
    func_codigo varchar2(4) not null ,
    func_empleo varchar2(75),
    func_desc varchar2(255),
    func_orden number not null ,
    constraint pk_org_meom_funciones primary key (func_codigo,func_orden) 
  );
/
create table ADMIN.org_meom_req 
  (
    req_codigo number not null ,
    req_desc varchar2(255) not null ,
    constraint pk_org_meom_req primary key (req_codigo) 
  );
/
create table ADMIN.org_seguridad 
  (
    seg_id number not null ,
    seg_fecha TIMESTAMP not null ,
    seg_usuario char(8) not null ,
    seg_accion varchar2(1) not null ,
    seg_nombre varchar2(255) not null ,
    constraint pk_org_seguridad primary key (seg_id) 
  );
/
create table ADMIN.aud_org_meom_detalle 
  (
    dmeom_codigo varchar2(6),
    dmeom_req number,
    dmeom_orden number,
    desp_dmeom_codigo varchar2(6),
    desp_dmeom_req number,
    desp_dmeom_orden number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_org_meom_funciones 
  (
    func_codigo varchar2(4),
    func_empleo varchar2(75),
    func_desc varchar2(255),
    func_orden number,
    desp_func_codigo varchar2(4),
    desp_func_empleo varchar2(75),
    desp_func_desc varchar2(255),
    desp_func_orden number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_org_meom_req 
  (
    req_codigo number,
    req_desc varchar2(255),
    desp_req_codigo number,
    desp_req_desc varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oede_entrena 
  (
    de_refiere number,
    de_trans number,
    de_dep number,
    de_unidad number,
    de_fecha_inicio TIMESTAMP(0),
    de_fecha_fin TIMESTAMP(0),
    de_actividad number,
    de_requiere number,
    de_estado char(5),
    de_obs varchar2(255),
    de_elimina number,
    desp_de_refiere number,
    desp_de_trans number,
    desp_de_dep number,
    desp_de_unidad number,
    desp_de_fecha_inicio TIMESTAMP(0),
    desp_de_fecha_fin TIMESTAMP(0),
    desp_de_actividad number,
    desp_de_requiere number,
    desp_de_estado char(5),
    desp_de_obs varchar2(255),
    desp_de_elimina number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
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
    me_ftrans datetime year to fraction(3),
    me_user char(10),
    desp_me_trans number,
    desp_me_documentos char(40),
    desp_me_emana number,
    desp_me_encumple char(255),
    desp_me_tipo number,
    desp_me_fecha date,
    desp_me_motivo char(255),
    desp_me_elimina number,
    desp_me_ftrans datetime year to fraction(3),
    desp_me_user char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oetd_entrena 
  (
    tipd_codigo number,
    tipd_desc_lg char(255),
    desp_tipd_codigo number,
    desp_tipd_desc_lg char(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.oeac_entrena 
  (
    acti_codigo number not null ,
    acti_desc_lg varchar2(255),
    acti_tipo number not null ,
    constraint pk_oeac_entrena primary key (acti_codigo) 
  );
/
create table ADMIN.aud_oeac_entrena 
  (
    acti_codigo number,
    acti_desc_lg varchar2(255),
    acti_tipo number,
    desp_acti_codigo number,
    desp_acti_desc_lg varchar2(255),
    desp_acti_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oeta_entrena 
  (
    tipa_codigo number,
    tipa_desc_lg char(255),
    desp_tipa_codigo number,
    desp_tipa_desc_lg char(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.oedr_entrena 
  (
    der_refiere number,
    der_trans number not null ,
    der_requerimiento number,
    der_cantidad number
  );
/
create table ADMIN.aud_oedr_entrena 
  (
    der_refiere number,
    der_trans number,
    der_requerimiento number,
    der_cantidad number,
    desp_der_refiere number,
    desp_der_trans number,
    desp_der_requerimiento number,
    desp_der_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oerq_entrena 
  (
    req_codigo number,
    req_desc_lg char(255),
    req_tipo_req number,
    desp_req_codigo number,
    desp_req_desc_lg char(255),
    desp_req_tipo_req number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_oetr_entrena 
  (
    tipr_codigo number,
    tipr_desc_lg char(255),
    desp_tipr_codigo number,
    desp_tipr_desc_lg char(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.morg 
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
    
    constraint chk_org_cod_pago check (org_cod_pago IN ('1' ,'2' )),
    constraint pk_morg primary key (org_plaza)  
  );
/
create table ADMIN.oetd_entrena 
  (
    tipd_codigo number not null ,
    tipd_desc_lg varchar2(255,1),
    constraint pk_oetd_entrena primary key (tipd_codigo) 
  );
/
create table ADMIN.oeta_entrena 
  (
    tipa_codigo number not null ,
    tipa_desc_lg varchar2(255,1),
    constraint pk_oeta_entrena primary key (tipa_codigo) 
  );
/
create table ADMIN.oerq_entrena 
  (
    req_codigo number not null ,
    req_desc_lg varchar2(255,1),
    req_tipo_req number not null ,
    constraint pk_oerq_entrena primary key (req_codigo) 
  );
/
create table ADMIN.oetr_entrena 
  (
    tipr_codigo number not null ,
    tipr_desc_lg varchar2(255,1),
    constraint pk_oetr_entrena primary key (tipr_codigo) 
  );
/
create table ADMIN.oema_entrena 
  (
    me_trans number not null ,
    me_documentos varchar2(255,1) not null ,
    me_emana number not null ,
    me_encumple varchar2(255,1),
    me_tipo number,
    me_fecha date not null ,
    me_motivo varchar2(255,1),
    me_elimina number,
    me_ftrans datetime year to fraction(3) not null ,
    me_user char(10) not null ,
    constraint pk_oema_entrena primary key (me_trans) 
  );
/
create table ADMIN.oede_entrena 
  (
    de_refiere number not null ,
    de_trans number not null ,
    de_dep number,
    de_unidad number,
    de_fecha_inicio TIMESTAMP(0) not null ,
    de_fecha_fin TIMESTAMP(0) not null ,
    de_actividad number,
    de_requiere number,
    de_estado char(5),
    de_obs varchar2(255),
    de_elimina number,
    constraint pk_oede_entrena primary key (de_refiere,de_trans) 
  );
/
create table ADMIN.pcon_maestra 
  (
    mcon_codigo number not null ,
    mcon_desc_lg varchar2(45) not null ,
    mcon_clase varchar2(2),
    constraint pk_pcon_maestra primary key (mcon_codigo)  
  );
/
create table ADMIN.pcon_detalle 
  (
    dcon_catalogo number not null ,
    dcon_grado number not null ,
    dcon_condecoracion number not null ,
    dcon_fecha date not null ,
    dcon_ord_gral varchar2(30),
    dcon_punto_og number,
    dcon_reg_emdn varchar2(7),
    dcon_estado varchar2(2) not null ,
     constraint pk_pcon_detalle primary key (dcon_catalogo,dcon_condecoracion) 
  );
/
create table ADMIN.pcon_personalidad 
  (
    per_id number,
    per_nombres char(75),
    per_ape char(75),
    per_pais number,
    constraint pk_cond_personalidad primary key (per_id)  
  );
/
create table ADMIN.pcond_especial 
  (
    esp_codigo number not null ,
    esp_tipo number not null ,
    esp_descripcion varchar2(100) not null ,
    esp_id number not null ,
    esp_depen number not null ,
    constraint pk_pcond_especial primary key (esp_codigo)  
  );
/
create table ADMIN.aud_fdes_empresas 
  (
    emp_catalogo number,
    emp_codigo number,
    emp_fec_ini date,
    emp_fec_fin date,
    emp_registro varchar2(20),
    emp_mensual number(16,2),
    emp_saldo number(16,2),
    emp_control char(1),
    desp_emp_catalogo number,
    desp_emp_codigo number,
    desp_emp_fec_ini date,
    desp_emp_fec_fin date,
    desp_emp_registro varchar2(20),
    desp_emp_mensual number(16,2),
    desp_emp_saldo number(16,2),
    desp_emp_control char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.hftro 
  (
    hft_plaza number not null ,
    hft_fecha date not null ,
    hft_depen number not null ,
    hft_jerarquia char(12),
    hft_catalogo number not null ,
    hft_grado number not null ,
    hft_empleo char(45) not null ,
    hft_situacion char(2),
    hft_prog char(3),
    hft_grupo number,
    hft_sueldo number(16,2) not null ,
    hft_reenganche number(16,2) not null ,
    hft_prima_prof number(16,2) not null ,
    hft_representacion number(16,2) not null ,
    hft_responsabilida number(16,2) not null ,
    hft_alimentacion number(16,2) not null ,
    hft_aguinaldo number(16,2) not null ,
    hft_bono_14 number(16,2) not null ,
    hft_bon_emerg number(16,2),
    hft_bono_662000 number(16,2),
    hft_ipm number(16,2) not null ,
    hft_centro_med_mil number(16,2) not null ,
    hft_total number(16,2) not null ,
    hft_liquido number(16,2) not null ,
    hft_familiar number not null ,
    hft_corrida char(1) not null ,
    hft_cuenta char(20),
    hft_valor number,
    hft_che_situ char(1),
    hft_gastos_rep number(6,2),
    constraint pk_hftro primary key (hft_plaza,hft_fecha)  
  );
/
create table ADMIN.fdes_empresas 
  (
    emp_catalogo number not null ,
    emp_codigo number not null ,
    emp_fec_ini date,
    emp_fec_fin date,
    emp_registro varchar2(20),
    emp_mensual number(16,2),
    emp_saldo number(16,2),
    emp_control char(1),
    constraint pk_fdes_empresas primary key (emp_catalogo,emp_codigo,emp_registro) 
  );
/
create table ADMIN.peva_concept 
  (
    con_catalogo number not null ,
    con_periodo number not null ,
    con_grado number not null ,
    con_arma number not null ,
    con_plaza number not null ,
    con_desc_empleo varchar2(50) not null ,
    con_proy_carrera number not null ,
    con_eva_inmediato number not null ,
    con_eva_intermedio number not null ,
    con_eva_final number not null ,
    con_dependencia number not null ,
    con_funciones varchar2(250) not null ,
    con_obj1 varchar2(250) not null ,
    con_obj2 varchar2(250) not null ,
    con_obj3 varchar2(250) not null ,
    con_disciplina number not null ,
    con_interper number not null ,
    con_admond_rec number not null ,
    con_trabajo number not null ,
    con_comunicacion number not null ,
    con_coordinacion number not null ,
    con_plan_org number not null ,
    con_control number not null ,
    con_iniciativa number not null ,
    con_liderazgo number not null ,
    con_comp_social number not null ,
    con_adaptabilidad number not null ,
    con_solv_economica number not null ,
    con_cooperacion number not null ,
    con_discrecion number not null ,
    con_salud number not null ,
    con_prevision number not null ,
    con_seg_conf number not null ,
    con_vocacion number not null ,
    con_cap_analitica number not null ,
    con_obs varchar2(250),
    con_concep1 varchar2(250) not null ,
    con_concep2 varchar2(250),
    con_concep3 varchar2(250) not null ,
    constraint pk_peva_concept primary key (con_catalogo,con_periodo) 
  );
/
create table ADMIN.peva_proyeccion 
  (
    pro_codigo number not null ,
    pro_descripcion varchar2(250) not null ,
    constraint pk_peva_proyeccion primary key (pro_codigo) 
  );
/
create table ADMIN.peva_control_dep 
  (
    depc_codigo number not null ,
    depc_dependencia number not null ,
    depc_docrecibidos number,
    depc_docdevueltos number,
    depc_fec_recibidos date,
    depc_fec_devueltos date,
    depc_obs varchar2(250),
    constraint pkpeva_control_dep primary key (depc_codigo) 
  );
/
create table ADMIN.peva_periodos_ant 
  (
    per_codigo number not null ,
    per_fecha_inicio date not null ,
    per_fecha_fin date not null ,
    per_descripcion varchar2(50),
    per_activo char(1),
    constraint pk_peva_periodos_ant primary key (per_codigo) 
  );
/
create table ADMIN.aud_peva_concept 
  (
    con_catalogo number,
    con_periodo number,
    con_grado number,
    con_arma number,
    con_plaza number,
    con_desc_empleo varchar2(50),
    con_proy_carrera number,
    con_eva_inmediato number,
    con_eva_intermedio number,
    con_eva_final number,
    con_dependencia number,
    con_funciones varchar2(250),
    con_obj1 varchar2(250),
    con_obj2 varchar2(250),
    con_obj3 varchar2(250),
    con_disciplina number,
    con_interper number,
    con_admond_rec number,
    con_trabajo number,
    con_comunicacion number,
    con_coordinacion number,
    con_plan_org number,
    con_control number,
    con_iniciativa number,
    con_liderazgo number,
    con_comp_social number,
    con_adaptabilidad number,
    con_solv_economica number,
    con_cooperacion number,
    con_discrecion number,
    con_salud number,
    con_prevision number,
    con_seg_conf number,
    con_vocacion number,
    con_cap_analitica number,
    con_obs varchar2(250),
    con_concep1 varchar2(250),
    con_concep2 varchar2(250),
    con_concep3 varchar2(250),
    desp_con_catalogo number,
    desp_con_periodo number,
    desp_con_grado number,
    desp_con_arma number,
    desp_con_plaza number,
    desp_con_desc_empleo varchar2(50),
    desp_con_proy_carrera number,
    desp_con_eva_inmediato number,
    desp_con_eva_intermedio number,
    desp_con_eva_final number,
    desp_con_dependencia number,
    desp_con_funciones varchar2(250),
    desp_con_obj1 varchar2(250),
    desp_con_obj2 varchar2(250),
    desp_con_obj3 varchar2(250),
    desp_con_disciplina number,
    desp_con_interper number,
    desp_con_admond_rec number,
    desp_con_trabajo number,
    desp_con_comunicacion number,
    desp_con_coordinacion number,
    desp_con_plan_org number,
    desp_con_control number,
    desp_con_iniciativa number,
    desp_con_liderazgo number,
    desp_con_comp_social number,
    desp_con_adaptabilidad number,
    desp_con_solv_economica number,
    desp_con_cooperacion number,
    desp_con_discrecion number,
    desp_con_salud number,
    desp_con_prevision number,
    desp_con_seg_conf number,
    desp_con_vocacion number,
    desp_con_cap_analitica number,
    desp_con_obs varchar2(250),
    desp_con_concep1 varchar2(250),
    desp_con_concep2 varchar2(250),
    desp_con_concep3 varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_proyeccion 
  (
    pro_codigo number,
    pro_descripcion varchar2(250),
    desp_pro_codigo number,
    desp_pro_descripcion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_control_dep 
  (
    depc_codigo number,
    depc_dependencia number,
    depc_docrecibidos number,
    depc_docdevueltos number,
    depc_fec_recibidos date,
    depc_fec_devueltos date,
    depc_obs varchar2(250),
    desp_depc_codigo number,
    desp_depc_dependencia number,
    desp_depc_docrecibidos number,
    desp_depc_docdevueltos number,
    desp_depc_fec_recibidos date,
    desp_depc_fec_devueltos date,
    desp_depc_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_periodos_ant 
  (
    per_codigo number,
    per_fecha_inicio date,
    per_fecha_fin date,
    per_descripcion varchar2(50),
    per_activo char(1),
    desp_per_codigo number,
    desp_per_fecha_inicio date,
    desp_per_fecha_fin date,
    desp_per_descripcion varchar2(50),
    desp_per_activo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_usuario 
  (
    usu_usuario number,
    usu_clave varchar2(20),
    usu_empleo varchar2(45),
    desp_usu_usuario number,
    desp_usu_clave varchar2(20),
    desp_usu_empleo varchar2(45),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sop_equipos 
  (
    equ_codigo number not null ,
    equ_nombre varchar2(50) not null ,
    constraint pk_sop_equipos primary key (equ_codigo) 
  );
/
create table ADMIN.sop_marcas 
  (
    mar_codigo number not null ,
    mar_nombre varchar2(50) not null ,
    constraint pk_sop_marcas primary key (mar_codigo) 
  );
/
create table ADMIN.sop_soporte 
  (
    sop_codigo number not null ,
    sop_fec_ingreso date not null ,
    sop_oficio varchar2(50) not null ,
    sop_registro varchar2(20) not null ,
    sop_dependencia number not null ,
    sop_usuario varchar2(100) not null ,
    sop_telefono number,
    sop_seccion char(1) not null ,
    sop_equipo number not null ,
    sop_marca number not null ,
    sop_modelo varchar2(50),
    sop_serie varchar2(50),
    sop_componentes varchar2(255) not null ,
    sop_motivo varchar2(150) not null ,
    sop_inentrega varchar2(100) not null ,
    sop_recibetec number not null ,
    sop_diagnostico varchar2(150),
    sop_trabrealizado varchar2(150),
    sop_fec_egreso date,
    sop_entrego varchar2(100),
    sop_recibio varchar2(100),
    sop_mensaje number,
    sop_visita number not null ,
    constraint pk_sop_soporte primary key (sop_codigo) 
  );
/
create table ADMIN.aud_sop_equipos 
  (
    equ_codigo number,
    equ_nombre varchar2(50),
    desp_equ_codigo number,
    desp_equ_nombre varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sop_marcas 
  (
    mar_codigo number,
    mar_nombre varchar2(50),
    desp_mar_codigo number,
    desp_mar_nombre varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_sop_soporte 
  (
    sop_codigo number,
    sop_fec_ingreso date,
    sop_oficio varchar2(50),
    sop_registro varchar2(20),
    sop_dependencia number,
    sop_usuario varchar2(100),
    sop_telefono number,
    sop_seccion char(1),
    sop_equipo number,
    sop_marca number,
    sop_modelo varchar2(50),
    sop_serie varchar2(50),
    sop_componentes varchar2(255),
    sop_motivo varchar2(150),
    sop_inentrega varchar2(100),
    sop_recibetec number,
    sop_diagnostico varchar2(150),
    sop_trabrealizado varchar2(150),
    sop_fec_egreso date,
    sop_entrego varchar2(100),
    sop_recibio varchar2(100),
    sop_mensaje number,
    sop_visita number,
    desp_sop_codigo number,
    desp_sop_fec_ingreso date,
    desp_sop_oficio varchar2(50),
    desp_sop_registro varchar2(20),
    desp_sop_dependencia number,
    desp_sop_usuario varchar2(100),
    desp_sop_telefono number,
    desp_sop_seccion char(1),
    desp_sop_equipo number,
    desp_sop_marca number,
    desp_sop_modelo varchar2(50),
    desp_sop_serie varchar2(50),
    desp_sop_componentes varchar2(255),
    desp_sop_motivo varchar2(150),
    desp_sop_inentrega varchar2(100),
    desp_sop_recibetec number,
    desp_sop_diagnostico varchar2(150),
    desp_sop_trabrealizado varchar2(150),
    desp_sop_fec_egreso date,
    desp_sop_entrego varchar2(100),
    desp_sop_recibio varchar2(100),
    desp_sop_mensaje number,
    desp_sop_visita number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opaf_dominadas 
  (
    dom_edad number not null ,
    dom_sexo char(1) not null ,
    dom_repeticiones number not null ,
    dom_punteo number not null 
  );
/
create table ADMIN.opaf_abdominales 
  (
    abd_edad number not null ,
    abd_sexo char(1) not null ,
    abd_repeticiones number,
    abd_punteo number
  );
/
create table ADMIN.aud_opaf_dominadas 
  (
    dom_edad number,
    dom_sexo char(1),
    dom_repeticiones number,
    dom_punteo number,
    desp_dom_edad number,
    desp_dom_sexo char(1),
    desp_dom_repeticiones number,
    desp_dom_punteo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_abdominales 
  (
    abd_edad number,
    abd_sexo char(1),
    abd_repeticiones number,
    abd_punteo number,
    desp_abd_edad number,
    desp_abd_sexo char(1),
    desp_abd_repeticiones number,
    desp_abd_punteo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opaf_alterno 
  (
    alt_edad number not null ,
    alt_sexo char(1) not null ,
    alt_evento number,
    alt_norma char(5),
    constraint pk_opaf_alterno primary key (alt_edad,alt_sexo,alt_evento,alt_norma) 
  );
/
create table ADMIN.aud_opaf_alterno 
  (
    alt_edad number,
    alt_sexo char(1),
    alt_evento number,
    alt_norma char(5),
    desp_alt_edad number,
    desp_alt_sexo char(1),
    desp_alt_evento number,
    desp_alt_norma char(5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.opaf_carrera 
  (
    car_edad number not null ,
    car_sexo char(1) not null ,
    car_tiempo datetime hour to minute,
    car_punteo number
  );
/
create table ADMIN.aud_opaf_carrera 
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
create table ADMIN.eva_especialistas 
  (
    esp_catalogo number not null ,
    esp_ano number not null ,
    esp_tipo number not null ,
    esp_grado varchar2(200) not null ,
    esp_nom1 varchar2(200),
    esp_nom2 varchar2(200),
    esp_ape1 varchar2(200),
    esp_ape2 varchar2(200,200),
    esp_empleo varchar2(200),
    esp_plaza varchar2(200) not null ,
    esp_nom_comando varchar2(200) not null ,
    esp_anos1 number not null ,
    esp_meses1 number not null ,
    esp_dias1 number not null ,
    esp_evaluador number not null ,
    esp_eva_grado varchar2(200) not null ,
    esp_eva_nom1 varchar2(200) not null ,
    esp_eva_nom2 varchar2(200) not null ,
    esp_eva_ape1 varchar2(200) not null ,
    esp_eva_ape2 varchar2(200) not null ,
    esp_eva_puesto varchar2(200),
    esp_anos2 number not null ,
    esp_meses2 number not null ,
    esp_dias2 number not null ,
    esp_biofisico number not null ,
    esp_con_fisica number not null ,
    esp_eva1 number not null ,
    esp_eva2 number not null ,
    esp_eva3 number not null ,
    esp_eva4 number not null ,
    esp_demeritos number not null ,
    esp_arrestos number not null ,
    esp_merito1 number,
    esp_merito11 varchar2(200),
    esp_merito2 number,
    esp_merito22 varchar2(200),
    esp_subtotal1 number not null ,
    esp_concep1 number not null ,
    esp_concep2 number not null ,
    esp_concep3 number not null ,
    esp_concep4 number not null ,
    esp_concep5 number not null ,
    esp_concep6 number not null ,
    esp_concep7 number not null ,
    esp_concep8 number not null ,
    esp_concep9 number not null ,
    esp_concep10 number not null ,
    esp_concep11 number not null ,
    esp_concep12 number not null ,
    esp_concep13 number not null ,
    esp_concep14 number not null ,
    esp_concep15 number not null ,
    esp_subtotal2 number not null ,
    esp_total number not null ,
    esp_categoria varchar2(200) not null ,
    esp_motivadoras varchar2(200),
    esp_correctivas varchar2(200),
    esp_obs varchar2(200),
    constraint pk_eva_especialistas primary key (esp_catalogo,esp_ano) 
  );
/
create table ADMIN.eva_tipo 
  (
    tip_codigo number not null ,
    tip_descripcion varchar2(200) not null ,
    constraint pk_eva_tipo primary key (tip_codigo) 
  );
/
create table ADMIN.aud_eva_tipo 
  (
    tip_codigo number,
    tip_descripcion varchar2(200),
    desp_tip_codigo number,
    desp_tip_descripcion varchar2(200),
    accion varchar2(1) not null ,
    usuario varchar2(12) not null ,
    hora TIMESTAMP(0) not null 
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
    esp_ape2 varchar2(200,200),
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
    accion varchar2(1) not null ,
    usuario varchar2(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.permiso_autocom 
  (
    aut_plaza varchar2(50) not null ,
    aut_permiso number not null ,
    constraint pk_permiso_autocom primary key (aut_plaza) 
  );
/
create table ADMIN.aud_permiso_autocom 
  (
    aut_plaza varchar2(50) not null ,
    aut_permiso number,
    desp_aut_plaza varchar2(50) not null ,
    desp_aut_permiso number,
    usuario varchar2(12) not null ,
    accion varchar2(1) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluaciones 
  (
    e_catalogo number not null ,
    e_evaluacion number not null ,
    e_numero number not null ,
    e_edad number not null ,
    e_peso number not null ,
    e_talla number(3,2) not null ,
    e_imc number(4,2) not null ,
    e_diagnost number not null ,
    e_ref_dd varchar2(1) not null ,
    e_fecha date 
        default current year to day,
    e_asist_dd varchar2(1) not null ,
    e_resultado varchar2(40),
    e_grado number,
    e_puntuacion number(3,2),
    e_usuario varchar2(30),
    constraint pk_evaluaciones primary key (e_catalogo,e_evaluacion,e_numero)  
  );
/
create table ADMIN.aud_evaluaciones 
  (
    e_catalogo number,
    e_evaluacion number,
    e_numero number,
    e_edad number,
    e_peso number,
    e_talla number(3,2),
    e_imc number(4,2),
    e_diagnost number,
    e_ref_dd varchar2(1),
    e_fecha date,
    e_asist_dd varchar2(1),
    e_resultado varchar2(40),
    e_grado number,
    e_puntuacion number(3,2),
    e_usuario varchar2(30),
    desp_e_catalogo number,
    desp_e_evaluacion number,
    desp_e_numero number,
    desp_e_edad number,
    desp_e_peso number,
    desp_e_talla number(3,2),
    desp_e_imc number(4,2),
    desp_e_diagnost number,
    desp_e_ref_dd varchar2(1),
    desp_e_fecha date,
    desp_e_asist_dd varchar2(1),
    desp_e_resultado varchar2(40),
    desp_e_grado number,
    desp_e_puntuacion number(3,2),
    desp_e_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.jefes_ant 
  (
    jef_plaza number not null ,
    jef_categoria char(4) not null ,
    jef_puesto varchar2(200) not null 
  );
/
create table ADMIN.aud_morg 
  (
    plaza number,
    ceom char(6),
    dependencia number,
    jerarquia char(10),
    grado number,
    plaza_desc char(75),
    situacion char(1),
    cod_pago char(1),
    hrs_trab number,
    fec_ult_mod date,
    org_gradol char(7),
    nominas char(1),
    desp_plaza number,
    desp_ceom char(6),
    desp_dependencia number,
    desp_jerarquia char(10),
    desp_grado number,
    desp_plaza_desc char(75),
    desp_situacion char(1),
    desp_cod_pago char(1),
    desp_hrs_trab number,
    desp_fec_ult_mod date,
    desp_org_gradol char(7),
    desp_nominas char(1),
    accion char(1) not null ,
    usuario char(10) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_grat 
  (
    dfdg_catalogo number,
    dfdg_codigo number,
    dfdg_nu_reg number,
    dfdg_cod_control number,
    dfdg_tipo_desc char(1),
    dfdg_fec_ini date,
    dfdg_ult_act date,
    dfdg_fec_cer date,
    dfdg_monto number(16,2),
    dfdg_saldo number(16,2),
    dfdg_mensual number(16,2),
    dfdg_tot_cuotas number,
    dfdg_num_cuotas number,
    dfdg_documen char(6),
    dfdg_codeudor number,
    dfdg_nom_bene char(50),
    dfdg_juz_con char(50),
    dfdg_si_no char(1),
    desp_dfdg_catalogo number,
    desp_dfdg_codigo number,
    desp_dfdg_nu_reg number,
    desp_dfdg_cod_control number,
    desp_dfdg_tipo_desc char(1),
    desp_dfdg_fec_ini date,
    desp_dfdg_ult_act date,
    desp_dfdg_fec_cer date,
    desp_dfdg_monto number(16,2),
    desp_dfdg_saldo number(16,2),
    desp_dfdg_mensual number(16,2),
    desp_dfdg_tot_cuotas number,
    desp_dfdg_num_cuotas number,
    desp_dfdg_documen char(6),
    desp_dfdg_codeudor number,
    desp_dfdg_nom_bene char(50),
    desp_dfdg_juz_con char(50),
    desp_dfdg_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.evaluacion_ant 
  (
    eva_catalogo number,
    eva_fecha date,
    eva_grado number,
    eva_plaza number,
    eva_te char(8) not null ,
    eva_tp char(8) not null ,
    eva_cat_ev number,
    constraint pk_evaluacion_ant primary key (eva_catalogo,eva_fecha) 
  );
/
create table ADMIN.ef_fuerza 
  (
    ef_fecha date not null ,
    ef_depen number not null ,
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
    ef_total_destinos number,
    ef_toe number,
    ef_usuario number not null ,
    ef_observaciones varchar2(250),
    constraint pk_ef_fuerza primary key (ef_fecha,ef_depen,ef_destino) 
  );
/
create table ADMIN.ef_destinos_ant 
  (
    efd_codigo number not null ,
    efd_desc_lg varchar2(75) not null ,
    efd_activo char(1) 
        default 'S' not null ,
    constraint pk_efd_codigo primary key (efd_codigo)  
  );
/
create table ADMIN.ef_usuarios 
  (
    efu_usuario number not null ,
    efu_depen number not null ,
    efu_nivel char(1) default '1',
     constraint efu_usuario primary key (efu_usuario) 
  );
/
create table ADMIN.diagnostico 
  (
    d_codigo number not null ,
    d_descrip varchar2(40) not null ,
    constraint pk_diagnostico primary key (d_codigo) 
  );
/
create table ADMIN.evaluacion 
  (
    ev_evaluacion number not null ,
    ev_ano number not null ,
    ev_observaciones varchar2(40),
    constraint pk_evaluacion primary key (ev_evaluacion) 
  );
/
create table ADMIN.aud_ef_fuerza 
  (
    ef_fecha date,
    ef_depen number,
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
    ef_total_destinos number,
    ef_toe number,
    ef_usuario number,
    ef_observaciones varchar2(250),
    desp_ef_fecha date,
    desp_ef_depen number,
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
    desp_ef_total_destinos number,
    desp_ef_toe number,
    desp_ef_usuario number,
    desp_ef_observaciones varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ef_destinos_ant 
  (
    efd_codigo number,
    efd_desc_lg varchar2(75),
    efd_activo char(1),
    desp_efd_codigo number,
    desp_efd_desc_lg varchar2(75),
    desp_efd_activo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ef_usuarios 
  (
    efu_usuario number,
    efu_depen number,
    efu_nivel char(1),
    desp_efu_usuario number,
    desp_efu_depen number,
    desp_efu_nivel char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_asignaciones 
  (
    asi_curso number not null ,
    asi_materia number not null ,
    constraint pk_ei_asignaciones primary key (asi_curso,asi_materia) 
  );
/
create table ADMIN.aud_ei_asignaciones 
  (
    asi_curso number,
    asi_materia number,
    desp_asi_curso number,
    desp_asi_materia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_cursos_asig 
  (
    curasig_codigo number not null ,
    curasig_catalogo number not null ,
    curasig_fecha date not null ,
    curasig_obs char(100),
    curasig_grado char(100),
    constraint pk:_ei_cursos_asig primary key (curasig_codigo,curasig_catalogo) 
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora datetime hour to minute not null 
  );
/
create table ADMIN.ei_cursos_reali 
  (
    curr_tipo number not null ,
    curr_referencia number not null ,
    curr_desc_lg char(75) not null ,
    curr_desc_ct char(50) not null ,
    curr_inicia date not null ,
    curr_final date not null ,
    curr_obs char(100),
    constraint pk_ei_cursos_reali primary key (curr_tipo,curr_referencia) 
  );
/
create table ADMIN.aud_ei_cursos_reali 
  (
    curr_tipo number,
    curr_referencia number,
    curr_desc_lg char(75),
    curr_desc_ct char(50),
    curr_inicia date,
    curr_final date,
    curr_obs char(100),
    desp_curr_tipo number,
    desp_curr_referencia number,
    desp_curr_desc_lg char(75),
    desp_curr_desc_ct char(50),
    desp_curr_inicia date,
    desp_curr_final date,
    desp_curr_obs char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_mper_extranjero 
  (
    ext_codigo number not null ,
    ext_grado char(50) not null ,
    ext_arma char(50) not null ,
    ext_nom1 char(15) not null ,
    ext_nom2 char(15),
    ext_ape1 char(15) not null ,
    ext_ape2 char(15),
    ext_nacionalidad char(30) not null ,
    ext_tipo_doc_id char(10) not null ,
    ext_num_doc_id char(20) not null ,
    ext_fec_nac date not null ,
    ext_sexo char(1) not null ,
    ext_tipo_sangre char(3) not null ,
    ext_estado_civil char(1) not null ,
    ext_direccion char(100),
    ext_telefono1 char(12),
    ext_telefono2 char(12),
    
    constraint ck_ext_sexo check (ext_sexo IN ('M' ,'F' )),
    
    constraint ck_ext_estado_civil check (ext_estado_civil IN ('C' ,'S' ,'V' ,'U' ,'D' )),
    constraint pk_ei_mper_extranjero primary key (ext_codigo) 
  );
/
create table ADMIN.aud_ei_mper_extranjero 
  (
    ext_codigo number,
    ext_grado char(50),
    ext_arma char(50),
    ext_nom1 char(15),
    ext_nom2 char(15),
    ext_ape1 char(15),
    ext_ape2 char(15),
    ext_nacionalidad char(30),
    ext_tipo_doc_id char(10),
    ext_num_doc_id char(20),
    ext_fec_nac date,
    ext_sexo char(1),
    ext_tipo_sangre char(3),
    ext_estado_civil char(1),
    ext_direccion char(100),
    ext_telefono1 char(12),
    ext_telefono2 char(12),
    desp_ext_codigo number,
    desp_ext_grado char(50),
    desp_ext_arma char(50),
    desp_ext_nom1 char(15),
    desp_ext_nom2 char(15),
    desp_ext_ape1 char(15),
    desp_ext_ape2 char(15),
    desp_ext_nacionalidad char(30),
    desp_ext_tipo_doc_id char(10),
    desp_ext_num_doc_id char(20),
    desp_ext_fec_nac date,
    desp_ext_sexo char(1),
    desp_ext_tipo_sangre char(3),
    desp_ext_estado_civil char(1),
    desp_ext_direccion char(100),
    desp_ext_telefono1 char(12),
    desp_ext_telefono2 char(12),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_materias 
  (
    mat_codigo number not null ,
    mat_descripcion char(50) not null ,
    mat_observaciones char(100),
    primary key (mat_codigo) 
  );
/
create table ADMIN.aud_ei_materias 
  (
    mat_codigo number,
    mat_descripcion char(50),
    mat_observaciones char(100),
    desp_mat_codigo number,
    desp_mat_descripcion char(50),
    desp_mat_observaciones char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_notas 
  (
    not_catalogo number not null ,
    not_curso number not null ,
    not_materia number not null ,
    not_zona number(4,2),
    not_final number(5,2),
    not_rec_uno number(4,2),
    not_rec_dos number(4,2),
    not_obs char(100),
    constraint pk_ei_notas primary key (not_catalogo,not_curso,not_materia) 
  );
/
create table ADMIN.aud_ei_notas 
  (
    not_catalogo number,
    not_curso number,
    not_materia number,
    not_zona number(4,2),
    not_final number(5,2),
    not_rec_uno number(4,2),
    not_rec_dos number(4,2),
    not_obs char(100),
    desp_not_catalogo number,
    desp_not_curso number,
    desp_not_materia number,
    desp_not_zona number(4,2),
    desp_not_final number(5,2),
    desp_not_rec_uno number(4,2),
    desp_not_rec_dos number(4,2),
    desp_not_obs char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ei_tipo_curso 
  (
    tcur_codigo number not null ,
    tcur_descripcion char(50) not null ,
    tcur_observaciones varchar2(100),
    constraint pk_ei_tipo_curso primary key (tcur_codigo) 
  );
/
create table ADMIN.aud_ei_tipo_curso 
  (
    tcur_codigo number,
    tcur_descripcion char(50),
    tcur_observaciones varchar2(100),
    desp_tcur_codigo number,
    desp_tcur_descripcion char(50),
    desp_tcur_observaciones varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ef_detalle 
  (
    ef_fecha date not null ,
    ef_depen number not null ,
    ef_destino number not null ,
    ef_numero number not null ,
    ef_ofs number,
    ef_esp number,
    ef_tropa number,
    ef_cdtes number,
    ef_obs varchar2(250),
    ef_grado number,
    ef_comando number,
    ef_tiempo varchar2(20),
    constraint pk_ef_detalle primary key (ef_fecha,ef_depen,ef_destino,ef_numero) 
  );
/
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
    desp_ef_obs varchar2(250,1),
    desp_ef_grado number,
    desp_ef_comando number,
    desp_ef_tiempo varchar2(20,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_radius1 
  (
    codigo number,
    comando char(150),
    usuario_nt char(50),
    e_mail char(50),
    pwd1_nt char(8),
    pwd2_nt char(8),
    pwd3_nt char(8),
    pwd4_nt char(8),
    cta_radius char(50),
    pwd1_rad char(8),
    pwd2_rad char(8),
    pwd3_rad char(8),
    pwd4_rad char(8),
    desp_codigo number,
    desp_comando char(150),
    desp_usuario_nt char(50),
    desp_e_mail char(50),
    desp_pwd1_nt char(8),
    desp_pwd2_nt char(8),
    desp_pwd3_nt char(8),
    desp_pwd4_nt char(8),
    desp_cta_radius char(50),
    desp_pwd1_rad char(8),
    desp_pwd2_rad char(8),
    desp_pwd3_rad char(8),
    desp_pwd4_rad char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0)
  );
/
create table ADMIN.pass 
  (
    pas_correla number not null ,
    pas_password char(8) not null ,
    pas_status number not null ,
    pas_fecha date not null ,
    constraint pk_pass primary key (pas_password) 
  );
/
create table ADMIN.ef_destinos 
  (
    efd_codigo number not null ,
    efd_correla number,
    efd_desc_lg varchar2(75) not null ,
    efd_activo char(1) 
        default 'S' not null ,
    constraint pk_efd_codigo1 primary key (efd_codigo)  
  );
/
create table ADMIN.aud_ef_destinos 
  (
    efd_codigo number,
    efd_correla number,
    efd_desc_lg varchar2(75),
    efd_activo char(1),
    desp_efd_codigo number,
    desp_efd_correla number,
    desp_efd_desc_lg varchar2(75),
    desp_efd_activo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_opaf_notas 
  (
    not_catalogo number,
    not_fecha date,
    not_periodo varchar2(6),
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
    desp_not_periodo varchar2(6),
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
create table ADMIN.opaf_notas 
  (
    not_catalogo number not null ,
    not_fecha date not null ,
    not_periodo varchar2(6),
    not_dominadas number not null ,
    not_punteo_dom number not null ,
    not_abdominales number not null ,
    not_punteo_abd number not null ,
    not_carrera datetime minute to second not null ,
    not_punteo_car number not null ,
    not_promedio number(5,2) not null ,
    not_obs varchar2(255),
    not_tipo varchar2(1) not null ,
    not_revisado number not null ,
    not_dependencia number not null ,
    not_peso number not null ,
    not_estatura number(3,2) not null ,
    not_imc number(4,2) not null ,
    not_perfil varchar2(15) not null ,
    not_fec_certi date,
    not_grado number not null ,
    not_usuario number not null ,
    not_acta varchar2(100),
    not_extemporaneo number not null ,
    not_evento number,
    constraint pk_opaf_notas primary key (not_catalogo,not_fecha) 
  );
/
create table ADMIN.opaf_usuario 
  (
    usu_catalogo number not null ,
    usu_clave varchar2(20) not null ,
    usu_plaza number not null ,
    usu_nivel number not null ,
    usu_status number not null ,
    constraint pk_opaf_usuario primary key (usu_catalogo) 
  );
/
create table ADMIN.aud_larm_det 
  (
    det_cat number,
    det_plaza number,
    det_fec_ini date,
    det_fec_fin date,
    det_cat_per number,
    det_sit number,
    det_usuario varchar2(30),
    desp_det_cat number,
    desp_det_plaza number,
    desp_det_fec_ini date,
    desp_det_fec_fin date,
    desp_det_cat_per number,
    desp_det_sit number,
    desp_det_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_lot 
  (
    lot_tipo number,
    lot_cod number,
    lot_marca char(30),
    lot_modelo char(30),
    lot_calibre char(10),
    lot_lote char(10),
    lot_hecho number,
    lot_fec_compra date,
    tip_antiguo char(10),
    tip_desc_ct char(30),
    lot_precio number(16,2),
    lot_usuario varchar2(30),
    desp_lot_tipo number,
    desp_lot_cod number,
    desp_lot_marca char(30),
    desp_lot_modelo char(30),
    desp_lot_calibre char(10),
    desp_lot_lote char(10),
    desp_lot_hecho number,
    desp_lot_fec_compra date,
    desp_tip_antiguo char(10),
    desp_tip_desc_ct char(30),
    desp_lot_precio number(16,2),
    desp_lot_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_sit 
  (
    sit_cod number,
    sit_desc_lg char(35),
    sit_desc_md char(20),
    sit_desc_ct char(12),
    sit_cod_ant char(1),
    sit_usuario varchar2(30),
    desp_sit_cod number,
    desp_sit_desc_lg char(35),
    desp_sit_desc_md char(20),
    desp_sit_desc_ct char(12),
    desp_sit_cod_ant char(1),
    desp_sit_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_tip 
  (
    tip_cod number,
    tip_desc_lg char(30),
    tip_desc_md char(15),
    tip_desc_ct char(9),
    tip_asigna char(1),
    tip_usuario varchar2(30),
    desp_tip_cod number,
    desp_tip_desc_lg char(30),
    desp_tip_desc_md char(15),
    desp_tip_desc_ct char(9),
    desp_tip_asigna char(1),
    desp_tip_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmarmas 
  (
    arm_cat number,
    arm_tipo number,
    arm_lote number,
    arm_numero char(20),
    arm_plaza number,
    arm_sit number,
    arm_fec_situ date,
    arm_usuario varchar2(30),
    desp_arm_cat number,
    desp_arm_tipo number,
    desp_arm_lote number,
    desp_arm_numero char(20),
    desp_arm_plaza number,
    desp_arm_sit number,
    desp_arm_fec_situ date,
    desp_arm_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lhrep 
  (
    hre_num number,
    hre_sis char(1),
    hre_cat number,
    hre_mot char(60),
    hre_fec date,
    hre_cst number(16,2),
    hre_usuario varchar2(30),
    desp_hre_num number,
    desp_hre_sis char(1),
    desp_hre_cat number,
    desp_hre_mot char(60),
    desp_hre_fec date,
    desp_hre_cst number(16,2),
    desp_hre_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_sit 
  (
    sit_cod number not null ,
    sit_desc_lg char(35) not null ,
    sit_desc_md char(20) not null ,
    sit_desc_ct char(12) not null ,
    sit_cod_ant char(1),
    sit_usuario varchar2(30) 
        default user,
    constraint pk_larm_sit primary key (sit_cod)  
  );
/
create table ADMIN.larm_tip 
  (
    tip_cod number not null ,
    tip_desc_lg char(30) not null ,
    tip_desc_md char(15) not null ,
    tip_desc_ct char(9) not null ,
    tip_asigna char(1) not null ,
    tip_usuario varchar2(30) 
        default user,
    constraint pk_larm_tip primary key (tip_cod)  
  );
/
create table ADMIN.larm_lot 
  (
    lot_tipo number not null ,
    lot_cod number not null ,
    lot_marca char(30) not null ,
    lot_modelo char(30) not null ,
    lot_calibre char(30) not null ,
    lot_lote char(10) not null ,
    lot_hecho number not null ,
    lot_fec_compra date,
    tip_antiguo char(10),
    tip_desc_ct char(50),
    lot_precio number(10,2),
    lot_usuario varchar2(30) 
        default user,
    constraint pk_larmlot primary key (lot_cod,lot_tipo)  
  );
/
create table ADMIN.larm_loc 
  (
    vplaza number,
    vper_cat number,
    vper_grado number,
    vgrado varchar2(8),
    vape1 char(15),
    vape2 char(15),
    vdesc_plaza char(75),
    vceom char(6),
    varm_cat number,
    vtipo char(30),
    vlot_arm number,
    vtip_arm number,
    vno_arm char(20),
    vsit_desc char(20),
    vsit_codigo number,
    vjerar char(10)
  );
/
create table ADMIN.lmarmas 
  (
    arm_cat number not null ,
    arm_tipo number not null ,
    arm_lote number not null ,
    arm_numero char(20) not null ,
    arm_plaza number not null ,
    arm_sit number not null ,
    arm_fec_situ date not null ,
    arm_usuario varchar2(30) 
        default user,
    constraint pk_lmarmas primary key (arm_cat)  
  );
/
create table ADMIN.larm_det 
  (
    det_cat number not null ,
    det_plaza number not null ,
    det_fec_ini date not null ,
    det_fec_fin date not null ,
    det_cat_per number not null ,
    det_sit number not null ,
    det_usuario varchar2(30),
    
    constraint ck_det_fec_fin check (det_fec_fin >= det_fec_ini ) ,
    constraint pk_larm_det primary key (det_cat,det_plaza,det_fec_ini) 
  );
/
create table ADMIN.lhrep 
  (
    hre_num number,
    hre_sis char(1) not null ,
    hre_cat number not null ,
    hre_mot char(60) not null ,
    hre_fec date not null ,
    hre_cst number(16,2) not null ,
    hre_usuario varchar2(30) 
        default user,
    constraint pk_lhrep primary key (hre_sis,hre_cat,hre_fec) 
  );
/
create table ADMIN.larm_detalle 
  (
    deta_cat number not null ,
    deta_lote number not null ,
    deta_numero char(20) not null ,
    deta_plaza number not null ,
    deta_sit number not null ,
    deta_doc varchar2(100,1) not null ,
    deta_fecha date not null ,
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
    deta_doc varchar2(100,1),
    deta_fecha date,
    deta_usuario varchar2(8,1),
    desp_deta_cat number,
    desp_deta_lote number,
    desp_deta_numero char(20),
    desp_deta_plaza number,
    desp_deta_sit number,
    desp_deta_doc varchar2(100,1),
    desp_deta_fecha date,
    desp_deta_usuario varchar2(8,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hfasig 
  (
    hfa_catalogo number,
    hfa_fecha date,
    hfa_prog char(20),
    hfa_grupo number,
    hfa_clase char(1),
    hfa_grado number,
    hfa_arma number,
    hfa_sexo char(1),
    hfa_plaza number,
    hfa_desc_empleo char(45),
    hfa_ceom char(6),
    hfa_jerarquia char(10),
    hfa_hrs_trab number,
    hfa_ord_gral char(7),
    hfa_bienal number,
    hfa_depen number,
    hfa_sueldo number(16,2),
    hfa_bon_bienal number(8,2),
    hfa_prima_resp number(8,2),
    hfa_prima_esp number(8,2),
    hfa_gastos_rep number(8,2),
    hfa_bon_emerg number(8,2),
    hfa_dividendos number(8,2),
    hfa_aguinaldo number(8,2),
    hfa_bono_vac number(8,2),
    hfa_bono_14 number(8,2),
    hfa_bono_trans number(8,2),
    hfa_prima_ing number(8,2),
    hfa_prima_prof number(8,2),
    hfa_ipm number(8,2),
    hfa_montepio number(8,2),
    hfa_fianza number(8,2),
    hfa_hos_mil number(8,2),
    hfa_club_ofi number(8,2),
    hfa_club_esp number(8,2),
    hfa_liquido number(8,2),
    hfa_corrida char(1),
    hfa_unidad number,
    hfa_complemento number(8,2),
    hfa_cuenta char(20),
    hfa_prima_ext number(8,2),
    hfa_bono_ali number(8,2),
    desp_hfa_catalogo number,
    desp_hfa_fecha date,
    desp_hfa_prog char(20),
    desp_hfa_grupo number,
    desp_hfa_clase char(1),
    desp_hfa_grado number,
    desp_hfa_arma number,
    desp_hfa_sexo char(1),
    desp_hfa_plaza number,
    desp_hfa_desc_empleo char(45),
    desp_hfa_ceom char(6),
    desp_hfa_jerarquia char(10),
    desp_hfa_hrs_trab number,
    desp_hfa_ord_gral char(7),
    desp_hfa_bienal number,
    desp_hfa_depen number,
    desp_hfa_sueldo number(16,2),
    desp_hfa_bon_bienal number(8,2),
    desp_hfa_prima_resp number(8,2),
    desp_hfa_prima_esp number(8,2),
    desp_hfa_gastos_rep number(8,2),
    desp_hfa_bon_emerg number(8,2),
    desp_hfa_dividendos number(8,2),
    desp_hfa_aguinaldo number(8,2),
    desp_hfa_bono_vac number(8,2),
    desp_hfa_bono_14 number(8,2),
    desp_hfa_bono_trans number(8,2),
    desp_hfa_prima_ing number(8,2),
    desp_hfa_prima_prof number(8,2),
    desp_hfa_ipm number(8,2),
    desp_hfa_montepio number(8,2),
    desp_hfa_fianza number(8,2),
    desp_hfa_hos_mil number(8,2),
    desp_hfa_club_ofi number(8,2),
    desp_hfa_club_esp number(8,2),
    desp_hfa_liquido number(8,2),
    desp_hfa_corrida char(1),
    desp_hfa_unidad number,
    desp_hfa_complemento number(8,2),
    desp_hfa_cuenta char(20),
    desp_hfa_prima_ext number(8,2),
    desp_hfa_bono_ali number(8,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_documento 
  (
    doc_codigo number,
    doc_depend number,
    doc_tipo number,
    doc_nombre char(20),
    doc_prioridad char(1),
    doc_asunto char(250),
    doc_fec_realizado TIMESTAMP,
    doc_fec_in TIMESTAMP,
    doc_num_hojas number,
    doc_destino number,
    doc_procedencia number,
    doc_status char(1),
    doc_interesado char(50),
    doc_clasificacion number,
    doc_prefijo number,
    doc_proposito number,
    doc_recibe number,
    doc_int_ext char(1),
    doc_solucion char(1),
    doc_referencia char(20),
    doc_of_actual number,
    doc_ult_tras TIMESTAMP,
    desp_doc_codigo number,
    desp_doc_depend number,
    desp_doc_tipo number,
    desp_doc_nombre char(20),
    desp_doc_prioridad char(1),
    desp_doc_asunto char(250),
    desp_doc_fec_realizado TIMESTAMP,
    desp_doc_fec_in TIMESTAMP,
    desp_doc_num_hojas number,
    desp_doc_destino number,
    desp_doc_procedencia number,
    desp_doc_status char(1),
    desp_doc_interesado char(50),
    desp_doc_clasificacion number,
    desp_doc_prefijo number,
    desp_doc_proposito number,
    desp_doc_recibe number,
    desp_doc_int_ext char(1),
    desp_doc_solucion char(1),
    desp_doc_referencia char(20),
    desp_doc_of_actual number,
    desp_doc_ult_tras TIMESTAMP,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hfasigc 
  (
    hfa_catalogo number,
    hfa_fecha date,
    hfa_codigo number,
    hfa_nu_reg number,
    hfa_monto number(16,2),
    hfa_mensual number(16,2),
    hfa_saldo number(16,2),
    hfa_corrida char(1),
    hfa_varios char(15),
    desp_hfa_catalogo number,
    desp_hfa_fecha date,
    desp_hfa_codigo number,
    desp_hfa_nu_reg number,
    desp_hfa_monto number(16,2),
    desp_hfa_mensual number(16,2),
    desp_hfa_saldo number(16,2),
    desp_hfa_corrida char(1),
    desp_hfa_varios char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_btrab 
  (
    dfdt_catalogo number,
    dfdt_codigo number,
    dfdt_nu_reg number,
    dfdt_cod_control number,
    dfdt_tipo_desc char(1),
    dfdt_fec_ini date,
    dfdt_ult_act date,
    dfdt_fec_cer date,
    dfdt_monto number(16,2),
    dfdt_saldo number(16,2),
    dfdt_mensual number(16,2),
    dfdt_tot_cuotas number,
    dfdt_num_cuotas number,
    dfdt_documen char(6),
    dfdt_codeudor number,
    dfdt_nom_bene char(50),
    dfdt_juz_con char(50),
    dfdt_si_no char(1),
    desp_dfdt_catalogo number,
    desp_dfdt_codigo number,
    desp_dfdt_nu_reg number,
    desp_dfdt_cod_control number,
    desp_dfdt_tipo_desc char(1),
    desp_dfdt_fec_ini date,
    desp_dfdt_ult_act date,
    desp_dfdt_fec_cer date,
    desp_dfdt_monto number(16,2),
    desp_dfdt_saldo number(16,2),
    desp_dfdt_mensual number(16,2),
    desp_dfdt_tot_cuotas number,
    desp_dfdt_num_cuotas number,
    desp_dfdt_documen char(6),
    desp_dfdt_codeudor number,
    desp_dfdt_nom_bene char(50),
    desp_dfdt_juz_con char(50),
    desp_dfdt_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_hfdes1 
  (
    hfd_catalogo number,
    hfd_fecha date,
    hfd_codigo number,
    hfd_nu_reg number,
    hfd_monto number(16,2),
    hfd_mensual number(16,2),
    hfd_saldo number(16,2),
    hfd_corrida char(1),
    hfd_varios char(15),
    desp_hfd_catalogo number,
    desp_hfd_fecha date,
    desp_hfd_codigo number,
    desp_hfd_nu_reg number,
    desp_hfd_monto number(16,2),
    desp_hfd_mensual number(16,2),
    desp_hfd_saldo number(16,2),
    desp_hfd_corrida char(1),
    desp_hfd_varios char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfasig 
  (
    antes1 char(12),
    antes2 char(8),
    antes3 char(22),
    antes4 char(22),
    despues1 char(12),
    despues2 char(8),
    despues3 char(22),
    despues4 char(22),
    hora TIMESTAMP(0),
    accion char(1) not null ,
    usuario char(12) not null ,
    tabname char(15) not null 
  );
/
create table ADMIN.aud_hfdes 
  (
    hfd_catalogo number,
    hfd_fecha date,
    hfd_codigo number,
    hfd_nu_reg number,
    hfd_monto number(16,2),
    hfd_mensual number(16,2),
    hfd_saldo number(16,2),
    hfd_corrida char(1),
    hfd_varios char(15),
    desp_hfd_catalogo number,
    desp_hfd_fecha date,
    desp_hfd_codigo number,
    desp_hfd_nu_reg number,
    desp_hfd_monto number(16,2),
    desp_hfd_mensual number(16,2),
    desp_hfd_saldo number(16,2),
    desp_hfd_corrida char(1),
    desp_hfd_varios char(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_c_ubicacion_docum 
  (
    ub_correlativo number,
    ub_cod_doc number,
    ub_cod_depend number,
    ub_fec_in TIMESTAMP,
    ub_recibe number,
    ub_entrega number,
    ub_recibe_ok char(1),
    ub_observaciones char(175),
    ub_oficina number,
    ub_of_dep number,
    ub_doc_tipo_remite number,
    ub_doc_remite char(20),
    ub_int_ext char(1),
    ub_of_remite number,
    ub_of_dep_remite number,
    desp_ub_correlativo number,
    desp_ub_cod_doc number,
    desp_ub_cod_depend number,
    desp_ub_fec_in TIMESTAMP,
    desp_ub_recibe number,
    desp_ub_entrega number,
    desp_ub_recibe_ok char(1),
    desp_ub_observaciones char(175),
    desp_ub_oficina number,
    desp_ub_of_dep number,
    desp_ub_doc_tipo_remite number,
    desp_ub_doc_remite char(20),
    desp_ub_int_ext char(1),
    desp_ub_of_remite number,
    desp_ub_of_dep_remite number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_f_ipm_cart 
  (
    ipc_correlativo number,
    ipc_fecha_env date,
    ipc_nu_credito char(9),
    ipc_catalogo number,
    ipc_monto number(10,2),
    ipc_codigo char(2),
    ipc_status char(1),
    ipc_motivo char(15),
    ipc_saldo number(18,2),
    desp_ipc_correlativo number,
    desp_ipc_fecha_env date,
    desp_ipc_nu_credito char(9),
    desp_ipc_catalogo number,
    desp_ipc_monto number(10,2),
    desp_ipc_codigo char(2),
    desp_ipc_status char(1),
    desp_ipc_motivo char(15),
    desp_ipc_saldo number(18,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_tro 
  (
    antes1 char(12),
    antes2 char(2),
    antes3 char(2),
    antes4 char(2),
    antes5 char(1),
    antes6 char(12),
    antes7 char(12),
    antes8 char(12),
    antes9 char(12),
    antes10 char(12),
    antes11 char(12),
    antes12 char(2),
    antes13 char(2),
    antes14 char(12),
    antes15 char(12),
    antes16 char(50),
    antes17 char(50),
    despues1 char(12),
    despues2 char(2),
    despues3 char(2),
    despues4 char(2),
    despues5 char(1),
    despues6 char(12),
    despues7 char(12),
    despues8 char(12),
    despues9 char(12),
    despues10 char(12),
    despues11 char(12),
    despues12 char(2),
    despues13 char(2),
    despues14 char(12),
    despues15 char(12),
    despues16 char(50),
    despues17 char(50),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_cuentas 
  (
    antes1 number,
    antes2 char(20),
    antes3 number,
    despues1 number,
    despues2 char(20),
    despues3 number,
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.aud_bono14 
  (
    b14_catalogo number,
    b14_cantidad number(16,2),
    b14_meses number,
    desp_b14_catalogo number,
    desp_b14_cantidad number(16,2),
    desp_b14_meses number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfdes_gra 
  (
    dfdg_catalogo number,
    dfdg_codigo number,
    dfdg_nu_reg number,
    dfdg_cod_control number,
    dfdg_tipo_desc char(1),
    dfdg_fec_ini date,
    dfdg_ult_act date,
    dfdg_fec_cer date,
    dfdg_monto number(16,2),
    dfdg_saldo number(16,2),
    dfdg_mensual number(16,2),
    dfdg_tot_cuotas number,
    dfdg_num_cuotas number,
    dfdg_documen char(6),
    dfdg_codeudor number,
    dfdg_nom_bene char(50),
    dfdg_juz_con char(50),
    dfdg_si_no char(1),
    desp_dfdg_catalogo number,
    desp_dfdg_codigo number,
    desp_dfdg_nu_reg number,
    desp_dfdg_cod_control number,
    desp_dfdg_tipo_desc char(1),
    desp_dfdg_fec_ini date,
    desp_dfdg_ult_act date,
    desp_dfdg_fec_cer date,
    desp_dfdg_monto number(16,2),
    desp_dfdg_saldo number(16,2),
    desp_dfdg_mensual number(16,2),
    desp_dfdg_tot_cuotas number,
    desp_dfdg_num_cuotas number,
    desp_dfdg_documen char(6),
    desp_dfdg_codeudor number,
    desp_dfdg_nom_bene char(50),
    desp_dfdg_juz_con char(50),
    desp_dfdg_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_agui 
  (
    agui_catalogo number,
    agui_aguinaldo number(16,2),
    agui_meses number,
    desp_agui_catalogo number,
    desp_agui_aguinaldo number(16,2),
    desp_agui_meses number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_periodos 
  (
    per_codigo number not null ,
    per_fecha_inicio date not null ,
    per_fecha_fin date not null ,
    constraint pk_peva_periodos primary key (per_codigo) 
  );
/
create table ADMIN.peva_admin 
  (
    adm_catalogo number not null ,
    adm_periodo number not null ,
    adm_grado number not null ,
    adm_arma number not null ,
    adm_emp_ant varchar2(75) not null ,
    adm_proyec number not null ,
    adm_dep number not null ,
    adm_fec_alta date not null ,
    adm_emp_act varchar2(75) not null ,
    adm_tiempo number not null ,
    adm_plaza number not null ,
    adm_ceom char(6) not null ,
    constraint pk_peva_admin primary key (adm_catalogo,adm_periodo) 
  );
/
create table ADMIN.peva_aut_em 
  (
    autem_catalogo number not null ,
    autem_periodo number not null ,
    autem_cat_em number,
    autem_grado number,
    autem_fecha date,
    autem_estado number,
    autem_obs varchar2(250),
    constraint pk_peva_aut_em primary key (autem_catalogo,autem_periodo) 
  );
/
create table ADMIN.peva_conceptos 
  (
    con_catalogo number not null ,
    con_periodo number not null ,
    con_codigo number not null ,
    con_concepto char(500),
    constraint pk_peva_conceptos primary key (con_catalogo,con_periodo,con_codigo) 
  );
/
create table ADMIN.peva_evaluacion 
  (
    eva_catalogo number not null ,
    eva_periodo number not null ,
    eva_disciplina number,
    eva_rel_inter number,
    eva_admon_rec number,
    eva_cal_trab number,
    eva_comunica number,
    eva_coordina number,
    eva_plan_orga number,
    eva_control number,
    eva_iniciativa number,
    eva_lider number,
    eva_comp_soc number,
    eva_adapta number,
    eva_solv_econ number,
    eva_coopera number,
    eva_discre number,
    eva_salud number,
    eva_prevision number,
    eva_seg_confi number,
    eva_voc_serv number,
    eva_cap_ana number,
    constraint pk_peva_evaluacion primary key (eva_catalogo,eva_periodo) 
  );
/
create table ADMIN.peva_notas 
  (
    not_catalogo number not null ,
    not_periodo number not null ,
    not_e_evalua number not null ,
    not_e_numero number not null ,
    not_pafe varchar2(15) not null ,
    not_dem number,
    constraint pk_peva_notas primary key (not_catalogo,not_periodo) 
  );
/
create table ADMIN.peva_funciones 
  (
    fun_catalogo number not null ,
    fun_periodo number not null ,
    fun_codigo number,
    constraint pk_peva_funciones primary key (fun_catalogo,fun_periodo,fun_codigo) 
  );
/
create table ADMIN.peva_autentica 
  (
    aut_catalogo number not null ,
    aut_periodo number not null ,
    aut_codigo number not null ,
    aut_cat number not null ,
    aut_grado number not null ,
    aut_puesto varchar2(75) not null ,
    aut_tiempo number not null ,
    constraint pk_peva_autentica primary key (aut_catalogo,aut_periodo,aut_codigo) 
  );
/
create table ADMIN.aud_peva_admin 
  (
    adm_catalogo number,
    adm_periodo number,
    adm_grado number,
    adm_arma number,
    adm_emp_ant varchar2(75),
    adm_proyec number,
    adm_dep number,
    adm_fec_alta date,
    adm_emp_act varchar2(75),
    adm_tiempo number,
    adm_plaza number,
    adm_ceom char(6),
    desp_adm_catalogo number,
    desp_adm_periodo number,
    desp_adm_grado number,
    desp_adm_arma number,
    desp_adm_emp_ant varchar2(75),
    desp_adm_proyec number,
    desp_adm_dep number,
    desp_adm_fec_alta date,
    desp_adm_emp_act varchar2(75),
    desp_adm_tiempo number,
    desp_adm_plaza number,
    desp_adm_ceom char(6),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_aut_em 
  (
    autem_catalogo number,
    autem_periodo number,
    autem_cat_em number,
    autem_grado number,
    autem_fecha date,
    autem_estado number,
    autem_obs varchar2(250),
    desp_autem_catalogo number,
    desp_autem_periodo number,
    desp_autem_cat_em number,
    desp_autem_grado number,
    desp_autem_fecha date,
    desp_autem_estado number,
    desp_autem_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_conceptos 
  (
    con_catalogo number,
    con_periodo number,
    con_codigo number,
    con_concepto char(500),
    desp_con_catalogo number,
    desp_con_periodo number,
    desp_con_codigo number,
    desp_con_concepto char(500),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_evaluacion 
  (
    eva_catalogo number,
    eva_periodo number,
    eva_disciplina number,
    eva_rel_inter number,
    eva_admon_rec number,
    eva_cal_trab number,
    eva_comunica number,
    eva_coordina number,
    eva_plan_orga number,
    eva_control number,
    eva_iniciativa number,
    eva_lider number,
    eva_comp_soc number,
    eva_adapta number,
    eva_solv_econ number,
    eva_coopera number,
    eva_discre number,
    eva_salud number,
    eva_prevision number,
    eva_seg_confi number,
    eva_voc_serv number,
    eva_cap_ana number,
    desp_eva_catalogo number,
    desp_eva_periodo number,
    desp_eva_disciplina number,
    desp_eva_rel_inter number,
    desp_eva_admon_rec number,
    desp_eva_cal_trab number,
    desp_eva_comunica number,
    desp_eva_coordina number,
    desp_eva_plan_orga number,
    desp_eva_control number,
    desp_eva_iniciativa number,
    desp_eva_lider number,
    desp_eva_comp_soc number,
    desp_eva_adapta number,
    desp_eva_solv_econ number,
    desp_eva_coopera number,
    desp_eva_discre number,
    desp_eva_salud number,
    desp_eva_prevision number,
    desp_eva_seg_confi number,
    desp_eva_voc_serv number,
    desp_eva_cap_ana number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_notas 
  (
    not_catalogo number,
    not_periodo number,
    not_e_evalua number,
    not_e_numero number,
    not_pafe varchar2(15),
    not_dem number,
    desp_not_catalogo number,
    desp_not_periodo number,
    desp_not_e_evalua number,
    desp_not_e_numero number,
    desp_not_pafe varchar2(15),
    desp_not_dem number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_funciones 
  (
    fun_catalogo number,
    fun_periodo number,
    fun_codigo number,
    desp_fun_catalogo number,
    desp_fun_periodo number,
    desp_fun_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_autentica 
  (
    aut_catalogo number,
    aut_periodo number,
    aut_codigo number,
    aut_cat number,
    aut_grado number,
    aut_puesto varchar2(75),
    aut_tiempo number,
    desp_aut_catalogo number,
    desp_aut_periodo number,
    desp_aut_codigo number,
    desp_aut_cat number,
    desp_aut_grado number,
    desp_aut_puesto varchar2(75),
    desp_aut_tiempo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_periodos 
  (
    per_codigo number,
    per_fecha_inicio date,
    per_fecha_fin date,
    desp_per_codigo number,
    desp_per_fecha_inicio date,
    desp_per_fecha_fin date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_tip_sol 
  (
    tips_cod number,
    tips_desc varchar2(20),
    constraint pk_larm_tip_sol primary key (tips_cod)  
  );
/
create table ADMIN.aud_larm_tip_sol 
  (
    tips_cod number,
    tips_desc varchar2(20),
    desp_tips_cod number,
    desp_tips_desc varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_mov 
  (
    mov_solicitud number,
    mov_correla number,
    mov_fecha date,
    mov_docto varchar2(50,1),
    mov_termina number,
    mov_usuario number,
    desp_mov_solicitud number,
    desp_mov_correla number,
    desp_mov_fecha date,
    desp_mov_docto varchar2(50,1),
    desp_mov_termina number,
    desp_mov_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_temp 
  (
    tem_solicitud number,
    tem_tipo number,
    tem_lote number,
    tem_numero char(20),
    tem_plaza number,
    tem_sit number,
    tem_fec_situ date,
    tem_usuario number,
    desp_tem_solicitud number,
    desp_tem_tipo number,
    desp_tem_lote number,
    desp_tem_numero char(20),
    desp_tem_plaza number,
    desp_tem_sit number,
    desp_tem_fec_situ date,
    desp_tem_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ceom_funcion 
  (
    func_meom char(6),
    func_codigo number,
    func_descripcion char(500),
    func_estado number,
    desp_func_meom char(6),
    desp_func_codigo number,
    desp_func_descripcion char(500),
    desp_func_estado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ceom_funcion 
  (
    func_meom char(6) not null ,
    func_codigo number,
    func_descripcion char(500),
    func_estado number,
    primary key (func_meom,func_codigo) 
  );
/
create table ADMIN.aud_peva_objetivos 
  (
    obj_catalogo number,
    obj_periodo number,
    obj_codigo number,
    obj_desc char(500),
    desp_obj_catalogo number,
    desp_obj_periodo number,
    desp_obj_codigo number,
    desp_obj_desc char(500),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_objetivos 
  (
    obj_catalogo number not null ,
    obj_periodo number not null ,
    obj_codigo number not null ,
    obj_desc char(500) not null ,
    constraint pk_peva_objetivos primary key (obj_catalogo,obj_periodo,obj_codigo) 
  );
/
create table ADMIN.mdep_tipo 
  (
    tip_codigo char(1) not null ,
    tip_desc varchar2(75) not null ,
    constraint pk_mdep_tipoprimary key (tip_codigo)  
  );
/
create table ADMIN.lmarmas_ag 
  (
    arm_cat_smg number not null ,
    arm_cat_sistema number,
    arm_tipo number not null ,
    arm_lote number not null ,
    arm_numero varchar2(50) not null ,
    arm_plaza number,
    arm_sit number not null ,
    arm_fec_situ date not null ,
    arm_usuario varchar2(100) not null ,
    arm_almacen number not null ,
    arm_destino varchar2(100),
    arm_acta varchar2(100),
    arm_obs varchar2(255),
    constraint pk_lmarmas_ag primary key (arm_cat_smg)  
  );
/
create table ADMIN.lade_conocimiento 
  (
    d_con_codigo number not null ,
    d_con_trans number not null ,
    d_con_catalogo number not null ,
    d_con_estado number not null ,
    d_con_pagina number not null ,
    constraint pk_lade_conocimiento primary key (d_con_codigo,d_con_trans)  
  );
/
create table ADMIN.lali_conoc 
  (
    lali_no_libro number not null ,
    lali_desc_libro varchar2(75) not null ,
    constraint pk_lali_conoc primary key (lali_no_libro)  
  );
/
create table ADMIN.usuarios_ige 
  (
    usu_catalogo char(6) not null ,
    usu_clave varchar2(12) not null ,
    usu_nivel char(1) not null 
  );
/
create table ADMIN.lama_conoc 
  (
    lama_codigo number not null ,
    lama_libro number not null ,
    lama_folio number not null ,
    lama_conocimiento varchar2(100) not null ,
    lama_en_cumplimiento varchar2(100) not null ,
    lama_tipo_doc number not null ,
    lama_fecha date not null ,
    lama_dep_entrega number not null ,
    lama_dep_recibe number not null ,
    lama_entrega varchar2(100) not null ,
    lama_recibe varchar2(100) not null ,
    lama_observaciones varchar2(255) not null ,
    constraint pk_lama_conoc primary key (lama_codigo)  
  );
/
create table ADMIN.lmarmas_ag1 
  (
    arm_cat_smg number not null ,
    arm_cat_sistema number,
    arm_tipo number not null ,
    arm_lote number not null ,
    arm_numero varchar2(50) not null ,
    arm_plaza number,
    arm_sit number not null ,
    arm_fec_situ date not null ,
    arm_usuario varchar2(100) not null ,
    arm_almacen number not null ,
    arm_destino varchar2(100),
    arm_acta varchar2(100),
    arm_obs varchar2(255),
     constraint pk_lmarmas_ag1 primary key (arm_cat_smg) 
  );
/
create table ADMIN.mdep_conocimiento 
  (
    dep_con_llave number not null ,
    dep_con_desc_lg varchar2(75) not null ,
    dep_con_desc_md varchar2(35) not null ,
    dep_con_desc_ct varchar2(15) not null ,
    dep_con_tipo char(1) not null ,
    constraint pk_mdep_conocimiento primary key (dep_con_llave)  
  );
/
create table ADMIN.lama_almacen 
  (
    al_codigo number not null ,
    al_desc_lg varchar2(100) not null ,
    al_desc_md varchar2(50) not null ,
    al_ubicacion varchar2(100) not null ,
    constraint pk_lama_almacen primary key (al_codigo)  
  );
/
create table ADMIN.larm_buscerradas 
  (
    carm_cat number not null ,
    carm_tipo number not null ,
    carm_lote number not null ,
    carm_numero char(20) not null ,
    carm_plaza number not null ,
    carm_sit number not null ,
    carm_fec_situ date not null ,
    carm_fecha TIMESTAMP not null ,
    carm_usuario number not null ,
     constraint pk_pri_carm primary key (carm_cat,carm_fecha) 
  );
/
create table ADMIN.aud_larm_buscerradas 
  (
    carm_cat number,
    carm_tipo number,
    carm_lote number,
    carm_numero char(20),
    carm_plaza number,
    carm_sit number,
    carm_fec_situ date,
    carm_fecha TIMESTAMP,
    carm_usuario number,
    desp_carm_cat number,
    desp_carm_tipo number,
    desp_carm_lote number,
    desp_carm_numero char(20),
    desp_carm_plaza number,
    desp_carm_sit number,
    desp_carm_fec_situ date,
    desp_carm_fecha TIMESTAMP,
    desp_carm_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_temp 
  (
    tem_solicitud number not null ,
    tem_tipo number not null ,
    tem_lote number not null ,
    tem_numero char(80) not null ,
    tem_plaza number not null ,
    tem_sit number not null ,
    tem_fec_situ date not null ,
    tem_usuario number not null ,
    constraint pk_larm_temp primary key (tem_solicitud,tem_numero)  
  );
/
create table ADMIN.uniformes 
  (
    uni_codigo number not null ,
    uni_fuerza number not null ,
    uni_descrip varchar2(50,1) not null ,
    uni_gorra number not null ,
    constraint pk_codigo primary key (uni_codigo)  
  );
/
create table ADMIN.aud_uniformes 
  (
    uni_codigo number,
    uni_fuerza number,
    uni_descrip varchar2(50,1),
    uni_gorra number,
    desp_uni_codigo number,
    desp_uni_fuerza number,
    desp_uni_descrip varchar2(50,1),
    desp_uni_gorra number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_detalle_solicitud 
  (
    det_solicitud number,
    det_catalogo number,
    det_grado number,
    det_codigo_uni number,
    det_talla_uni varchar2(6,1),
    det_talla_bota varchar2(5,1),
    det_talla_gorra varchar2(6,1),
    det_situacion number,
    det_fecha date,
    det_usuario number,
    det_comprobante number,
    desp_det_solicitud number,
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_codigo_uni number,
    desp_det_talla_uni varchar2(6,1),
    desp_det_talla_bota varchar2(5,1),
    desp_det_talla_gorra varchar2(6,1),
    desp_det_situacion number,
    desp_det_fecha date,
    desp_det_usuario number,
    desp_det_comprobante number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_solicitud_uniformes 
  (
    sol_numero number,
    sol_mensaje varchar2(25,1),
    sol_fecha date,
    sol_com_catalogo number,
    sol_log_cat number,
    sol_observaciones varchar2(250,1),
    sol_situacion varchar2(10,1),
    sol_dotac number,
    sol_dependencia number,
    sol_usuario number,
    desp_sol_numero number,
    desp_sol_mensaje varchar2(25,1),
    desp_sol_fecha date,
    desp_sol_com_catalogo number,
    desp_sol_log_cat number,
    desp_sol_observaciones varchar2(250,1),
    desp_sol_situacion varchar2(10,1),
    desp_sol_dotac number,
    desp_sol_dependencia number,
    desp_sol_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.detalle_solicitud 
  (
    det_solicitud number not null ,
    det_catalogo number not null ,
    det_grado number not null ,
    det_codigo_uni number not null ,
    det_talla_uni varchar2(6,1) not null ,
    det_talla_bota varchar2(5,1) not null ,
    det_talla_gorra varchar2(6,1) not null ,
    det_situacion number not null ,
    det_fecha date not null ,
    det_usuario number not null ,
    det_comprobante number not null ,
    det_codbarra varchar2(25,1),
    constraint pk_solicitud primary key (det_solicitud,det_catalogo)
  );
/
create table ADMIN.larm_mov 
  (
    mov_solicitud number not null ,
    mov_correla number not null ,
    mov_fecha date not null ,
    mov_docto varchar2(150,1) not null ,
    mov_termina number not null ,
    mov_usuario number not null ,
    constraint pk_larm_mov primary key (mov_solicitud,mov_correla)  
  );
/
create table ADMIN.solicitud_uniformes 
  (
    sol_numero number not null ,
    sol_mensaje varchar2(25,1) not null ,
    sol_fecha date not null ,
    sol_com_catalogo number not null ,
    sol_log_cat number not null ,
    sol_observaciones varchar2(250,1) not null ,
    sol_situacion varchar2(10,1) not null ,
    sol_dotac number not null ,
    sol_dependencia number not null ,
    sol_usuario number,
    constraint pk_sol_uniformes primary key (sol_numero,sol_mensaje)  
  );
/
create table ADMIN.dep_ubicacion 
  (
    cod_dep number not null ,
    cod_dm char(4) not null ,
    cod_fza char(1) not null ,
    constraint pk_dep primary key (cod_dep)  
  );
/
create table ADMIN.aud_dep_ubicacion 
  (
    cod_dep number,
    cod_dm char(4),
    cod_fza char(1),
    desp_cod_dep number,
    desp_cod_dm char(4),
    desp_cod_fza char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_con_solicitud 
  (
    sol_codigo number,
    sol_anio number,
    sol_formulario varchar2(16),
    sol_dependencia number,
    sol_fec_solicit date,
    sol_justific varchar2(250),
    sol_oficio varchar2(100),
    desp_sol_codigo number,
    desp_sol_anio number,
    desp_sol_formulario varchar2(16),
    desp_sol_dependencia number,
    desp_sol_fec_solicit date,
    desp_sol_justific varchar2(250),
    desp_sol_oficio varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.det_consolicit 
  (
    con_solcod number not null ,
    con_catalogo number not null ,
    con_grado number not null ,
    con_condecoracion number not null ,
    con_solcodigo number not null ,
    con_solanio number not null ,
    con_fec_con date not null ,
    con_ord_gral char(10),
    con_punto_og number,
    con_reg_emdn char(25),
    con_acta varchar2(50),
    con_obs varchar2(250),
    con_estado number,
    constraint detsolcon primary key (con_solcod)  
  );
/
create table ADMIN.aud_det_consolicit 
  (
    con_solcod number,
    con_catalogo number,
    con_grado number,
    con_condecoracion number,
    con_solcodigo number,
    con_solanio number,
    con_fec_con date,
    con_ord_gral char(10),
    con_punto_og number,
    con_reg_emdn char(25),
    con_acta varchar2(50),
    con_obs varchar2(250),
    con_estado number,
    desp_con_solcod number,
    desp_con_catalogo number,
    desp_con_grado number,
    desp_con_condecoracion number,
    desp_con_solcodigo number,
    desp_con_solanio number,
    desp_con_fec_con date,
    desp_con_ord_gral char(10),
    desp_con_punto_og number,
    desp_con_reg_emdn char(25),
    desp_con_acta varchar2(50),
    desp_con_obs varchar2(250),
    desp_con_estado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cond 
  (
    con_codigo number not null ,
    con_desc_lg char(250),
    con_clase char(2),
    con_pais number,
    con_creditos number(5,2),
    con_tipo_fund char(2),
    con_fundamento varchar2(100),
     constraint pk_cond  primary key (con_codigo) 
  );
/
create table ADMIN.aud_dcon 
  (
    con_catalogo number,
    con_grado number,
    con_condecoracion number,
    con_solcodigo number,
    con_solanio number,
    con_fec_con date,
    con_ord_gral char(12),
    con_punto_og number,
    con_reg_emdn char(12),
    con_acta varchar2(50),
    con_obs varchar2(250),
    con_estado char(2),
    desp_con_catalogo number,
    desp_con_grado number,
    desp_con_condecoracion number,
    desp_con_solcodigo number,
    desp_con_solanio number,
    desp_con_fec_con date,
    desp_con_ord_gral char(12),
    desp_con_punto_og number,
    desp_con_reg_emdn char(12),
    desp_con_acta varchar2(50),
    desp_con_obs varchar2(50),
    desp_con_estado char(2),
    accion char(1),
    usuario char(12),
    hora TIMESTAMP(0)
  );
/
create table ADMIN.dcon 
  (
    con_catalogo number not null ,
    con_grado number not null ,
    con_condecoracion number not null ,
    con_solcodigo number,
    con_solanio number,
    con_fec_con date not null ,
    con_ord_gral char(10) not null ,
    con_punto_og number,
    con_reg_emdn char(25),
    con_acta varchar2(50),
    con_obs varchar2(250),
    con_estado char(2),
    constraint pk_dcon primary key (con_catalogo,con_condecoracion)  
  );
/
create table ADMIN.eva_boleta 
  (
    bol_cat_evaluado number not null ,
    bol_anio number not null ,
    bol_cat_evaluador number not null ,
    bol_ceom varchar2(10),
    bol_perfil number not null ,
    bol_pafe number not null ,
    bol_eva1 number,
    bol_eva2 number,
    bol_eva3 number,
    bol_eva4 number,
    bol_demeritos number not null ,
    bol_arrestos number not null ,
    bol_total_salud number not null ,
    bol_total_concep number not null ,
    bol_total number not null ,
    bol_accion_mot number,
    bol_accion_correc number,
    bol_cat_g1 number not null ,
    bol_cat_comte number not null ,
    bol_obs varchar2(250),
    constraint pk_eva_boleta primary key (bol_cat_evaluado,bol_anio) 
  );
/
create table ADMIN.aud_eva_boleta 
  (
    bol_cat_evaluado number,
    bol_anio number,
    bol_cat_evaluador number,
    bol_ceom varchar2(10),
    bol_perfil number,
    bol_pafe number,
    bol_eva1 number,
    bol_eva2 number,
    bol_eva3 number,
    bol_eva4 number,
    bol_demeritos number,
    bol_arrestos number,
    bol_total_salud number,
    bol_total_concep number,
    bol_total number,
    bol_accion_mot number,
    bol_accion_correc number,
    bol_cat_g1 number,
    bol_cat_comte number,
    bol_obs varchar2(250),
    desp_bol_cat_evaluado number,
    desp_bol_anio number,
    desp_bol_cat_evaluador number,
    desp_bol_ceom varchar2(10),
    desp_bol_perfil number,
    desp_bol_pafe number,
    desp_bol_eva1 number,
    desp_bol_eva2 number,
    desp_bol_eva3 number,
    desp_bol_eva4 number,
    desp_bol_demeritos number,
    desp_bol_arrestos number,
    desp_bol_total_salud number,
    desp_bol_total_concep number,
    desp_bol_total number,
    desp_bol_accion_mot number,
    desp_bol_accion_correc number,
    desp_bol_cat_g1 number,
    desp_bol_cat_comte number,
    desp_bol_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bol_det_meritos 
  (
    detm_evaluado number not null ,
    detm_anio number not null ,
    detm_codigo number not null ,
    constraint pk_bol_det_meritos primary key (detm_evaluado,detm_anio,detm_codigo) 
  );
/
create table ADMIN.aud_bol_det_meritos 
  (
    detm_evaluado number,
    detm_anio number,
    detm_codigo number,
    desp_detm_evaluado number,
    desp_detm_anio number,
    desp_detm_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bol_det_concep 
  (
    detc_evaluado number not null ,
    detc_anio number not null ,
    detc_pregunta number not null ,
    detc_nota number not null ,
    constraint pk_bol_det_concep primary key (detc_evaluado,detc_anio,detc_pregunta) 
  );
/
create table ADMIN.aud_bol_det_concep 
  (
    detc_evaluado number,
    detc_anio number,
    detc_pregunta number,
    detc_nota number,
    desp_detc_evaluado number,
    desp_detc_anio number,
    desp_detc_pregunta number,
    desp_detc_nota number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.acc_motivadora 
  (
    mot_codigo number,
    mot_accion number,
    mot_descripcion varchar2(250),
    constraint pk_acc_motivadora primary key (mot_codigo) 
  );
/
create table ADMIN.aud_acc_motivadora 
  (
    mot_codigo number,
    mot_accion number,
    mot_descripcion varchar2(250),
    desp_mot_codigo number,
    desp_mot_accion number,
    desp_mot_descripcion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
  
/
create table ADMIN.aud_acc_correctiva 
  (
    corr_codigo number,
    corr_accion number,
    corr_descripcion varchar2(250),
    desp_corr_codigo number,
    desp_corr_accion number,
    desp_corr_descripcion varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_meritos 
  (
    mer_codigo number not null ,
    mer_descripcion varchar2(250),
    mer_nota number,
    constraint pk_eva_meritos primary key (mer_codigo) 
  );
/
create table ADMIN.aud_eva_meritos 
  (
    mer_codigo number,
    mer_descripcion varchar2(250),
    mer_nota number,
    desp_mer_codigo number,
    desp_mer_descripcion varchar2(250),
    desp_mer_nota number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_preguntas 
  (
    pre_codigo number not null ,
    pre_descripcion varchar2(250) not null ,
    pre_proyeccion number not null ,
    constraint pk_eva_preguntas primary key (pre_codigo) 
  );
/
create table ADMIN.aud_eva_preguntas 
  (
    pre_codigo number,
    pre_descripcion varchar2(250),
    pre_proyeccion number,
    desp_pre_codigo number,
    desp_pre_descripcion varchar2(250),
    desp_pre_proyeccion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_datos 
  (
    dat_cat_evaluado number,
    dat_anio number,
    dat_grado number,
    dat_depen number,
    dat_puesto varchar2(250),
    dat_tiempo number,
    dat_grado_eva number,
    dat_arma_eva number,
    dat_puesto_eva varchar2(250),
    dat_tiempo_eva number,
    constraint pk_eva_datos primary key (dat_cat_evaluado,dat_anio) 
  );
/
create table ADMIN.aud_eva_datos 
  (
    dat_cat_evaluado number,
    dat_anio number,
    dat_grado number,
    dat_depen number,
    dat_puesto varchar2(250),
    dat_tiempo number,
    dat_grado_eva number,
    dat_arma_eva number,
    dat_puesto_eva varchar2(250),
    dat_tiempo_eva number,
    desp_dat_cat_evaluado number,
    desp_dat_anio number,
    desp_dat_grado number,
    desp_dat_depen number,
    desp_dat_puesto varchar2(250),
    desp_dat_tiempo number,
    desp_dat_grado_eva number,
    desp_dat_arma_eva number,
    desp_dat_puesto_eva varchar2(250),
    desp_dat_tiempo_eva number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_certifica 
  (
    cer_evaluado number not null ,
    cer_anio number not null ,
    cer_certificador number not null ,
    cer_status number not null ,
    cer_fecha date not null ,
    cer_obs varchar2(255),
    constraint pk_eva_certifica primary key (cer_evaluado,cer_anio) 
  );
/
create table ADMIN.aud_eva_certifica 
  (
    cer_evaluado number,
    cer_anio number,
    cer_certificador number,
    cer_status number,
    cer_fecha date,
    cer_obs varchar2(255),
    desp_cer_evaluado number,
    desp_cer_anio number,
    desp_cer_certificador number,
    desp_cer_status number,
    desp_cer_fecha date,
    desp_cer_obs varchar2(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_casco 
  (
    cas_codigo number not null ,
    cas_desc_lg varchar2(30),
    cas_desc_ct varchar2(20),
    constraint pk_rnb_casco primary key (cas_codigo)  
  );
/
create table ADMIN.aud_rnb_casco 
  (
    cas_codigo number,
    cas_desc_lg varchar2(30),
    cas_desc_ct varchar2(20),
    desp_cas_codigo number,
    desp_cas_desc_lg varchar2(30),
    desp_cas_desc_ct varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_motor 
  (
    mot_codigo number not null ,
    mot_embarcacion number not null ,
    mot_serie varchar2(25) not null ,
    mot_marca varchar2(25) not null ,
    mot_hp number not null ,
    mot_fueraborda number,
     constraint pk_motor primary key (mot_codigo,mot_embarcacion) 
  );
/
create table ADMIN.aud_rnb_motor 
  (
    mot_codigo number,
    mot_embarcacion number,
    mot_serie varchar2(25),
    mot_marca varchar2(25),
    mot_hp number,
    mot_fueraborda number,
    desp_mot_codigo number,
    desp_mot_embarcacion number,
    desp_mot_serie varchar2(25),
    desp_mot_marca varchar2(25),
    desp_mot_hp number,
    desp_mot_fueraborda number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_marca 
  (
    mar_codigo number not null ,
    mar_desc_lg varchar2(30),
    mar_desc_ct varchar2(20),
    constraint pk_marcodigo primary key (mar_codigo)  
  );
/
create table ADMIN.aud_rnb_marca 
  (
    mar_codigo number,
    mar_desc_lg varchar2(30),
    mar_desc_ct varchar2(20),
    desp_mar_codigo number,
    desp_mar_desc_lg varchar2(30),
    desp_mar_desc_ct varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_modificacion 
  (
    mod_codigo number not null ,
    mod_embarcacion number not null ,
    mod_modificacion clob not null ,
    mod_fecha date not null ,
    mod_quien number not null ,
    mod_autoriza number,
    constraint pk_modificiacion primary key (mod_codigo,mod_embarcacion)  
  );
/
create table ADMIN.aud_rnb_modificacion 
  (
    mod_codigo number,
    mod_embarcacion number,
    mod_modificacion clob,
    mod_fecha date,
    mod_quien number,
    mod_autoriza number,
    desp_mod_codigo number,
    desp_mod_embarcacion number,
    desp_mod_modificacion clob,
    desp_mod_fecha date,
    desp_mod_quien number,
    desp_mod_autoriza number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_impuesto 
  (
    imp_codigo number not null ,
    imp_embarcacion number not null ,
    imp_circulacion number(16,2),
    imp_form_sat varchar2(15),
    imp_fecha date,
    constraint pk_impuesto primary key (imp_codigo,imp_embarcacion)  
  );
/
create table ADMIN.aud_rnb_impuesto 
  (
    imp_codigo number,
    imp_embarcacion number,
    imp_circulacion number(16,2),
    imp_form_sat varchar2(15),
    imp_fecha date,
    desp_imp_codigo number,
    desp_imp_embarcacion number,
    desp_imp_circulacion number(16,2),
    desp_imp_form_sat varchar2(15),
    desp_imp_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_tipo_emb 
  (
    tip_codigo number not null ,
    tip_desc_lg varchar2(30),
    tip_desc_ct varchar2(20),
    constraint pk_tipo_emb primary key (tip_codigo)  
  );
/
create table ADMIN.aud_rnb_tipo_emb 
  (
    tip_codigo number,
    tip_desc_lg varchar2(30),
    tip_desc_ct varchar2(20),
    desp_tip_codigo number,
    desp_tip_desc_lg varchar2(30),
    desp_tip_desc_ct varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_propietario 
  (
    pro_nit varchar2(15) not null ,
    pro_nom1 varchar2(30),
    pro_nom2 varchar2(30),
    pro_ape1 varchar2(30),
    pro_ape2 varchar2(30),
    pro_ape3 varchar2(30),
    pro_dpi varchar2(15),
    pro_cedula varchar2(20),
    pro_direccion varchar2(100),
    pro_dep_mun char(4),
    pro_pais number,
    pro_telefono char(15),
    pro_celular char(15),
    pro_email varchar2(50),
    pro_tipo number,
     constraint pk_propietario primary key (pro_nit)  
  );
/
create table ADMIN.aud_rnb_propietario 
  (
    pro_nit varchar2(15),
    pro_nom1 varchar2(30),
    pro_nom2 varchar2(30),
    pro_ape1 varchar2(30),
    pro_ape2 varchar2(30),
    pro_ape3 varchar2(30),
    pro_dpi varchar2(15),
    pro_cedula varchar2(20),
    pro_direccion varchar2(100),
    pro_dep_mun char(4),
    pro_pais number,
    pro_telefono char(15),
    pro_celular char(15),
    pro_email varchar2(50),
    pro_tipo number,
    desp_pro_nit varchar2(15) not null ,
    desp_pro_nom1 varchar2(30),
    desp_pro_nom2 varchar2(30),
    desp_pro_ape1 varchar2(30),
    desp_pro_ape2 varchar2(30),
    desp_pro_ape3 varchar2(30),
    desp_pro_dpi varchar2(15),
    desp_pro_cedula varchar2(20),
    desp_pro_direccion varchar2(100),
    desp_pro_dep_mun char(4),
    desp_pro_pais number,
    desp_pro_telefono char(15),
    desp_pro_celular char(15),
    desp_pro_email varchar2(50),
    desp_pro_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_color 
  (
    col_codigo number not null ,
    col_embarcacion number not null ,
    col_color varchar2(15),
    col_descr varchar2(50),
    constraint pk_color primary key (col_codigo,col_embarcacion)  
  );
/
create table ADMIN.aud_rnb_color 
  (
    col_codigo number,
    col_embarcacion number,
    col_color varchar2(15),
    col_descr varchar2(50),
    desp_col_codigo number,
    desp_col_embarcacion number,
    desp_col_color varchar2(15),
    desp_col_descr varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_embarcacion 
  (
    emb_codigo number not null ,
    emb_nombre varchar2(25),
    emb_propietario varchar2(15) not null ,
    emb_rep_legal varchar2(25),
    emb_dir_repleg varchar2(100),
    emb_tel_repleg varchar2(20),
    emb_matricula char(25),
    emb_tipo number not null ,
    emb_ind_llama char(12),
    emb_imo varchar2(15),
    emb_num_construc varchar2(25),
    emb_lug_constr varchar2(25),
    emb_marca number not null ,
    emb_tripulantes number,
    emb_operador varchar2(25),
    emb_eslora number(6,2),
    emb_manga number(6,2),
    emb_puntal number(6,2),
    emb_calado number(6,2),
    emb_desplaza number(6,2),
    emb_mat_casco number not null ,
    emb_pasajeros number,
    emb_ton_neto number(12,2),
    emb_ton_bruto number(12,2),
    emb_cap_carga number(12,2),
    emb_cap_gas number(8,2),
    emb_cap_agua number(8,2),
    emb_freq_radio number(5,2),
    emb_freq_trab number(5,2),
    emb_autorizada varchar2(50),
    emb_lugar_op varchar2(50),
    emb_grav_desc varchar2(250),
    emb_chalecos number,
    emb_balsas number,
    emb_botiquin number,
    emb_ext_co2 number,
    emb_ext_quim number,
    emb_sist_incen number,
    emb_obs varchar2(250),
    emb_desc_color varchar2(250),
    emb_desc_motor varchar2(250),
    emb_desc_hp varchar2(250),
    emb_desc_mot_serie varchar2(250),
    constraint pk_embarcacion primary key (emb_codigo)  
  );
/
create table ADMIN.aud_rnb_embarcacion 
  (
    emb_codigo number,
    emb_nombre varchar2(25),
    emb_propietario varchar2(15),
    emb_rep_legal varchar2(25),
    emb_dir_repleg varchar2(100),
    emb_tel_repleg varchar2(20),
    emb_matricula char(25),
    emb_tipo number,
    emb_ind_llama char(4),
    emb_imo varchar2(15),
    emb_num_construc varchar2(25),
    emb_lug_constr varchar2(25),
    emb_marca number,
    emb_tripulantes number,
    emb_operador varchar2(25),
    emb_eslora number(6,2),
    emb_manga number(6,2),
    emb_puntal number(6,2),
    emb_calado number(6,2),
    emb_desplaza number(6,2),
    emb_mat_casco number,
    emb_pasajeros number,
    emb_ton_neto number(12,2),
    emb_ton_bruto number(12,2),
    emb_cap_carga number(12,2),
    emb_cap_gas number(8,2),
    emb_cap_agua number(8,2),
    emb_freq_radio number(5,2),
    emb_freq_trab number(5,2),
    emb_autorizada varchar2(50),
    emb_lugar_op varchar2(50),
    emb_grav_desc varchar2(250),
    emb_chalecos number,
    emb_balsas number,
    emb_botiquin number,
    emb_ext_co2 number,
    emb_ext_quim number,
    emb_sist_incen number,
    emb_obs varchar2(250),
    emb_desc_color varchar2(250),
    emb_desc_motor varchar2(250),
    emb_desc_hp varchar2(250),
    emb_desc_mot_serie varchar2(250),
    desp_emb_codigo number,
    desp_emb_nombre varchar2(25),
    desp_emb_propietario varchar2(15),
    desp_emb_rep_legal varchar2(25),
    desp_emb_dir_repleg varchar2(100),
    desp_emb_tel_repleg varchar2(20),
    desp_emb_matricula char(25),
    desp_emb_tipo number,
    desp_emb_ind_llama char(4),
    desp_emb_imo varchar2(15),
    desp_emb_num_construc varchar2(25),
    desp_emb_lug_constr varchar2(25),
    desp_emb_marca number,
    desp_emb_tripulantes number,
    desp_emb_operador varchar2(25),
    desp_emb_eslora number(6,2),
    desp_emb_manga number(6,2),
    desp_emb_puntal number(6,2),
    desp_emb_calado number(6,2),
    desp_emb_desplaza number(6,2),
    desp_emb_mat_casco number,
    desp_emb_pasajeros number,
    desp_emb_ton_neto number(12,2),
    desp_emb_ton_bruto number(12,2),
    desp_emb_cap_carga number(12,2),
    desp_emb_cap_gas number(8,2),
    desp_emb_cap_agua number(8,2),
    desp_emb_freq_radio number(5,2),
    desp_emb_freq_trab number(5,2),
    desp_emb_autorizada varchar2(50),
    desp_emb_lugar_op varchar2(50),
    desp_emb_grav_desc varchar2(250),
    desp_emb_chalecos number,
    desp_emb_balsas number,
    desp_emb_botiquin number,
    desp_emb_ext_co2 number,
    desp_emb_ext_quim number,
    desp_emb_sist_incen number,
    desp_emb_obs varchar2(250),
    desp_emb_desc_color varchar2(250),
    desp_emb_desc_motor varchar2(250),
    desp_emb_desc_hp varchar2(250),
    desp_emb_desc_mot_serie varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_licencia 
  (
    lic_codigo char(10) not null ,
    lic_embarcacion number not null ,
    lic_correlativo number,
    lic_anno number,
    lic_fecha date,
    lic_inspector number not null ,
    lic_fecha_insp date not null ,
    lic_secretario number,
    lic_comandante number,
    lic_dependencia number not null ,
    lic_precio number(16,2),
    lic_situacion char(1),
    constraint pk_licencia primary key (lic_codigo,lic_embarcacion)  
  );
/
create table ADMIN.aud_rnb_licencia 
  (
    lic_codigo char(10),
    lic_embarcacion number,
    lic_correlativo number,
    lic_anno number,
    lic_fecha date,
    lic_inspector number,
    lic_fecha_insp date,
    lic_secretario number,
    lic_comandante number,
    lic_dependencia number,
    lic_precio number(16,2),
    lic_situacion char(1),
    desp_lic_codigo char(10),
    desp_lic_embarcacion number,
    desp_lic_correlativo number,
    desp_lic_anno number,
    desp_lic_fecha date,
    desp_lic_inspector number,
    desp_lic_fecha_insp date,
    desp_lic_secretario number,
    desp_lic_comandante number,
    desp_lic_dependencia number,
    desp_lic_precio number(16,2),
    desp_lic_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_usuario 
  (
    usu_catalogo number not null ,
    usu_dependencia number not null ,
    usu_situacion char(1),
    usu_nivel number,
    constraint  pk_usuario primary key (usu_catalogo)  
  );
/
create table ADMIN.aud_rnb_usuario 
  (
    usu_catalogo number,
    usu_dependencia number,
    usu_situacion char(1),
    usu_nivel number,
    desp_usu_catalogo number,
    desp_usu_dependencia number,
    desp_usu_situacion char(1),
    desp_usu_nivel number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_inspeccion 
  (
    insp_codigo char(15) not null ,
    insp_embarcacion number not null ,
    insp_correlativo number,
    insp_anno number,
    insp_fecha TIMESTAMP(0),
    insp_lugar varchar2(100),
    insp_inspector number,
    insp_secretario number,
    insp_comandante number,
    insp_dependencia number not null ,
    insp_observacion clob,
    insp_resultado char(1),
    constraint pk_inspeccion primary key (insp_codigo,insp_embarcacion)  
  );
/
create table ADMIN.aud_rnb_inspeccion 
  (
    insp_codigo char(15),
    insp_embarcacion number,
    insp_correlativo number,
    insp_anno number,
    insp_fecha TIMESTAMP(0),
    insp_lugar varchar2(100),
    insp_inspector number,
    insp_secretario number,
    insp_comandante number,
    insp_dependencia number,
    insp_observacion clob,
    insp_resultado char(1),
    desp_insp_codigo char(15),
    desp_insp_embarcacion number,
    desp_insp_correlativo number,
    desp_insp_anno number,
    desp_insp_fecha TIMESTAMP(0),
    desp_insp_lugar varchar2(100),
    desp_insp_inspector number,
    desp_insp_secretario number,
    desp_insp_comandante number,
    desp_insp_dependencia number,
    desp_insp_observacion clob,
    desp_insp_resultado char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_dependencia 
  (
    dep_codigo number not null ,
    dep_desc_lg varchar2(100),
    dep_desc_md varchar2(50),
    dep_desc_ct varchar2(25),
    dep_lugar char(4),
    dep_clave char(3),
    constraint pk_dependencia primary key (dep_codigo)  
  );
/
create table ADMIN.aud_rnb_dependencia 
  (
    dep_codigo number,
    dep_desc_lg varchar2(100),
    dep_desc_md varchar2(50),
    dep_desc_ct varchar2(25),
    dep_lugar char(4),
    dep_clave char(3),
    desp_dep_codigo number,
    desp_dep_desc_lg varchar2(100),
    desp_dep_desc_md varchar2(50),
    desp_dep_desc_ct varchar2(25),
    desp_dep_lugar char(4),
    desp_dep_clave char(3),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_matricula 
  (
    mat_codigo char(25) not null ,
    mat_embarcacion number not null ,
    mat_correlativo number,
    mat_libro number,
    mat_folio number,
    mat_anno number,
    mat_fecha date,
    mat_secretario number,
    mat_comandante number,
    mat_dependencia number not null ,
    mat_precio number(16,2),
    mat_situacion char(1),
    constraint pk_matricula primary key (mat_codigo,mat_embarcacion)  
  );
/
create table ADMIN.aud_rnb_matricula 
  (
    mat_codigo char(25),
    mat_embarcacion number,
    mat_correlativo number,
    mat_libro number,
    mat_folio number,
    mat_anno number,
    mat_fecha date,
    mat_secretario number,
    mat_comandante number,
    mat_dependencia number,
    mat_precio number(16,2),
    mat_situacion char(1),
    desp_mat_codigo char(25),
    desp_mat_embarcacion number,
    desp_mat_correlativo number,
    desp_mat_libro number,
    desp_mat_folio number,
    desp_mat_anno number,
    desp_mat_fecha date,
    desp_mat_secretario number,
    desp_mat_comandante number,
    desp_mat_dependencia number,
    desp_mat_precio number(16,2),
    desp_mat_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_zarpe_inter 
  (
    zarin_codigo number not null ,
    zarin_zarpe char(25) not null ,
    zarin_linea number,
    zarin_titulo varchar2(100),
    zarin_autoridad varchar2(100),
    zarin_fechaini date,
    zarin_fechafin date,
     constraint pk_zarp_int primary key (zarin_codigo,zarin_zarpe) 
  );
/
create table ADMIN.aud_rnb_zarpe_inter 
  (
    zarin_codigo number,
    zarin_zarpe char(25),
    zarin_linea number,
    zarin_titulo varchar2(100),
    zarin_autoridad varchar2(100),
    zarin_fechaini date,
    zarin_fechafin date,
    desp_zarin_codigo number,
    desp_zarin_zarpe char(25),
    desp_zarin_linea number,
    desp_zarin_titulo varchar2(100),
    desp_zarin_autoridad varchar2(100),
    desp_zarin_fechaini date,
    desp_zarin_fechafin date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_zarpe 
  (
    zar_codigo char(25) not null ,
    zar_emb_codigo number,
    zar_correlativo number,
    zar_anno number,
    zar_fecha TIMESTAMP(0),
    zar_secretario number,
    zar_comandante number,
    zar_dependencia number not null ,
    zar_precio number(16,2) not null ,
    zar_matricula varchar2(25),
    zar_emb_nombre varchar2(25),
    zar_propietario varchar2(50),
    zar_pro_direccion varchar2(50),
    zar_bandera varchar2(25),
    zar_pregistro varchar2(50),
    zar_fregistro date,
    zar_imo varchar2(25),
    zar_indll varchar2(8),
    zar_tipo varchar2(25),
    zar_tonb number(12,2),
    zar_tonn number(12,2),
    zar_lcons varchar2(50),
    zar_tripulantes number,
    zar_pasajeros number,
    zar_capitan varchar2(50) not null ,
    zar_agente_mar varchar2(50),
    zar_manifes_cargo varchar2(250),
    zar_ultimos_puertos varchar2(250),
    zar_desc_carga varchar2(250),
    zar_destino varchar2(100),
    constraint pk_zarpe primary key (zar_codigo)  
  );
/
create table ADMIN.aud_rnb_zarpe 
  (
    zar_codigo char(25),
    zar_emb_codigo number,
    zar_correlativo number,
    zar_anno number,
    zar_fecha TIMESTAMP(0),
    zar_secretario number,
    zar_comandante number,
    zar_dependencia number,
    zar_precio number(16,2),
    zar_matricula varchar2(25),
    zar_emb_nombre varchar2(25),
    zar_propietario varchar2(50),
    zar_pro_direccion varchar2(50),
    zar_bandera varchar2(25),
    zar_pregistro varchar2(50),
    zar_fregistro date,
    zar_imo varchar2(25),
    zar_indll varchar2(8),
    zar_tipo varchar2(25),
    zar_tonb number(12,2),
    zar_tonn number(12,2),
    zar_lcons varchar2(50),
    zar_tripulantes number,
    zar_pasajeros number,
    zar_capitan varchar2(50),
    zar_agente_mar varchar2(50),
    zar_manifes_cargo varchar2(250),
    zar_ultimos_puertos varchar2(250),
    zar_desc_carga varchar2(250),
    zar_destino varchar2(100),
    desp_zar_codigo char(25),
    desp_zar_emb_codigo number,
    desp_zar_correlativo number,
    desp_zar_anno number,
    desp_zar_fecha TIMESTAMP(0),
    desp_zar_secretario number,
    desp_zar_comandante number,
    desp_zar_dependencia number,
    desp_zar_precio number(16,2),
    desp_zar_matricula varchar2(25),
    desp_zar_emb_nombre varchar2(25),
    desp_zar_propietario varchar2(50),
    desp_zar_pro_direccion varchar2(50),
    desp_zar_bandera varchar2(25),
    desp_zar_pregistro varchar2(50),
    desp_zar_fregistro date,
    desp_zar_imo varchar2(25),
    desp_zar_indll varchar2(8),
    desp_zar_tipo varchar2(25),
    desp_zar_tonb number(12,2),
    desp_zar_tonn number(12,2),
    desp_zar_lcons varchar2(50),
    desp_zar_tripulantes number,
    desp_zar_pasajeros number,
    desp_zar_capitan varchar2(50),
    desp_zar_agente_mar varchar2(50),
    desp_zar_manifes_cargo varchar2(250),
    desp_zar_ultimos_puertos varchar2(250),
    desp_zar_desc_carga varchar2(250),
    desp_zar_destino varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_bitacora 
  (
    bit_codigo number not null ,
    bit_tipo varchar2(3) not null ,
    bit_accion clob not null ,
    bit_fecha TIMESTAMP(0) not null ,
    bit_quien number not null ,
    bit_dependencia number not null ,
     constraint pk_bita primary key (bit_codigo) 
  );
/
create table ADMIN.aud_rnb_bitacora 
  (
    bit_codigo number,
    bit_tipo varchar2(3),
    bit_accion clob,
    bit_fecha TIMESTAMP(0),
    bit_quien number,
    bit_dependencia number,
    desp_bit_codigo number,
    desp_bit_tipo varchar2(3),
    desp_bit_accion clob,
    desp_bit_fecha TIMESTAMP(0),
    desp_bit_quien number,
    desp_bit_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.rnb_atraque 
  (
    atra_codigo char(25) not null ,
    atra_emb_codigo number,
    atra_correlativo number,
    atra_anno number,
    atra_fecha TIMESTAMP(0),
    atra_secretario number,
    atra_comandante number,
    atra_dependencia number not null ,
    atra_matricula varchar2(25),
    atra_emb_nombre varchar2(25),
    atra_propietario varchar2(50),
    atra_pro_direccion varchar2(50),
    atra_bandera varchar2(25),
    atra_pregistro varchar2(50),
    atra_fregistro date,
    atra_imo varchar2(25),
    atra_indll varchar2(8),
    atra_tipo varchar2(25),
    atra_tipoatra char(1),
    atra_tonb number(12,2) not null ,
    atra_tonn number(12,2) not null ,
    atra_capitan varchar2(50) not null ,
    atra_agente_mar varchar2(50),
    atra_procedente varchar2(100) not null ,
    constraint pk_rnb_atraque primary key (atra_codigo) 
  );
/
create table ADMIN.aud_rnb_atraque 
  (
    atra_codigo char(25),
    atra_emb_codigo number,
    atra_correlativo number,
    atra_anno number,
    atra_fecha TIMESTAMP(0),
    atra_secretario number,
    atra_comandante number,
    atra_dependencia number,
    atra_matricula varchar2(25),
    atra_emb_nombre varchar2(25),
    atra_propietario varchar2(50),
    atra_pro_direccion varchar2(50),
    atra_bandera varchar2(25),
    atra_pregistro varchar2(50),
    atra_fregistro date,
    atra_imo varchar2(25),
    atra_indll varchar2(8),
    atra_tipo varchar2(25),
    atra_tipoatra char(1),
    atra_tonb number(12,2),
    atra_tonn number(12,2),
    atra_capitan varchar2(50),
    atra_agente_mar varchar2(50),
    atra_procedente varchar2(100),
    desp_atra_codigo char(25),
    desp_atra_emb_codigo number,
    desp_atra_correlativo number,
    desp_atra_anno number,
    desp_atra_fecha TIMESTAMP(0),
    desp_atra_secretario number,
    desp_atra_comandante number,
    desp_atra_dependencia number,
    desp_atra_matricula varchar2(25),
    desp_atra_emb_nombre varchar2(25),
    desp_atra_propietario varchar2(50),
    desp_atra_pro_direccion varchar2(50),
    desp_atra_bandera varchar2(25),
    desp_atra_pregistro varchar2(50),
    desp_atra_fregistro date,
    desp_atra_imo varchar2(25),
    desp_atra_indll varchar2(8),
    desp_atra_tipo varchar2(25),
    desp_atra_tipoatra char(1),
    desp_atra_tonb number(12,2),
    desp_atra_tonn number(12,2),
    desp_atra_capitan varchar2(50),
    desp_atra_agente_mar varchar2(50),
    desp_atra_procedente varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_detpersonal 
  (
    det_noevaas varchar2(1,1) not null ,
    det_catalogo number not null ,
    det_grado number not null ,
    det_puesto varchar2(250) not null ,
    det_tiempo varchar2(250) not null ,
    det_depen number,
    det_clasificacion number not null ,
    constraint pk_ofas_cat primary key (det_noevaas,det_catalogo)  
  );
/
create table ADMIN.aud_peva_detpersonal 
  (
    det_noevaas varchar2(1,1),
    det_catalogo number,
    det_grado number,
    det_puesto varchar2(250),
    det_tiempo varchar2(250),
    det_depen number,
    det_clasificacion number,
    desp_det_noevaas varchar2(1,1),
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_puesto varchar2(250),
    desp_det_tiempo varchar2(250),
    desp_det_depen number,
    desp_det_clasificacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_peva_boletasas 
  (
    eva_noevaas varchar2(1,1),
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
    desp_eva_noevaas varchar2(1,1),
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_certificaas 
  (
    cer_noevaas varchar2(1,1) not null ,
    cer_catalogo number not null ,
    cer_status number not null ,
    cer_certificador number not null ,
    cer_fecha date not null ,
    cer_obs varchar2(250),
    constraint pk_ofasi_cert primary key (cer_noevaas,cer_catalogo)  
  );
/
create table ADMIN.aud_peva_certificaas 
  (
    cer_noevaas varchar2(1,1),
    cer_catalogo number,
    cer_status number,
    cer_certificador number,
    cer_fecha date,
    cer_obs varchar2(250),
    desp_cer_noevaas varchar2(1,1),
    desp_cer_catalogo number,
    desp_cer_status number,
    desp_cer_certificador number,
    desp_cer_fecha date,
    desp_cer_obs varchar2(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_detbolconcep 
  (
    con_noevaas varchar2(1,1) not null ,
    con_evaluado number not null ,
    con_periodo number not null ,
    con_pregunta number not null ,
    con_nota number not null ,
    constraint pk_ofasi_bol_concp primary key (con_noevaas,con_evaluado,con_periodo,con_pregunta)  
  );
/
create table ADMIN.aud_peva_detbolconcep 
  (
    con_noevaas varchar2(1,1),
    con_evaluado number,
    con_periodo number,
    con_pregunta number,
    con_nota number,
    desp_con_noevaas varchar2(1,1),
    desp_con_evaluado number,
    desp_con_periodo number,
    desp_con_pregunta number,
    desp_con_nota number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.peva_boletasas 
  (
    eva_noevaas varchar2(1,1),
    eva_catalogo number,
    eva_periodo number not null ,
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
create table ADMIN.larm_inventario 
  (
    inv_id number not null ,
    inv_numero char(20) not null ,
    inv_tipo number not null ,
    inv_lote number not null ,
    inv_dependencia number not null ,
    imv_fecha date not null ,
    inv_status char(1) not null ,
    inv_map char(1),
    inv_museo char(1),
    constraint pk_id_invent primary key (inv_id)  
  );
/
create table ADMIN.aud_larm_inventario 
  (
    inv_id number,
    inv_numero char(20),
    inv_tipo number,
    inv_lote number,
    inv_dependencia number,
    imv_fecha date,
    inv_status char(1),
    inv_map char(1),
    inv_museo char(1),
    desp_inv_id number,
    desp_inv_numero char(20),
    desp_inv_tipo number,
    desp_inv_lote number,
    desp_inv_dependencia number,
    desp_imv_fecha date,
    desp_inv_status char(1),
    desp_inv_map char(1),
    desp_inv_museo char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pictures 
  (
    pic_id number not null ,
    pic_cat byte not null ,
    constraint pk_picture primary key (pic_id)  
  );
/
create table ADMIN.his_morg 
  (
    his_code number not null ,
    his_plaza number not null ,
    his_ceom char(6) not null ,
    his_grado number not null ,
    his_plaza_desc char(75) not null ,
    his_desc_empleo char(45),
    his_accion char(1) not null ,
    his_usuario char(12) not null ,
    his_hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_hallazgo 
  (
    hall_cat number not null ,
    hall_numero number not null ,
    hall_fecha date not null ,
    hall_clobo varchar2(255) not null ,
    hall_documento varchar2(100),
    hall_status char(1) not null ,
    hall_usuario number not null ,
    constraint pk_hallazgo primary key (hall_cat,hall_numero)  
  );
/
create table ADMIN.aud_larm_hallazgo 
  (
    hall_cat number,
    hall_numero number,
    hall_fecha date,
    hall_clobo varchar2(255),
    hall_documento varchar2(100),
    hall_status char(1),
    hall_usuario number,
    desp_hall_cat number,
    desp_hall_numero number,
    desp_hall_fecha date,
    desp_hall_clobo varchar2(255),
    desp_hall_documento varchar2(100),
    desp_hall_status char(1),
    desp_hall_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.per 
  (
    cat number
  );
/
create table ADMIN.lveh_neumaticos 
  (
    neu_code number not null ,
    neu_desc varchar2(50,1) not null ,
    constraint pk_llantas primary key (neu_code)  
  );
/
create table ADMIN.aud_lveh_neumaticos 
  (
    neu_code number,
    neu_desc varchar2(50,1),
    desp_neu_code number,
    desp_neu_desc varchar2(50,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_det_neumaticos 
  (
    det_neu_catalogo number not null ,
    det_neu_llanta number not null ,
    det_neu_number number not null ,
    det_neu_fecha TIMESTAMP not null ,
    det_neu_cantidad number not null ,
    det_neu_rin number not null ,
    det_neu_llanta2 number,
    constraint pk_detllant primary key (det_neu_catalogo,det_neu_llanta,det_neu_number)  
  );
/
create table ADMIN.aud_lveh_det_neumaticos 
  (
    det_neu_catalogo number,
    det_neu_llanta number,
    det_neu_number number,
    det_neu_fecha TIMESTAMP,
    det_neu_cantidad number,
    det_neu_rin number,
    det_neu_llanta2 number,
    desp_det_neu_catalogo number,
    desp_det_neu_llanta number,
    desp_det_neu_number number,
    desp_det_neu_fecha TIMESTAMP,
    desp_det_neu_cantidad number,
    desp_det_neu_rin number,
    desp_det_neu_llanta2 number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_det_plaza 
  (
    det_pla_catalogo number not null ,
    det_pla_plaza number not null ,
    det_pla_fecha TIMESTAMP not null ,
     constraint pk_plazas primary key (det_pla_catalogo,det_pla_plaza,det_pla_fecha) 
  );
/
create table ADMIN.aud_lveh_det_plaza 
  (
    det_pla_catalogo number,
    det_pla_plaza number,
    det_pla_fecha TIMESTAMP,
    desp_det_pla_catalogo number,
    desp_det_pla_plaza number,
    desp_det_pla_fecha TIMESTAMP,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_det_otros 
  (
    det_otros_catalogo number not null ,
    det_otros_caracteristica number not null ,
    det_otros_number number not null ,
    det_otros_fecha TIMESTAMP not null ,
    det_otros_dato varchar2(100,1) not null ,
    constraint pk_detalleotros_veh primary key (det_otros_catalogo,det_otros_caracteristica,det_otros_number)  
  );
/
create table ADMIN.aud_lveh_det_otros 
  (
    det_otros_catalogo number,
    det_otros_caracteristica number,
    det_otros_number number,
    det_otros_fecha TIMESTAMP,
    det_otros_dato varchar2(100,1),
    desp_det_otros_catalogo number,
    desp_det_otros_caracteristica number,
    desp_det_otros_number number,
    desp_det_otros_fecha TIMESTAMP,
    desp_det_otros_dato varchar2(100,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_estilo 
  (
    estilo_code number not null ,
    estilo_desc varchar2(50,1) not null ,
    estilo_marcas number not null ,
    constraint pk_estilo_veh primary key (estilo_code)  
  );
/
create table ADMIN.aud_lveh_estilo 
  (
    estilo_code number,
    estilo_desc varchar2(50,1),
    estilo_marcas number,
    desp_estilo_code number,
    desp_estilo_desc varchar2(50,1),
    desp_estilo_marcas number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_marcas 
  (
    mar_code number not null ,
    mar_desc varchar2(50,1) not null ,
    mar_tipo number not null ,
    constraint pk_mar_veh primary key (mar_code)  
  );
/
create table ADMIN.aud_lveh_marcas 
  (
    mar_code number,
    mar_desc varchar2(50,1),
    mar_tipo number,
    desp_mar_code number,
    desp_mar_desc varchar2(50,1),
    desp_mar_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_tipo 
  (
    tip_code number not null ,
    tip_desc varchar2(50,1) not null ,
    constraint pk_tipo_veh primary key (tip_code)  
  );
/
create table ADMIN.aud_lveh_tipo 
  (
    tip_code number,
    tip_desc varchar2(50,1),
    desp_tip_code number,
    desp_tip_desc varchar2(50,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lvehiculos 
  (
    veh_catalogo number not null ,
    veh_placas varchar2(20,1) not null ,
    veh_chasis varchar2(30,1) not null ,
    veh_vin varchar2(30,1) not null ,
    veh_serie varchar2(30,1) not null ,
    veh_tipo number not null ,
    veh_marca number not null ,
    veh_estilo number not null ,
    veh_modelo number not null ,
    veh_asientos number not null ,
    veh_puertas number not null ,
    veh_traccion varchar2(50,1) not null ,
    veh_ejes number not null ,
    veh_tonelaje number not null ,
    constraint pk_catveh primary key (veh_catalogo)  
  );
/
create table ADMIN.aud_lvehiculos 
  (
    veh_catalogo number,
    veh_placas varchar2(20,1),
    veh_chasis varchar2(30,1),
    veh_vin varchar2(30,1),
    veh_serie varchar2(30,1),
    veh_tipo number,
    veh_marca number,
    veh_estilo number,
    veh_modelo number,
    veh_asientos number,
    veh_puertas number,
    veh_traccion varchar2(50,1),
    veh_ejes number,
    veh_tonelaje number,
    desp_veh_catalogo number,
    desp_veh_placas varchar2(20,1),
    desp_veh_chasis varchar2(30,1),
    desp_veh_vin varchar2(30,1),
    desp_veh_serie varchar2(30,1),
    desp_veh_tipo number,
    desp_veh_marca number,
    desp_veh_estilo number,
    desp_veh_modelo number,
    desp_veh_asientos number,
    desp_veh_puertas number,
    desp_veh_traccion varchar2(50,1),
    desp_veh_ejes number,
    desp_veh_tonelaje number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_det_transmision 
  (
    det_trans_catalogo number not null ,
    det_trans_tipo varchar2(20,1) not null ,
    det_trans_fecha TIMESTAMP not null ,
    det_trans_aceite number not null ,
    det_trans_aceitecant number not null ,
    constraint pk_dettrans_veh primary key (det_trans_catalogo,det_trans_tipo,det_trans_fecha)  
  );
/
create table ADMIN.lveh_det_motor 
  (
    det_mot_catalogo number not null ,
    det_mot_numero varchar2(50,1) not null ,
    det_mot_fecha TIMESTAMP not null ,
    det_mot_cilindros number not null ,
    det_mot_cilindraje number not null ,
    det_mot_combustible number not null ,
    det_mot_autonomia number not null ,
    det_mot_aceite number not null ,
    det_mot_aceitecant number not null ,
    det_mot_eficiencia number not null ,
    constraint pk_detmot_veh primary key (det_mot_catalogo,det_mot_numero,det_mot_fecha)  
  );
/
create table ADMIN.aud_lveh_det_motor 
  (
    det_mot_catalogo number,
    det_mot_numero varchar2(50,1),
    det_mot_fecha TIMESTAMP,
    det_mot_cilindros number,
    det_mot_cilindraje number,
    det_mot_combustible number,
    det_mot_autonomia number,
    det_mot_aceite number,
    det_mot_aceitecant number,
    det_mot_eficiencia number,
    desp_det_mot_catalogo number,
    desp_det_mot_numero varchar2(50,1),
    desp_det_mot_fecha TIMESTAMP,
    desp_det_mot_cilindros number,
    desp_det_mot_cilindraje number,
    desp_det_mot_combustible number,
    desp_det_mot_autonomia number,
    desp_det_mot_aceite number,
    desp_det_mot_aceitecant number,
    desp_det_mot_eficiencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_solicitud 
  (
    sol_numero number not null ,
    sol_dependencia number not null ,
    sol_fecha TIMESTAMP not null ,
    sol_tipo number not null ,
    sol_motivo varchar2(200,1) not null ,
    sol_observaciones varchar2(200,1) not null ,
    sol_estatus number not null ,
    sol_cat_comte number not null ,
    sol_cat_logistico number not null ,
    sol_cat_usuario number not null ,
    sol_grado number not null ,
    sol_referencia varchar2(100,1) not null ,
    constraint pk_solic_veh primary key (sol_numero) 
  );
/
create table ADMIN.aud_lveh_solicitud 
  (
    sol_numero number,
    sol_dependencia number,
    sol_fecha TIMESTAMP,
    sol_tipo number,
    sol_motivo varchar2(200,1),
    sol_observaciones varchar2(200,1),
    sol_estatus number,
    sol_cat_comte number,
    sol_cat_logistico number,
    sol_cat_usuario number,
    sol_grado number,
    sol_referencia varchar2(100,1),
    desp_sol_numero number,
    desp_sol_dependencia number,
    desp_sol_fecha TIMESTAMP,
    desp_sol_tipo number,
    desp_sol_motivo varchar2(200,1),
    desp_sol_observaciones varchar2(200,1),
    desp_sol_estatus number,
    desp_sol_cat_comte number,
    desp_sol_cat_logistico number,
    desp_sol_cat_usuario number,
    desp_sol_grado number,
    desp_sol_referencia varchar2(100,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_combustible 
  (
    com_code number not null ,
    com_desc varchar2(50,1) not null ,
    com_situacion number not null ,
     constraint pk_comb_veh primary key (com_code) 
  );
/
create table ADMIN.aud_lveh_combustible 
  (
    com_code number,
    com_desc varchar2(50,1),
    desp_com_code number,
    desp_com_desc varchar2(50,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_aceite 
  (
    ace_code number not null ,
    ace_desc varchar2(50,1) not null ,
    constraint pk_aceite_lveh 
    constraint pk_constraint pk_aceite_lveh primary key (ace_code)  
  );
/
create table ADMIN.aud_lveh_aceite 
  (
    ace_code number,
    ace_desc varchar2(50,1),
    desp_ace_code number,
    desp_ace_desc varchar2(50,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_nuevo 
  (
    nue_solicitud number not null ,
    nue_dependencia number not null ,
    nue_placas varchar2(20,1) not null ,
    nue_chasis varchar2(30,1) not null ,
    nue_vin varchar2(30,1) not null ,
    nue_serie varchar2(30,1) not null ,
    nue_tipo_veh number not null ,
    nue_modelo number not null ,
    nue_marca number not null ,
    nue_asientos number not null ,
    nue_puertas number not null ,
    nue_traccion varchar2(50,1) not null ,
    nue_ejes number not null ,
    nue_tonelaje number not null ,
    nue_estilo number not null ,
    nue_motor varchar2(30,1) not null ,
    nue_cilindros number not null ,
    nue_cilindraje number not null ,
    nue_combustible number not null ,
    nue_autonomia number not null ,
    nue_aceite_motor number not null ,
    nue_cantidad_mot number not null ,
    nue_transmision varchar2(20,1) not null ,
    nue_aceite_trans number not null ,
    nue_cantidad_trans varchar2(20,1) not null ,
    nue_llantas number not null ,
    nue_tipo_llantas number not null ,
    nue_rin number not null ,
    nue_plaza number not null ,
    nue_dep number not null ,
    nue_estado varchar2(50,1) not null ,
    nue_situacion number not null ,
    nue_color number not null ,
    nue_uso varchar2(100,1) not null ,
    nue_adaptacion varchar2(100,1),
    nue_eficiencia number not null ,
    nue_llanta2 number,
    constraint pk_nuevo_veh primary key (nue_solicitud)  
  );
/
create table ADMIN.lveh_det_documento 
  (
    det_doc_numero number not null ,
    det_doc_dependencia number not null ,
    det_doc_fecha TIMESTAMP not null ,
    det_doc_referencia varchar2(100,1) not null ,
    det_doc_usuario number not null ,
    det_doc_grado number not null ,
    constraint pk_todo primary key (det_doc_numero,det_doc_dependencia,det_doc_fecha)  
  );
/
create table ADMIN.aud_lveh_det_documento 
  (
    det_doc_numero number,
    det_doc_dependencia number,
    det_doc_fecha TIMESTAMP,
    det_doc_referencia varchar2(100,1),
    det_doc_usuario number,
    det_doc_grado number,
    desp_det_doc_numero number,
    desp_det_doc_dependencia number,
    desp_det_doc_fecha TIMESTAMP,
    desp_det_doc_referencia varchar2(100,1),
    desp_det_doc_usuario number,
    desp_det_doc_grado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_caracteristicas 
  (
    car_code number not null ,
    car_desc varchar2(50,1) not null ,
    constraint pk_caract_veh primary key (car_code)  
  );
/
create table ADMIN.aud_lveh_caracteristicas 
  (
    car_code number,
    car_desc varchar2(50,1),
    desp_car_code number,
    desp_car_desc varchar2(50,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_asigna 
  (
    veh_sol_numero number not null ,
    veh_sol_catalogo number not null ,
     constraint pkc_asignaveh primary key (veh_sol_numero,veh_sol_catalogo) 
  );
/
create table ADMIN.aud_lveh_asigna 
  (
    veh_sol_numero number,
    veh_sol_catalogo number,
    desp_veh_sol_numero number,
    desp_veh_sol_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lveh_nuevo 
  (
    nue_solicitud number,
    nue_dependencia number,
    nue_placas varchar2(20,1),
    nue_chasis varchar2(30,1),
    nue_vin varchar2(30,1),
    nue_serie varchar2(30,1),
    nue_tipo_veh number,
    nue_modelo number,
    nue_marca number,
    nue_asientos number,
    nue_puertas number,
    nue_traccion varchar2(50,1),
    nue_ejes number,
    nue_tonelaje number,
    nue_estilo number,
    nue_motor varchar2(30,1),
    nue_cilindros number,
    nue_cilindraje number,
    nue_combustible number,
    nue_autonomia number,
    nue_aceite_motor number,
    nue_cantidad_mot number,
    nue_transmision varchar2(20,1),
    nue_aceite_trans number,
    nue_cantidad_trans varchar2(20,1),
    nue_llantas number,
    nue_tipo_llantas number,
    nue_rin number,
    nue_plaza number,
    nue_dep number,
    nue_estado varchar2(50,1),
    nue_situacion number,
    nue_color number,
    nue_uso varchar2(100,1),
    nue_adaptacion varchar2(100,1),
    nue_eficiencia number,
    nue_llanta2 number,
    desp_nue_solicitud number,
    desp_nue_dependencia number,
    desp_nue_placas varchar2(20,1),
    desp_nue_chasis varchar2(30,1),
    desp_nue_vin varchar2(30,1),
    desp_nue_serie varchar2(30,1),
    desp_nue_tipo_veh number,
    desp_nue_modelo number,
    desp_nue_marca number,
    desp_nue_asientos number,
    desp_nue_puertas number,
    desp_nue_traccion varchar2(50,1),
    desp_nue_ejes number,
    desp_nue_tonelaje number,
    desp_nue_estilo number,
    desp_nue_motor varchar2(30,1),
    desp_nue_cilindros number,
    desp_nue_cilindraje number,
    desp_nue_combustible number,
    desp_nue_autonomia number,
    desp_nue_aceite_motor number,
    desp_nue_cantidad_mot number,
    desp_nue_transmision varchar2(20,1),
    desp_nue_aceite_trans number,
    desp_nue_cantidad_trans varchar2(20,1),
    desp_nue_llantas number,
    desp_nue_tipo_llantas number,
    desp_nue_rin number,
    desp_nue_plaza number,
    desp_nue_dep number,
    desp_nue_estado varchar2(50,1),
    desp_nue_situacion number,
    desp_nue_color number,
    desp_nue_uso varchar2(100,1),
    desp_nue_adaptacion varchar2(100,1),
    desp_nue_eficiencia number,
    desp_nue_llanta2 number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_loc 
  (
    vplaza number,
    vper_cat number,
    vper_grado number,
    vgrado varchar2(8),
    vape1 char(15),
    vape2 char(15),
    vdesc_plaza char(75),
    vceom char(6),
    varm_cat number,
    vtipo char(30),
    vlot_arm number,
    vtip_arm number,
    vno_arm char(20),
    vsit_desc char(20),
    vsit_codigo number,
    vjerar char(10),
    desp_vplaza number,
    desp_vper_cat number,
    desp_vper_grado number,
    desp_vgrado varchar2(8),
    desp_vape1 char(15),
    desp_vape2 char(15),
    desp_vdesc_plaza char(75),
    desp_vceom char(6),
    desp_varm_cat number,
    desp_vtipo char(30),
    desp_vlot_arm number,
    desp_vtip_arm number,
    desp_vno_arm char(20),
    desp_vsit_desc char(20),
    desp_vsit_codigo number,
    desp_vjerar char(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.conecta2 
  (
    catalogo number,
    sistema number
  );
/
create table ADMIN.lveh_obser 
  (
    obs_cat number not null ,
    obs_num number not null ,
    obs_fecha date,
    obs_clobo clob not null ,
    obs_usuario varchar2(30) 
        default user,
    constraint pk_veh_obser primary key (obs_cat,obs_num)  
  );
/
create table ADMIN.aud_lveh_obser 
  (
    obs_cat number,
    obs_num number,
    obs_fecha date,
    obs_clobo clob,
    obs_usuario varchar2(30),
    desp_obs_cat number,
    desp_obs_num number,
    desp_obs_fecha date,
    desp_obs_clobo clob,
    desp_obs_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_his 
  (
    his_cat number not null ,
    his_dep number not null ,
    his_fec_ini date,
    his_fec_fin date,
    his_usuario varchar2(30) 
        default user,
    
    constraint ck_his_fec_fin check (his_fec_fin >= his_fec_ini ) ,
    constraint pk_lveh_his primary key (his_cat,his_dep,his_fec_ini) 
  );
/
create table ADMIN.aud_lveh_his 
  (
    his_cat number,
    his_dep number,
    his_fec_ini date,
    his_fec_fin date,
    his_usuario varchar2(30),
    desp_his_cat number,
    desp_his_dep number,
    desp_his_fec_ini date,
    desp_his_fec_fin date,
    desp_his_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_situacion 
  (
    sit_codigo number not null ,
    sit_desc_lg char(30) not null ,
    sit_desc_md char(15) not null ,
    sit_desc_ct char(8) not null ,
    constraint pk_veh_situacion primary key (sit_codigo)  
  );
/
create table ADMIN.aud_lveh_situacion 
  (
    sit_codigo number,
    sit_desc_lg char(30),
    sit_desc_md char(15),
    sit_desc_ct char(8),
    desp_sit_codigo number,
    desp_sit_desc_lg char(30),
    desp_sit_desc_md char(15),
    desp_sit_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lveh_color 
  (
    col_codigo number not null ,
    col_desc_lg char(41) not null ,
    col_desc_md char(28) not null ,
    col_desc_ct char(15) not null ,
    constraint pk_veh_color primary key (col_codigo)  
  );
/
create table ADMIN.aud_lveh_color 
  (
    col_codigo number,
    col_desc_lg char(30),
    col_desc_md char(15),
    col_desc_ct char(8),
    desp_col_codigo number,
    desp_col_desc_lg char(30),
    desp_col_desc_md char(15),
    desp_col_desc_ct char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lveh_det_transmision 
  (
    det_trans_catalogo number,
    det_trans_tipo varchar2(20,1),
    det_trans_fecha TIMESTAMP,
    det_trans_aceite number,
    det_trans_aceitecant number,
    desp_det_trans_catalogo number,
    desp_det_trans_tipo varchar2(20,1),
    desp_det_trans_fecha TIMESTAMP,
    desp_det_trans_aceite number,
    desp_det_trans_aceitecant number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_solicitud 
  (
    sol_num number,
    sol_catalogo number,
    sol_tipo number,
    sol_ref varchar2(150,1),
    sol_datocambia number,
    sol_contenido varchar2(10,1),
    sol_contenido2 number,
    sol_motivo varchar2(255,1),
    sol_logistico number,
    sol_comte number,
    sol_inspector number,
    sol_fecha date,
    sol_usuario number,
    desp_sol_num number,
    desp_sol_catalogo number,
    desp_sol_tipo number,
    desp_sol_ref varchar2(150,1),
    desp_sol_datocambia number,
    desp_sol_contenido varchar2(10,1),
    desp_sol_contenido2 number,
    desp_sol_motivo varchar2(255,1),
    desp_sol_logistico number,
    desp_sol_comte number,
    desp_sol_inspector number,
    desp_sol_fecha date,
    desp_sol_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_larm_obser 
  (
    obs_cat number,
    obs_num number,
    obs_fecha date,
    obs_clobo varchar2(2000),
    obs_usuario varchar2(30),
    desp_obs_cat number,
    desp_obs_num number,
    desp_obs_fecha date,
    desp_obs_clobo varchar2(2000),
    desp_obs_usuario varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_obser 
  (
    obs_cat number not null ,
    obs_num number not null ,
    obs_fecha date,
    obs_clobo varchar2(2000),
    obs_usuario varchar2(30),
    constraint lobs_catnum primary key (obs_cat,obs_num)  
  );
/
create table ADMIN.ptel_personal 
  (
    tel_catalogo number,
    tel_casa number,
    tel_personal number,
    tel_correo_of varchar2(200),
    tel_correo_per varchar2(200),
    constraint tel_person primary key (tel_catalogo)  
  );
/
create table ADMIN.aud_ptel_personal 
  (
    tel_catalogo number,
    tel_casa number,
    tel_personal number,
    tel_correo_of varchar2(200),
    tel_correo_per varchar2(200),
    desp_tel_catalogo number,
    desp_tel_casa number,
    desp_tel_personal number,
    desp_tel_correo_of varchar2(200),
    desp_tel_correo_per varchar2(200),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ptel_depen 
  (
    tel_plaza number,
    tel_depen number,
    tel_planta1 number,
    tel_planta2 number,
    tel_centrix number,
    tel_correo varchar2(20),
    constraint tel_depen primary key (tel_plaza)  
  );
/
create table ADMIN.aud_ptel_depen 
  (
    tel_plaza number,
    tel_depen number,
    tel_planta1 number,
    tel_planta2 number,
    tel_centrix number,
    tel_correo varchar2(20),
    desp_tel_plaza number,
    desp_tel_depen number,
    desp_tel_planta1 number,
    desp_tel_planta2 number,
    desp_tel_centrix number,
    desp_tel_correo varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ptel_centrix 
  (
    tel_plaza number,
    tel_centrix number,
    constraint ptel_centrix primary key (tel_plaza) 
  );
/
create table ADMIN.aud_ptel_centrix 
  (
    tel_plaza number,
    tel_centrix number,
    desp_tel_plaza number,
    desp_tel_centrix number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dfdes 
  (
    dfd_catalogo number not null ,
    dfd_codigo number not null ,
    dfd_nu_reg number not null ,
    dfd_cod_control number not null ,
    dfd_tipo_desc char(1) not null ,
    dfd_fec_ini date not null ,
    dfd_ult_act date,
    dfd_fec_cer date,
    dfd_monto number(16,2) not null ,
    dfd_saldo number(16,2) not null ,
    dfd_mensual number(16,2) not null ,
    dfd_tot_cuotas number not null ,
    dfd_num_cuotas number not null ,
    dfd_documen char(6),
    dfd_codeudor number,
    dfd_nom_bene char(50),
    dfd_juz_con char(50),
    constraint pk_dfdes primary key (dfd_catalogo,dfd_codigo,dfd_nu_reg)  
  );
/
create table ADMIN.aud_dfdes 
  (
    antes1 char(12),
    antes2 char(8),
    antes3 char(8),
    antes4 char(8),
    antes5 char(1),
    antes6 char(12),
    antes7 char(12),
    antes8 char(12),
    antes9 char(20),
    antes10 char(20),
    antes11 char(20),
    antes12 char(8),
    antes13 char(8),
    antes14 char(12),
    antes15 char(12),
    antes16 char(50),
    antes17 char(50),
    despues1 char(12),
    despues2 char(8),
    despues3 char(8),
    despues4 char(8),
    despues5 char(1),
    despues6 char(12),
    despues7 char(12),
    despues8 char(12),
    despues9 char(20),
    despues10 char(20),
    despues11 char(20),
    despues12 char(8),
    despues13 char(8),
    despues14 char(12),
    despues15 char(12),
    despues16 char(50),
    despues17 char(50),
    hora TIMESTAMP(0),
    accion char(1) not null ,
    usuario char(12) not null ,
    tabname char(15) not null 
  );
/
create table ADMIN.psan_detalle 
  (
    det_catalogo number not null ,
    det_fecha date not null ,
    det_sancion number not null ,
    det_grado number not null ,
    det_dependencia number not null ,
    det_observaciones varchar2(250),
    det_detalle varchar2(1500),
    det_status number,
    constraint pk_psan_detalle primary key (det_catalogo,det_fecha,det_sancion) 
  );
/
create table ADMIN.aud_psan_detalle 
  (
    det_catalogo number,
    det_fecha date,
    det_sancion number,
    det_grado number,
    det_dependencia number,
    det_observaciones varchar2(250),
    det_detalle varchar2(1500),
    det_status number,
    desp_det_catalogo number,
    desp_det_fecha date,
    desp_det_sancion number,
    desp_det_grado number,
    desp_det_dependencia number,
    desp_det_observaciones varchar2(250),
    desp_det_detalle varchar2(1500),
    desp_det_status number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_clase_licencia 
  (
    cla_codigo number not null ,
    cla_nombre varchar2(50) not null ,
    cla_descripcion varchar2(150,1) not null ,
    constraint pk_esp_clase_licencia primary key (cla_codigo) 
  );
/
create table ADMIN.aud_esp_clase_licencia 
  (
    cla_codigo number,
    cla_nombre varchar2(50),
    cla_descripcion varchar2(150,1),
    desp_cla_codigo number,
    desp_cla_nombre varchar2(50),
    desp_cla_descripcion varchar2(150,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_expertos 
  (
    exp_codigo number not null ,
    exp_nom1 varchar2(15) not null ,
    exp_nom2 varchar2(15),
    exp_ape1 varchar2(15) not null ,
    exp_ape2 varchar2(15),
    exp_numerolic varchar2(50) not null ,
    exp_tipolic varchar2(50) not null ,
    exp_fechavence date not null ,
    exp_dpi_cedula varchar2(50) not null ,
    exp_empresa number not null ,
    constraint pk_esp_expertos primary key (exp_codigo)  
  );
/
create table ADMIN.aud_esp_expertos 
  (
    exp_codigo number,
    exp_nom1 varchar2(15),
    exp_nom2 varchar2(15),
    exp_ape1 varchar2(15),
    exp_ape2 varchar2(15),
    exp_numerolic varchar2(50),
    exp_tipolic varchar2(50),
    exp_fechavence date,
    exp_dpi_cedula varchar2(50),
    exp_empresa number,
    desp_exp_codigo number,
    desp_exp_nom1 varchar2(15),
    desp_exp_nom2 varchar2(15),
    desp_exp_ape1 varchar2(15),
    desp_exp_ape2 varchar2(15),
    desp_exp_numerolic varchar2(50),
    desp_exp_tipolic varchar2(50),
    desp_exp_fechavence date,
    desp_exp_dpi_cedula varchar2(50),
    desp_exp_empresa number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_permisos 
  (
    per_codigo number not null ,
    per_empresa number not null ,
    per_numeroper varchar2(100,1) not null ,
    per_vehiculo varchar2(250,1) not null ,
    per_aduana number not null ,
    per_usuario varchar2(50) not null ,
    per_vicemin varchar2(100) not null ,
    per_empresa_ext varchar2(100) not null ,
    per_pais varchar2(100) not null ,
    per_dir varchar2(100) not null ,
    per_experto varchar2(250) not null ,
    per_obs varchar2(250) not null ,
    per_status number not null ,
    per_claseper number not null ,
    per_referencia varchar2(100) not null ,
    per_fecharefe date not null ,
    per_fec_ac date not null ,
    per_horainicia number not null ,
    per_duracion number not null ,
    per_licencia number not null ,
    per_destino varchar2(100) not null ,
    per_fecha_custodia date not null ,
    constraint pk_esp_permisos primary key (per_codigo)  
  );
/
create table ADMIN.aud_esp_permisos 
  (
    per_codigo number,
    per_empresa number,
    per_numeroper varchar2(100,1),
    per_vehiculo varchar2(250,1),
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
    desp_per_numeroper varchar2(100,1),
    desp_per_vehiculo varchar2(250,1),
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_historial 
  (
    his_codigo number not null ,
    his_permiso number not null ,
    his_inventario number not null ,
    his_movimiento number not null ,
    his_fechamov date not null ,
    his_cantidad number not null ,
    constraint pk_esp_historial primary key (his_codigo,his_permiso,his_inventario) 
  );
/
create table ADMIN.aud_esp_historial 
  (
    his_codigo number,
    his_permiso number,
    his_inventario number,
    his_movimiento number,
    his_fechamov date,
    his_cantidad number,
    desp_his_codigo number,
    desp_his_permiso number,
    desp_his_inventario number,
    desp_his_movimiento number,
    desp_his_fechamov date,
    desp_his_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_det_permisos 
  (
    dper_codigo number not null ,
    dper_codigoper number not null ,
    dper_producto number not null ,
    dper_cantidad number not null ,
    constraint pk_esp_det_permisos primary key (dper_codigo,dper_codigoper) 
  );
/
create table ADMIN.aud_esp_det_permisos 
  (
    dper_codigo number,
    dper_codigoper number,
    dper_producto number,
    dper_cantidad number,
    desp_dper_codigo number,
    desp_dper_codigoper number,
    desp_dper_producto number,
    desp_dper_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_marcas 
  (
    mar_codigo number not null ,
    mar_descripcion varchar2(30) not null ,
    constraint pk_esp_marcas primary key (mar_codigo) 
  );
/
create table ADMIN.aud_esp_marcas 
  (
    mar_codigo number,
    mar_descripcion varchar2(30),
    desp_mar_codigo number,
    desp_mar_descripcion varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_grupo_producto 
  (
    gru_codigo number not null ,
    gru_nombre varchar2(100) not null ,
    constraint pk_esp_grupo_producto primary key (gru_codigo) 
  );
/
create table ADMIN.aud_esp_grupo_producto 
  (
    gru_codigo number,
    gru_nombre varchar2(100),
    desp_gru_codigo number,
    desp_gru_nombre varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_productos 
  (
    pro_codigo number not null ,
    pro_desc_lg varchar2(50) not null ,
    pro_desc_md varchar2(30) not null ,
    pro_desc_ct varchar2(15) not null ,
    pro_umedida number not null ,
    pro_grupo number not null ,
    constraint pk_esp_productos primary key (pro_codigo) 
  );
/
create table ADMIN.aud_esp_productos 
  (
    pro_codigo number,
    pro_desc_lg varchar2(50),
    pro_desc_md varchar2(30),
    pro_desc_ct varchar2(15),
    pro_umedida number,
    pro_grupo number,
    desp_pro_codigo number,
    desp_pro_desc_lg varchar2(50),
    desp_pro_desc_md varchar2(30),
    desp_pro_desc_ct varchar2(15),
    desp_pro_umedida number,
    desp_pro_grupo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_unidad_medida 
  (
    uni_codigo number not null ,
    uni_descripcion varchar2(50) not null ,
    constraint pk_esp_unidad_medida primary key (uni_codigo) 
  );
/
create table ADMIN.aud_esp_unidad_medida 
  (
    uni_codigo number,
    uni_descripcion varchar2(50),
    desp_uni_codigo number,
    desp_uni_descripcion varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_aduanas 
  (
    adu_codigo number not null ,
    adu_desc_lg varchar2(50) not null ,
    adu_desc_ct varchar2(30) not null ,
    adu_dpmun number not null ,
    constraint pk_esp_aduanas primary key (adu_codigo) 
  );
/
create table ADMIN.aud_esp_aduanas 
  (
    adu_codigo number,
    adu_desc_lg varchar2(50),
    adu_desc_ct varchar2(30),
    adu_dpmun number,
    desp_adu_codigo number,
    desp_adu_desc_lg varchar2(50),
    desp_adu_desc_ct varchar2(30),
    desp_adu_dpmun number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_inventario 
  (
    inv_codigo number not null ,
    inv_licencia number not null ,
    inv_cantidad number not null ,
    inv_producto number not null ,
    constraint pk_esp_inventario primary key (inv_codigo,inv_licencia) 
  );
/
create table ADMIN.aud_esp_inventario 
  (
    inv_codigo number,
    inv_licencia number,
    inv_cantidad number,
    inv_producto number,
    desp_inv_codigo number,
    desp_inv_licencia number,
    desp_inv_cantidad number,
    desp_inv_producto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_det_licencias 
  (
    dlic_codigo number not null ,
    dlic_codigolic number not null ,
    dlic_producto number not null ,
    dlic_cantidad number not null ,
    constraint pk_esp_det_licencias primary key (dlic_codigo,dlic_codigolic) 
  );
/
create table ADMIN.aud_esp_det_licencias 
  (
    dlic_codigo number,
    dlic_codigolic number,
    dlic_producto number,
    dlic_cantidad number,
    desp_dlic_codigo number,
    desp_dlic_codigolic number,
    desp_dlic_producto number,
    desp_dlic_cantidad number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_aseguradoras 
  (
    ase_codigo number not null ,
    ase_desc_lg varchar2(50) not null ,
    ase_desc_ct varchar2(30) not null ,
    constraint pk_esp_aseguradoras primary key (ase_codigo) 
  );
/
create table ADMIN.aud_esp_aseguradoras 
  (
    ase_codigo number,
    ase_desc_lg varchar2(50),
    ase_desc_ct varchar2(30),
    desp_ase_codigo number,
    desp_ase_desc_lg varchar2(50),
    desp_ase_desc_ct varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_clase_permiso 
  (
    cper_codigo number not null ,
    cper_nombre varchar2(50) not null ,
    cper_descripcion varchar2(150) not null ,
    constraint pk_esp_clase_permiso primary key (cper_codigo) 
  );
/
create table ADMIN.aud_esp_clase_permiso 
  (
    cper_codigo number,
    cper_nombre varchar2(50),
    cper_descripcion varchar2(150),
    desp_cper_codigo number,
    desp_cper_nombre varchar2(50),
    desp_cper_descripcion varchar2(150),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_licencias 
  (
    lic_codigo number not null ,
    lic_empresa number not null ,
    lic_claselic number not null ,
    lic_fechainicia date not null ,
    lic_fechafin date not null ,
    lic_numerolic varchar2(100,1) not null ,
    lic_seguro number not null ,
    lic_vehiculo varchar2(250,1) not null ,
    lic_usuario varchar2(50,1) not null ,
    lic_vicemin varchar2(100,1) not null ,
    lic_obs varchar2(250,1) not null ,
    lic_status number not null ,
    lic_fecactual date not null ,
    lic_procedencia varchar2(250,1) not null ,
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
    lic_vehiculo varchar2(250,1),
    lic_usuario varchar2(50,1),
    lic_vicemin varchar2(100,1),
    lic_obs varchar2(250,1),
    lic_status number,
    lic_fecactual date,
    lic_procedencia varchar2(250,1),
    desp_lic_codigo number,
    desp_lic_empresa number,
    desp_lic_claselic number,
    desp_lic_fechainicia date,
    desp_lic_fechafin date,
    desp_lic_numerolic varchar2(100,1),
    desp_lic_seguro number,
    desp_lic_vehiculo varchar2(250,1),
    desp_lic_usuario varchar2(50,1),
    desp_lic_vicemin varchar2(100,1),
    desp_lic_obs varchar2(250,1),
    desp_lic_status number,
    desp_lic_fecactual date,
    desp_lic_procedencia varchar2(250,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_seguro 
  (
    seg_codigo number not null ,
    seg_clasepoli varchar2(30) not null ,
    seg_numpoli varchar2(30) not null ,
    seg_asegura number not null ,
    constraint pk_esp_seguro primary key (seg_codigo) 
  );
/
create table ADMIN.aud_esp_seguro 
  (
    seg_codigo number,
    seg_clasepoli varchar2(30),
    seg_numpoli varchar2(30),
    seg_asegura number,
    desp_seg_codigo number,
    desp_seg_clasepoli varchar2(30),
    desp_seg_numpoli varchar2(30),
    desp_seg_asegura number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_empresas 
  (
    emp_codigo number not null ,
    emp_nit varchar2(30) not null ,
    emp_nombre varchar2(100) not null ,
    emp_direccion varchar2(100) not null ,
    emp_tel number not null ,
    emp_mail varchar2(50) not null ,
    emp_nomrep1 varchar2(15) not null ,
    emp_nomrep2 varchar2(15),
    emp_aperep1 varchar2(15) not null ,
    emp_aperep2 varchar2(15),
    emp_tel1 number not null ,
    emp_nompropi1 varchar2(15) not null ,
    emp_nompropi2 varchar2(15),
    emp_apepropi1 varchar2(15) not null ,
    emp_apepropi2 varchar2(15),
    emp_tel2 number not null ,
    emp_dirbodega varchar2(100) not null ,
    constraint pk_esp_empresas primary key (emp_codigo) 
  );
/
create table ADMIN.aud_esp_empresas 
  (
    emp_codigo number,
    emp_nit varchar2(30),
    emp_nombre varchar2(100),
    emp_direccion varchar2(100),
    emp_tel number,
    emp_mail varchar2(50),
    emp_nomrep1 varchar2(15),
    emp_nomrep2 varchar2(15),
    emp_aperep1 varchar2(15),
    emp_aperep2 varchar2(15),
    emp_tel1 number,
    emp_nompropi1 varchar2(15),
    emp_nompropi2 varchar2(15),
    emp_apepropi1 varchar2(15),
    emp_apepropi2 varchar2(15),
    emp_tel2 number not null ,
    emp_dirbodega varchar2(100),
    desp_emp_codigo number,
    desp_emp_nit varchar2(30),
    desp_emp_nombre varchar2(100),
    desp_emp_direccion varchar2(100),
    desp_emp_tel number,
    desp_emp_mail varchar2(50),
    desp_emp_nomrep1 varchar2(15),
    desp_emp_nomrep2 varchar2(15),
    desp_emp_aperep1 varchar2(15),
    desp_emp_aperep2 varchar2(15),
    desp_emp_tel1 number,
    desp_emp_nompropi1 varchar2(15),
    desp_emp_nompropi2 varchar2(15),
    desp_emp_apepropi1 varchar2(15),
    desp_emp_apepropi2 varchar2(15),
    desp_emp_tel2 number not null ,
    desp_emp_dirbodega varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.esp_vehiculos 
  (
    veh_codigo number not null ,
    veh_marca number not null ,
    veh_modelo number not null ,
    veh_color varchar2(30,1) not null ,
    veh_placas varchar2(30,1) not null ,
    veh_empresa number not null ,
    veh_tipo varchar2(30,1) not null ,
    veh_doc_auto varchar2(100,1) not null ,
    veh_fecha_auto date not null ,
    veh_capacidad varchar2(50,1) not null ,
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
    veh_doc_auto varchar2(100,1),
    veh_fecha_auto date,
    veh_capacidad varchar2(50),
    desp_veh_codigo number,
    desp_veh_marca number,
    desp_veh_modelo number,
    desp_veh_color varchar2(30),
    desp_veh_placas varchar2(30),
    desp_veh_empresa number,
    desp_veh_tipo varchar2(30),
    desp_veh_doc_auto varchar2(100,1),
    desp_veh_fecha_auto date,
    desp_veh_capacidad varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_solicitud 
  (
    sol_numero number not null ,
    sol_docto varchar2(25,1) not null ,
    sol_fecha date not null ,
    sol_obs varchar2(250,1) not null ,
    sol_dependencia number not null ,
    sol_comte number not null ,
    sol_logistico number not null ,
    sol_dotac number not null ,
    sol_usuario number not null ,
    sol_comprobante number not null ,
    constraint pk_soli primary key (sol_numero)  
  );
/
create table ADMIN.aud_luni_solicitud 
  (
    sol_numero number,
    sol_docto varchar2(25,1),
    sol_fecha date,
    sol_obs varchar2(250,1),
    sol_dependencia number,
    sol_comte number,
    sol_logistico number,
    sol_dotac number,
    sol_usuario number,
    sol_comprobante number,
    desp_sol_numero number,
    desp_sol_docto varchar2(25,1),
    desp_sol_fecha date,
    desp_sol_obs varchar2(250,1),
    desp_sol_dependencia number,
    desp_sol_comte number,
    desp_sol_logistico number,
    desp_sol_dotac number,
    desp_sol_usuario number,
    desp_sol_comprobante number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_detallesoli 
  (
    dets_solicitud number not null ,
    dets_uniforme number not null ,
    dets_talla number not null ,
    dets_total number not null ,
    dets_status number not null ,
    constraint pklunidetsoli primary key (dets_solicitud,dets_uniforme,dets_talla)  
  );
/
create table ADMIN.aud_luni_detallesoli 
  (
    dets_solicitud number,
    dets_uniforme number,
    dets_talla number,
    dets_total number,
    dets_status number,
    desp_dets_solicitud number,
    desp_dets_uniforme number,
    desp_dets_talla number,
    desp_dets_total number,
    desp_dets_status number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_detsol_log 
  (
    detu_solicitud number not null ,
    detu_uniforme number not null ,
    detu_talla number not null ,
    detu_total number not null ,
    detu_fecha date not null ,
    detu_usuario number not null ,
    detu_situacion number not null ,
    detu_comprobante number not null ,
    detu_dotacion number not null ,
    detu_dependencia number not null ,
    constraint pkluni_log primary key (detu_solicitud,detu_uniforme,detu_talla)  
  );
/
create table ADMIN.aud_luni_detsol_log 
  (
    detu_solicitud number,
    detu_uniforme number,
    detu_talla number,
    detu_total number,
    detu_fecha date,
    detu_usuario number,
    detu_situacion number,
    detu_comprobante number,
    detu_dotacion number,
    detu_dependencia number,
    desp_detu_solicitud number,
    desp_detu_uniforme number,
    desp_detu_talla number,
    desp_detu_total number,
    desp_detu_fecha date,
    desp_detu_usuario number,
    desp_detu_situacion number,
    desp_detu_comprobante number,
    desp_detu_dotacion number,
    desp_detu_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_situacion 
  (
    sit_codigo number not null ,
    sit_descrip varchar2(25,1) not null ,
    constraint pk_situacion primary key (sit_codigo)  
  );
/
create table ADMIN.aud_luni_situacion 
  (
    sit_codigo number,
    sit_descrip varchar2(25,1),
    desp_sit_codigo number,
    desp_sit_descrip varchar2(25,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_documento 
  (
    doc_numero number not null ,
    doc_documento varchar2(25,1) not null ,
    doc_situacion number not null ,
    constraint pk_documento primary key (doc_numero,doc_documento)  
  );
/
create table ADMIN.aud_luni_documento 
  (
    doc_numero number,
    doc_documento varchar2(25,1),
    doc_situacion number,
    desp_doc_numero number,
    desp_doc_documento varchar2(25,1),
    desp_doc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.luni_talla 
  (
    tal_codigo number not null ,
    tal_descrip varchar2(10,1) not null ,
    constraint pk_tallauni primary key (tal_codigo)  
  );
/
create table ADMIN.aud_luni_talla 
  (
    tal_codigo number,
    tal_descrip varchar2(10,1),
    desp_tal_codigo number,
    desp_tal_descrip varchar2(10,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lmun_tipo1 
  (
    tip_cod number not null ,
    tip_desc varchar2(25) not null ,
    tip_usuario number not null ,
    constraint pk_lmun_tipo1 primary key (tip_cod)  
  );
/
create table ADMIN.lmun_calibre1 
  (
    cal_codigo number not null ,
    cal_desc varchar2(25) not null ,
    cal_usuario number not null ,
    constraint pk_calibre primary key (cal_codigo)  
  );
/
create table ADMIN.lmun_marca 
  (
    mar_codigo number not null ,
    mar_desc varchar2(25) not null ,
    mar_usuario number not null ,
    constraint pk_marca primary key (mar_codigo)  
  );
/
create table ADMIN.lmun_color 
  (
    col_cod number not null ,
    col_desc varchar2(20) not null ,
    constraint pk_color1 primary key (col_cod)  
  );
/
create table ADMIN.lmun_modelo 
  (
    mod_codigo number not null ,
    mod_docto varchar2(100) not null ,
    mod_desc varchar2(25) not null ,
    mod_cantidad number not null ,
    mod_usuario number not null ,
    constraint pk_modelo primary key (mod_codigo)  
  );
/
create table ADMIN.lmun_fabrica 
  (
    fab_codigo number not null ,
    fab_desc_lg varchar2(50) not null ,
    fab_desc_md varchar2(35) not null ,
    fab_desc_ct varchar2(20) not null ,
    fab_pais number not null ,
    fab_usuario number not null ,
    constraint pk_fabrica primary key (fab_codigo)  
  );
/
create table ADMIN.lmun_lote1 
  (
    lot_tipo number not null ,
    lot_lote number not null ,
    lot_marca number not null ,
    lot_modelo number not null ,
    lot_calibre number not null ,
    lot_fec_cad date not null ,
    lot_fabrica number not null ,
    lot_color_laca number not null ,
    lot_cantidad number not null ,
    lot_usuario number not null ,
    lot_dep number not null ,
    lot_fec_fab date not null ,
    lot_fec date not null ,
    constraint fk_lote_mun primary key (lot_tipo,lot_lote)  
  );
/
create table ADMIN.lmun_situacion 
  (
    sit_cod number not null ,
    sit_desc varchar2(25) not null ,
    sit_usuario number not null ,
     constraint pk_sit_municion primary key (sit_cod) 
  );
/
create table ADMIN.l_municion 
  (
    mun_codigo number not null ,
    mun_tipo number not null ,
    mun_lote number not null ,
    mun_plaza number not null ,
    mun_cantidad number not null ,
    mun_situacion number not null ,
    mun_fecha_act date not null ,
    mun_usuario number not null ,
    constraint pk_mun_codigo primary key (mun_codigo)  
  );
/
create table ADMIN.lmun_uso1 
  (
    uso_codigo number not null ,
    uso_desc varchar2(25) not null ,
    uso_usuario number not null ,
    constraint uso_codigo primary key (uso_codigo)  
  );
/
create table ADMIN.lmun_carga 
  (
    car_codigo number not null ,
    car_desc varchar2(25) not null ,
    car_usuario number not null ,
    constraint car_codigo primary key (car_codigo)  
  );
/
create table ADMIN.lmun_solicitud1 
  (
    sol_numero number not null ,
    sol_solasigna number not null ,
    sol_tipo_sol number not null ,
    sol_documento varchar2(100) not null ,
    sol_uso number not null ,
    sol_carga number not null ,
    sol_dependencia number not null ,
    sol_plaza number not null ,
    sol_motivo varchar2(250) not null ,
    sol_fecha date not null ,
    sol_logistico number not null ,
    sol_inspector number not null ,
    sol_comandante number not null ,
    sol_usuario number not null ,
    constraint pk_sol_numero primary key (sol_numero)  
  );
/
create table ADMIN.lmun_det_solicitud 
  (
    det_solicitud number not null ,
    det_tipo_mun number not null ,
    det_calibre number not null ,
    det_cantidad number not null ,
    det_usuario number not null ,
    constraint pd_det_solicitud primary key (det_solicitud,det_tipo_mun,det_calibre)  
  );
/
create table ADMIN.lmun_det_solasigna 
  (
    deta_solicitud number not null ,
    deta_municion number not null ,
    deta_cantidad number not null ,
    deta_usuario number not null ,
    constraint pk_solasigna primary key (deta_solicitud,deta_municion)  
  );
/
create table ADMIN.lmun_det_cambiosit 
  (
    detc_solicitud number not null ,
    detc_municion number not null ,
    detc_cantidad number not null ,
    detc_situacion number not null ,
    detc_usuario number not null ,
    constraint pk_cambiositprimary key (detc_solicitud,detc_municion)  
  );
/
create table ADMIN.lmun_devolentre 
  (
    dev_solicitud number not null ,
    dev_municion number not null ,
    dev_utiles number not null ,
    dev_vainas number not null ,
    dev_fallidas number not null ,
    dev_no_encont number not null ,
    dev_tot_uti number not null ,
    dev_usuario number not null ,
    dev_uso number not null ,
    dev_carga number not null ,
    dev_entregue number not null ,
    dev_recibi number not null ,
    dev_status char(1) not null ,
    dev_observaciones varchar2(250) not null ,
    dev_fecha date not null ,
    dev_cantidad number not null ,
    dev_dependencia number not null ,
    constraint pk_devol primary key (dev_solicitud,dev_municion)  
  );
/
create table ADMIN.lmun_mov_solicitud 
  (
    mov_solicitud number not null ,
    mov_correla number not null ,
    mov_fecha date not null ,
    mov_docto varchar2(100) not null ,
    mov_usuario number not null ,
    constraint pk_movsolicitud primary key (mov_solicitud,mov_correla)  
  );
/
create table ADMIN.lmun_correla 
  (
    cor_numero number not null ,
    cor_descrip varchar2(25) not null ,
    constraint pk_cornumero primary key (cor_numero)  
  );
/
create table ADMIN.lmun_movimientos 
  (
    movi_municion number not null ,
    movi_numero number not null ,
    movi_cantidad number not null ,
    movi_plaza number not null ,
    movi_fecha date not null ,
    movi_uso number not null ,
    movi_carga number not null ,
    movi_observacion varchar2(255) not null ,
    movi_status char(1) not null ,
    movi_usuario number not null ,
    constraint pk_movimientos primary key (movi_municion,movi_numero)  
  );
/
create table ADMIN.lmun_asignacion 
  (
    asig_codigo number not null ,
    asig_dependencia number not null ,
    asig_plaza number not null ,
    asig_municion number not null ,
    asig_cantidad number not null ,
    asig_uso number not null ,
    asig_carga number not null ,
    asig_observacion varchar2(250) not null ,
    asig_usuario number not null ,
    constraint asig_codigo primary key (asig_codigo)  
  );
/
create table ADMIN.lmun_cambio_sit 
  (
    cam_codigo number not null ,
    cam_dependencia number not null ,
    cam_plaza number not null ,
    cam_municion number not null ,
    cam_cantidad number not null ,
    cam_uso number not null ,
    cam_carga number not null ,
    cam_observacion varchar2(250) not null ,
    cam_situacion number not null ,
    cam_usuario number not null ,
    cam_fecha date not null ,
    constraint cam_codigo primary key (cam_codigo)  
  );
/
create table ADMIN.lmun_trasint 
  (
    tras_numero number not null ,
    tras_docto varchar2(100) not null ,
    tras_lote number not null ,
    tras_entrega number not null ,
    tras_recibe number not null ,
    tras_fecha date not null ,
    tras_plaza number not null ,
    tras_cantidad number not null ,
    tras_uso number not null ,
    tras_carga number not null ,
    tras_obser varchar2(250) not null ,
    tras_dependencia number not null ,
    tras_usuario number not null ,
    constraint pk_trasint primary key (tras_numero)  
  );
/
create table ADMIN.lmun_det_conocimiento 
  (
    detc_conocimiento number not null ,
    detc_municion number not null ,
    detc_cantidad number not null ,
    detc_dep number not null ,
    detc_usuario number not null ,
    constraint pk_con_conoci primary key (detc_conocimiento,detc_municion)  
  );
/
create table ADMIN.lmun_conoc_fab 
  (
    conf_numero number not null ,
    conf_docto varchar2(100) not null ,
    conf_fecha date not null ,
    conf_entregue number not null ,
    conf_recibi number not null ,
    conf_vo number not null ,
    conf_conforme number not null ,
    conf_usuario number not null ,
    conf_status char(1) not null ,
    conf_codigo number not null ,
    constraint pk_confnumero primary key (conf_numero)  
  );
/
create table ADMIN.lmun_det_conoc_fab 
  (
    detf_conocimiento number not null ,
    detf_lote number not null ,
    detf_cantidad number not null ,
    detf_usuario number not null ,
    constraint pk_conifab primary key (detf_conocimiento,detf_lote)  
  );
/
create table ADMIN.aud_lmun_tipo 
  (
    tip_cod number,
    tip_desc varchar2(25),
    tip_usuario number,
    desp_tip_cod number,
    desp_tip_desc varchar2(25),
    desp_tip_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_calibre 
  (
    cal_codigo number,
    cal_desc varchar2(25),
    cal_usuario number,
    desp_cal_codigo number,
    desp_cal_desc varchar2(25),
    desp_cal_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_marca 
  (
    mar_codigo number,
    mar_desc varchar2(25),
    mar_usuario number,
    desp_mar_codigo number,
    desp_mar_desc varchar2(25),
    desp_mar_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_color 
  (
    col_cod number,
    col_desc varchar2(20),
    desp_col_cod number,
    desp_col_desc varchar2(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_modelo 
  (
    mod_codigo number,
    mod_docto varchar2(100),
    mod_desc varchar2(25),
    mod_cantidad number,
    mod_usuario number,
    desp_mod_codigo number,
    desp_mod_docto varchar2(100),
    desp_mod_desc varchar2(25),
    desp_mod_cantidad number,
    desp_mod_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_fabrica 
  (
    fab_codigo number,
    fab_desc_lg varchar2(50),
    fab_desc_md varchar2(35),
    fab_desc_ct varchar2(20),
    fab_pais number,
    fab_usuario number,
    desp_fab_codigo number,
    desp_fab_desc_lg varchar2(50),
    desp_fab_desc_md varchar2(35),
    desp_fab_desc_ct varchar2(20),
    desp_fab_pais number,
    desp_fab_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_lote 
  (
    lot_tipo number,
    lot_lote number,
    lot_marca number,
    lot_modelo number,
    lot_calibre number,
    lot_fec_cad date,
    lot_fabrica number,
    lot_color_laca number,
    lot_cantidad number,
    lot_usuario number,
    lot_dep number,
    lot_fec_fab date,
    lot_fec date,
    desp_lot_tipo number,
    desp_lot_lote number,
    desp_lot_marca number,
    desp_lot_modelo number,
    desp_lot_calibre number,
    desp_lot_fec_cad date,
    desp_lot_fabrica number,
    desp_lot_color_laca number,
    desp_lot_cantidad number,
    desp_lot_usuario number,
    desp_lot_dep number,
    desp_lot_fec_fab date,
    desp_lot_fec date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_situacion 
  (
    sit_cod number,
    sit_desc varchar2(25),
    sit_usuario number,
    desp_sit_cod number,
    desp_sit_desc varchar2(25),
    desp_sit_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_l_municion 
  (
    mun_codigo number,
    mun_tipo number,
    mun_lote number,
    mun_plaza number,
    mun_cantidad number,
    mun_situacion number,
    mun_fecha_act date,
    mun_usuario number,
    desp_mun_codigo number,
    desp_mun_tipo number,
    desp_mun_lote number,
    desp_mun_plaza number,
    desp_mun_cantidad number,
    desp_mun_situacion number,
    desp_mun_fecha_act date,
    desp_mun_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_uso 
  (
    uso_codigo number,
    uso_desc varchar2(25),
    uso_usuario number,
    desp_uso_codigo number,
    desp_uso_desc varchar2(25),
    desp_uso_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_carga 
  (
    car_codigo number,
    car_desc varchar2(25),
    car_usuario number,
    desp_car_codigo number,
    desp_car_desc varchar2(25),
    desp_car_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_solicitud 
  (
    sol_numero number,
    sol_solasigna number,
    sol_tipo_sol number,
    sol_documento varchar2(100),
    sol_uso number,
    sol_carga number,
    sol_dependencia number,
    sol_plaza number,
    sol_motivo varchar2(250),
    sol_fecha date,
    sol_logistico number,
    sol_inspector number,
    sol_comandante number,
    sol_usuario number,
    desp_sol_numero number,
    desp_sol_solasigna number,
    desp_sol_tipo_sol number,
    desp_sol_documento varchar2(100),
    desp_sol_uso number,
    desp_sol_carga number,
    desp_sol_dependencia number,
    desp_sol_plaza number,
    desp_sol_motivo varchar2(250),
    desp_sol_fecha date,
    desp_sol_logistico number,
    desp_sol_inspector number,
    desp_sol_comandante number,
    desp_sol_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_det_solicitud 
  (
    det_solicitud number,
    det_tipo_mun number,
    det_calibre number,
    det_cantidad number,
    det_usuario number,
    desp_det_solicitud number,
    desp_det_tipo_mun number,
    desp_det_calibre number,
    desp_det_cantidad number,
    desp_det_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_det_solasigna 
  (
    deta_solicitud number,
    deta_municion number,
    deta_cantidad number,
    deta_usuario number,
    desp_deta_solicitud number,
    desp_deta_municion number,
    desp_deta_cantidad number,
    desp_deta_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_det_cambiosit 
  (
    detc_solicitud number,
    detc_municion number,
    detc_cantidad number,
    detc_situacion number,
    detc_usuario number,
    desp_detc_solicitud number,
    desp_detc_municion number,
    desp_detc_cantidad number,
    desp_detc_situacion number,
    desp_detc_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_devolentre 
  (
    dev_solicitud number,
    dev_municion number,
    dev_utiles number,
    dev_vainas number,
    dev_fallidas number,
    dev_no_encont number,
    dev_tot_uti number,
    dev_usuario number,
    dev_uso number,
    dev_carga number,
    dev_entregue number,
    dev_recibi number,
    dev_status char(1),
    dev_observaciones varchar2(250),
    dev_fecha date,
    dev_cantidad number,
    dev_dependencia number,
    desp_dev_solicitud number,
    desp_dev_municion number,
    desp_dev_utiles number,
    desp_dev_vainas number,
    desp_dev_fallidas number,
    desp_dev_no_encont number,
    desp_dev_tot_uti number,
    desp_dev_usuario number,
    desp_dev_uso number,
    desp_dev_carga number,
    desp_dev_entregue number,
    desp_dev_recibi number,
    desp_dev_status char(1),
    desp_dev_observaciones varchar2(250),
    desp_dev_fecha date,
    desp_dev_cantidad number,
    desp_dev_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_mov_solicitud 
  (
    mov_solicitud number,
    mov_correla number,
    mov_fecha date,
    mov_docto varchar2(100),
    mov_usuario number,
    desp_mov_solicitud number,
    desp_mov_correla number,
    desp_mov_fecha date,
    desp_mov_docto varchar2(100),
    desp_mov_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_correla 
  (
    cor_numero number,
    cor_descrip varchar2(25),
    desp_cor_numero number,
    desp_cor_descrip varchar2(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_movimientos 
  (
    movi_municion number,
    movi_numero number,
    movi_cantidad number,
    movi_plaza number,
    movi_fecha date,
    movi_uso number,
    movi_carga number,
    movi_observacion varchar2(255),
    movi_status char(1),
    movi_usuario number,
    desp_movi_municion number,
    desp_movi_numero number,
    desp_movi_cantidad number,
    desp_movi_plaza number,
    desp_movi_fecha date,
    desp_movi_uso number,
    desp_movi_carga number,
    desp_movi_observacion varchar2(255),
    desp_movi_status char(1),
    desp_movi_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_asignacion 
  (
    asig_codigo number,
    asig_dependencia number,
    asig_plaza number,
    asig_municion number,
    asig_cantidad number,
    asig_uso number,
    asig_carga number,
    asig_observacion varchar2(250),
    asig_usuario number,
    desp_asig_codigo number,
    desp_asig_dependencia number,
    desp_asig_plaza number,
    desp_asig_municion number,
    desp_asig_cantidad number,
    desp_asig_uso number,
    desp_asig_carga number,
    desp_asig_observacion varchar2(250),
    desp_asig_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_cambio_sit 
  (
    cam_codigo number,
    cam_dependencia number,
    cam_plaza number,
    cam_municion number,
    cam_cantidad number,
    cam_uso number,
    cam_carga number,
    cam_observacion varchar2(250),
    cam_situacion number,
    cam_usuario number,
    cam_fecha date,
    desp_cam_codigo number,
    desp_cam_dependencia number,
    desp_cam_plaza number,
    desp_cam_municion number,
    desp_cam_cantidad number,
    desp_cam_uso number,
    desp_cam_carga number,
    desp_cam_observacion varchar2(250),
    desp_cam_situacion number,
    desp_cam_usuario number,
    desp_cam_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_trasint 
  (
    tras_numero number,
    tras_docto varchar2(100),
    tras_lote number,
    tras_entrega number,
    tras_recibe number,
    tras_fecha date,
    tras_plaza number,
    tras_cantidad number,
    tras_uso number,
    tras_carga number,
    tras_obser varchar2(250),
    tras_dependencia number,
    tras_usuario number,
    desp_tras_numero number,
    desp_tras_docto varchar2(100),
    desp_tras_lote number,
    desp_tras_entrega number,
    desp_tras_recibe number,
    desp_tras_fecha date,
    desp_tras_plaza number,
    desp_tras_cantidad number,
    desp_tras_uso number,
    desp_tras_carga number,
    desp_tras_obser varchar2(250),
    desp_tras_dependencia number,
    desp_tras_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_det_conocimiento 
  (
    detc_conocimiento number,
    detc_municion number,
    detc_cantidad number,
    detc_dep number,
    detc_usuario number,
    desp_detc_conocimiento number,
    desp_detc_municion number,
    desp_detc_cantidad number,
    desp_detc_dep number,
    desp_detc_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_conoc_fab 
  (
    conf_numero number,
    conf_docto varchar2(100),
    conf_fecha date,
    conf_entregue number,
    conf_recibi number,
    conf_vo number,
    conf_conforme number,
    conf_usuario number,
    conf_status char(1),
    conf_codigo number,
    desp_conf_numero number,
    desp_conf_docto varchar2(100),
    desp_conf_fecha date,
    desp_conf_entregue number,
    desp_conf_recibi number,
    desp_conf_vo number,
    desp_conf_conforme number,
    desp_conf_usuario number,
    desp_conf_status char(1),
    desp_conf_codigo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_lmun_det_conoc_fab 
  (
    detf_conocimiento number,
    detf_lote number,
    detf_cantidad number,
    detf_usuario number,
    desp_detf_conocimiento number,
    desp_detf_lote number,
    desp_detf_cantidad number,
    desp_detf_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pcapa_det_solicitud 
  (
    cap_solcod varchar2(20) not null ,
    cap_catalogo number not null ,
    cap_grado number not null ,
    cap_curso varchar2(100) not null ,
    cap_fec_inicio date not null ,
    cap_fec_fin date not null ,
    cap_pais number not null ,
    cap_escuela varchar2(100) not null ,
    cap_valor number(16,2),
    cap_tipo char(1),
    cap_clasifica char(1),
    cap_equi number,
    cap_punteo number(5,2),
    cap_puesto char(3),
    cap_obserba varchar2(250),
    cap_estado number not null ,
    cap_tipo_doc char(10),
    cap_aprueba number,
    cap_fec_aprueba date,
    cap_obs varchar2(250,1),
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
    cap_obs varchar2(250,1),
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
    desp_cap_obs varchar2(250,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pocur_solicitud 
  (
    sol_codigo varchar2(20) not null ,
    sol_correlativo number not null ,
    sol_comte number not null ,
    sol_ofop number not null ,
    sol_formulario char(1) not null ,
    sol_dependencia number not null ,
    sol_fec_solicit date not null ,
    sol_justific varchar2(250) not null ,
    sol_oficio varchar2(100) not null ,
    constraint pk_cursol primary key (sol_codigo) 
  );
/
create table ADMIN.aud_pocur_solicitud 
  (
    sol_codigo varchar2(20),
    sol_correlativo number,
    sol_comte number,
    sol_ofop number,
    sol_formulario char(1),
    sol_dependencia number,
    sol_fec_solicit date,
    sol_justific varchar2(250),
    sol_oficio varchar2(100),
    desp_sol_codigo varchar2(20),
    desp_sol_correlativo number,
    desp_sol_comte number,
    desp_sol_ofop number,
    desp_sol_formulario char(1),
    desp_sol_dependencia number,
    desp_sol_fec_solicit date,
    desp_sol_justific varchar2(250),
    desp_sol_oficio varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.pdcapacitacion 
  (
    cap_catalogo number not null ,
    cap_grado number not null ,
    cap_curso varchar2(100) not null ,
    cap_fec_inicio date not null ,
    cap_fec_fin date not null ,
    cap_solicitud varchar2(20) not null ,
    cap_pais number not null ,
    cap_escuela varchar2(100) not null ,
    cap_valor number(16,2),
    cap_tipo char(1),
    cap_clasifica char(1),
    cap_equi number,
    cap_punteo number(5,2),
    cap_puesto char(3),
    cap_obserba varchar2(250),
    cap_docto_auto char(10),
    cap_creditos number(5,2),
     constraint pk_dcap primary key (cap_catalogo,cap_curso,cap_fec_inicio) 
  );
/
create table ADMIN.aud_pdcapacitacion 
  (
    cap_catalogo number,
    cap_grado number,
    cap_curso varchar2(100),
    cap_fec_inicio date,
    cap_fec_fin date,
    cap_solicitud varchar2(20),
    cap_pais number,
    cap_escuela varchar2(100),
    cap_valor number(16,2),
    cap_tipo char(1),
    cap_clasifica char(1),
    cap_equi number,
    cap_punteo number(5,2),
    cap_puesto char(3),
    cap_obserba varchar2(250),
    cap_docto_auto char(10),
    cap_creditos number(5,2),
    desp_cap_catalogo number,
    desp_cap_grado number,
    desp_cap_curso varchar2(100),
    desp_cap_fec_inicio date,
    desp_cap_fec_fin date,
    desp_cap_solicitud varchar2(20),
    desp_cap_pais number,
    desp_cap_escuela varchar2(100),
    desp_cap_valor number(16,2),
    desp_cap_tipo char(1),
    desp_cap_clasifica char(1),
    desp_cap_equi number,
    desp_cap_punteo number(5,2),
    desp_cap_puesto char(3),
    desp_cap_obserba varchar2(250),
    desp_cap_docto_auto char(10),
    desp_cap_creditos number(5,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ocur_det_solicitud 
  (
    cur_solcod varchar2(20) not null ,
    cur_catalogo number not null ,
    cur_grado number not null ,
    cur_curso number not null ,
    cur_fec_inicio date not null ,
    cur_fec_fin date not null ,
    cur_escuela number not null ,
    cur_valor number(16,2),
    cur_clasifica char(1),
    cur_punteo number(5,2),
    cur_puesto char(3),
    cur_obserba varchar2(250),
    cur_estado number not null ,
    cur_tipo_doc char(10),
    cur_aprueba number,
    cur_fec_aprueba date,
    cur_obs varchar2(250,1),
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
    cur_obs varchar2(250,1),
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
    desp_cur_obs varchar2(250,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.usuarios_sistema 
  (
    usuario char(15),
    nombre char(70)
  );
/
create table ADMIN.luni_asignacion 
  (
    asi_catalogo number not null ,
    asi_uniforme number not null ,
    asi_numero number not null ,
    asi_tallauni varchar2(10,1) not null ,
    asi_tallabota varchar2(5,1) not null ,
    asi_tallagorra varchar2(5,1) not null ,
    asi_fecha date not null ,
    asi_codigobarra varchar2(15,1) not null ,
    asi_dependencia number,
    asi_usuario number not null ,
    asi_status char(1) not null ,
    
    constraint ck_asi_status check (asi_status IN ('A' ,'M' )) ,
    constraint luni_asignacion primary key (asi_catalogo,asi_uniforme,asi_numero)  
  );
/
create table ADMIN.aud_luni_asignacion 
  (
    asi_catalogo number,
    asi_uniforme number,
    asi_numero number,
    asi_tallauni varchar2(10,1),
    asi_tallabota varchar2(5,1),
    asi_tallagorra varchar2(5,1),
    asi_fecha date,
    asi_codigobarra varchar2(15,1),
    asi_dependencia number,
    asi_usuario number,
    asi_status char(1),
    desp_asi_catalogo number,
    desp_asi_uniforme number,
    desp_asi_numero number,
    desp_asi_tallauni varchar2(10,1),
    desp_asi_tallabota varchar2(5,1),
    desp_asi_tallagorra varchar2(5,1),
    desp_asi_fecha date,
    desp_asi_codigobarra varchar2(15,1),
    desp_asi_dependencia number,
    desp_asi_usuario number,
    desp_asi_status char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_capacitaciones 
  (
    acap_catalogo number not null ,
    acap_tipo char(1) not null ,
    acap_clasifica char(1) not null ,
    acap_valor number(4,2) not null ,
    acap_esca date not null ,
    
    constraint ck_acap_clasifica check (acap_clasifica IN ('T' ,'S' ,'C' ,'D' ,'I' ,'E' ,'P' ,'M' ,'D' ,'L' )),
    
    constraint ck_acap_tipo check (acap_tipo IN ('C' ,'U' )) ,
    constraint pk_arco_capacitaciones primary key (acap_catalogo,acap_clasifica,acap_esca,acap_tipo)  
  );
/
create table ADMIN.aud_arco_capacitaciones 
  (
    acap_catalogo number,
    acap_tipo char(1),
    acap_clasifica char(1),
    acap_valor number(4,2),
    acap_esca date,
    desp_acap_catalogo number,
    desp_acap_tipo char(1),
    desp_acap_clasifica char(1),
    desp_acap_valor number(4,2),
    desp_acap_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_cond 
  (
    conm_codigo number not null ,
    conm_desc char(100) not null ,
    conm_equi number not null ,
    conm_fuerza char(1) not null ,
    conm_valor number(4,2) not null ,
    conm_vigencia number not null ,
    conm_fecha date not null ,
    conm_obs char(100),
    constraint pk_arco_cond primary key (conm_codigo,conm_fecha,conm_fuerza)  
  );
/
create table ADMIN.aud_arco_cond 
  (
    conm_codigo number,
    conm_desc char(100),
    conm_equi number,
    conm_fuerza char(1),
    conm_valor number(4,2),
    conm_vigencia number,
    conm_fecha date,
    conm_obs char(100),
    desp_conm_codigo number,
    desp_conm_desc char(100),
    desp_conm_equi number,
    desp_conm_fuerza char(1),
    desp_conm_valor number(4,2),
    desp_conm_vigencia number,
    desp_conm_fecha date,
    desp_conm_obs char(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_dcon 
  (
    acon_codigo number not null ,
    acon_catalogo number not null ,
    acon_valor number(4,2) not null ,
    acon_esca date not null ,
    constraint pk_arco_dcon primary key (acon_catalogo,acon_codigo,acon_esca)  
  );
/
create table ADMIN.aud_arco_dcon 
  (
    acon_codigo number,
    acon_catalogo number,
    acon_valor number(4,2),
    acon_esca date,
    desp_acon_codigo number,
    desp_acon_catalogo number,
    desp_acon_valor number(4,2),
    desp_acon_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_dcur 
  (
    acur_codigo number not null ,
    acur_catalogo number not null ,
    acur_valor number(4,2) not null ,
    acur_esca date not null ,
    constraint pk_arco_dcur primary key (acur_catalogo,acur_codigo,acur_esca)  
  );
/
create table ADMIN.aud_arco_dcur 
  (
    acur_codigo number,
    acur_catalogo number,
    acur_valor number(4,2),
    acur_esca date,
    desp_acur_codigo number,
    desp_acur_catalogo number,
    desp_acur_valor number(4,2),
    desp_acur_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_demeritos 
  (
    dem_grado number not null ,
    dem_fecha date not null ,
    dem_limite number not null ,
    dem_vigente number not null ,
    constraint pk_demeritos_arco primary key (dem_fecha,dem_grado)  
  );
/
create table ADMIN.aud_arco_demeritos 
  (
    dem_grado number,
    dem_fecha date,
    dem_limite number,
    dem_vigente number,
    desp_dem_grado number,
    desp_dem_fecha date,
    desp_dem_limite number,
    desp_dem_vigente number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_erudiccion 
  (
    eru_tipo char(1) not null ,
    eru_clasifica char(1) not null ,
    eru_descripcion varchar2(25),
    eru_valor number(4,2),
    eru_vigencia number not null ,
    eru_fec date not null ,
    eru_obs char(30),
    
    constraint ck_eru_clasifica check (eru_clasifica IN ('T' ,'S' ,'C' ,'D' ,'I' ,'E' ,'P' ,'M' ,'D' ,'L' )),
    
    constraint ck_eru_tipo check (eru_tipo IN ('C' ,'U' )) ,
    constraint pk_erudiccion primary key (eru_clasifica,eru_fec,eru_tipo)  
  );
/
create table ADMIN.aud_arco_erudiccion 
  (
    eru_tipo char(1),
    eru_clasifica char(1),
    eru_descripcion varchar2(25),
    eru_valor number(4,2),
    eru_vigencia number,
    eru_fec date,
    eru_obs char(30),
    desp_eru_tipo char(1),
    desp_eru_clasifica char(1),
    desp_eru_descripcion varchar2(25),
    desp_eru_valor number(4,2),
    desp_eru_vigencia number,
    desp_eru_fec date,
    desp_eru_obs char(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_evads 
  (
    evad_catalogo number not null ,
    evad_periodo number not null ,
    evad_nota number(5,2),
    evad_fecha date,
    constraint pk_arco_evads primary key (evad_catalogo,evad_fecha,evad_periodo)  
  );
/
create table ADMIN.aud_arco_evads 
  (
    evad_catalogo number,
    evad_periodo number,
    evad_nota number(5,2),
    evad_fecha date,
    desp_evad_catalogo number,
    desp_evad_periodo number,
    desp_evad_nota number(5,2),
    desp_evad_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_grados 
  (
    arcgra_codigo number not null ,
    arcgra_equivale number not null ,
    arcgra_proximo number not null ,
    arcgra_anterior number not null ,
    arcgra_tiempo number not null ,
    arcgra_desc char(20) not null ,
    constraint pk_arco_grados primary key (arcgra_codigo)  
  );
/
create table ADMIN.aud_arco_grados 
  (
    arcgra_codigo number,
    arcgra_equivale number,
    arcgra_proximo number,
    arcgra_anterior number,
    arcgra_tiempo number,
    arcgra_desc char(20),
    desp_arcgra_codigo number,
    desp_arcgra_equivale number,
    desp_arcgra_proximo number,
    desp_arcgra_anterior number,
    desp_arcgra_tiempo number,
    desp_arcgra_desc char(20),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_notas 
  (
    not_catalogo number not null ,
    not_fecha date not null ,
    not_capacidad number(4,2) not null ,
    not_evad number(4,2) not null ,
    not_conducta number(4,2) not null ,
    not_pafe number(4,2) not null ,
    not_biof number(4,2) not null ,
    not_creditos number(4,2) not null ,
    constraint pk_arco_notas primary key (not_catalogo,not_fecha)  
  );
/
create table ADMIN.aud_arco_notas 
  (
    not_catalogo number,
    not_fecha date,
    not_capacidad number(4,2),
    not_evad number(4,2),
    not_conducta number(4,2),
    not_pafe number(4,2),
    not_biof number(4,2),
    not_creditos number(4,2),
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_capacidad number(4,2),
    desp_not_evad number(4,2),
    desp_not_conducta number(4,2),
    desp_not_pafe number(4,2),
    desp_not_biof number(4,2),
    desp_not_creditos number(4,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_obligatorio 
  (
    aobli_catalogo number not null ,
    aobli_curso number not null ,
    aobli_punteo number(4,2),
    aobli_esca date not null ,
    constraint pk_arco_obli primary key (aobli_catalogo,aobli_curso,aobli_esca)  
  );
/
create table ADMIN.aud_arco_obligatorio 
  (
    aobli_catalogo number,
    aobli_curso number,
    aobli_punteo number(4,2),
    aobli_esca date,
    desp_aobli_catalogo number,
    desp_aobli_curso number,
    desp_aobli_punteo number(4,2),
    desp_aobli_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_pafes 
  (
    pafe_catalogo number not null ,
    pafe_fecha date not null ,
    pafe_grado number not null ,
    pafe_nota number(5,2) not null ,
    pafe_tipo char(1) not null ,
    pafe_esca date not null ,
    constraint pk_arco_pafe primary key (pafe_catalogo,pafe_esca,pafe_fecha)  
  );
/
create table ADMIN.aud_arco_pafes 
  (
    pafe_catalogo number,
    pafe_fecha date,
    pafe_grado number,
    pafe_nota number(5,2),
    pafe_tipo char(1),
    pafe_esca date,
    desp_pafe_catalogo number,
    desp_pafe_fecha date,
    desp_pafe_grado number,
    desp_pafe_nota number(5,2),
    desp_pafe_tipo char(1),
    desp_pafe_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_ponderacion 
  (
    pon_grado number not null ,
    pon_fec_vig date not null ,
    pon_capacidad number(4,2) not null ,
    pon_evad number(4,2) not null ,
    pon_conducta number(4,2) not null ,
    pon_pafe number(4,2) not null ,
    pon_biof number(4,2) not null ,
    pon_merito number(4,2) not null ,
    pon_vigencia number not null ,
    constraint pk_arco_ponde primary key (pon_fec_vig,pon_grado)  
  );
/
create table ADMIN.aud_arco_ponderacion 
  (
    pon_grado number,
    pon_fec_vig date,
    pon_capacidad number(4,2),
    pon_evad number(4,2),
    pon_conducta number(4,2),
    pon_pafe number(4,2),
    pon_biof number(4,2),
    pon_merito number(4,2),
    pon_vigencia number,
    desp_pon_grado number,
    desp_pon_fec_vig date,
    desp_pon_capacidad number(4,2),
    desp_pon_evad number(4,2),
    desp_pon_conducta number(4,2),
    desp_pon_pafe number(4,2),
    desp_pon_biof number(4,2),
    desp_pon_merito number(4,2),
    desp_pon_vigencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_sanciones 
  (
    asan_catalogo number not null ,
    asan_fecha date not null ,
    asan_sancion number not null ,
    asan_cantidad number not null ,
    asan_esca date not null ,
    constraint pk_arco_sanciones primary key (asan_catalogo,asan_fecha,asan_sancion,asan_esca)  
  );
/
create table ADMIN.aud_arco_sanciones 
  (
    asan_catalogo number,
    asan_fecha date,
    asan_sancion number,
    asan_cantidad number,
    asan_esca date,
    desp_asan_catalogo number,
    desp_asan_fecha date,
    desp_asan_sancion number,
    desp_asan_cantidad number,
    desp_asan_esca date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_cursos 
  (
    curm_codigo number not null ,
    curm_desc char(100) not null ,
    curm_equi number not null ,
    curm_valor number(4,2) not null ,
    curm_fuerza char(1) not null ,
    curm_vigencia number not null ,
    curm_obser char(125),
    curm_fec date not null ,
    constraint pk_arco_curso primary key (curm_codigo,curm_fec,curm_fuerza)  
  );
/
create table ADMIN.aud_arco_cursos 
  (
    curm_codigo number,
    curm_desc char(100),
    curm_equi number,
    curm_valor number(4,2),
    curm_fuerza char(1),
    curm_vigencia number,
    curm_obser char(125),
    curm_fec date,
    desp_curm_codigo number,
    desp_curm_desc char(100),
    desp_curm_equi number,
    desp_curm_valor number(4,2),
    desp_curm_fuerza char(1),
    desp_curm_vigencia number,
    desp_curm_obser char(125),
    desp_curm_fec date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_jefes 
  (
    ajef_plaza number not null ,
    ajef_categoria char(4) not null ,
    ajef_empleo char(200) not null ,
    ajef_fec_vig date,
    ajef_vigencia number,
    ajef_esca number,
    constraint pk_arco_jefes primary key (ajef_plaza,ajef_fec_vig,ajef_categoria)  
  );
/
create table ADMIN.aud_arco_jefes 
  (
    ajef_plaza number,
    ajef_categoria char(4),
    ajef_empleo char(200),
    ajef_fec_vig date,
    ajef_vigencia number,
    ajef_esca number,
    desp_ajef_plaza number,
    desp_ajef_categoria char(4),
    desp_ajef_empleo char(200),
    desp_ajef_fec_vig date,
    desp_ajef_vigencia number,
    desp_ajef_esca number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.larm_solicitud 
  (
    sol_num number not null ,
    sol_catalogo number not null ,
    sol_tipo number not null ,
    sol_ref varchar2(150,1) not null ,
    sol_datocambia number not null ,
    sol_contenido varchar2(60,5),
    sol_contenido2 number,
    sol_motivo varchar2(255,1) not null ,
    sol_logistico number not null ,
    sol_comte number not null ,
    sol_inspector number not null ,
    sol_fecha date not null ,
    sol_usuario number,
    constraint soli_s primary key (sol_num,sol_catalogo)  
  );
/
create table ADMIN.coc_coordenadas 
  (
    coo_reporte number not null ,
    coo_anio number not null ,
    coo_dep number not null ,
    coo_id number not null ,
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
    coo_lugar varchar2(150,50),
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
    coo_lugar varchar2(150,50),
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
    desp_coo_lugar varchar2(150,50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_mision 
  (
    mis_codigo number not null ,
    mis_descripcion varchar2(255) not null ,
    mis_fuerza number not null ,
    mis_tipo number not null 
  );
/
create table ADMIN.aud_coc_mision 
  (
    mis_codigo number,
    mis_descripcion varchar2(255),
    mis_fuerza number,
    mis_tipo number,
    desp_mis_codigo number,
    desp_mis_descripcion varchar2(255),
    desp_mis_fuerza number,
    desp_mis_tipo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_personal 
  (
    per_reporte number not null ,
    per_anio number not null ,
    per_dep number not null ,
    per_tipo number not null ,
    per_cantidad number not null ,
    constraint pk_coc_personal primary key (per_reporte,per_anio,per_dep,per_tipo)  
  );
/
create table ADMIN.aud_coc_personal 
  (
    per_reporte number,
    per_anio number,
    per_dep number,
    per_tipo number,
    per_cantidad number,
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
create table ADMIN.coc_reporte 
  (
    rep_id number not null ,
    rep_anio number not null ,
    rep_dep number not null ,
    rep_mision number not null ,
    rep_nivel_u number not null ,
    rep_cat_resp number,
    rep_resp_gra number,
    rep_telefono varchar2(10),
    rep_fec_ini TIMESTAMP(0) not null ,
    rep_fec_fin TIMESTAMP(0) not null ,
    rep_fec_fin_e TIMESTAMP(0),
    rep_porque char(500) not null ,
    rep_resultado char(500),
    rep_of_comte number,
    rep_comte_gra number,
    rep_of_ops number,
    rep_ops_gra number,
    rep_mje_orden varchar2(150),
    rep_mje_inicio varchar2(150),
    rep_mje_fin varchar2(150),
    rep_mje_cancela varchar2(150),
    rep_motivo_canc varchar2(255),
    rep_fec_canc TIMESTAMP(0),
    rep_usuario number not null ,
    rep_fecha TIMESTAMP(0) not null ,
    rep_status number not null ,
    constraint pk_reporte primary key (rep_id,rep_anio,rep_dep)  
  );
/
create table ADMIN.aud_coc_reporte 
  (
    rep_id number,
    rep_anio number,
    rep_dep number,
    rep_mision number,
    rep_nivel_u number,
    rep_cat_resp number,
    rep_resp_gra number,
    rep_fec_ini TIMESTAMP(0),
    rep_fec_fin TIMESTAMP(0),
    rep_fec_fin_e TIMESTAMP(0),
    rep_porque char(500),
    rep_resultado char(500),
    rep_of_comte number,
    rep_comte_gra number,
    rep_of_ops number,
    rep_ops_gra number,
    rep_mje_orden varchar2(150),
    rep_mje_inicio varchar2(150),
    rep_mje_fin varchar2(150),
    rep_mje_cancela varchar2(150),
    rep_motivo_canc varchar2(255),
    rep_fec_canc TIMESTAMP(0),
    rep_usuario number,
    rep_fecha TIMESTAMP(0),
    rep_status number,
    desp_rep_id number,
    desp_rep_anio number,
    desp_rep_dep number,
    desp_rep_mision number,
    desp_rep_nivel_u number,
    desp_rep_cat_resp number,
    desp_rep_resp_gra number,
    desp_rep_fec_ini TIMESTAMP(0),
    desp_rep_fec_fin TIMESTAMP(0),
    desp_rep_fec_fin_e TIMESTAMP(0),
    desp_rep_porque char(500),
    desp_rep_resultado char(500),
    desp_rep_of_comte number,
    desp_rep_comte_gra number,
    desp_rep_of_ops number,
    desp_rep_ops_gra number,
    desp_rep_mje_orden varchar2(150),
    desp_rep_mje_inicio varchar2(150),
    desp_rep_mje_fin varchar2(150),
    desp_rep_mje_cancela varchar2(150),
    desp_rep_motivo_canc varchar2(255),
    desp_rep_fec_canc TIMESTAMP(0),
    desp_rep_usuario number,
    desp_rep_fecha TIMESTAMP(0),
    desp_rep_status number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_tipo_veh 
  (
    tve_codigo number not null ,
    tve_descripcion varchar2(100) not null ,
    tve_uso number
  );
/
create table ADMIN.aud_coc_tipo_veh 
  (
    tve_codigo number,
    tve_descripcion varchar2(100),
    tve_uso number,
    desp_tve_codigo number,
    desp_tve_descripcion varchar2(100),
    desp_tve_uso number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.coc_vehiculo_rep 
  (
    veh_reporte number not null ,
    veh_anio number not null ,
    veh_dep number not null ,
    veh_tipo number not null ,
    veh_propiedad number not null ,
    veh_cantidad number not null ,
    constraint pk_coc_vehiculo_rep primary key (veh_reporte,veh_anio,veh_dep,veh_tipo,veh_propiedad)  
  );
/
create table ADMIN.aud_coc_vehiculo_rep 
  (
    veh_reporte number,
    veh_anio number,
    veh_dep number,
    veh_tipo number,
    veh_propiedad number,
    veh_cantidad number,
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
create table ADMIN.aud_fin_personal 
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
    fper_direccion char(50),
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
    desp_fper_direccion char(50),
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
create table ADMIN.fin_personal 
  (
    fper_catalogo number not null ,
    fper_grado number,
    fper_arma number,
    fper_nom1 char(15) not null ,
    fper_nom2 char(15),
    fper_ape1 char(15) not null ,
    fper_ape2 char(15),
    fper_ape3 char(15),
    fper_ced_ord char(4),
    fper_ced_reg char(20),
    fper_fec_ext_ced date,
    fper_ext_ced_lugar char(4),
    fper_est_civil char(1),
    fper_direccion varchar2(75,10),
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
    fper_situacion char(2) not null ,
    fper_dpi char(15),
    
    constraint ck_fper_est_civil check (fper_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )),
    constraint pk_fin_personal primary key (fper_catalogo) 
  );
/
create table ADMIN.coc_dman 
  (
    dman_codigo number not null ,
    dman_dep number not null ,
    dman_desc_lg char(100) not null ,
    dman_desc_ct char(50) not null ,
    dman_lat_gra number not null ,
    dman_lat_min number not null ,
    dman_lat_seg number not null ,
    dman_long_gra number not null ,
    dman_long_min number not null ,
    dman_long_seg number not null ,
    dman_number_lat number(20,18) not null ,
    dman_number_long number(20,18) not null ,
    dman_situacion number,
    constraint coc_dman primary key (dman_codigo,dman_dep)  
  );
/
create table ADMIN.aud_coc_dman 
  (
    dman_codigo number,
    dman_dep number,
    dman_desc_lg char(100),
    dman_desc_ct char(50),
    dman_lat_gra number,
    dman_lat_min number,
    dman_lat_seg number,
    dman_long_gra number,
    dman_long_min number,
    dman_long_seg number,
    dman_number_lat number(20,18),
    dman_number_long number(20,18),
    dman_situacion number,
    desp_dman_codigo number,
    desp_dman_dep number,
    desp_dman_desc_lg char(100),
    desp_dman_desc_ct char(50),
    desp_dman_lat_gra number,
    desp_dman_lat_min number,
    desp_dman_lat_seg number,
    desp_dman_long_gra number,
    desp_dman_long_min number,
    desp_dman_long_seg number,
    desp_dman_number_lat number(20,18),
    desp_dman_number_long number(20,18),
    desp_dman_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
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
    con_motivo varchar2(150,20),
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
    con_motivo varchar2(150,20),
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
    desp_con_motivo varchar2(150,20),
    desp_con_hor_trab number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.fin_escuadrones 
  (
    esc_codigo number,
    esc_desc_lg varchar2(150,10),
    esc_desc_md varchar2(50,5),
    esc_desc_ct varchar2(25,3),
    esc_gru_pago number,
    esc_dependencia number,
    constraint esc_codigo primary key (esc_codigo)  
  );
/
create table ADMIN.aud_fin_escuadrones 
  (
    esc_codigo number,
    esc_desc_lg varchar2(150,10),
    esc_desc_md varchar2(50,5),
    esc_desc_ct varchar2(25,3),
    esc_gru_pago number,
    esc_dependencia number,
    desp_esc_codigo number,
    desp_esc_desc_lg varchar2(150,10),
    desp_esc_desc_md varchar2(50,5),
    desp_esc_desc_ct varchar2(25,3),
    desp_esc_gru_pago number,
    desp_esc_dependencia number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cn 
  (
    cn_catalogo number not null ,
    cn_plaza number not null ,
    cn_aplicacion number not null ,
    cn_nivel char(1) not null ,
    cn_accion char(1) not null ,
    cn_fecha date not null 
  );
/
create table ADMIN.cnb 
  (
    cnb_codigo char(1) not null ,
    cnb_desc_lg varchar2(100,1) not null ,
    constraint pk_cnb primary key (cnb_codigo) 
  );
/
create table ADMIN.aud_cn 
  (
    cn_catalogo number,
    cn_plaza number,
    cn_aplicacion number,
    cn_nivel char(1),
    cn_accion char(1),
    cn_fecha date,
    desp_cn_catalogo number,
    desp_cn_plaza number,
    desp_cn_aplicacion number,
    desp_cn_nivel char(1),
    desp_cn_accion char(1),
    desp_cn_fecha date,
    accion char(1) not null ,
    usuario char(10) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cnb 
  (
    cnb_codigo char(1),
    cnb_desc_lg varchar2(100,1),
    desp_cnb_codigo char(1),
    desp_cnb_desc_lg varchar2(100,1),
    accion char(1) not null ,
    usuario char(10) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_cna 
  (
    cna_codigo number,
    cna_desc_lg char(50),
    desp_cna_codigo number,
    desp_cna_desc_lg char(50),
    accion char(1) not null ,
    usuario char(10) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cns 
  (
    sis_catalogo number,
    sis_pass varchar2(20,1) not null ,
    sis_fecha date not null ,
    sis_permiso number,
    constraint sistemas primary key (sis_catalogo,sis_permiso)  
  );
/
create table ADMIN.aud_usu_sistemas 
  (
    sis_catalogo number,
    sis_pass varchar2(20,1),
    sis_fecha date,
    sis_permiso number,
    desp_sis_catalogo number,
    desp_sis_pass varchar2(20,1),
    desp_sis_fecha date,
    desp_sis_permiso number,
    accion char(1) not null ,
    usuario char(10) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dfam 
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
    despues1 char(12),
    despues2 char(12),
    despues3 char(15),
    despues4 char(15),
    despues5 char(15),
    despues6 char(15),
    despues7 char(12),
    despues8 char(1),
    despues9 char(12),
    despues10 char(1),
    despues11 char(12),
    despues12 char(12),
    despues13 char(12),
    despues14 char(12),
    despues15 char(12),
    despues16 char(12),
    despues17 char(50),
    despues18 char(12),
    despues19 char(12),
    despues20 char(12),
    despues21 char(30),
    despues22 char(30),
    despues23 char(12),
    despues24 char(12),
    despues25 char(12),
    despues26 char(12),
    hora TIMESTAMP(0),
    accion char(1),
    usuario char(12),
    tabname char(15)
  );
/
create table ADMIN.prueba_dfam 
  (
    catalogo number not null 
  );
/
create table ADMIN.coc_planificar 
  (
    pla_dep_llave number not null ,
    pla_codigo number not null ,
    pla_referencia varchar2(100,1) not null ,
    pla_descripcion varchar2(1500),
    pla_situacion number not null ,
    constraint coc_planificar primary key (pla_dep_llave,pla_codigo)  
  );
/
create table ADMIN.aud_coc_planificar 
  (
    pla_dep_llave number,
    pla_codigo number,
    pla_referencia varchar2(100,1),
    pla_descripcion varchar2(1500),
    pla_situacion number,
    desp_pla_dep_llave number,
    desp_pla_codigo number,
    desp_pla_referencia varchar2(100,1),
    desp_pla_descripcion varchar2(1500),
    desp_pla_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.tauth 
  (
    usu_user char(8),
    usu_nombre char(40)
  );
/
create table ADMIN.usuarios 
  (
    grantee number,
    tabauth char(9),
    tabname char(25)
  );
/
create table ADMIN.temp_fin_personal 
  (
    fper_catalogo number not null ,
    fper_grado number,
    fper_arma number,
    fper_nom1 char(15) not null ,
    fper_nom2 char(15),
    fper_ape1 char(15) not null ,
    fper_ape2 char(15),
    fper_ape3 char(15),
    fper_ced_ord char(4),
    fper_ced_reg char(20),
    fper_fec_ext_ced date,
    fper_ext_ced_lugar char(4),
    fper_est_civil char(1),
    fper_direccion varchar2(75,10),
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
    fper_situacion char(2) not null ,
    fper_dpi char(15),
    
    constraint temp_ck_fper_est_civil check (fper_est_civil IN ('S' ,'C' ,'U' ,'D' ,'V' )) ,
    constraint temp_pk_fin_personal primary key (fper_catalogo)  
  );
/
create table ADMIN.cor_tipo_docum 
  (
    tipo_codigo number not null ,
    tipo_desc varchar2(50,5) not null ,
    constraint pk_cor_tipo_docum primary key (tipo_codigo) 
  );
/
create table ADMIN.aud_cor_tipo_docum 
  (
    tipo_codigo number,
    tipo_desc varchar2(50,5),
    desp_tipo_codigo number,
    desp_tipo_desc varchar2(50,5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cor_proposito 
  (
    prop_codigo number not null ,
    prop_desc varchar2(100,5) not null ,
    constraint prop_codigo primary key (prop_codigo)  
  );
/
create table ADMIN.aud_cor_proposito 
  (
    prop_codigo number,
    prop_desc varchar2(100,5),
    desp_prop_codigo number,
    desp_prop_desc varchar2(100,5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cor_ubicacion_docum 
  (
    ubi_codigo number not null ,
    ubi_documento number not null ,
    ubi_remite_ofi number not null ,
    ubi_remite_usu number not null ,
    ubi_remite_fec TIMESTAMP not null ,
    ubi_remite_folios number not null ,
    ubi_tipo_doc_remite number not null ,
    ubi_doc_remite varchar2(200,2) not null ,
    ubi_observaciones varchar2(255,1) not null ,
    ubi_int_ext char(1) not null ,
    ubi_recibe_of number not null ,
    ubi_recibe_usu number,
    ubi_recibe_fec TIMESTAMP,
    ubi_recibe_status char(1) not null ,
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
    ubi_doc_remite varchar2(200,2),
    ubi_observaciones varchar2(255,1),
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
    desp_ubi_doc_remite varchar2(200,2),
    desp_ubi_observaciones varchar2(255,1),
    desp_ubi_int_ext char(1),
    desp_ubi_recibe_of number,
    desp_ubi_recibe_usu number,
    desp_ubi_recibe_fec TIMESTAMP,
    desp_ubi_recibe_status char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cor_documento 
  (
    doc_codigo number not null ,
    doc_oficina number not null ,
    doc_tipo number not null ,
    doc_nombre varchar2(200,5) not null ,
    doc_prioridad number not null ,
    doc_asunto varchar2(255,1) not null ,
    doc_fec_realizado date not null ,
    doc_fec_ingresado TIMESTAMP not null ,
    doc_num_hojas number not null ,
    doc_destino number not null ,
    doc_procedencia number not null ,
    doc_status char(1) not null ,
    doc_interesado varchar2(50,5) not null ,
    doc_clasificacion number not null ,
    doc_proposito number not null ,
    doc_recibe number not null ,
    doc_interno char(1) not null ,
    doc_solucion char(1) not null ,
    doc_referencia varchar2(75,1) not null ,
    doc_of_actual number not null ,
    doc_ult_tras TIMESTAMP not null ,
    doc_fec_limite TIMESTAMP,
     constraint pk_cor_documento primary key (doc_codigo) 
  );
/
create table ADMIN.aud_cor_documento 
  (
    doc_codigo number,
    doc_oficina number,
    doc_tipo number,
    doc_nombre varchar2(200,5),
    doc_prioridad number,
    doc_asunto varchar2(255,1),
    doc_fec_realizado date,
    doc_fec_ingresado TIMESTAMP,
    doc_num_hojas number,
    doc_destino number,
    doc_procedencia number,
    doc_status char(1),
    doc_interesado varchar2(50,5),
    doc_clasificacion number,
    doc_proposito number,
    doc_recibe number,
    doc_interno char(1),
    doc_solucion char(1),
    doc_referencia varchar2(75,1),
    doc_of_actual number,
    doc_ult_tras TIMESTAMP,
    doc_fec_limite TIMESTAMP,
    desp_doc_codigo number,
    desp_doc_oficina number,
    desp_doc_tipo number,
    desp_doc_nombre varchar2(200,5),
    desp_doc_prioridad number,
    desp_doc_asunto varchar2(255,1),
    desp_doc_fec_realizado date,
    desp_doc_fec_ingresado TIMESTAMP,
    desp_doc_num_hojas number,
    desp_doc_destino number,
    desp_doc_procedencia number,
    desp_doc_status char(1),
    desp_doc_interesado varchar2(50,5),
    desp_doc_clasificacion number,
    desp_doc_proposito number,
    desp_doc_recibe number,
    desp_doc_interno char(1),
    desp_doc_solucion char(1),
    desp_doc_referencia varchar2(75,1),
    desp_doc_of_actual number,
    desp_doc_ult_tras TIMESTAMP,
    desp_doc_fec_limite TIMESTAMP,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cor_empresas 
  (
    emp_codigo number not null ,
    emp_desc_lg varchar2(75,1) not null ,
    emp_desc_md varchar2(40,1) not null ,
    emp_desc_ct varchar2(20,1) not null ,
    constraint pk_cor_empresas primary key (emp_codigo)  
  );
/
create table ADMIN.aud_cor_empresas 
  (
    emp_codigo number,
    emp_desc_lg varchar2(75,1),
    emp_desc_md varchar2(40,1),
    emp_desc_ct varchar2(20,1),
    desp_emp_codigo number,
    desp_emp_desc_lg varchar2(75,1),
    desp_emp_desc_md varchar2(40,1),
    desp_emp_desc_ct varchar2(20,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cor_oficinas 
  (
    of_codigo number not null ,
    of_oficina varchar2(10,1) not null ,
    of_dependencia number not null ,
    of_descripcion varchar2(75,1) not null ,
    of_mensajes number not null ,
    constraint of_codigo primary key (of_codigo)  
  );
/
create table ADMIN.aud_cor_oficinas 
  (
    of_codigo number,
    of_oficina varchar2(10,1),
    of_dependencia number,
    of_descripcion varchar2(75,1),
    of_mensajes number,
    desp_of_codigo number,
    desp_of_oficina varchar2(10,1),
    desp_of_dependencia number,
    desp_of_descripcion varchar2(75,1),
    desp_of_mensajes number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lmun_solicitud 
  (
    sol_codigo number not null ,
    sol_dep_llave number not null ,
    sol_catalogo_solicita number not null ,
    sol_grado_solicita number not null ,
    sol_fecha_solicita TIMESTAMP not null ,
    sol_msj_solicita varchar2(255,1) not null ,
    sol_fecha_solicita2 date,
    sol_msj_solicita2 varchar2(255,1),
    sol_catalogo_autoriza number,
    sol_grado_autoriza number,
    sol_fecha_autoriza TIMESTAMP,
    sol_msj_autoriza varchar2(255,1),
    sol_catalogo_ordena number,
    sol_grado_ordena number,
    sol_fecha_ordena TIMESTAMP,
    sol_msj_ordena varchar2(255,1),
    sol_situacion number not null ,
    constraint pk_lmun_solicitud   primary key (sol_codigo,sol_dep_llave)  
  );
/
create table ADMIN.lmun_lote 
  (
    lote_codigo number not null ,
    lote_descripcion varchar2(255,1) not null ,
    lote_fecha date,
    lote_situacion number not null ,
    constraint pk_lote_codigo primary key (lote_codigo)  
  );
/
create table ADMIN.lmun_detalle_solicitud
  (
    sdet_sol_codigo number not null ,
    sdet_sol_dep_llave number not null ,
    sdet_codigo number not null ,
    sdet_cal_codigo number not null ,
    sdet_tipo_codigo number not null ,
    sdet_uso_codigo number not null ,
    sdet_eslabonada number not null ,
    sdet_cantidad number not null ,
    constraint pk_lmun_detalle_solicitud  primary key (sdet_sol_codigo,sdet_sol_dep_llave,sdet_codigo)  
  );
/
create table ADMIN.lmun_lote_asig 
  (
    asig_lote_codigo number not null ,
    asig_dep_llave number,
    asig_lote_situacion number,
     constraint pk_lote_asig primary key (asig_lote_codigo,asig_dep_llave) 
  );
/
create table ADMIN.lmun_tipo 
  (
    tipo_codigo number not null ,
    tipo_descripcion varchar2(255,1) not null ,
    tipo_situacion number not null ,
    constraint pk_tipo_codigo primary key (tipo_codigo)  
  );
/
create table ADMIN.lmun_calibre 
  (
    cal_codigo number not null ,
    cal_descripcion varchar2(255,1) not null ,
    cal_situacion number not null ,
     constraint pk_cal_codigo primary key (cal_codigo) 
  );
/
create table ADMIN.lmun_uso 
  (
    uso_codigo number not null ,
    uso_descripcion varchar2(255,1) not null ,
    uso_situacion number not null ,
    constraint pk_uso_codigo primary key (uso_codigo)  
  );
/
create table ADMIN.lmun_ent_sal 
  (
    es_codigo number not null ,
    es_con_codigo number not null ,
    es_con_dep_llave number not null ,
    es_lote_codigo number not null ,
    es_uso_codigo number not null ,
    es_tipo_codigo number not null ,
    es_cal_codigo number not null ,
    es_eslabonada number not null ,
    es_carga number not null ,
    es_cantidad number not null ,
    es_status number not null ,
    es_tipo number not null ,
    es_situacion number not null ,
    constraint pk_es_codigo_es_con_codigo_es_con_dep_llave primary key (es_codigo,es_con_codigo,es_con_dep_llave)  
  );
/
create table ADMIN.aud_lmarmas1 
  (
    arm_cat number,
    arm_numero char(20),
    arm_plaza number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_egresos 
  (
    egr_id number not null ,
    egr_fecha TIMESTAMP not null ,
    egr_usuario number not null ,
    egr_dependencia number not null ,
    egr_departamento char(4) not null ,
    egr_municipio char(4) not null ,
    egr_observaciones varchar2(255,1),
    egr_referencia char(50),
    egr_personal number,
    egr_situacion number not null ,
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
    egr_observaciones varchar2(255,1),
    egr_referencia char(50),
    egr_personal number,
    egr_situacion number,
    desp_egr_id number,
    desp_egr_fecha TIMESTAMP,
    desp_egr_usuario number,
    desp_egr_dependencia number,
    desp_egr_departamento char(4),
    desp_egr_municipio char(4),
    desp_egr_observaciones varchar2(255,1),
    desp_egr_referencia char(50),
    desp_egr_personal number,
    desp_egr_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_inventario 
  (
    inv_id number not null ,
    inv_dependencia number not null ,
    inv_departamento char(4) not null ,
    inv_municipio char(4) not null ,
    inv_insumo number not null ,
    inv_cantidad number(32,2) not null ,
    constraint pk_mag_inventario primary key (inv_id)  
  );
/
create table ADMIN.aud_mag_inventario 
  (
    inv_id number,
    inv_dependencia number,
    inv_departamento char(4),
    inv_municipio char(4),
    inv_insumo number,
    inv_cantidad number(32,2),
    desp_inv_id number,
    desp_inv_dependencia number,
    desp_inv_departamento char(4),
    desp_inv_municipio char(4),
    desp_inv_insumo number,
    desp_inv_cantidad number(32,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_insumos 
  (
    ins_id number not null ,
    ins_descripcion varchar2(100,50) not null ,
    ins_medida varchar2(50,2) not null ,
    ins_situacion number not null ,
    constraint pk_mag_insumos primary key (ins_id)  
  );
/
create table ADMIN.aud_mag_insumos 
  (
    ins_id number,
    ins_descripcion varchar2(100,50),
    ins_medida varchar2(50,2),
    ins_situacion number,
    desp_ins_id number,
    desp_ins_descripcion varchar2(100,50),
    desp_ins_medida varchar2(50,2),
    desp_ins_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_det_ingreso 
  (
    det_id number not null ,
    det_id_ingreso number not null ,
    det_insumo number not null ,
    det_cantidad number(32,2) not null ,
    constraint pk_mag_det_ingreso primary key (det_id)  
  );
/
create table ADMIN.aud_mag_det_ingreso 
  (
    det_id number,
    det_id_ingreso number,
    det_insumo number,
    det_cantidad number(32,2),
    desp_det_id number,
    desp_det_id_ingreso number,
    desp_det_insumo number,
    desp_det_cantidad number(32,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_det_egreso 
  (
    det_id_eg number not null ,
    det_id_egreso number not null ,
    det_insumo_eg number not null ,
    det_cantidad_eg number(32,2) not null ,
    constraint pk_det_egreso primary key (det_id_egreso,det_insumo_eg)  
  );
/
create table ADMIN.aud_mag_det_egreso 
  (
    det_id_eg number,
    det_id_egreso number,
    det_insumo_eg number,
    det_cantidad_eg number(32,2),
    desp_det_id_eg number,
    desp_det_id_egreso number,
    desp_det_insumo_eg number,
    desp_det_cantidad_eg number(32,2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.mag_ingresos 
  (
    ing_id number not null ,
    ing_fecha TIMESTAMP not null ,
    ing_usuario number not null ,
    ing_dependencia number not null ,
    ing_departamento char(4) not null ,
    ing_municipio char(4) not null ,
    ing_observaciones varchar2(255,1),
    ing_referencia char(50),
    ing_personal number,
    ing_situacion number not null ,
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
    ing_observaciones varchar2(255,1),
    ing_referencia char(50),
    ing_personal number,
    ing_situacion number,
    desp_ing_id number,
    desp_ing_fecha TIMESTAMP,
    desp_ing_usuario number,
    desp_ing_dependencia number,
    desp_ing_departamento char(4),
    desp_ing_municipio char(4),
    desp_ing_observaciones varchar2(255,1),
    desp_ing_referencia char(50),
    desp_ing_personal number,
    desp_ing_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lmun_conocimiento 
  (
    con_codigo number not null ,
    con_dep_llave number not null ,
    con_numero_libro varchar2(255,1) not null ,
    con_folio_libro varchar2(255,1) not null ,
    con_conocimiento_libro varchar2(255,1) not null ,
    con_tipo_libro number not null ,
    con_grado_entrego number not null ,
    con_catalogo_entrego number not null ,
    con_dep_llave_entrego number not null ,
    con_org_plaza_entrego number,
    con_grado_recibio number not null ,
    con_catalogo_recibio number not null ,
    con_dep_llave_recibio number not null ,
    con_org_plaza_recibio number,
    con_grado_autorizo number not null ,
    con_catalogo_autorizo number not null ,
    con_dep_llave_autorizo number not null ,
    con_org_plaza_autorizo number,
    con_mensaje varchar2(255,1) not null ,
    con_fecha_mensaje date not null ,
    con_fecha_conocimiento date not null ,
    con_situacion number not null ,
    constraint pk_lmun_conocimiento primary key (con_codigo,con_dep_llave)  
  );
/
create table ADMIN.usu_autocom 
  (
    usu_catalogo number not null ,
    usu_pass varchar2(250) not null ,
    usu_contrapass varchar2(250) not null ,
    usu_pregunta varchar2(250),
    usu_respuesta varchar2(255),
    usu_habilita number not null ,
    usu_seguridad number not null ,
    constraint pk_usu_autocom primary key (usu_catalogo) 
  );
/
create table ADMIN.cor_corr_seg 
  (
    seg_usuario number not null ,
    seg_pass varchar2(30,1) not null ,
    seg_oficina number not null ,
    seg_plaza number not null ,
    seg_nivel number not null ,
    seg_seguridad number not null ,
    seg_habilita number not null ,
    seg_situacion number not null ,
    primary key (seg_usuario)  constraint segusuario
  );
/
create table ADMIN.aud_cor_corr_seg 
  (
    seg_usuario number,
    seg_pass varchar2(30,1),
    seg_oficina number,
    seg_plaza number,
    seg_nivel number,
    seg_seguridad number,
    seg_habilita number,
    seg_situacion number,
    desp_seg_usuario number,
    desp_seg_pass varchar2(30,1),
    desp_seg_oficina number,
    desp_seg_plaza number,
    desp_seg_nivel number,
    desp_seg_seguridad number,
    desp_seg_habilita number,
    desp_seg_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lmun_asig_arm 
  (
    asig_lot_tipo number not null ,
    asig_lot_cod number not null ,
    asig_basica number not null ,
    asig_cia number,
    asig_btn number,
    asig_brigada number,
    asig_tolvas number,
    constraint pk_lmun_asig_arm primary key (asig_lot_tipo,asig_lot_cod)  
  );
/
create table ADMIN.arco_escalafon 
  (
    esca_cat number not null ,
    esca_grado number not null ,
    esca_plaza number not null ,
    esca_plaza_nivel number,
    esca_fec_asc char(10) not null ,
    esca_fec_prox_asc char(10) not null ,
    esca_nota number(4,2),
    esca_ubica number,
    esca_fec date not null ,
    constraint pk_arco_escalafon primary key (esca_cat,esca_fec)  
  );
/
create table ADMIN.aud_arco_escalafon 
  (
    esca_cat number,
    esca_grado number,
    esca_plaza number,
    esca_plaza_nivel number,
    esca_fec_asc char(10),
    esca_fec_prox_asc char(10),
    esca_nota number(4,2),
    esca_ubica number,
    esca_fec date,
    desp_esca_cat number,
    desp_esca_grado number,
    desp_esca_plaza number,
    desp_esca_plaza_nivel number,
    desp_esca_fec_asc char(10),
    desp_esca_fec_prox_asc char(10),
    desp_esca_nota number(4,2),
    desp_esca_ubica number,
    desp_esca_fec date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_escalafonp 
  (
    esca_cat number not null ,
    esca_grado number not null ,
    esca_plaza number not null ,
    esca_plaza_nivel number,
    esca_fec_asc char(10) not null ,
    esca_fec_prox_asc char(10) not null ,
    esca_nota number(4,2),
    esca_ubica number,
    esca_fec date not null ,
    constraint pk_arco_escalafonp primary key (esca_cat,esca_fec)  
  );
/
create table ADMIN.arco_not_creditos 
  (
    not_catalogo number not null ,
    not_fecha date not null ,
    not_curmil number(4,2) not null ,
    not_carruni number(4,2) not null ,
    not_curcap number(4,2) not null ,
    not_idiomas number(4,2) not null ,
    not_conde number(4,2) not null ,
    not_total number(4,2) not null ,
    constraint pk_arco_not_creditos primary key (not_catalogo,not_fecha)  
  );
/
create table ADMIN.arco_escalafon1 
  (
    esca_cat number not null ,
    esca_grado number not null ,
    esca_grado_equi number not null ,
    esca_plaza number not null ,
    esca_plaza_nivel number,
    esca_fec_asc date not null ,
    esca_fec_prox_asc char(10) not null ,
    esca_nota number(4,2),
    esca_promocion number,
    esca_categoria char(4) not null ,
    erca_arma number not null ,
    esca_fec date not null ,
    constraint pk_arcoo_esca primary key (esca_cat,esca_fec)  
  );
/
create table ADMIN.tiempos 
  (
    t_catalogo number,
    t_total number not null ,
    t_jubilacion number not null ,
    t_oficial number not null ,
    t_esp_ofi number not null ,
    t_form_mil number not null ,
    t_grado number not null ,
    t_depen number not null ,
    t_ult_asc date not null ,
    t_prox_asc char(10) not null ,
    t_puesto number not null ,
    t_edad number,
    t_alta date,
    constraint pk_tiempos primary key (t_catalogo) 
  );
/
create table ADMIN.arco_pcomando 
  (
    pcom_catalogo number not null ,
    pcom_meom_ceom char(6) not null ,
    pcom_desc_ceom char(35) not null ,
    pcom_grado number not null ,
    pcom_descgrado char(8) not null ,
    pcom_arma number not null ,
    pcom_descempleo char(45) not null ,
    pcom_plaza number not null ,
    pcom_fecnomb date not null ,
    pcom_feccese date not null ,
    pcom_dependencia number not null ,
    pcom_descdependencia char(15) not null ,
    pcom_fec date not null ,
    constraint pk_arco_pcomando primary key (pcom_catalogo,pcom_fecnomb,pcom_fec)  
  );
/
create table ADMIN.dot_uniformes 
  (
    uni_codigo number not null ,
    uni_fuerza number not null ,
    uni_descrip varchar2(50,1) not null ,
    uni_situacion number not null ,
    constraint pk_dot_uniformes primary key (uni_codigo)  
  );
/
create table ADMIN.aud_dot_uniformes 
  (
    uni_codigo number,
    uni_fuerza number,
    uni_descrip varchar2(50,1),
    uni_situacion number,
    desp_uni_codigo number,
    desp_uni_fuerza number,
    desp_uni_descrip varchar2(50,1),
    desp_uni_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_solicitud 
  (
    sol_numero number not null ,
    sol_mensaje varchar2(50,10) not null ,
    sol_fecha date not null ,
    sol_com_catalogo number not null ,
    sol_log_cat number not null ,
    sol_observaciones varchar2(250,1) not null ,
    sol_situacion varchar2(10,1) not null ,
    sol_dotacion varchar2(10,5) not null ,
    sol_dependencia number not null ,
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
    sol_mensaje varchar2(50,10),
    sol_fecha date,
    sol_com_catalogo number,
    sol_log_cat number,
    sol_observaciones varchar2(250,1),
    sol_situacion varchar2(10,1),
    sol_dotacion varchar2(10,5),
    sol_dependencia number,
    sol_jerarquia number,
    sol_usuario number,
    sol_hoja number,
    sol_cant_hojas number,
    desp_sol_numero number,
    desp_sol_mensaje varchar2(50,10),
    desp_sol_fecha date,
    desp_sol_com_catalogo number,
    desp_sol_log_cat number,
    desp_sol_observaciones varchar2(250,1),
    desp_sol_situacion varchar2(10,1),
    desp_sol_dotacion varchar2(10,5),
    desp_sol_dependencia number,
    desp_sol_jerarquia number,
    desp_sol_usuario number,
    desp_sol_hoja number,
    desp_sol_cant_hojas number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dot_detalle 
  (
    det_solicitud number not null ,
    det_catalogo number not null ,
    det_grado number not null ,
    det_codigo_uni number not null ,
    det_talla_uni varchar2(6,1) not null ,
    det_talla_bota varchar2(5,1) not null ,
    det_talla_gorra varchar2(6,1) not null ,
    det_situacion number not null ,
    det_fecha date not null ,
    det_usuario number not null ,
    det_comprobante number not null ,
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
    det_talla_uni varchar2(6,1),
    det_talla_bota varchar2(5,1),
    det_talla_gorra varchar2(6,1),
    det_situacion number,
    det_fecha date,
    det_usuario number,
    det_comprobante number,
    det_codbarra varchar2(15,1),
    desp_det_solicitud number,
    desp_det_catalogo number,
    desp_det_grado number,
    desp_det_codigo_uni number,
    desp_det_talla_uni varchar2(6,1),
    desp_det_talla_bota varchar2(5,1),
    desp_det_talla_gorra varchar2(6,1),
    desp_det_situacion number,
    desp_det_fecha date,
    desp_det_usuario number,
    desp_det_comprobante number,
    desp_det_codbarra varchar2(15,1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_proveedor 
  (
    pro_codigo number not null ,
    pro_nombre char(20) not null ,
    pro_nit number not null ,
    pro_direccion varchar2(255),
    pro_telefono number,
    pro_correo char(20),
    pro_situacion number not null ,
    constraint pk_inv_proveedor primary key (pro_codigo)
  );
/
create table ADMIN.aud_inv_proveedor 
  (
    pro_codigo number,
    pro_nombre char(20),
    pro_nit number,
    pro_direccion varchar2(255),
    pro_telefono number,
    pro_correo char(20),
    pro_situacion number,
    desp_pro_codigo number,
    desp_pro_nombre char(20),
    desp_pro_nit number,
    desp_pro_direccion varchar2(255),
    desp_pro_telefono number,
    desp_pro_correo char(20),
    desp_pro_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_representante 
  (
    rep_codigo number not null ,
    rep_nom1 char(20) not null ,
    rep_nom2 char(20),
    rep_ape1 char(20) not null ,
    rep_ape2 char(20),
    rep_telefono number,
    rep_situacion number not null ,
    constraint representante primary key (rep_codigo)  
  );
/
create table ADMIN.inv_asig_repre_provee 
  (
    asig_codigo number not null ,
    asig_proveedor number not null ,
    asig_representante number not null ,
    asig_situacion number not null ,
    constraint pk_inv_asig_repre_provee primary key (asig_codigo)  
  );
/
create table ADMIN.inv_detalle 
  (
    det_codigo number not null ,
    det_formulario number not null ,
    det_tipo char(2) not null ,
    det_lote number not null ,
    det_articulo number not null ,
    det_grupo number not null ,
    det_cantidad number not null ,
    det_calidad char(20) not null ,
    det_observaciones varchar2(255,1) not null ,
    det_situaciones number not null ,
    constraint pk_inv_detalle primary key (det_codigo,det_formulario,det_tipo)  
  );
/
create table ADMIN.inv_articulo 
  (
    art_codigo number not null ,
    art_grupo number not null ,
    art_desc_corta varchar2(50,1) not null ,
    art_desc_larga varchar2(50,1) not null ,
    art_situacion number not null ,
    constraint artcodigo primary key (art_codigo)  
  );
/
create table ADMIN.inv_clase 
  (
    cla_codigo number not null ,
    cla_nombre varchar2(25,1) not null ,
    cla_descripcion varchar2(255,1) not null ,
    cla_situacion number not null ,
  constraint id_clase  primary key (cla_codigo)  

  );
/
create table ADMIN.aud_inv_clase 
  (
    cla_codigo number,
    cla_nombre varchar2(25),
    cla_descripcion varchar2(255),
    cla_situacion number,
    desp_cla_codigo number,
    desp_cla_nombre varchar2(25),
    desp_cla_descripcion varchar2(255),
    desp_cla_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_inv_grupo 
  (
    grup_codigo number,
    grup_clase number,
    grup_tipo char(20) not null ,
    grup_descripcion varchar2(25,1),
    grup_situacion number,
    desp_grup_codigo number,
    desp_grup_clase number,
    desp_grup_tipo char(20) not null ,
    desp_grup_descripcion varchar2(25,1),
    desp_grup_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_inv_articulo 
  (
    art_codigo number,
    art_grupo number,
    art_desc_corta varchar2(50,1),
    art_desc_larga varchar2(50,1),
    art_situacion number,
    desp_art_codigo number,
    desp_art_grupo number,
    desp_art_desc_corta varchar2(50,1),
    desp_art_desc_larga varchar2(50,1),
    desp_art_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
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
    det_observaciones varchar2(255,1),
    det_situaciones number,
    desp_det_codigo number,
    desp_det_formulario number,
    desp_det_tipo char(2),
    desp_det_lote number,
    desp_det_articulo number,
    desp_det_grupo number,
    desp_det_cantidad number,
    desp_det_calidad char(20),
    desp_det_observaciones varchar2(255,1),
    desp_det_situaciones number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_inv_asig_repre_provee 
  (
    asig_codigo number,
    asig_proveedor number,
    asig_representante number,
    asig_situacion number,
    desp_asig_codigo number,
    desp_asig_proveedor number,
    desp_asig_representante number,
    desp_asig_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_inv_representante 
  (
    rep_codigo number,
    rep_nom1 char(20),
    rep_nom2 char(20),
    rep_ape1 char(20),
    rep_ape2 char(20),
    rep_telefono number,
    rep_situacion number,
    desp_rep_codigo number,
    desp_rep_nom1 char(20),
    desp_rep_nom2 char(20),
    desp_rep_ape1 char(20),
    desp_rep_ape2 char(20),
    desp_rep_telefono number,
    desp_rep_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.inv_grupo 
  (
    grup_codigo number not null ,
    grup_clase number not null ,
    grup_tipo char(20) not null ,
    grup_descripcion varchar2(25,1) not null ,
    grup_situacion number not null ,
    constraint pk_grup_codigo primary key (grup_codigo)  
  );
/
create table ADMIN.inv_lote 
  (
    lot_codigo number not null ,
    lot_articulo number not null ,
    lot_grupo number not null ,
    lot_dependencia number,
    lot_desc_corta varchar2(100,1) not null ,
    lot_desc_larga varchar2(200,1) not null ,
    lot_existencias number not null ,
    lot_ubicacion varchar2(250,1) not null ,
    lot_numserie varchar2(30,1),
    lot_modelo varchar2(60,1),
    lot_version char(1),
    lot_frecuencia varchar2(50,1),
    lot_situacion number not null ,
    constraint pk_inv_lote primary key (lot_codigo)  
  );
/
create table ADMIN.inv_formulario 
  (
    for_codigo number not null ,
    for_tipo char(2) not null ,
    for_fechora TIMESTAMP not null ,
    for_proveedor number,
    for_dep_entrega number,
    for_dep_recibe number not null ,
    for_representante number,
    for_cat_entrega number,
    for_cat_recibe number not null ,
    for_cat_encargado number not null ,
    for_cat_jefe number not null ,
    for_grad_entrega number,
    for_grad_recibe number,
    for_grad_encargado number,
    for_grad_jefe number,
    for_observaciones varchar2(255,1) not null ,
    for_situaciones number not null ,
    constraint  pk_inv_formulario primary key (for_codigo,for_tipo)  
  );
/
create table ADMIN.aud_inv_lote 
  (
    lot_codigo number,
    lot_articulo number,
    lot_grupo number,
    lot_dependencia number,
    lot_desc_corta varchar2(100,1),
    lot_desc_larga varchar2(200,1),
    lot_existencias number,
    lot_ubicacion varchar2(250,1),
    lot_numserie varchar2(30,1),
    lot_modelo varchar2(60,1),
    lot_version char(1),
    lot_frecuencia varchar2(50,1),
    lot_situacion number,
    desp_lot_codigo number,
    desp_lot_articulo number,
    desp_lot_grupo number,
    desp_lot_dependencia number,
    desp_lot_desc_corta varchar2(100,1),
    desp_lot_desc_larga varchar2(200,1),
    desp_lot_existencias number,
    desp_lot_ubicacion varchar2(250,1),
    desp_lot_numserie varchar2(30,1),
    desp_lot_modelo varchar2(60,1),
    desp_lot_version char(1),
    desp_lot_frecuencia varchar2(50,1),
    desp_lot_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
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
    for_observaciones varchar2(255,1),
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
    desp_for_observaciones varchar2(255,1),
    desp_for_situaciones number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dtx_accesorio 
  (
    acc_id number not null ,
    acc_desc_ct varchar2(15) not null ,
    acc_desc_lg varchar2(45) not null ,
    acc_marca number not null ,
    acc_no_serie varchar2(45),
    acc_modelo char(10),
    acc_version char(1) not null ,
    acc_estado char(1) not null ,
    acc_observaciones varchar2(255),
    acc_situacion char(1) not null ,
    constraint pk_dtx_accesorio primary key (acc_id) 
  );
/
create table ADMIN.aud_dtx_accesorio 
  (
    acc_id number,
    acc_desc_ct varchar2(15),
    acc_desc_lg varchar2(45),
    acc_marca number,
    acc_no_serie varchar2(45),
    acc_modelo char(10),
    acc_version char(1),
    acc_estado char(1),
    acc_observaciones varchar2(255),
    acc_situacion char(1),
    desp_acc_id number,
    desp_acc_desc_ct varchar2(15),
    desp_acc_desc_lg varchar2(45),
    desp_acc_marca number,
    desp_acc_no_serie varchar2(45),
    desp_acc_modelo char(10),
    desp_acc_version char(1),
    desp_acc_estado char(1),
    desp_acc_observaciones varchar2(255),
    desp_acc_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dtx_marca 
  (
    mar_id number not null ,
    mar_desc varchar2(45) not null ,
    mar_situacion char(1) not null ,
    constraint  pk_dtx_marca primary key (mar_id)  
  );
/
create table ADMIN.dtx_articulo 
  (
    art_id number not null ,
    art_desc_ct varchar2(15) not null ,
    art_desc_lg varchar2(45) not null ,
    art_marca number not null ,
    art_no_serie varchar2(45),
    art_modelo char(10),
    art_version char(1) not null ,
    art_r_frecuencia char(1) not null ,
    art_estado char(1) not null ,
    art_observaciones varchar2(255),
    art_situacion char(1) not null ,
    constraint pk_dtx_articulo primary key (art_id)  
  );
/
create table ADMIN.aud_dtx_articulo 
  (
    art_id number,
    art_desc_ct varchar2(15),
    art_desc_lg varchar2(45),
    art_marca number,
    art_no_serie varchar2(45),
    art_modelo char(10),
    art_version char(1),
    art_r_frecuencia char(1),
    art_estado char(1),
    art_observaciones varchar2(255),
    art_situacion char(1),
    desp_art_id number,
    desp_art_desc_ct varchar2(15),
    desp_art_desc_lg varchar2(45),
    desp_art_marca number,
    desp_art_no_serie varchar2(45),
    desp_art_modelo char(10),
    desp_art_version char(1),
    desp_art_r_frecuencia char(1),
    desp_art_estado char(1),
    desp_art_observaciones varchar2(255),
    desp_art_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dtx_equipo 
  (
    eq_art number not null ,
    eq_acc number not null ,
    eq_observaciones varchar2(255),
    eq_situacion char(1) not null ,
    constraint pk_dtx_equipo primary key (eq_acc,eq_art)  
  );
/
create table ADMIN.aud_dtx_equipo 
  (
    eq_art number,
    eq_acc number,
    eq_observaciones varchar2(255),
    eq_situacion char(1),
    desp_eq_art number,
    desp_eq_acc number,
    desp_eq_observaciones varchar2(255),
    desp_eq_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_dtx_marca 
  (
    mar_id number,
    mar_desc varchar2(45),
    mar_situacion char(1),
    desp_mar_id number,
    desp_mar_desc varchar2(45),
    desp_mar_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
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
    dist_doc_ref varchar2(50,5),
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
    desp_dist_doc_ref varchar2(50,5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dtx_distribucion 
  (
    dist_dman_dep number not null ,
    dist_dman_codigo number not null ,
    dist_eq_art number not null ,
    dist_eq_acc number,
    dist_calidad char(1) not null ,
    dist_f_asignacion date not null ,
    dist_catalogo_entrega number not null ,
    dist_grado_entrega number not null ,
    dist_catalogo_recibe number not null ,
    dist_grado_recibe number not null ,
    dist_situacion char(1) not null ,
    dist_doc_ref varchar2(50,5) not null ,
    constraint pk_dtx_distribucion primary key (dist_dman_codigo,dist_dman_dep,dist_eq_art) 
  );
/
create table ADMIN.bin_situacion 
  (
    sit_id number not null ,
    sit_descripcion varchar2(100,50) not null ,
    sit_situacion number not null ,
    constraint pk_bin_situacion primary key (sit_id)  
  );
/
create table ADMIN.aud_bin_situacion 
  (
    sit_id number,
    sit_descripcion varchar2(100,50),
    sit_situacion number,
    desp_sit_id number,
    desp_sit_descripcion varchar2(100,50),
    desp_sit_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_adquisicion 
  (
    adq_id number not null ,
    adq_descripcion varchar2(100,50) not null ,
    adq_situacion number not null ,
    constraint pk_bin_adquisicion primary key (adq_id)  
  );
/
create table ADMIN.aud_bin_adquisicion 
  (
    adq_id number,
    adq_descripcion varchar2(100,50),
    adq_situacion number,
    desp_adq_id number,
    desp_adq_descripcion varchar2(100,50),
    desp_adq_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_tipos 
  (
    tip_id number not null ,
    tip_descripcion varchar2(100,50) not null ,
    tip_situacion number not null ,
    constraint pk_bin_tipos primary key (tip_id)  
  );
/
create table ADMIN.aud_bin_tipos 
  (
    tip_id number,
    tip_descripcion varchar2(100,50),
    tip_situacion number,
    desp_tip_id number,
    desp_tip_descripcion varchar2(100,50),
    desp_tip_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_accion 
  (
    acc_codigo number not null ,
    acc_incidencia number not null ,
    acc_accion varchar2(255,200),
    acc_fecha date not null ,
    acc_usuario number not null ,
    acc_situacion number not null ,
    constraint pk_bin_accion primary key (acc_codigo)  
  );
/
create table ADMIN.bin_utm 
  (
    utm_codigo number not null ,
    utm_inmueble number not null ,
    utm_vertice number not null ,
    utm_coor number not null ,
    utm_situacion number not null ,
    constraint pk_utm primary key (utm_codigo)  
  );
/
create table ADMIN.aud_bin_utm 
  (
    utm_codigo number,
    utm_inmueble number,
    utm_vertice number,
    utm_coor number,
    utm_situacion number,
    desp_utm_codigo number,
    desp_utm_inmueble number,
    desp_utm_vertice number,
    desp_utm_coor number,
    desp_utm_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_inmueble 
  (
    inm_codigo number not null ,
    inm_descripcion varchar2(255,200) not null ,
    inm_situacion number not null ,
    inm_tipo number not null ,
    inm_adquisicion number not null ,
    inm_direccion varchar2(255,200) not null ,
    inm_depto char(4) not null ,
    inm_municipio char(4) not null ,
    inm_area varchar2(255,200) not null ,
    inm_area_reg varchar2(255,200),
    inm_finca number,
    inm_folio number,
    inm_libro varchar2(20,5),
    inm_esc_publica varchar2(255,200),
    inm_ac_gub varchar2(255,200),
    inm_bienes_estado varchar2(255,200),
    inm_referencia varchar2(255,200),
    inm_status number not null ,
    inm_catastro number not null ,
    inm_fecha_cat date,
    inm_obs varchar2(255,200),
    constraint pk_bin_inmueble primary key (inm_codigo)  
  );
/
create table ADMIN.aud_bin_inmueble 
  (
    inm_codigo number,
    inm_descripcion varchar2(255,200),
    inm_situacion number,
    inm_tipo number,
    inm_adquisicion number,
    inm_direccion varchar2(255,200),
    inm_depto char(4),
    inm_municipio char(4),
    inm_area varchar2(255,200),
    inm_area_reg varchar2(255,200),
    inm_finca number,
    inm_folio number,
    inm_libro varchar2(20,5),
    inm_esc_publica varchar2(255,200),
    inm_ac_gub varchar2(255,200),
    inm_bienes_estado varchar2(255,200),
    inm_referencia varchar2(255,200),
    inm_status number,
    inm_catastro number,
    inm_fecha_cat date,
    inm_obs varchar2(255,200),
    desp_inm_codigo number,
    desp_inm_descripcion varchar2(255,200),
    desp_inm_situacion number,
    desp_inm_tipo number,
    desp_inm_adquisicion number,
    desp_inm_direccion varchar2(255,200),
    desp_inm_depto char(4),
    desp_inm_municipio char(4),
    desp_inm_area varchar2(255,200),
    desp_inm_area_reg varchar2(255,200),
    desp_inm_finca number,
    desp_inm_folio number,
    desp_inm_libro varchar2(20,5),
    desp_inm_esc_publica varchar2(255,200),
    desp_inm_ac_gub varchar2(255,200),
    desp_inm_bienes_estado varchar2(255,200),
    desp_inm_referencia varchar2(255,200),
    desp_inm_status number,
    desp_inm_catastro number,
    desp_inm_fecha_cat date,
    desp_inm_obs varchar2(255,200),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_accion 
  (
    acc_codigo number,
    acc_incidencia number,
    acc_accion varchar2(255,200),
    acc_fecha date,
    acc_usuario number,
    acc_situacion number,
    desp_acc_codigo number,
    desp_acc_incidencia number,
    desp_acc_accion varchar2(255,200),
    desp_acc_fecha date,
    desp_acc_usuario number,
    desp_acc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_ubicacion 
  (
    ubi_codigo number not null ,
    ubi_inmueble number not null ,
    ubi_vertice number not null ,
    ubi_latitud number(16) not null ,
    ubi_longitud number(16) not null ,
    ubi_situacion number not null ,
    constraint pk_bin_ubicacion primary key (ubi_codigo)  
  );
/
create table ADMIN.aud_bin_ubicacion 
  (
    ubi_codigo number,
    ubi_inmueble number,
    ubi_vertice number,
    ubi_latitud number(16),
    ubi_longitud number(16),
    ubi_situacion number,
    desp_ubi_codigo number,
    desp_ubi_inmueble number,
    desp_ubi_vertice number,
    desp_ubi_latitud number(16),
    desp_ubi_longitud number(16),
    desp_ubi_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.bin_incidencia 
  (
    inc_codigo number not null ,
    inc_inmueble number not null ,
    inc_fecha date not null ,
    inc_tipo char(4) not null ,
    inc_descripcion varchar2(255,200),
    inc_referencia varchar2(255,200),
    inc_usuario number not null ,
    inc_situacion number not null ,
    constraint pk_bin_incidencia primary key (inc_codigo)  
  );
/
create table ADMIN.bin_asignacion 
  (
    asi_codigo number not null ,
    asi_inmueble number not null ,
    asi_referencia varchar2(255,200),
    asi_fecha date not null ,
    asi_responsable number not null ,
    asi_dependencia number not null ,
    asi_autentica number not null ,
    asi_usuario number not null ,
    asi_obs varchar2(255,200),
    asi_resp_grado number not null ,
    asi_aut_grado number not null ,
    constraint pk_bin_asignacion primary key (asi_codigo)  
  );
/
create table ADMIN.aud_bin_incidencia 
  (
    inc_codigo number,
    inc_inmueble number,
    inc_fecha date,
    inc_tipo char(4),
    inc_descripcion varchar2(255,200),
    inc_referencia varchar2(255,200),
    inc_usuario number,
    inc_situacion number,
    desp_inc_codigo number,
    desp_inc_inmueble number,
    desp_inc_fecha date,
    desp_inc_tipo char(4),
    desp_inc_descripcion varchar2(255,200),
    desp_inc_referencia varchar2(255,200),
    desp_inc_usuario number,
    desp_inc_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_bin_asignacion 
  (
    asi_codigo number,
    asi_inmueble number,
    asi_referencia varchar2(255,200),
    asi_fecha date,
    asi_responsable number,
    asi_dependencia number,
    asi_autentica number,
    asi_usuario number,
    asi_obs varchar2(255,200),
    asi_resp_grado number,
    asi_aut_grado number,
    desp_asi_codigo number,
    desp_asi_inmueble number,
    desp_asi_referencia varchar2(255,200),
    desp_asi_fecha date,
    desp_asi_responsable number,
    desp_asi_dependencia number,
    desp_asi_autentica number,
    desp_asi_usuario number,
    desp_asi_obs varchar2(255,200),
    desp_asi_resp_grado number,
    desp_asi_aut_grado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.lemus 
  (
    cat number,
    grado number,
    nombre1 char(15),
    nombre2 char(15),
    ape1 char(15),
    ape2 char(15),
    dpi char(15),
    direccion char(50),
    telefono number,
    empleo char(45),
    sueldo number(16,2),
    nombra date,
    cese date
  );
/
create table ADMIN.aud_psan_boleta 
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
create table ADMIN.psan_boleta 
  (
    bol_det_catalogo number not null ,
    bol_det_fecha date not null ,
    bol_det_sancion number not null ,
    bol_det_grado number,
    bol_dependencia number,
    bol_desc_empleo char(45) not null ,
    bol_jerarquia_sancionado char(100) not null ,
    bol_sancionador number not null ,
    bol_gra_sancionador number not null ,
    bol_empleo_sancionador char(45) not null ,
    bol_justicia number not null ,
    bol_gra_justicia number not null ,
    bol_comte number not null ,
    bol_gra_comte number not null ,
    bol_fech_cumple TIMESTAMP,
    bol_det_status number,
    constraint pk_psan_boleta primary key (bol_det_catalogo,bol_det_fecha,bol_det_sancion)  
  );
/
create table ADMIN.ing_asi_maquinas 
  (
    asimaq_codigo number not null ,
    asimaq_proyecto number not null ,
    asimaq_maquina number not null ,
    asimaq_fecha_inicio date,
    asimaq_fecha_fin date,
    asimaq_situacion char(1) not null ,
    constraint pk_ing_asi_maquinas primary key (asimaq_codigo) 
  );
/
create table ADMIN.aud_ing_asi_maquinas 
  (
    asimaq_codigo number,
    asimaq_proyecto number,
    asimaq_maquina number,
    asimaq_fecha_inicio date,
    asimaq_fecha_fin date,
    asimaq_situacion char(1),
    desp_asimaq_codigo number,
    desp_asimaq_proyecto number,
    desp_asimaq_maquina number,
    desp_asimaq_fecha_inicio date,
    desp_asimaq_fecha_fin date,
    desp_asimaq_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_asi_subren 
  (
    asu_codigo number not null ,
    asu_renglon number not null ,
    asu_subrenglon number not null ,
    asu_situacion char(1) not null ,
    constraint pk_ing_asi_subren primary key (asu_codigo) 
  );
/
create table ADMIN.aud_ing_asi_subren 
  (
    asu_codigo number,
    asu_renglon number,
    asu_subrenglon number,
    asu_situacion char(1),
    desp_asu_codigo number,
    desp_asu_renglon number,
    desp_asu_subrenglon number,
    desp_asu_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_asi_vehiculos 
  (
    asiveh_codigo number not null ,
    asiveh_proyecto number not null ,
    asiveh_vehiculo number not null ,
    asiveh_fecha_inicio date,
    asiveh_fecha_fin date,
    asiveh_situacion char(1) not null ,
    constraint pk_ing_asi_vehiculos primary key (asiveh_codigo) 
  );
/
create table ADMIN.aud_ing_asi_vehiculos 
  (
    asiveh_codigo number,
    asiveh_proyecto number,
    asiveh_vehiculo number,
    asiveh_fecha_inicio date,
    asiveh_fecha_fin date,
    asiveh_situacion char(1),
    desp_asiveh_codigo number not null ,
    desp_asiveh_proyecto number not null ,
    desp_asiveh_vehiculo number not null ,
    desp_asiveh_fecha_inicio date,
    desp_asiveh_fecha_fin date,
    desp_asiveh_situacion char(1) not null ,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_avances 
  (
    avan_codigo number not null ,
    avan_fecha date not null ,
    avan_tramo number not null ,
    avan_subrenglon number not null ,
    avan_avance number,
    avan_medida number,
    constraint pk_ing_avances primary key (avan_codigo) 
  );
/
create table ADMIN.aud_ing_avances 
  (
    avan_codigo number,
    avan_fecha date,
    avan_tramo number,
    avan_subrenglon number,
    avan_avance number,
    avan_medida number,
    desp_avan_codigo number,
    desp_avan_fecha date,
    desp_avan_tramo number,
    desp_avan_subrenglon number,
    desp_avan_avance number,
    desp_avan_medida number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_hist_maquinas 
  (
    hisma_codigo number not null ,
    hisma_maquina number not null ,
    hisma_fecha date not null ,
    hisma_htrab number(8,2) not null ,
    hisma_hhombre number(8,2) not null ,
    hisma_combustible number(8,2) not null ,
    hisma_cph number(8,2) not null ,
    hisma_hinicio number(14,2) not null ,
    hisma_hfinal number(14,2) not null ,
    hisma_proyecto number not null ,
    constraint pk_ing_hist_maquinas primary key (hisma_codigo) 
  );
/
create table ADMIN.aud_ing_hist_maquinas 
  (
    hisma_codigo number,
    hisma_maquina number,
    hisma_fecha date,
    hisma_htrab number(8,2),
    hisma_hhombre number(8,2),
    hisma_combustible number(8,2),
    hisma_cph number(8,2),
    hisma_hinicio number(14,2),
    hisma_hfinal number(14,2),
    hisma_proyecto number,
    desp_hisma_codigo number,
    desp_hisma_maquina number,
    desp_hisma_fecha date,
    desp_hisma_htrab number(8,2),
    desp_hisma_hhombre number(8,2),
    desp_hisma_combustible number(8,2),
    desp_hisma_cph number(8,2),
    desp_hisma_hinicio number(14,2),
    desp_hisma_hfinal number(14,2),
    desp_hisma_proyecto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_hist_vehiculos 
  (
    hisve_codigo number not null ,
    hisve_vehiculo number not null ,
    hisve_fecha date not null ,
    hisve_kreco number(8,2) not null ,
    hisve_htrab number(8,2) not null ,
    hisve_hhombre number(8,2) not null ,
    hisve_combustible number(8,2) not null ,
    hisve_cph number(8,2) not null ,
    hisve_hinicio number(14,2) not null ,
    hisve_hfinal number(14,2) not null ,
    hisve_proyecto number not null ,
    constraint pk_ing_hist_vehiculos primary key (hisve_codigo) 
  );
/
create table ADMIN.aud_ing_hist_vehiculos 
  (
    hisve_codigo number,
    hisve_vehiculo number,
    hisve_fecha date,
    hisve_kreco number(8,2),
    hisve_htrab number(8,2),
    hisve_hhombre number(8,2),
    hisve_combustible number(8,2),
    hisve_cph number(8,2),
    hisve_hinicio number(14,2),
    hisve_hfinal number(14,2),
    hisve_proyecto number,
    desp_hisve_codigo number,
    desp_hisve_vehiculo number,
    desp_hisve_fecha date,
    desp_hisve_kreco number(8,2),
    desp_hisve_htrab number(8,2),
    desp_hisve_hhombre number(8,2),
    desp_hisve_combustible number(8,2),
    desp_hisve_cph number(8,2),
    desp_hisve_hinicio number(14,2),
    desp_hisve_hfinal number(14,2),
    desp_hisve_proyecto number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_renglones 
  (
    ren_codigo number not null ,
    ren_descripcion varchar2(190,65) not null ,
    ren_observacion varchar2(190,65),
    ren_situacion char(1) not null ,
    constraint pk_ing_renglones primary key (ren_codigo) 
  );
/
create table ADMIN.aud_ing_renglones 
  (
    ren_codigo number,
    ren_descripcion varchar2(190,65),
    ren_observacion varchar2(190,65),
    ren_situacion char(1),
    desp_ren_codigo number,
    desp_ren_descripcion varchar2(190,65),
    desp_ren_observacion varchar2(190,65),
    desp_ren_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_subrenglones 
  (
    subr_codigo number not null ,
    subr_descripcion varchar2(190,65) not null ,
    subr_medida char(2) not null ,
    subr_observacion varchar2(190,65),
    subr_situacion char(1) not null ,
    constraint pk_ing_subrenglones primary key (subr_codigo) 
  );
/
create table ADMIN.aud_ing_subrenglones 
  (
    subr_codigo number,
    subr_descripcion varchar2(190,65),
    subr_medida char(2),
    subr_observacion varchar2(190,65),
    subr_situacion char(1),
    desp_subr_codigo number,
    desp_subr_descripcion varchar2(190,65),
    desp_subr_medida char(2),
    desp_subr_observacion varchar2(190,65),
    desp_subr_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_ing_tramos 
  (
    tra_codigo number,
    tra_nombre varchar2(70,10),
    tra_ubicacion char(4),
    tra_direccion varchar2(90,15),
    tra_dimension number,
    tra_medida char(1),
    tra_renglon number,
    tra_fecha_inicio date,
    tra_fecha_fin date,
    tra_situacion char(1),
    tra_proyecto number,
    tra_obser varchar2(200,55),
    des_tra_codigo number,
    desp_tra_nombre varchar2(70,10),
    desp_tra_ubicacion char(4),
    desp_tra_direccion varchar2(90,15),
    desp_tra_dimension number,
    desp_tra_medida char(1),
    desp_tra_renglon number,
    desp_tra_fecha_inicio date,
    desp_tra_fecha_fin date,
    desp_tra_situacion char(1),
    desp_tra_proyecto number,
    desp_tra_obser varchar2(200,55),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sancioness 
  (
    san_codigo number not null ,
    san_descripcion varchar2(255),
    san_clasificacion char(2),
    san_tipo char(2),
    san_cantidad number not null ,
    san_reglamento number,
    san_articulo number,
    san_literal char(1),
    san_numeral number,
    san_inciso char(2)
  );
/
create table ADMIN.estadisticaa 
  (
    est_catalogo number not null ,
    est_grado number not null ,
    est_horas number not null ,
    est_demeritos number not null ,
    est_situacion number,
    constraint pk_estadisticaa primary key (est_catalogo,est_grado) 
  );
/
create table ADMIN.detallee 
  (
    det_catalogo number not null ,
    det_fecha date not null ,
    det_sancion number not null ,
    det_grado number not null ,
    det_dependencia number not null ,
    det_observaciones varchar2(250),
    det_detalle varchar2(1500),
    det_status number,
    constraint pk_detallee primary key (det_catalogo,det_fecha,det_sancion) 
  );
/
create table ADMIN.ing_maq_servicios 
  (
    mser_codigo number not null ,
    mser_maquina number not null ,
    mser_fecha date not null ,
    mser_horometro number not null ,
    mser_situacion char(1) not null ,
    mser_observacion varchar2(200,55),
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
    mser_observacion varchar2(200,55),
    desp_mser_codigo number,
    desp_mser_maquina number,
    desp_mser_fecha date,
    desp_mser_horometro number,
    desp_mser_situacion char(1),
    desp_mser_observacion varchar2(200,55),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_proyecto 
  (
    pro_codigo number not null ,
    pro_nombre varchar2(60,6) not null ,
    pro_ubicacion char(4) not null ,
    pro_fecha_despliegue date not null ,
    pro_fecha_final date,
    pro_fecha_real date,
    pro_personal number not null ,
    pro_latitud number(16) not null ,
    pro_longitud number(16) not null ,
    pro_of_encargado number not null ,
    pro_grado_encargado number not null ,
    pro_num_encargado number not null ,
    pro_situacion char(1) not null ,
    constraint pk_ing_proyecto primary key (pro_codigo) 
  );
/
create table ADMIN.aud_ing_proyecto 
  (
    pro_codigo number,
    pro_nombre varchar2(60,6),
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
    desp_pro_nombre varchar2(60,6),
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_veh_servicios 
  (
    ivser_codigo number not null ,
    ivser_vehiculo number not null ,
    ivser_fecha date not null ,
    ivser_odometro number not null ,
    isver_situacion char(1) not null ,
    isver_observacion varchar2(200,55),
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
    isver_observacion varchar2(200,55),
    desp_ivser_codigo number,
    desp_ivser_vehiculo number,
    desp_ivser_fecha date,
    desp_ivser_odometro number,
    desp_isver_situacion char(1),
    desp_isver_observacion varchar2(200,55),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.historial_relestcivil 
  (
    his_id number not null ,
    his_catalogo number not null ,
    his_religion number not null ,
    his_fecha date not null 
  );
/
create table ADMIN.aud_historial_relestcivil 
  (
    his_id number not null ,
    his_catalogo number,
    his_religion number,
    his_fecha date,
    desp_his_id number,
    desp_his_catalogo number,
    desp_his_religion number,
    desp_his_fecha date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.religion_personal 
  (
    rel_id number not null ,
    rel_catalogo number not null ,
    rel_religion number not null ,
    rel_fecha date not null ,
    rel_situacion number not null 
  );
/
create table ADMIN.aud_religion_personal 
  (
    rel_id number,
    rel_catalogo number,
    rel_religion number,
    rel_fecha date,
    rel_situacion number,
    desp_rel_id number,
    desp_rel_catalogo number,
    desp_rel_religion number,
    desp_rel_fecha date,
    desp_rel_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_factores 
  (
    fac_id number not null ,
    fac_desc_lg varchar2(75,10) not null ,
    fac_situacion number not null ,
    constraint pk_eva_factores primary key (fac_id) 
  );
/
create table ADMIN.aud_eva_factores 
  (
    fac_id number,
    fac_desc_lg varchar2(75,10),
    fac_situacion number,
    desp_fac_id number,
    desp_fac_desc_lg varchar2(75,10),
    desp_fac_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_linea 
  (
    lin_id number not null ,
    lin_desc_lg varchar2(75,10) not null ,
    lin_situacion number not null ,
    constraint pk_eva_linea primary key (lin_id) 
  );
/
create table ADMIN.aud_eva_linea 
  (
    lin_id number,
    lin_desc_lg varchar2(75,10),
    lin_situacion number,
    desp_lin_id number,
    desp_lin_desc_lg varchar2(75,10),
    desp_lin_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.eva_evaluacion 
  (
    eva_id number not null ,
    eva_periodo varchar2(25,10) not null ,
    eva_renglon number not null ,
    eva_linea number not null ,
    eva_dest_actual varchar2(150,25) not null ,
    eva_cat1 number not null ,
    eva_cat2 number not null ,
    eva_cat3 number not null ,
    eva_arma1 number not null ,
    eva_arma2 number not null ,
    eva_arma3 number not null ,
    eva_grado1 number not null ,
    eva_grado2 number not null ,
    eva_grado3 number not null ,
    eva_empleo1 varchar2(125,25) not null ,
    eva_empleo2 varchar2(125,25) not null ,
    eva_empleo3 varchar2(125,25) not null ,
    eva_tiempo1 varchar2(125,25) not null ,
    eva_tiempo2 varchar2(125,25) not null ,
    eva_tiempo3 varchar2(125,25) not null ,
    eva_emp_ant varchar2(125,25) not null ,
    eva_situacion number not null ,
    eva_obs_inm varchar2(255) not null ,
    eva_obs_final varchar2(255) not null ,
    eva_dep number not null ,
    eva_obs varchar2(255) not null ,
    eva_usuario number,
    eva_fecha_aprov TIMESTAMP(0),
    constraint pk_eva_evaluacion primary key (eva_id) 
  );
/
create table ADMIN.eva_notas 
  (
    not_id number not null ,
    not_factores number not null ,
    not_evaluacion number not null ,
    not_preg number not null ,
    not_nota number(3,2) not null ,
    not_tipo number not null ,
    not_fecha date not null ,
    not_usuario number not null ,
    constraint pk_eva_notas primary key (not_id) 
  );
/
create table ADMIN.aud_eva_notas 
  (
    not_id number,
    not_factores number,
    not_evaluacion number,
    not_preg number,
    not_nota number(3,2),
    not_tipo number,
    not_fecha date,
    not_usuario number,
    desp_not_id number,
    desp_not_factores number,
    desp_not_evaluacion number,
    desp_not_preg number,
    desp_not_nota number(3,2),
    desp_not_tipo number,
    desp_not_fecha date,
    desp_not_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_eva_evaluacion 
  (
    eva_usuario number,
    eva_fecha_aprov TIMESTAMP(0),
    eva_id number,
    eva_periodo varchar2(25,10),
    eva_renglon number,
    eva_linea number,
    eva_dest_actual varchar2(150,25),
    eva_cat1 number,
    eva_cat2 number,
    eva_cat3 number,
    eva_arma1 number,
    eva_arma2 number,
    eva_arma3 number,
    eva_grado1 number,
    eva_grado2 number,
    eva_grado3 number,
    eva_empleo1 varchar2(125,25),
    eva_empleo2 varchar2(125,25),
    eva_empleo3 varchar2(125,25),
    eva_tiempo1 varchar2(125,25),
    eva_tiempo2 varchar2(125,25),
    eva_tiempo3 varchar2(125,25),
    eva_emp_ant varchar2(125,25),
    eva_situacion number,
    eva_obs_inm varchar2(255),
    eva_obs_final varchar2(255),
    eva_dep number,
    eva_obs varchar2(255),
    desp_eva_id number,
    desp_eva_periodo varchar2(25,10),
    desp_eva_renglon number,
    desp_eva_linea number,
    desp_eva_dest_actual varchar2(150,25),
    desp_eva_cat1 number,
    desp_eva_cat2 number,
    desp_eva_cat3 number,
    desp_eva_arma1 number,
    desp_eva_arma2 number,
    desp_eva_arma3 number,
    desp_eva_grado1 number,
    desp_eva_grado2 number,
    desp_eva_grado3 number,
    desp_eva_empleo1 varchar2(125,25),
    desp_eva_empleo2 varchar2(125,25),
    desp_eva_empleo3 varchar2(125,25),
    desp_eva_tiempo1 varchar2(125,25),
    desp_eva_tiempo2 varchar2(125,25),
    desp_eva_tiempo3 varchar2(125,25),
    desp_eva_emp_ant varchar2(125,25),
    desp_eva_situacion number,
    desp_eva_obs_inm varchar2(255),
    desp_eva_obs_final varchar2(255),
    desp_eva_dep number,
    desp_eva_obs varchar2(255),
    desp_eva_usuario number,
    desp_eva_fecha_aprov TIMESTAMP(0),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_maquinas 
  (
    maq_codigo number not null ,
    maq_no_asignacion char(20) not null ,
    maq_catalogo number,
    maq_placas varchar2(20,1),
    maq_tipo number not null ,
    maq_marca number not null ,
    maq_modelo varchar2(30,5),
    maq_no_motor varchar2(30,1),
    maq_no_chasis varchar2(30,1),
    maq_tonelaje number,
    maq_color number not null ,
    maq_combustible number not null ,
    maq_estado char(1) not null ,
    maq_situacion char(1) not null ,
    maq_destino char(1) not null ,
    maq_horometro number not null ,
    maq_observaciones varchar2(100,55),
    constraint pk_ing_maquinas primary key (maq_codigo) 
  );
/
create table ADMIN.aud_ing_maquinas 
  (
    maq_codigo number,
    maq_no_asignacion char(20),
    maq_catalogo number,
    maq_placas varchar2(20,1),
    maq_tipo number,
    maq_marca number,
    maq_modelo varchar2(30,5),
    maq_no_motor varchar2(30,1),
    maq_no_chasis varchar2(30,1),
    maq_tonelaje number,
    maq_color number,
    maq_combustible number,
    maq_estado char(1),
    maq_situacion char(1),
    maq_destino char(1),
    maq_horometro number,
    maq_observaciones varchar2(100,55),
    desp_maq_codigo number,
    desp_maq_no_asignacion char(20),
    desp_maq_catalogo number,
    desp_maq_placas varchar2(20,1),
    desp_maq_tipo number,
    desp_maq_marca number,
    desp_maq_modelo varchar2(30,5),
    desp_maq_no_motor varchar2(30,1),
    desp_maq_no_chasis varchar2(30,1),
    desp_maq_tonelaje number,
    desp_maq_color number,
    desp_maq_combustible number,
    desp_maq_estado char(1),
    desp_maq_situacion char(1),
    desp_maq_destino char(1),
    desp_maq_horometro number,
    desp_maq_observaciones varchar2(100,55),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_vehiculos 
  (
    iveh_codigo number not null ,
    iveh_no_asignacion char(20) not null ,
    iveh_catalogo number,
    iveh_placas varchar2(20,1),
    iveh_tipo number not null ,
    iveh_marca number not null ,
    iveh_modelo varchar2(30,5),
    iveh_no_motor varchar2(30,1),
    iveh_no_chasis varchar2(30,1),
    iveh_tonelaje number,
    iveh_color number not null ,
    iveh_combustible number not null ,
    iveh_estado char(1) not null ,
    iveh_situacion char(1) not null ,
    iveh_destino char(1) not null ,
    iveh_odometro number not null ,
    iveh_observaciones varchar2(200,55),
    constraint pk_ing_vehiculos primary key (iveh_codigo) 
  );
/
create table ADMIN.aud_ing_vehiculos 
  (
    iveh_codigo number,
    iveh_no_asignacion char(20),
    iveh_catalogo number,
    iveh_placas varchar2(20,1),
    iveh_tipo number,
    iveh_marca number,
    iveh_modelo varchar2(30,5),
    iveh_no_motor varchar2(30,1),
    iveh_no_chasis varchar2(30,1),
    iveh_tonelaje number,
    iveh_color number,
    iveh_combustible number,
    iveh_estado char(1),
    iveh_situacion char(1),
    iveh_destino char(1),
    iveh_odometro number,
    iveh_observaciones varchar2(200,55),
    desp_iveh_codigo number,
    desp_iveh_no_asignacion char(20),
    desp_iveh_catalogo number,
    desp_iveh_placas varchar2(20,1),
    desp_iveh_tipo number,
    desp_iveh_marca number,
    desp_iveh_modelo varchar2(30,5),
    desp_iveh_no_motor varchar2(30,1),
    desp_iveh_no_chasis varchar2(30,1),
    desp_iveh_tonelaje number,
    desp_iveh_color number,
    desp_iveh_combustible number,
    desp_iveh_estado char(1),
    desp_iveh_situacion char(1),
    desp_iveh_destino char(1),
    desp_iveh_odometro number,
    desp_iveh_observaciones varchar2(200,55),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.res_personal 
  (
    resper_catalogo number not null ,
    resper_dep number not null ,
    resper_plaza number,
    resper_alta date not null ,
    resper_baja date,
    resper_nom1 char(15) not null ,
    resper_nom2 char(15),
    resper_nom3 char(15),
    resper_ape1 char(15) not null ,
    resper_ape2 char(15),
    resper_ape3 char(15),
    resper_grado varchar2(50,10),
    resper_fechnac date not null ,
    resper_dpi char(15),
    resper_fech_dpi date,
    resper_mundpi char(4),
    resper_lunac char(4),
    resper_direccion varchar2(255,100),
    resper_tel1 char(10),
    resper_tel2 char(10),
    resper_dirtrajo varchar2(255,100),
    resper_estado char(10),
    resper_sableer char(2),
    resper_tpantalon char(2),
    resper_tcamisa char(2),
    resper_tbotas char(2),
    resper_tgorra char(2),
    resper_anio_apro char(1) not null ,
    resper_profesion number,
    resper_correo char(20),
    resper_genero char(1),
    resper_sangre char(15),
    resper_situacion char(2) not null ,
    resper_obs varchar2(255,255),
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
    resper_grado varchar2(50,10),
    resper_fechnac date,
    resper_dpi char(15),
    resper_fech_dpi date,
    resper_mundpi char(4),
    resper_lunac char(4),
    resper_direccion varchar2(255,100),
    resper_tel1 char(10),
    resper_tel2 char(10),
    resper_dirtrajo varchar2(255,100),
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
    resper_obs varchar2(255,255),
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
    desp_resper_grado varchar2(50,10),
    desp_resper_fechnac date,
    desp_resper_dpi char(15),
    desp_resper_fech_dpi date,
    desp_resper_mundpi char(4),
    desp_resper_lunac char(4),
    desp_resper_direccion varchar2(255,100),
    desp_resper_tel1 char(10),
    desp_resper_tel2 char(10),
    desp_resper_dirtrajo varchar2(255,100),
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
    desp_resper_obs varchar2(255,255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.respafe 
  (
    not_codigo number not null ,
    not_catalogo number not null ,
    not_fecha date not null ,
    not_tiempalta varchar2(30,10) not null ,
    not_nota char(1) not null ,
    constraint pk_respafe primary key (not_codigo) 
  );
/
create table ADMIN.aud_respafe 
  (
    not_codigo number,
    not_catalogo number,
    not_fecha date,
    not_tiempalta varchar2(30,10),
    not_nota char(1),
    desp_not_codigo number,
    desp_not_catalogo number,
    desp_not_fecha date,
    desp_not_tiempalta varchar2(30,10),
    desp_not_nota char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.resascensos 
  (
    asc_codigo number not null ,
    asc_catalogo number not null ,
    asc_fech date not null ,
    asc_grado varchar2(50,50) not null ,
    constraint pk_resascensos primary key (asc_codigo) 
  );
/
create table ADMIN.aud_resascensos 
  (
    asc_codigo number,
    asc_catalogo number,
    asc_fech date,
    asc_grado varchar2(50,50),
    desp_asc_codigo number,
    desp_asc_catalogo number,
    desp_asc_fech date,
    desp_asc_grado varchar2(50,50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.resdfam 
  (
    resfam_codigo number not null ,
    resfam_catalogo number not null ,
    resfam_nom1 char(15) not null ,
    resfam_nom2 char(15),
    resfam_ape1 char(15) not null ,
    resfam_ape2 char(15),
    resfam_parentesco number not null ,
    resfam_genero char(1) not null ,
    resfam_direccion varchar2(255),
    resfam_telefono char(8) not null ,
    resfam_emergencia char(8),
    constraint pk_resdfam primary key (resfam_codigo) 
  );
/
create table ADMIN.aud_resdfam 
  (
    resfam_codigo number,
    resfam_catalogo number,
    resfam_nom1 char(15),
    resfam_nom2 char(15),
    resfam_ape1 char(15),
    resfam_ape2 char(15),
    resfam_parentesco number,
    resfam_genero char(1),
    resfam_direccion varchar2(255),
    resfam_telefono char(8),
    resfam_emergencia char(8),
    desp_resfam_codigo number,
    desp_resfam_catalogo number,
    desp_resfam_nom1 char(15),
    desp_resfam_nom2 char(15),
    desp_resfam_ape1 char(15),
    desp_resfam_ape2 char(15),
    desp_resfam_parentesco number,
    desp_resfam_genero char(1),
    desp_resfam_direccion varchar2(255),
    desp_resfam_telefono char(8),
    desp_resfam_emergencia char(8),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.resorg 
  (
    resorg_plaza number not null ,
    resorg_dependencia number,
    resorg_descripcion varchar2(100,50),
    resorg_situacion char(1),
    resorg_fecha_mod date,
    constraint pk_resorg primary key (resorg_plaza) 
  );
/
create table ADMIN.aud_resorg 
  (
    resorg_plaza number,
    resorg_dependencia number,
    resorg_descripcion varchar2(100,50),
    resorg_situacion char(1),
    resorg_fecha_mod date,
    desp_resorg_plaza number,
    desp_resorg_dependencia number,
    desp_resorg_descripcion varchar2(100,50),
    desp_resorg_situacion char(1),
    desp_resorg_fecha_mod date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.dep_reservas 
  (
    deprr_clave number,
    deprr_nombre varchar2(50,5),
    constraint pk_dep_reservas primary key (deprr_clave) 
  );
/
create table ADMIN.aud_dep_reservas 
  (
    deprr_clave number,
    deprr_nombre varchar2(50,5),
    desp_deprr_clave number,
    desp_deprr_nombre varchar2(50,5),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.ing_tramos 
  (
    tra_codigo number not null ,
    tra_nombre varchar2(190,60) not null ,
    tra_ubicacion char(4) not null ,
    tra_direccion varchar2(190,60),
    tra_dimension number,
    tra_medida char(1),
    tra_renglon number not null ,
    tra_fecha_inicio date,
    tra_fecha_fin date,
    tra_situacion char(1),
    tra_proyecto number not null ,
    tra_obser varchar2(200,55),
    constraint pk_ing_tramos primary key (tra_codigo) 
  );
/
create table ADMIN.bonoextra 
  (
    bon_plaza number not null ,
    bon_clase number not null ,
    bon_cantidad number(16,2) not null ,
    bon_grupo number,
    constraint pk_bonoextra primary key (bon_plaza)  constraint bexplaza
  );
/
create table ADMIN.llamada_atencion 
  (
    id_llamada number not null ,
    no_orden varchar2(45),
    punto_orden varchar2(45),
    no_oficio varchar2(45),
    llamada_atencion varchar2(255) not null ,
    catalogo_impone number not null ,
    grado_impone number not null ,
    arma_impone number not null ,
    dep_impone number not null ,
    plaza_impone number not null ,
    catalogo_sancionado number not null ,
    grado_sancionado number not null ,
    arma_sancionado number not null ,
    dep_sancionado number not null ,
    plaza_sancionado number not null ,
    catalogo_ingresa number not null ,
    grado_ingresa number not null ,
    arma_ingresa number not null ,
    dep_ingresa number not null ,
    plaza_ingresa number not null ,
    fecha_i_sist date not null ,
    fecha_llamada date not null ,
    situacion varchar2(10) not null ,
    extra1 varchar2(1),
    extra2 varchar2(1),
    constraint pk_llamada_atencion primary key (id_llamada) 
  );
/
create table ADMIN.aud_llamada_atencion 
  (
    id_llamada number,
    no_orden varchar2(45),
    punto_orden varchar2(45),
    no_oficio varchar2(45),
    llamada_atencion varchar2(255),
    catalogo_impone number,
    grado_impone number,
    arma_impone number,
    dep_impone number,
    plaza_impone number,
    catalogo_sancionado number,
    grado_sancionado number,
    arma_sancionado number,
    dep_sancionado number,
    plaza_sancionado number,
    catalogo_ingresa number,
    grado_ingresa number,
    arma_ingresa number,
    dep_ingresa number,
    plaza_ingresa number,
    fecha_i_sist date,
    fecha_llamada date,
    situacion varchar2(10),
    extra1 varchar2(1),
    extra2 varchar2(1),
    desp_id_llamada number,
    desp_no_orden varchar2(45),
    desp_punto_orden varchar2(45),
    desp_no_oficio varchar2(45),
    desp_llamada_atencion varchar2(255),
    desp_catalogo_impone number,
    desp_grado_impone number,
    desp_arma_impone number,
    desp_dep_impone number,
    desp_plaza_impone number,
    desp_catalogo_sancionado number,
    desp_grado_sancionado number,
    desp_arma_sancionado number,
    desp_dep_sancionado number,
    desp_plaza_sancionado number,
    desp_catalogo_ingresa number,
    desp_grado_ingresa number,
    desp_arma_ingresa number,
    desp_dep_ingresa number,
    desp_plaza_ingresa number,
    desp_fecha_i_sist date,
    desp_fecha_llamada date,
    desp_situacion varchar2(10),
    desp_extra1 varchar2(1),
    desp_extra2 varchar2(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.llamada_atencion_mod 
  (
    id_llamada number not null ,
    mod_id_llamada number not null ,
    no_orden varchar2(15),
    punto_orden varchar2(10),
    no_oficio varchar2(45),
    llamada_atencion varchar2(255) not null ,
    catalogo_impone number not null ,
    grado_impone number not null ,
    arma_impone number not null ,
    dep_impone number not null ,
    plaza_impone number not null ,
    catalogo_sancionado number not null ,
    grado_sancionado number not null ,
    arma_sancionado number not null ,
    dep_sancionado number not null ,
    plaza_sancionado number not null ,
    catalogo_ingresa number not null ,
    grado_ingresa number not null ,
    arma_ingresa number not null ,
    dep_ingresa number not null ,
    plaza_ingresa number not null ,
    catalogo_mod number,
    grado_mod number,
    arma_mod number,
    dep_mod number,
    plaza_mod number,
    fecha_i_sist date not null ,
    fecha_llamada date not null ,
    fecha_mod date not null ,
    motivo_mod varchar2(45) not null ,
    doc_ref_mod varchar2(45) not null ,
    extra1 varchar2(1),
    extra2 varchar2(1),
    situacion varchar2(10) not null ,
    constraint pk_llamada_atencion_mod primary key (id_llamada,mod_id_llamada) 
  );
/
create table ADMIN.aud_llamada_atencion_mod 
  (
    id_llamada number,
    mod_id_llamada number,
    no_orden varchar2(15),
    punto_orden varchar2(10),
    no_oficio varchar2(45),
    llamada_atencion varchar2(255),
    catalogo_impone number,
    grado_impone number,
    arma_impone number,
    dep_impone number,
    plaza_impone number,
    catalogo_sancionado number,
    grado_sancionado number,
    arma_sancionado number,
    dep_sancionado number,
    plaza_sancionado number,
    catalogo_ingresa number,
    grado_ingresa number,
    arma_ingresa number,
    dep_ingresa number,
    plaza_ingresa number,
    catalogo_mod number,
    grado_mod number,
    arma_mod number,
    dep_mod number,
    plaza_mod number,
    fecha_i_sist date,
    fecha_llamada date,
    fecha_mod date,
    motivo_mod varchar2(45),
    doc_ref_mod varchar2(45),
    extra1 varchar2(1),
    extra2 varchar2(1),
    situacion varchar2(10),
    desp_id_llamada number,
    desp_mod_id_llamada number,
    desp_no_orden varchar2(15),
    desp_punto_orden varchar2(10),
    desp_no_oficio varchar2(45),
    desp_llamada_atencion varchar2(255),
    desp_catalogo_impone number,
    desp_grado_impone number,
    desp_arma_impone number,
    desp_dep_impone number,
    desp_plaza_impone number,
    desp_catalogo_sancionado number,
    desp_grado_sancionado number,
    desp_arma_sancionado number,
    desp_dep_sancionado number,
    desp_plaza_sancionado number,
    desp_catalogo_ingresa number,
    desp_grado_ingresa number,
    desp_arma_ingresa number,
    desp_dep_ingresa number,
    desp_plaza_ingresa number,
    desp_catalogo_mod number,
    desp_grado_mod number,
    desp_arma_mod number,
    desp_dep_mod number,
    desp_plaza_mod number,
    desp_fecha_i_sist date,
    desp_fecha_llamada date,
    desp_fecha_mod date,
    desp_motivo_mod varchar2(45),
    desp_doc_ref_mod varchar2(45),
    desp_extra1 varchar2(1),
    desp_extra2 varchar2(1),
    desp_situacion varchar2(10),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.sanciones 
  (
    san_codigo number not null ,
    san_descripcion varchar2(255),
    san_clasificacion char(2),
    san_tipo char(1),
    san_cantidad number not null ,
    san_reglamento number,
    constraint pk_sancioness primary key (san_codigo)  
  );
/
create table ADMIN.exp_solicitud_detalle 
  (
    sdet_sol_codigo number not null ,
    sdet_sol_dep_llave number not null ,
    sdet_codigo number not null ,
    sdet_tipo_codigo number not null ,
    sdet_uso_codigo number not null ,
    sdet_cantidad number not null ,
    sdet_situacion number not null ,
    constraint pk_exp_solicitud_detalle primary key (sdet_codigo) 
  );
/
create table ADMIN.exp_conocimiento 
  (
    con_dep_llave number not null ,
    con_codigo number not null ,
    con_libro_numero varchar2(255,1) not null ,
    con_libro_folio varchar2(255,1) not null ,
    con_libro_tipo varchar2(255,1) not null ,
    con_libro_conocimiento varchar2(255,1) not null ,
    con_libro_conocimiento_fecha date not null ,
    con_mensaje varchar2(255,1) not null ,
    con_mensaje_fecha date not null ,
    con_entrego_dep_llave number not null ,
    con_entrego_grado number not null ,
    con_entrego_catalogo number not null ,
    con_recibio_dep_llave number not null ,
    con_recibio_grado number not null ,
    con_recibio_catalogo number not null ,
    con_autorizo_dep_llave number not null ,
    con_autorizo_grado number not null ,
    con_autorizo_catalogo number not null ,
    con_situacion number not null ,
    constraint pk_exp_conocimiento primary key (con_dep_llave,con_codigo) 
  );
/
create table ADMIN.exp_solicitud 
  (
    sol_codigo number not null ,
    sol_dep_llave number not null ,
    sol_solicito_dep_llave number,
    sol_solicito_grado number,
    sol_solicito_catalogo number,
    sol_solicito_mensaje varchar2(255,1),
    sol_solicito_fecha TIMESTAMP,
    sol_autorizo_dep_llave number,
    sol_autorizo_grado number,
    sol_autorizo_catalogo number,
    sol_autorizo_mensaje varchar2(255,1),
    sol_autorizo_fecha TIMESTAMP,
    sol_ordeno_dep_llave number,
    sol_ordeno_grado number,
    sol_ordeno_catalogo number,
    sol_ordeno_mensaje varchar2(255,1),
    sol_ordeno_fecha TIMESTAMP,
    sol_pro_codigo number not null ,
    sol_dep_llave2 number not null ,
    sol_situacion number not null ,
    constraint pk_exp_solicitud primary key (sol_codigo,sol_dep_llave) 
  );
/
create table ADMIN.exp_uso 
  (
    uso_codigo number not null ,
    uso_descripcion varchar2(255,1) not null ,
    uso_tipo number not null ,
    uso_situacion number not null ,
    primary key (uso_codigo) 
  );
/
create table ADMIN.exp_tipo 
  (
    tipo_codigo number not null ,
    tipo_descripcion varchar2(255,1) not null ,
    tipo_situacion number not null ,
    constraint pk_exp_uso primary key (tipo_codigo) 
  );
/
create table ADMIN.exp_proyecto 
  (
    pro_codigo number not null ,
    pro_descripcion varchar2(255,1) not null ,
    pro_tipo number not null ,
    pro_situacion number not null ,
    constraint pk_exp_proyecto primary key (pro_codigo) 
  );
/
create table ADMIN.exp_ent_sal 
  (
    es_codigo number not null ,
    es_con_codigo number not null ,
    es_con_dep_llave number not null ,
    es_uso_codigo number not null ,
    es_tipo_codigo number not null ,
    es_cantidad number not null ,
    es_status number not null ,
    es_tipo number not null ,
    es_situacion number not null ,
    constraint pk_exp_ent_sal primary key (es_codigo,es_con_codigo,es_con_dep_llave) 
  );
/
create table ADMIN.control_toe 
  (
    toe_codigo number not null ,
    toe_catalogo number not null ,
    toe_grado number not null ,
    toe_arma number,
    toe_nombre char(75) not null ,
    toe_plaza number not null ,
    toe_dependencia number not null ,
    toe_horaactual datetime hour to minute not null ,
    toe_fecha date not null ,
    toe_depgenero number not null ,
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
    toe_horaactual datetime hour to minute,
    toe_fecha date,
    toe_depgenero number,
    desp_toe_codigo number,
    desp_toe_catalogo number,
    desp_toe_grado number,
    desp_toe_arma number,
    desp_toe_nombre char(75),
    desp_toe_plaza number,
    desp_toe_dependencia number,
    desp_toe_horaactual datetime hour to minute,
    desp_toe_fecha date,
    desp_toe_depgenero number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.religion_segcontalu 
  (
    rel_id number not null ,
    rel_unidad number not null ,
    rel_escuadron number not null ,
    rel_religions number not null ,
    rel_cantidad number not null ,
    rel_fecha date not null ,
    rel_usuario number not null ,
    rel_comando number not null ,
    rel_situacion number not null ,
    constraint pk_religion_segcontalu primary key (rel_unidad,rel_religions,rel_escuadron,rel_comando)  
  );
/
create table ADMIN.aud_religion_segcontalu 
  (
    rel_id number,
    rel_unidad number,
    rel_escuadron number,
    rel_religions number,
    rel_cantidad number,
    rel_fecha date,
    rel_usuario number,
    rel_comando number,
    rel_situacion number,
    desp_rel_id number,
    desp_rel_unidad number,
    desp_rel_escuadron number,
    desp_rel_religions number,
    desp_rel_cantidad number,
    desp_rel_fecha date,
    desp_rel_usuario number,
    desp_rel_comando number,
    desp_rel_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_mdep 
  (
    con_dep_llave number not null ,
    con_dep_desc_lg char(255) not null ,
    con_dep_desc_md char(50) not null ,
    con_dep_desc_ct char(30) not null ,
    con_dep_unidad number not null ,
    con_dep_situacion char(2) not null ,
    con_mdep number,
    constraint pk_con_dep_llave primary key (con_dep_llave)  
  );
/
create table ADMIN.con_unidades 
  (
    uni_codigo number not null ,
    uni_descripcion char(255) not null ,
    uni_situacion char(2) not null ,
    constraint pk_con_unidades primary key (uni_codigo)  
  );
/
create table ADMIN.fmdep 
  (
    dep_llave number not null ,
    dep_desc_lg char(100) not null ,
    dep_desc_md char(35) not null ,
    dep_desc_ct char(15) not null ,
    dep_clase char(1),
    dep_precio char(1),
    dep_ejto char(1),
    constraint pk_fmdep primary key (dep_llave) 
  );
/
create table ADMIN.lmun_ent_sal_restore 
  (
    es_codigo number,
    es_con_codigo number,
    es_con_dep_llave number,
    es_lote_codigo number not null ,
    es_uso_codigo number not null ,
    es_tipo_codigo number not null ,
    es_cal_codigo number not null ,
    es_eslabonada number not null ,
    es_carga number not null ,
    es_cantidad number not null ,
    es_status number not null ,
    es_tipo number not null ,
    es_situacion number not null ,
    constraint pk_lmun_ent_sal_restore primary key (es_codigo,es_con_codigo,es_con_dep_llave) 
  );
/
create table ADMIN.lmun_conocimiento_restore 
  (
    con_codigo number,
    con_dep_llave number,
    con_numero_libro varchar2(255,1) not null ,
    con_folio_libro varchar2(255,1) not null ,
    con_conocimiento_libro varchar2(255,1) not null ,
    con_tipo_libro number not null ,
    con_grado_entrego number not null ,
    con_catalogo_entrego number not null ,
    con_dep_llave_entrego number not null ,
    con_org_plaza_entrego number,
    con_grado_recibio number not null ,
    con_catalogo_recibio number not null ,
    con_dep_llave_recibio number not null ,
    con_org_plaza_recibio number,
    con_grado_autorizo number not null ,
    con_catalogo_autorizo number not null ,
    con_dep_llave_autorizo number not null ,
    con_org_plaza_autorizo number,
    con_mensaje varchar2(255,1) not null ,
    con_fecha_mensaje date not null ,
    con_fecha_conocimiento date not null ,
    con_situacion number not null ,
    constraint pk_lmun_conocimiento_restore primary key (con_codigo,con_dep_llave) 
  );
/
create table ADMIN.dfasig_tabla 
  (
    dfp_plaza number,
    dfp_codigo number,
    dfp_fecha_ini date,
    dfp_cantidad number(16,2),
    constraint pk_dfasig_tabla primary key (dfp_plaza,dfp_codigo) 
  );
/
create table ADMIN.con_area 
  (
    area_id number not null ,
    area_descripcion number not null ,
    area_situacion char(1),
    area_manual number not null ,
    area_extra1 char(250),
    constraint pk_con_area primary key (area_id) 
  );
/
create table ADMIN.aud_con_area 
  (
    area_id number,
    area_descripcion number,
    area_situacion char(1),
    area_manual number,
    area_extra1 char(250),
    desp_area_id number,
    desp_area_descripcion number,
    desp_area_situacion char(1),
    desp_area_manual number,
    desp_area_extra1 char(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_asignacion_plaza 
  (
    asig_id number not null ,
    asig_manual number not null ,
    asig_area number not null ,
    asig_subarea number not null ,
    asig_plaza number not null ,
    constraint pk_con_asignacion_plaza primary key (asig_id) 
  );
/
create table ADMIN.aud_con_asignacion_plaza 
  (
    asig_id number,
    asig_manual number,
    asig_area number,
    asig_subarea number,
    asig_plaza number,
    desp_asig_id number,
    desp_asig_manual number,
    desp_asig_area number,
    desp_asig_subarea number,
    desp_asig_plaza number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_boleta 
  (
    bol_id number not null ,
    bol_dependencia number not null ,
    bol_cat_revisor number,
    bol_gra_revisor number,
    bol_nombre varchar2(255),
    bol_grado varchar2(255),
    bol_empleo varchar2(255),
    bol_cat_comte number,
    bol_gra_comte number,
    bol_contrato number,
    bol_unidad number not null ,
    bol_ejecutora number not null ,
    bol_fe_revision date not null ,
    bol_fe_emision date not null ,
    bol_observaciones varchar2(255),
    bol_situacion char(2),
    constraint pk_con_boleta primary key (bol_id) 
  );
/
create table ADMIN.con_mper_contratos 
  (
    perc_id number not null ,
    perc_dpi char(20) not null ,
    perc_nom1 char(20) not null ,
    perc_nom2 char(20),
    perc_nom3 char(20),
    perc_ape1 char(20) not null ,
    perc_ape2 char(20),
    perc_ape3 char(20),
    perc_direccion char(500) not null ,
    perc_estado_civil char(1) not null ,
    perc_sexo char(1) not null ,
    perc_profesion char(500) not null ,
    perc_departamento char(4) not null ,
    perc_municipio char(4) not null ,
    perc_fech_nac date not null ,
    perc_status char(4) not null ,
    constraint pk_con_mper_contratos primary key (perc_id) 
  );
/
create table ADMIN.aud_con_mper_contratos 
  (
    perc_id number,
    perc_dpi char(20),
    perc_nom1 char(20),
    perc_nom2 char(20),
    perc_nom3 char(20),
    perc_ape1 char(20),
    perc_ape2 char(20),
    perc_ape3 char(20),
    perc_direccion char(500),
    perc_estado_civil char(1),
    perc_sexo char(1),
    perc_profesion char(500),
    perc_departamento char(4),
    perc_municipio char(4),
    perc_fech_nac date,
    perc_status char(4),
    desp_perc_id number,
    desp_perc_dpi char(20),
    desp_perc_nom1 char(20),
    desp_perc_nom2 char(20),
    desp_perc_nom3 char(20),
    desp_perc_ape1 char(20),
    desp_perc_ape2 char(20),
    desp_perc_ape3 char(20),
    desp_perc_direccion char(500),
    desp_perc_estado_civil char(1),
    desp_perc_sexo char(1),
    desp_perc_profesion char(500),
    desp_perc_departamento char(4),
    desp_perc_municipio char(4),
    desp_perc_fech_nac date,
    desp_perc_status char(4),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_contrato 
  (
    con_id number not null ,
    con_num_contrato char(255) not null ,
    con_contratado number not null ,
    con_fech_contrato date not null ,
    con_jur_datos number not null ,
    con_fech_inicio date,
    con_fech_fin date,
    con_horas_trabajo number,
    con_hora_entra datetime hour to minute,
    con_hora_salida datetime hour to minute,
    con_hora_entra2 datetime hour to minute,
    con_hora_salida2 datetime hour to minute,
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
    con_dependencia number not null ,
    con_asignacion number,
    con_ant_asignacion number,
    con_con_modi char(255),
    con_observaciones char(500),
    con_status number not null ,
    constraint pk_con_contrato primary key (con_id) 
  );
/
create table ADMIN.con_desc_area 
  (
    desc_area_id number not null ,
    desc_area_descripcion char(255),
    constraint pk_con_desc_area primary key (desc_area_id) 
  );
/
create table ADMIN.aud_con_desc_area 
  (
    desc_area_id number,
    desc_area_descripcion char(255),
    desp_desc_area_id number,
    desp_desc_area_descripcion char(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_desc_subareas 
  (
    desc_sub_id number not null ,
    desc_sub_descripcion char(255),
    constraint pk_con_desc_subareas primary key (desc_sub_id) 
  );
/
create table ADMIN.aud_con_desc_subareas 
  (
    desc_sub_id number,
    desc_sub_descripcion char(255),
    desp_desc_sub_id number,
    desp_desc_sub_descripcion char(255),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_manual 
  (
    man_id number not null ,
    man_descripcion char(250) not null ,
    man_situacion char(1) not null ,
    man_extra1 char(250),
    constraint pk_con_manual primary key (man_id) 
  );
/
create table ADMIN.aud_con_manual 
  (
    man_id number,
    man_descripcion char(250),
    man_situacion char(1),
    man_extra1 char(250),
    desp_man_id number,
    desp_man_descripcion char(250),
    desp_man_situacion char(1),
    desp_man_extra1 char(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_con_mdep 
  (
    con_dep_llave number,
    con_dep_desc_lg char(255),
    con_dep_desc_md char(50),
    con_dep_desc_ct char(30),
    con_dep_unidad number,
    con_dep_situacion char(2),
    con_mdep number,
    desp_con_dep_llave number,
    desp_con_dep_desc_lg char(255),
    desp_con_dep_desc_md char(50),
    desp_con_dep_desc_ct char(30),
    desp_con_dep_unidad number,
    desp_con_dep_situacion char(2),
    desp_con_mdep number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_minuta 
  (
    min_id number not null ,
    min_descripcion char(200) not null ,
    min_situacion number not null ,
    constraint pk_con_minuta primary key (min_id) 
  );
/
create table ADMIN.aud_con_minuta 
  (
    min_id number,
    min_descripcion char(200),
    min_situacion number,
    desp_min_id number,
    desp_min_descripcion char(200),
    desp_min_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_observaciones 
  (
    obs_id number not null ,
    obs_contrato number not null ,
    obs_depen char(2) not null ,
    obs_obser char(255),
    obs_fecha date not null ,
    obs_salario char(1),
    obs_situacion char(1) not null ,
    obs_usuario number not null ,
    constraint pk_con_observaciones primary key (obs_id) 
  );
/
create table ADMIN.aud_con_observaciones 
  (
    obs_id number,
    obs_contrato number,
    obs_depen char(2),
    obs_obser char(255),
    obs_fecha date,
    obs_salario char(1),
    obs_situacion char(1),
    obs_usuario number,
    desp_obs_id number,
    desp_obs_contrato number,
    desp_obs_depen char(2),
    desp_obs_obser char(255),
    desp_obs_fecha date,
    desp_obs_salario char(1),
    desp_obs_situacion char(1),
    desp_obs_usuario number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_permisos 
  (
    con_per_id number not null ,
    con_per_cat number not null ,
    con_per_dep number not null ,
    con_per_situacion char(2) not null ,
    constraint pk_con_permisos primary key (con_per_id) 
  );
/
create table ADMIN.aud_con_permisos 
  (
    con_per_id number,
    con_per_cat number,
    con_per_dep number,
    con_per_situacion char(2),
    desp_con_per_id number,
    desp_con_per_cat number,
    desp_con_per_dep number,
    desp_con_per_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_plaza 
  (
    plaza_id number not null ,
    plaza_descripcion char(255) not null ,
    plaza_situacion char(1),
    plaza_area number not null ,
    plaza_extra1 char(250),
    constraint pk_con_plaza primary key (plaza_id) 
  );
/
create table ADMIN.aud_con_plaza 
  (
    plaza_id number,
    plaza_descripcion char(255),
    plaza_situacion char(1),
    plaza_area number,
    plaza_extra1 char(250),
    desp_plaza_id number,
    desp_plaza_descripcion char(255),
    desp_plaza_situacion char(1),
    desp_plaza_area number,
    desp_plaza_extra1 char(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_seguimiento 
  (
    seg_id number not null ,
    seg_contrato number not null ,
    seg_ubicacion char(1) not null ,
    seg_fecha date not null ,
    seg_motivo char(1) not null ,
    seg_catalogo number,
    constraint pk_con_seguimiento primary key (seg_id) 
  );
/
create table ADMIN.aud_con_seguimiento 
  (
    seg_id number,
    seg_contrato number,
    seg_ubicacion char(1),
    seg_fecha date,
    seg_motivo char(1),
    seg_catalogo number,
    desp_seg_id number,
    desp_seg_contrato number,
    desp_seg_ubicacion char(1),
    desp_seg_fecha date,
    desp_seg_motivo char(1),
    desp_seg_catalogo number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cont_solicitud 
  (
    sol_codigo number not null ,
    sol_anio number not null ,
    sol_formulario varchar2(16) not null ,
    sol_dependencia number not null ,
    sol_fec_solicit date not null ,
    sol_justific varchar2(250) not null ,
    sol_oficio varchar2(100),
    constraint pk_cont_solicitud primary key (sol_codigo,sol_anio) 
  );
/
create table ADMIN.aud_cont_solicitud 
  (
    sol_codigo number,
    sol_anio number,
    sol_formulario varchar2(16),
    sol_dependencia number,
    sol_fec_solicit date,
    sol_justific varchar2(250),
    sol_oficio varchar2(100),
    desp_sol_codigo number,
    desp_sol_anio number,
    desp_sol_formulario varchar2(16),
    desp_sol_dependencia number,
    desp_sol_fec_solicit date,
    desp_sol_justific varchar2(250),
    desp_sol_oficio varchar2(100),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_subareas 
  (
    sub_id number not null ,
    sub_descripcion number not null ,
    sub_sueldobase number(16,2) not null ,
    sub_bono66 number(16,2),
    sub_situacion char(1),
    sub_area number not null ,
    sub_dependencia number not null ,
    sub_extra2 char(250),
    constraint pk_con_subareas primary key (sub_id) 
  );
/
create table ADMIN.aud_con_subareas 
  (
    sub_id number,
    sub_descripcion number,
    sub_sueldobase number(16,2),
    sub_bono66 number(16,2),
    sub_situacion char(1),
    sub_area number,
    sub_dependencia number,
    sub_extra2 char(250),
    desp_sub_id number,
    desp_sub_descripcion number,
    desp_sub_sueldobase number(16,2),
    desp_sub_bono66 number(16,2),
    desp_sub_situacion char(1),
    desp_sub_area number,
    desp_sub_dependencia number,
    desp_sub_extra2 char(250),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_usuarios 
  (
    usu_id number not null ,
    usu_usuario number not null ,
    usu_pass char(10) not null ,
    usu_nom1 char(15) not null ,
    usu_nom2 char(15),
    usu_ape1 char(15) not null ,
    usu_ape2 char(15),
    usu_ape3 char(15),
    usu_grado char(25) not null ,
    usu_empleo char(25) not null ,
    usu_dependencia number not null ,
    usu_situacion char(1) not null ,
    constraint uq_usuario unique (usu_usuario) ,
    constraint uq_pass unique (usu_pass) ,
    constraint pk_con_usuarios primary key (usu_id) 
  );
/
create table ADMIN.aud_con_usuarios 
  (
    usu_id number,
    usu_usuario number,
    usu_pass char(10),
    usu_nom1 char(15),
    usu_nom2 char(15),
    usu_ape1 char(15),
    usu_ape2 char(15),
    usu_ape3 char(15),
    usu_grado char(25),
    usu_empleo char(25),
    usu_dependencia number,
    usu_situacion char(1),
    desp_usu_id number,
    desp_usu_usuario number,
    desp_usu_pass char(10),
    desp_usu_nom1 char(15),
    desp_usu_nom2 char(15),
    desp_usu_ape1 char(15),
    desp_usu_ape2 char(15),
    desp_usu_ape3 char(15),
    desp_usu_grado char(25),
    desp_usu_empleo char(25),
    desp_usu_dependencia number,
    desp_usu_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_con_unidades 
  (
    uni_codigo number,
    uni_descripcion char(255),
    uni_situacion char(2),
    desp_uni_codigo number,
    desp_uni_descripcion char(255),
    desp_uni_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_juridico 
  (
    jur_id number not null ,
    jur_cat_vice number not null ,
    jur_gra_vice number not null ,
    jur_cat_ministro number not null ,
    jur_gra_ministro number not null ,
    jur_nom_ministro char(500) not null ,
    jur_nom_vice char(500) not null ,
    jur_no_acuer_gub char(20) not null ,
    jur_fecha_acuer_gub date not null ,
    jur_cert_acta char(20) not null ,
    jur_fech_acta date not null ,
    jur_ofi_no char(200) not null ,
    jur_fech_ofi date not null ,
    jur_status number,
    constraint pk_con_juridico primary key (jur_id) 
  );
/
create table ADMIN.aud_con_juridico 
  (
    jur_id number,
    jur_cat_vice number,
    jur_gra_vice number,
    jur_cat_ministro number,
    jur_gra_ministro number,
    jur_nom_ministro char(500),
    jur_nom_vice char(500),
    jur_no_acuer_gub char(20),
    jur_fecha_acuer_gub date,
    jur_cert_acta char(20),
    jur_fech_acta date,
    jur_ofi_no char(200),
    jur_fech_ofi date,
    jur_status number,
    desp_jur_id number,
    desp_jur_cat_vice number,
    desp_jur_gra_vice number,
    desp_jur_cat_ministro number,
    desp_jur_gra_ministro number,
    desp_jur_nom_ministro char(500),
    desp_jur_nom_vice char(500),
    desp_jur_no_acuer_gub char(20),
    desp_jur_fecha_acuer_gub date,
    desp_jur_cert_acta char(20),
    desp_jur_fech_acta date,
    desp_jur_ofi_no char(200),
    desp_jur_fech_ofi date,
    desp_jur_status number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_solicitud 
  (
    sol_codigo number,
    sol_anio number,
    sol_formulario varchar2(16),
    sol_dependencia number,
    sol_fec_solicit date,
    sol_justific varchar2(250),
    sol_oficio varchar2(100),
    constraint pk_con_solicitud primary key (sol_codigo,sol_anio)  
  );
/
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
    con_hora_entra datetime hour to minute,
    con_hora_salida datetime hour to minute,
    con_hora_entra2 datetime hour to minute,
    con_hora_salida2 datetime hour to minute,
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
    desp_con_hora_entra datetime hour to minute,
    desp_con_hora_salida datetime hour to minute,
    desp_con_hora_entra2 datetime hour to minute,
    desp_con_hora_salida2 datetime hour to minute,
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_con_boleta 
  (
    bol_id number,
    bol_dependencia number,
    bol_cat_revisor number,
    bol_gra_revisor number,
    bol_nombre varchar2(255),
    bol_grado varchar2(255),
    bol_empleo varchar2(255),
    bol_cat_comte number,
    bol_gra_comte number,
    bol_contrato number,
    bol_unidad number,
    bol_ejecutora number,
    bol_fe_revision date,
    bol_fe_emision date,
    bol_observaciones varchar2(255),
    bol_situacion char(2),
    desp_bol_id number,
    desp_bol_dependencia number,
    desp_bol_cat_revisor number,
    desp_bol_gra_revisor number,
    desp_bol_nombre varchar2(255),
    desp_bol_grado varchar2(255),
    desp_bol_empleo varchar2(255),
    desp_bol_cat_comte number,
    desp_bol_gra_comte number,
    desp_bol_contrato number,
    desp_bol_unidad number,
    desp_bol_ejecutora number,
    desp_bol_fe_revision date,
    desp_bol_fe_emision date,
    desp_bol_observaciones varchar2(255),
    desp_bol_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.con_ef_personal 
  (
    ef_id number not null ,
    ef_disponibles number,
    ef_vacantes number,
    ef_unidadejecutora number not null ,
    ef_fechaactual date,
    ef_fechaef date,
    ef_total number not null ,
    ef_situacion varchar2(1),
    ef_extra varchar2(1),
    constraint pk_con_ef_personal primary key (ef_id) 
  );
/
create table ADMIN.aud_con_ef_personal 
  (
    ef_id number,
    ef_disponibles number,
    ef_vacantes number,
    ef_unidadejecutora number,
    ef_fechaactual date,
    ef_fechaef date,
    ef_total number,
    ef_situacion varchar2(1),
    ef_extra varchar2(1),
    desp_ef_id number,
    desp_ef_disponibles number,
    desp_ef_vacantes number,
    desp_ef_unidadejecutora number,
    desp_ef_fechaactual date,
    desp_ef_fechaef date,
    desp_ef_total number,
    desp_ef_situacion varchar2(1),
    desp_ef_extra varchar2(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.arco_paridera 
  (
    codigo number not null ,
    cat_paridera number not null ,
    constraint pk_arco_paridera primary key (codigo)  
  );
/
create table ADMIN.cci_est_destino 
  (
    est_des_codigo number not null ,
    est_des_descripcion char(25) not null ,
    constraint pk_cci_est_destino primary key (est_des_codigo) 
  );
/
create table ADMIN.aud_cci_est_destino 
  (
    est_des_codigo number,
    est_des_descripcion char(25),
    desp_est_des_codigo number,
    desp_est_des_descripcion char(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cci_est_fuerza 
  (
    est_codigo number not null ,
    est_catalogo number not null ,
    est_jerarquia char(10) not null ,
    est_clase number not null ,
    est_codigo_grado number not null ,
    est_grado char(40) not null ,
    est_nombres char(60) not null ,
    est_destino number not null ,
    est_observacion char(40),
    est_situacion char(1) not null ,
    constraint pk_cci_est_fuerza primary key (est_codigo) 
  );
/
create table ADMIN.aud_cci_est_fuerza 
  (
    est_codigo number,
    est_catalogo number,
    est_jerarquia char(10),
    est_clase number,
    est_codigo_grado number,
    est_grado char(40),
    est_nombres char(60),
    est_destino number,
    est_observacion char(40),
    est_situacion char(1),
    desp_est_codigo number,
    desp_est_catalogo number,
    desp_est_jerarquia char(10),
    desp_est_clase number,
    desp_est_codigo_grado number,
    desp_est_grado char(40),
    desp_est_nombres char(60),
    desp_est_destino number,
    desp_est_observacion char(40),
    desp_est_situacion char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.cci_novedades 
  (
    novcci_codigo number not null ,
    novcci_fecha TIMESTAMP(0) not null ,
    novcci_novedad char(650) not null ,
    novcci_sitacion number not null ,
    constraint pk_cci_novedades primary key (novcci_codigo) 
  );
/
create table ADMIN.aud_cci_novedades 
  (
    novcci_codigo number,
    novcci_fecha TIMESTAMP(0),
    novcci_novedad char(650),
    novcci_sitacion number,
    desp_novcci_codigo number,
    desp_novcci_fecha number,
    desp_novcci_novedad char(650),
    desp_novcci_sitacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_t_cisterna 
  (
    cis_id_t number not null ,
    cis_desc varchar2(25),
    cis_cap number,
    constraint pk_vlh_t_cisterna primary key (cis_id_t) 
  );
/
create table ADMIN.vlh_t_vehiculo 
  (
    tve_id number not null ,
    tve_desc varchar2(35) not null ,
    tve_situacion number,
    constraint pk_vlh_t_vehiculo primary key (tve_id) 
  );
/
create table ADMIN.vlh_llantas 
  (
    lla_id number not null ,
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
    lla_tipo varchar2(255,255),
    constraint pk_vlh_llantas primary key (lla_id) 
  );
/
create table ADMIN.vlh_marcas 
  (
    mar_id number not null ,
    mar_desc varchar2(30) not null ,
   constraint pk_vlh_marcas  primary key (mar_id) 
  );
/
create table ADMIN.vlh_hidraulico_fag 
  (
    hid_id_fag number not null ,
    hid_tipo_fag varchar2(15),
    hid_cant_fag number,
    constraint pk_vlh_hidraulico_fag primary key (hid_id_fag) 
  );
/
create table ADMIN.vlh_linea 
  (
    lin_id number not null ,
    lin_desc varchar2(30) not null ,
    lin_marca number not null ,
    constraint pk_vlh_linea primary key (lin_id) 
  );
/
create table ADMIN.vlh_aceite_fag 
  (
    ace_id_fag number not null ,
    ace_tipo_fag varchar2(15),
    ace_cant_fag number,
    constraint pk_vlh_aceite_fag primary key (ace_id_fag) 
  );
/
create table ADMIN.aud_vlh_aceite_fag 
  (
    ace_id_fag number,
    ace_tipo_fag varchar2(15),
    ace_cant_fag number,
    desp_ace_id_fag number,
    desp_ace_tipo_fag varchar2(15),
    desp_ace_cant_fag number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_aeronave 
  (
    aer_id number not null ,
    aer_desc varchar2(25) not null ,
    constraint pk_ vlh_aeronave primary key (aer_id) 
  );
/
create table ADMIN.aud_vlh_aeronave 
  (
    aer_id number,
    aer_desc varchar2(25),
    desp_aer_id number,
    desp_aer_desc varchar2(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_apu 
  (
    apu_id number not null ,
    apu_tipo_aceite varchar2(15),
    apu_tipo_conbustible varchar2(15),
    apu_capacidad number,
    apu_serie varchar2(25),
    constraint pk_vlh_apu primary key (apu_id) 
  );
/
create table ADMIN.aud_vlh_apu 
  (
    apu_id number,
    apu_tipo_aceite varchar2(15),
    apu_tipo_conbustible varchar2(15),
    apu_capacidad number,
    apu_serie varchar2(25),
    desp_apu_id number,
    desp_apu_tipo_aceite varchar2(15),
    desp_apu_tipo_conbustible varchar2(15),
    desp_apu_capacidad number,
    desp_apu_serie varchar2(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_baterias 
  (
    bat_id_fag number not null ,
    bat_cant_fag number,
    bat_tipo_fag varchar2(35),
    bat_amperaje_fag number,
    bat_voltaje_fag number,
    bat_cant_placas_fag number,
    constraint pk_vlh_baterias primary key (bat_id_fag) 
  );
/
create table ADMIN.aud_vlh_baterias 
  (
    bat_id_fag number,
    bat_cant_fag number,
    bat_tipo_fag varchar2(35),
    bat_amperaje_fag number,
    bat_voltaje_fag number,
    bat_cant_placas_fag number,
    desp_bat_id_fag number,
    desp_bat_cant_fag number,
    desp_bat_tipo_fag varchar2(35),
    desp_bat_amperaje_fag number,
    desp_bat_voltaje_fag number,
    desp_bat_cant_placas_fag number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_t_cisterna 
  (
    cis_id_t number,
    cis_desc varchar2(25),
    cis_cap number,
    desp_cis_id_t number,
    desp_cis_desc varchar2(25),
    desp_cis_cap number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_t_vehiculo 
  (
    tve_id number,
    tve_desc varchar2(50),
    tve_situacion number,
    desp_tve_id number,
    desp_tve_desc varchar2(50),
    desp_tve_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_tipo_carroceria 
  (
    tca_id_t number not null ,
    tca_marca varchar2(50),
    tca_estado number,
    tca_material varchar2(25),
    tca_lona varchar2(15),
    constraint pk_vlh_tipo_carroceria primary key (tca_id_t) 
  );
/
create table ADMIN.aud_vlh_tipo_carroceria 
  (
    tca_id_t number,
    tca_marca varchar2(50),
    tca_estado number,
    tca_material varchar2(25),
    tca_lona varchar2(15),
    desp_tca_id_t number,
    desp_tca_marca varchar2(50),
    desp_tca_estado number,
    desp_tca_material varchar2(25),
    desp_tca_lona varchar2(15),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_tipo_combustible 
  (
    com_id number not null ,
    com_desc varchar2(50) not null ,
    com_aceite varchar2(50),
    com_cant_mezcla_aceite number,
    constraint pk_vlh_tipo_combustible primary key (com_id) 
  );
/
create table ADMIN.aud_vlh_tipo_combustible 
  (
    com_id number,
    com_desc varchar2(50),
    com_aceite varchar2(50),
    com_cant_mezcla_aceite number,
    desp_com_id number,
    desp_com_desc varchar2(50),
    desp_com_aceite varchar2(50),
    desp_com_cant_mezcla_aceite number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_traccion_vehiculo 
  (
    trc_id_vehiculo number not null ,
    trc_desc_vehiculo varchar2(60) not null ,
    constraint pk_vlh_traccion_vehiculo primary key (trc_id_vehiculo) 
  );
/
create table ADMIN.aud_vlh_traccion_vehiculo 
  (
    trc_id_vehiculo number,
    trc_desc_vehiculo varchar2(60),
    desp_trc_id_vehiculo number,
    desp_trc_desc_vehiculo varchar2(60),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_transmision_vehiculo 
  (
    tra_id_vehiculo number not null ,
    tra_desc_vehiculo varchar2(50) not null ,
    tra_cant_velocidades number,
    constraint pk_vlh_transmision_vehiculo primary key (tra_id_vehiculo) 
  );
/
create table ADMIN.aud_vlh_transmision_vehiculo 
  (
    tra_id_vehiculo number,
    tra_desc_vehiculo varchar2(50),
    tra_cant_velocidades number,
    desp_tra_id_vehiculo number,
    desp_tra_desc_vehiculo varchar2(50),
    desp_tra_cant_velocidades number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_validaciones 
  (
    val_id number not null ,
    val_catalogo number,
    val_revisor number,
    val_comte number,
    val_fecha date,
    val_situacion varchar2(1),
    val_dependencia number,
    val_fecha_emision date,
    constraint pk_vlh_validaciones primary key (val_id) 
  );
/
create table ADMIN.aud_vlh_validaciones 
  (
    val_id number,
    val_catalogo number,
    val_revisor number,
    val_comte number,
    val_fecha date,
    val_situacion varchar2(1),
    val_dependencia number,
    val_fecha_emision date,
    desp_val_id number,
    desp_val_catalogo number,
    desp_val_revisor number,
    desp_val_comte number,
    desp_val_fecha date,
    desp_val_situacion varchar2(1),
    desp_val_dependencia number,
    desp_val_fecha_emision date,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_permisos 
  (
    vlh_per_id number not null ,
    vlh_per_cat number not null ,
    vlh_per_dep number not null ,
    vlh_per_situacion char(2) not null ,
    constraint pk_vlh_permisos primary key (vlh_per_id) 
  );
/
create table ADMIN.aud_vlh_permisos 
  (
    vlh_per_id number,
    vlh_per_cat number,
    vlh_per_dep number,
    vlh_per_situacion char(2),
    desp_vlh_per_id number,
    desp_vlh_per_cat number,
    desp_vlh_per_dep number,
    desp_vlh_per_situacion char(2),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_hidraulico_fag 
  (
    hid_id_fag number,
    hid_tipo_fag varchar2(50),
    hid_cant_fag number,
    desp_hid_id_fag number,
    desp_hid_tipo_fag varchar2(50),
    desp_hid_cant_fag number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_marcas 
  (
    mar_id number,
    mar_desc varchar2(50),
    desp_mar_id number,
    desp_mar_desc varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_linea 
  (
    lin_id number,
    lin_desc varchar2(50),
    lin_marca number,
    desp_lin_id number,
    desp_lin_desc varchar2(50),
    desp_lin_marca number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_llantas 
  (
    lla_id number,
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
    lla_tipo varchar2(25),
    desp_lla_id number,
    desp_lla_cantidad_delanteras number,
    desp_lla_cantidad_traseras number,
    desp_lla_rin_delanteras number(10,2),
    desp_lla_rin_traseras number(10,2),
    desp_lla_ancho_delanteras number(10,2),
    desp_lla_ancho_traseras number(10,2),
    desp_lla_altura_delanteras number(10,2),
    desp_lla_altura_traseras number(10,2),
    desp_lla_psi_delanteras number(10,2),
    desp_lla_psi_traseras number(10,2),
    desp_lla_tipo varchar2(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_motor_fag 
  (
    mot_id_fag number not null ,
    mot_cant_fag number,
    mot_tipo_fag varchar2(50),
    mot_marca_fag varchar2(50),
    mot_modelo_fag varchar2(50),
    mot_serie_fag varchar2(50),
    constraint pk_vlh_motor_fag primary key (mot_id_fag) 
  );
/
create table ADMIN.aud_vlh_motor_fag 
  (
    mot_id_fag number,
    mot_cant_fag number,
    mot_tipo_fag varchar2(50),
    mot_marca_fag varchar2(50),
    mot_modelo_fag varchar2(50),
    mot_serie_fag varchar2(50),
    desp_mot_id_fag number,
    desp_mot_cant_fag number,
    desp_mot_tipo_fag varchar2(50),
    desp_mot_marca_fag varchar2(50),
    desp_mot_modelo_fag varchar2(50),
    desp_mot_serie_fag varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_neumaticos_fag 
  (
    neu_id_neumaticos_fag number not null ,
    neu_cantidad_principal number,
    neu_especificaciones_principal varchar2(80),
    neu_cantidad_nariz number,
    neu_especificaciones_nariz varchar2(80),
    neu_cantidad_cola number,
    neu_especificaciones_cola varchar2(80),
    neu_tipo_gas varchar2(25),
    constraint pk_vlh_neumaticos_fag primary key (neu_id_neumaticos_fag) 
  );
/
create table ADMIN.aud_vlh_neumaticos_fag 
  (
    neu_id_neumaticos_fag number,
    neu_cantidad_principal number,
    neu_especificaciones_principal varchar2(80),
    neu_cantidad_nariz number,
    neu_especificaciones_nariz varchar2(80),
    neu_cantidad_cola number,
    neu_especificaciones_cola varchar2(80),
    neu_tipo_gas varchar2(25),
    desp_neu_id_neumaticos_fag number,
    desp_neu_cantidad_principal number,
    desp_neu_especificaciones_principal varchar2(80),
    desp_neu_cantidad_nariz number,
    desp_neu_especificaciones_nariz varchar2(80),
    desp_neu_cantidad_cola number,
    desp_neu_especificaciones_cola varchar2(80),
    desp_neu_tipo_gas varchar2(25),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_origen_vehiculo 
  (
    vlh_id_vehiculo number not null ,
    vlh_desc_vehiculo varchar2(50) not null ,
    constraint pk_vlh_origen_vehiculo primary key (vlh_id_vehiculo) 
  );
/
create table ADMIN.aud_vlh_origen_vehiculo 
  (
    vlh_id_vehiculo number,
    vlh_desc_vehiculo varchar2(50),
    desp_vlh_id_vehiculo number,
    desp_vlh_desc_vehiculo varchar2(50),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_estado_vehiculo 
  (
    est_id_estado number not null ,
    est_descripcion varchar2(30) not null ,
    constraint pk_vlh_estado_vehiculo primary key (est_id_estado) 
  );
/
create table ADMIN.aud_vlh_estado_vehiculo 
  (
    est_id_estado number,
    est_descripcion varchar2(30),
    desp_est_id_estado number,
    desp_est_descripcion varchar2(30),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_combustible_fag 
  (
    comb_id_fag number not null ,
    comb_tipo_fag varchar2(20),
    comb_cap_tanques number,
    comb_cap_tanq_externos number,
    constraint pk_vlh_combustible_fag primary key (comb_id_fag) 
  );
/
create table ADMIN.aud_vlh_combustible_fag 
  (
    comb_id_fag number,
    comb_tipo_fag varchar2(20),
    comb_cap_tanques number,
    comb_cap_tanq_externos number,
    desp_comb_id_fag number,
    desp_comb_tipo_fag varchar2(20),
    desp_comb_cap_tanques number,
    desp_comb_cap_tanq_externos number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_cons_comb_vehi 
  (
    con_id_comb number not null ,
    con_cap_galones number not null ,
    con_hrs number,
    con_gls number,
    con_odometro number,
    constraint pk_vlh_cons_comb_vehi primary key (con_id_comb) 
  );
/
create table ADMIN.aud_vlh_cons_comb_vehi 
  (
    con_id_comb number,
    con_cap_galones number,
    con_hrs number,
    con_gls number,
    con_odometro number,
    desp_con_id_comb number,
    desp_con_cap_galones number,
    desp_con_hrs number,
    desp_con_gls number,
    desp_con_odometro number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_cons_lubri_vehi 
  (
    con_id_lub number not null ,
    con_tipo_aceite_motor varchar2(35),
    con_cap_aceite_motor number,
    con_tipo_aceite_hidraulico varchar2(35),
    con_cap_aceite_hidraulico number,
    con_tipo_aceite_transmision varchar2(35),
    con_cap_aceite_transmision number,
    con_aceite_motor varchar2(35),
    constraint pk_vlh_cons_lubri_vehi primary key (con_id_lub) 
  );
/
create table ADMIN.aud_vlh_cons_lubri_vehi 
  (
    con_id_lub number,
    con_tipo_aceite_motor varchar2(35),
    con_cap_aceite_motor number,
    con_tipo_aceite_hidraulico varchar2(35),
    con_cap_aceite_hidraulico number,
    con_tipo_aceite_transmision varchar2(35),
    con_cap_aceite_transmision number,
    con_aceite_motor varchar2(35),
    desp_con_id_lub number,
    desp_con_tipo_aceite_motor varchar2(35),
    desp_con_cap_aceite_motor number,
    desp_con_tipo_aceite_hidraulico varchar2(35),
    desp_con_cap_aceite_hidraulico number,
    desp_con_tipo_aceite_transmision varchar2(35),
    desp_con_cap_aceite_transmision number,
    desp_con_aceite_motor varchar2(35),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_destino 
  (
    des_id number not null ,
    des_desc char(40),
    constraint pk_vlh_destino primary key (des_id) 
  );
/
create table ADMIN.aud_vlh_destino 
  (
    des_id number,
    des_desc char(40),
    desp_des_id number,
    desp_des_desc char(40),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_carretones 
  (
    carr_id number not null ,
    carr_catalogo number,
    carr_adquisicion number,
    carr_observacion varchar2(250,250),
    carr_ubicacion number not null ,
    carr_dependencia number not null ,
    carr_estado number not null ,
    carr_llantas number,
    carr_cap_toneladas number,
    carr_tipo_cisterna varchar2(35),
    carr_cap_cisterna number,
    carr_situacion number not null ,
    constraint pk_vlh_carretones primary key (carr_id) 
  );
/
create table ADMIN.vlh_equipo_terrestre_fag 
  (
    equ_id number not null ,
    equ_catalogo number,
    equ_matricula number,
    equ_tipo number,
    equ_ubicacion number,
    equ_dependencia number,
    equ_adquisicion number,
    equ_modelo varchar2(50),
    equ_serie varchar2(50),
    equ_fabricacion number,
    equ_proposito varchar2(20),
    equ_capacidad number,
    equ_motor number,
    equ_neumatico number,
    equ_tipo_comb varchar2(25),
    equ_cap_comb number,
    equ_aceite varchar2(30),
    equ_cant_aceite number,
    equ_baterias number,
    equ_estado varchar2(10) not null ,
    equ_situacion number,
    constraint pk_vlh_equipo_terrestre_fag primary key (equ_id) 
  );
/
create table ADMIN.vlh_embarcacion 
  (
    emb_id_embarcacion number not null ,
    emb_catalogo number,
    emb_matricula varchar2(50),
    emb_nombre varchar2(50),
    emb_indicativo varchar2(50),
    emb_linea varchar2(50),
    emb_modelo number,
    emb_color varchar2(50),
    emb_origen number,
    emb_ubicacion number,
    emb_observaciones varchar2(250,250),
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
    emb_marca_motor varchar2(50) not null ,
    emb_modelo_motor varchar2(50),
    emb_situacion number,
    constraint pk_vlh_embarcacion primary key (emb_id_embarcacion) 
  );
/
create table ADMIN.vlh_remolques 
  (
    rem_id number not null ,
    rem_serie varchar2(50),
    rem_catalogo number,
    rem_ubicacion number,
    rem_origen number,
    rem_modelo number,
    rem_asig number,
    rem_dep number,
    rem_estado number,
    rem_cap number,
    rem_ancho number(6,4),
    rem_largo number(6,4),
    rem_sistema varchar2(5),
    rem_tipo_sist varchar2(20),
    rem_estado_sist varchar2(10),
    rem_cap_sist number,
    rem_sist_electrico varchar2(5),
    rem_estado_sist_electrico varchar2(5),
    rem_neumaticos number,
    rem_situacion number,
    constraint pk_vlh_remolques primary key (rem_id) 
  );
/
create table ADMIN.aud_vlh_carretones 
  (
    carr_id number,
    carr_catalogo number,
    carr_adquisicion number,
    carr_observacion varchar2(250,250),
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
    desp_carr_observacion varchar2(250,250),
    desp_carr_ubicacion number,
    desp_carr_dependencia number,
    desp_carr_estado number,
    desp_carr_llantas number,
    desp_carr_cap_toneladas number,
    desp_carr_tipo_cisterna varchar2(35),
    desp_carr_cap_cisterna number,
    desp_carr_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_equipo_terrestre_fag 
  (
    equ_id number,
    equ_catalogo number,
    equ_matricula number,
    equ_tipo number,
    equ_ubicacion number,
    equ_dependencia number,
    equ_adquisicion number,
    equ_modelo varchar2(50),
    equ_serie varchar2(50),
    equ_fabricacion number,
    equ_proposito varchar2(20),
    equ_capacidad number,
    equ_motor number,
    equ_neumatico number,
    equ_tipo_comb varchar2(25),
    equ_cap_comb number,
    equ_aceite varchar2(30),
    equ_cant_aceite number,
    equ_baterias number,
    equ_estado varchar2(10),
    equ_situacion number,
    desp_equ_id number,
    desp_equ_catalogo number,
    desp_equ_matricula number,
    desp_equ_tipo number,
    desp_equ_ubicacion number,
    desp_equ_dependencia number,
    desp_equ_adquisicion number,
    desp_equ_modelo varchar2(50),
    desp_equ_serie varchar2(50),
    desp_equ_fabricacion number,
    desp_equ_proposito varchar2(20),
    desp_equ_capacidad number,
    desp_equ_motor number,
    desp_equ_neumatico number,
    desp_equ_tipo_comb varchar2(25),
    desp_equ_cap_comb number,
    desp_equ_aceite varchar2(30),
    desp_equ_cant_aceite number,
    desp_equ_baterias number,
    desp_equ_estado varchar2(10),
    desp_equ_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
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
    emb_observaciones varchar2(250,250),
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
    desp_emb_observaciones varchar2(250,250),
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_vlh_remolques 
  (
    rem_id number,
    rem_serie varchar2(50),
    rem_catalogo number,
    rem_ubicacion number,
    rem_origen number,
    rem_modelo number,
    rem_asig number,
    rem_dep number,
    rem_estado number,
    rem_cap number,
    rem_ancho number(6,4),
    rem_largo number(6,4),
    rem_sistema varchar2(5),
    rem_tipo_sist varchar2(20),
    rem_estado_sist varchar2(10),
    rem_cap_sist number,
    rem_sist_electrico varchar2(5),
    rem_estado_sist_electrico varchar2(5),
    rem_neumaticos number,
    rem_situacion number,
    desp_rem_id number,
    desp_rem_serie varchar2(50),
    desp_rem_catalogo number,
    desp_rem_ubicacion number,
    desp_rem_origen number,
    desp_rem_modelo number,
    desp_rem_asig number,
    desp_rem_dep number,
    desp_rem_estado number,
    desp_rem_cap number,
    desp_rem_ancho number(6,4),
    desp_rem_largo number(6,4),
    desp_rem_sistema varchar2(5),
    desp_rem_tipo_sist varchar2(20),
    desp_rem_estado_sist varchar2(10),
    desp_rem_cap_sist number,
    desp_rem_sist_electrico varchar2(5),
    desp_rem_estado_sist_electrico varchar2(5),
    desp_rem_neumaticos number,
    desp_rem_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_caract_vehiculos 
  (
    car_id_vehiculo number not null ,
    car_serie_vehiculo varchar2(30),
    car_catalogo_vehiculo number not null ,
    car_placas_vehiculo varchar2(30),
    car_indicativo_vehiculo varchar2(30),
    car_siglas_vehiculo varchar2(30),
    car_t_circulacion varchar2(30),
    car_t_vehiculo number,
    car_estado_vehiculo number,
    car_marca_vehiculo number not null ,
    car_linea_vehiculo number,
    car_modelo_vehiculo number not null ,
    car_motor_vehiculo varchar2(40),
    car_chasis_vehiculo varchar2(40),
    car_color_vehiculo varchar2(50) not null ,
    car_cap_toneladas_vehiculo number,
    car_cap_pasajeros_vehiculo number,
    car_tipo_carroceria number,
    car_tipo_combustible number,
    car_llantas_vehiculo number,
    car_gancho_pinzon_vehiculo varchar2(10),
    car_cap_gancho number,
    car_tipo_cisterna number,
    car_origen_vehiculo number,
    car_ubicacion_vehiculo number not null ,
    car_obs_vehiculo varchar2(250,250),
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
    constraint pk_ vlh_caract_vehiculos primary key (car_id_vehiculo,car_catalogo_vehiculo) 
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
    car_obs_vehiculo varchar2(250,250),
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
    desp_car_obs_vehiculo varchar2(250,250),
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
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_fag_caracteristicas 
  (
    fag_id_carct number not null ,
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
    fag_obs varchar2(250,250),
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
    fag_obs varchar2(250,250),
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
    desp_fag_obs varchar2(250,250),
    desp_fag_aceite_transmision_heli varchar2(20),
    desp_fag_cant_ac_transmision_heli number,
    desp_fag_aceite_caja90_heli varchar2(20),
    desp_fag_cant_aceite_caja90_heli number,
    desp_fag_aceite_caja42_heli varchar2(20),
    desp_fag_cant_aceite_caja42_heli number,
    desp_fag_aceite_rotor_gearbox_heli varchar2(20),
    desp_fag_cant_aceite_rotor_gearbox_heli number,
    desp_fag_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.gpl_t_comision 
  (
    com_id number not null ,
    com_descripcion varchar2(100,50) not null ,
    com_situacion number not null ,
    constraint pk_gpl_t_comision primary key (com_id) 
  );
/
create table ADMIN.aud_gpl_t_comision 
  (
    com_id number,
    com_descripcion varchar2(100,50),
    com_situacion number,
    desp_com_id number,
    desp_com_descripcion varchar2(100,50),
    desp_com_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
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
    pre_desc_com varchar2(255,255),
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
    desp_pre_desc_com varchar2(255,255),
    desp_pre_t_comision number,
    desp_pre_quien number,
    desp_pre_hrs number(7,2),
    desp_pre_tropa number,
    desp_pre_esp number,
    desp_pre_hora_salida TIMESTAMP,
    desp_pre_hora_ent TIMESTAMP,
    desp_pre_duracion number(10,2),
    desp_pre_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.gpl_ubicacion 
  (
    uba_codigo number not null ,
    uba_comision number not null ,
    uba_vertice number not null ,
    uba_latitud number(16) not null ,
    uba_longitud number(16) not null ,
    uba_situacion number not null ,
    constraint pk_gpl_ubicacion  primary key (uba_codigo) 
  );
/
create table ADMIN.aud_gpl_ubicacion 
  (
    uba_codigo number,
    uba_comision number,
    uba_vertice number,
    uba_latitud number(16),
    uba_longitud number(16),
    uba_situacion number,
    desp_uba_codigo number,
    desp_uba_comision number,
    desp_uba_vertice number,
    desp_uba_latitud number(16),
    desp_uba_longitud number(16),
    desp_uba_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.gpl_lugar 
  (
    lug_id number not null ,
    lug_desc_lg varchar2(75) not null ,
    lug_desc_ct varchar2(55) not null ,
    lug_depto char(4) not null ,
    lug_municipio char(4) not null ,
    lug_situacion number not null ,
    constraint pk_gpl_lugar primary key (lug_id) 
  );
/
create table ADMIN.aud_gpl_lugar 
  (
    lug_id number,
    lug_desc_lg varchar2(75),
    lug_desc_ct varchar2(55),
    lug_depto char(4),
    lug_municipio char(4),
    lug_situacion number,
    desp_lug_id number,
    desp_lug_desc_lg varchar2(75),
    desp_lug_desc_ct varchar2(55),
    desp_lug_depto char(4),
    desp_lug_municipio char(4),
    desp_lug_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_gpl_asig_lugar 
  (
    alu_id number,
    alu_comision number,
    alu_lugar number,
    alu_situacion number,
    desp_alu_id number,
    desp_alu_comision number,
    desp_alu_lugar number,
    desp_alu_situacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.gpl_transporte 
  (
    tra_id number not null ,
    tra_comision number not null ,
    tra_cat_esp number not null ,
    tra_uso_veh char(2),
    tra_cat_veh char(15),
    tra_placas char(8),
    tra_tipo_veh number not null ,
    tra_situacion number not null ,
    constraint pk_gpl_transporte primary key (tra_id) 
  );
/
create table ADMIN.cont_curriculo 
  (
    curr_codigo number not null ,
    curr_catalogo number not null ,
    curr_grado number not null ,
    curr_arma number not null ,
    curr_nombre char(45) not null ,
    curr_dependencia number not null ,
    curr_horaactual TIMESTAMP not null ,
    curr_fecha date not null ,
    curr_generado number not null ,
    constraint pk_cont_curriculo primary key (curr_codigo) 
  );
/
create table ADMIN.aud_cont_curriculo 
  (
    curr_codigo number,
    curr_catalogo number,
    curr_grado number,
    curr_arma number,
    curr_nombre char(45),
    curr_dependencia number,
    curr_horaactual TIMESTAMP,
    curr_fecha date,
    curr_generado number,
    desp_curr_codigo number,
    desp_curr_catalogo number,
    desp_curr_grado number,
    desp_curr_arma number,
    desp_curr_nombre char(45),
    desp_curr_dependencia number,
    desp_curr_horaactual TIMESTAMP,
    desp_curr_fecha date,
    desp_curr_generado number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_gpl_conductores 
  (
    con_catalogo number,
    con_nom1 char(15),
    con_nom2 char(15),
    con_ape1 char(15),
    con_ape2 char(15),
    con_dep number,
    con_sitacion number,
    desp_con_catalogo number,
    desp_con_nom1 char(15),
    desp_con_nom2 char(15),
    desp_con_ape1 char(15),
    desp_con_ape2 char(15),
    desp_con_dep number,
    desp_con_sitacion number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.aud_gpl_transporte 
  (
    tra_id number,
    tra_comision number,
    tra_cat_esp number,
    tra_uso_veh char(2),
    tra_cat_veh char(15),
    tra_placas char(8),
    tra_tipo_veh number,
    desp_tra_id number,
    desp_tra_comision number,
    desp_tra_cat_esp number,
    desp_tra_uso_veh char(2),
    desp_tra_cat_veh char(15),
    desp_tra_placas char(8),
    desp_tra_tipo_veh number,
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.vlh_tow 
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
    constraint pk_vlh_tow primary key (tow_id) 
  );
/
create table ADMIN.dfam_ipm 
  (
    catalogo_afiliado number not null ,
    catalogo_familiar number not null ,
    parentesco number,
    apellido1 char(15),
    apellido2 char(15),
    nombre1 char(15),
    nombre2 char(15),
    fecha_nacimiento date,
    afi_sexo char(1),
    dpi number,
    fecha_dpi date,
    ord_cedula char(4),
    registro_cedula number,
    fecha_cedula date,
    direccion char(50),
    telefono number
  );
/
create table ADMIN.pafe_alternos 
  (
    alt_catalogo number not null ,
    alt_fec_ingreso date not null ,
    alt_fec_salida date,
    alt_evento char(30),
    alt_resp_ingreso char(50),
    alt_resp_egreso char(50),
    alt_sit char(2) not null 
  );
/
create table ADMIN.dfdes_banrural 
  (
    dfdr_catalogo number not null ,
    dfdr_codigo number not null ,
    dfdr_nu_reg number not null ,
    dfdr_tipo_desc char(1) not null ,
    dfdr_fec_ini date,
    dfdr_mes_act date,
    dfdr_fin_pres date,
    dfdr_monto number(16,2) not null ,
    dfdr_saldo number(16,2) not null ,
    dfdr_mensual number(16,2) not null ,
    dfdr_tot_cuotas number,
    dfdr_num_cuotas number,
    dfdr_nom_banco char(6),
    dfdr_codeudor number,
    dfdr_nom_bene char(50),
    dfdr_no_prest char(50) not null ,
    dfdr_si_no char(1),
    constraint pk_dfdes_banrural primary key (dfdr_no_prest)  
  );
/
create table ADMIN.aud_dfdes_banrural 
  (
    dfdr_catalogo number,
    dfdr_codigo number,
    dfdr_nu_reg number,
    dfdr_tipo_desc char(1),
    dfdr_fec_ini date,
    dfdr_mes_act date,
    dfdr_fin_pres date,
    dfdr_monto number(16,2),
    dfdr_saldo number(16,2),
    dfdr_mensual number(16,2),
    dfdr_tot_cuotas number,
    dfdr_num_cuotas number,
    dfdr_nom_banco char(6),
    dfdr_codeudor number,
    dfdr_nom_bene char(50),
    dfdr_no_prest char(50),
    dfdr_si_no char(1),
    des_dfdr_catalogo number,
    des_dfdr_codigo number,
    des_dfdr_nu_reg number,
    des_dfdr_tipo_desc char(1),
    des_dfdr_fec_ini date,
    des_dfdr_mes_act date,
    des_dfdr_fin_pres date,
    des_dfdr_monto number(16,2),
    des_dfdr_saldo number(16,2),
    des_dfdr_mensual number(16,2),
    des_dfdr_tot_cuotas number,
    des_dfdr_num_cuotas number,
    des_dfdr_nom_banco char(6),
    des_dfdr_codeudor number,
    des_dfdr_nom_bene char(50),
    des_dfdr_no_prest char(50),
    des_dfdr_si_no char(1),
    accion char(1) not null ,
    usuario char(12) not null ,
    hora TIMESTAMP(0) not null 
  );
/
create table ADMIN.com_ent_sal2 
  (
    es_codigo number not null ,
    es_documento varchar2(55,5) not null ,
    es_dep_llave_entrada number not null ,
    es_dep_llave_salida number not null ,
    es_forma number not null ,
    es_fecha TIMESTAMP not null ,
    es_galones number not null ,
    es_cargo number not null ,
    es_tipo number not null ,
    es_saldo number(18,2) not null ,
    es_precio number(18,2) not null ,
    es_lugar number not null ,
    es_situacion number not null ,
    es_catalogo number,
    es_dependencia number,
    es_obs varchar2(250,4),
    constraint pk_com_ent_sal2 primary key (es_codigo)  
  );
/
create table ADMIN.com_resumen 
  (
    res_id number not null ,
    res_com number not null ,
    res_factura varchar2(15,2) not null ,
    res_fech date not null ,
    res_cantc number not null ,
    res_preuni number(18,2) not null ,
    res_tipo number not null ,
    res_total number(18,2) not null ,
    res_sit varchar2(55) not null ,
    res_obs varchar2(200,15) not null ,
    constraint pk_com_resumen primary key (res_id)  
  );
/
create table ADMIN.coc_area_mision 
  (
    are_codigo number not null ,
    are_descripcion varchar2(50,25) not null ,
    are_responsabilidad varchar2(250,50) not null ,
    are_tipo_seg varchar2(50,25) not null ,
    are_situacion number not null ,
    constraint pk_coc_area_mision primary key (are_codigo)  
  );
/
create table ADMIN.coc_metodo_ejec 
  (
    met_ejec_codigo number not null ,
    met_ejec_descripcion varchar2(50,25) not null ,
    met_ejec_situacion number not null ,
    constraint pk_coc_metodo_ejec primary key (met_ejec_codigo)  
  );
/
create table ADMIN.coc_metas 
  (
    met_codigo number not null ,
    met_anio number not null ,
    met_dep number not null ,
    met_mes number not null ,
    met_cantidad number not null ,
    met_situacion number not null ,
    constraint pk_coc_metas primary key (met_codigo)  
  );
/
  
  create table ADMIN.coc_coordenadas2 
  (
    coo_reporte number default null,
    coo_anio number not null ,
    coo_dep number not null ,
    coo_id number not null ,
    coo_lat_gra number default null,
    coo_lat_min number default null,
    coo_lat_seg number default null,
    coo_long_gra number default null,
    coo_long_min number default null,
    coo_long_seg number default null,
    coo_number_lat number(20,18) default null,
    coo_number_long number(20,18) default null,
    coo_utm_x number default null,
    coo_utm_y number default null,
    coo_lugar varchar2(250) default null,
    constraint pk_coc_coordenadas2 primary key (coo_id)  
  );
/
  create table ADMIN.coc_vehiculo_rep2 
  (
    veh_id number not null ,
    veh_reporte number default null,
    veh_anio number not null ,
    veh_dep number not null ,
    veh_tipo number default null,
    veh_propiedad number,
    veh_cantidad number not null ,
    constraint pk_coc_vehiculo_rep2 primary key (veh_id)  
  );
/
create table ADMIN.ef_fuerza_rsvp 
  (
    ef_fecha date not null ,
    ef_dependencia number not null ,
    ef_masculino number not null ,
    ef_femenino number not null ,
    ef_tipo number not null ,
    constraint pk_ef_fuerza_rsvp primary key (ef_fecha,ef_dependencia,ef_tipo)  
  );
/
create table ADMIN.ef_fuerza_ce 
  (
    efc_fecha date not null ,
    efc_dependencia number not null ,
    efc_masculino number not null ,
    efc_femenino number not null ,
    efc_tipo number not null ,
    constraint pk_ef_fuerza_ce primary key (efc_fecha,efc_dependencia,efc_tipo)  
  );
/
create table ADMIN.ipm_dfam_temp 
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
    fam_dir_lugar char(4),
    fam_telefono number,
    fam_ocupacion char(30),
    fam_empresa char(30),
    fam_cheque number,
    fam_beneficiario number,
    fam_emergencia number,
    fam_clase_pasiva number,
    constraint pk_ipm_dfam_temp primary key (fam_cat_militar,fam_cat_familiar)  
  );
/
create table ADMIN.coc_mensaje 
  (
    men_codigo number not null ,
    men_ope_pla_cod number not null ,
    men_dependencia number not null ,
    men_fecha TIMESTAMP not null ,
    men_lugar varchar2(50,25) not null ,
    men_numero_men varchar2(50,25) not null ,
    men_contenido char(1500) not null ,
    men_cat_comte number not null ,
    men_comte_empleo varchar2(50,25) not null ,
    men_cat_resp number not null ,
    men_resp_empleo varchar2(50,25) not null ,
    men_situacion number not null ,
    men_observacion varchar2(230,60) not null ,
    constraint pk_coc_mensaje primary key (men_codigo)  
  );
/
create table ADMIN.amp_registro_personal 
  (
    inf_cui_due char(15) not null ,
    inf_cat number 
        default null,
    inf_nom1 varchar2(15) 
        default null,
    inf_nom2 varchar2(15) 
        default null,
    inf_ape1 varchar2(15) not null ,
    inf_ape2 varchar2(15) 
        default null,
    inf_fec_ingreso varchar2(30) not null ,
    inf_status number not null ,
    inf_sexo number not null ,
    inf_tel_casa number 
        default null,
    inf_cel number not null ,
    inf_email varchar2(30) not null ,
    inf_nit varchar2(11) 
        default null,
    inf_domicilio varchar2(40) not null ,
    inf_municipio char(4) not null ,
    inf_depto char(4) not null ,
    inf_sit number not null ,
    inf_obs varchar2(100) 
        default null,
    constraint pk_amp_registro_personal primary key (inf_cui_due)  
  );
/
create table ADMIN.amp_ubicacion_personal 
  (
    map_id number not null ,
    map_sit_prop char(1) 
        default null,
    map_status_boleta char(1) 
        default null,
    map_no_lote number 
        default null,
    map_manzana varchar2(10) 
        default null,
    map_sector varchar2(10) 
        default null,
    map_ubicacion varchar2(50) 
        default null,
    map_latitud number(10,6) not null ,
    map_longitud number(10,6) not null ,
    map_fec_venta date 
        default null,
    map_fec_compra date 
        default null,
    map_sit number 
        default null,
    map_obs varchar2(50) 
        default null,
    constraint pk_amp_ubicacion_personal primary key (map_id)  
  );
/
create table ADMIN.amp_asig_propietario 
  (
    asig_id number not null ,
    asig_localidad_lote number 
        default null,
    asig_propietario_cui char(15) not null ,
    asig_situacion char(1) 
        default null,
    asig_fecha date 
        default null,
    asig_observacion varchar2(15) 
        default null,
    constraint pk_amp_asig_propietario primary key (asig_id)  
  );
/
create table ADMIN.amp_lote 
  (
    lot_id number not null ,
    lot_no_lot number not null ,
    lot_sit char(1) 
        default null,
    lot_obs varchar2(30) 
        default null,
    constraint pk_v primary key (lot_id) 
  );
/
create table ADMIN.amp_manzana 
  (
    man_id number not null ,
    man_letra varchar2(6) not null ,
    man_sit char(1) 
        default null,
    man_obs varchar2(30) 
        default null,
    constraint pk_v primary key (man_id)  
  );
/
create table ADMIN.amp_sector 
  (
    sec_id number not null ,
    sec_letra varchar2(6) not null ,
    sec_sit char(1) 
        default null,
    sec_obs varchar2(30) 
        default null,
    constraint pk_amp_sector primary key (sec_id)  
  );
/
create table ADMIN.opaf_abdominales1 
  (
    abd_edad number not null ,
    abd_sexo char(1) not null ,
    abd_repeticiones number,
    abd_punteo number
  );
/
create table ADMIN.opaf_carrera2 
  (
    car_edad number not null ,
    car_sexo char(1) not null ,
    car_tiempo timestamp(3),
    car_punteo number
  );
/
create table ADMIN.opaf_dominadas1 
  (
    dom_edad number not null ,
    dom_sexo char(1) not null ,
    dom_repeticiones number not null ,
    dom_punteo number not null 
  );
/
create table ADMIN.opaf_notas1 
  (
    not_catalogo number not null ,
    not_fecha date not null ,
    not_dominadas number not null ,
    not_punteo_dom number not null ,
    not_abdominales number not null ,
    not_punteo_abd number not null ,
    not_carrera datetime minute to second not null ,
    not_punteo_car number not null ,
    not_promedio number(5,2) not null ,
    not_obs varchar2(255),
    not_tipo varchar2(1) not null ,
    not_revisado number not null ,
    not_dependencia number not null ,
    not_peso number not null ,
    not_estatura number(3,2) not null ,
    not_imc number(4,2) not null ,
    not_perfil varchar2(15) not null ,
    not_fec_certi date,
    not_grado number not null ,
    not_usuario number not null ,
    not_acta varchar2(100),
    not_extemporaneo number not null ,
    not_evento number,
    constraint pk_vopaf_notas1 primary key (not_catalogo,not_fecha) 
  );
/
create table ADMIN.coc_control 
  (
    con_codigo number not null ,
    con_catalogo number not null ,
    con_grado number not null ,
    con_arma number not null ,
    con_nombre char(50) not null ,
    con_dependencia number not null ,
    con_hora_ingreso TIMESTAMP not null ,
    constraint pk_coc_control primary key (con_codigo) 
  );
/
create table ADMIN.gpl_actividad 
  (
    act_id number not null ,
    act_desc varchar2(100,10) not null ,
    act_tipo_act varchar2(40,5) not null ,
    act_ministerio number not null ,
    act_dependencia number not null ,
    act_situacion char(12) not null ,
    constraint pk_gpl_actividad primary key (act_id)  
  );
/
create table ADMIN.gpl_ministerios 
  (
    min_id number not null ,
    min_descripcion varchar2(100,10) not null ,
    min_desc_ct varchar2(25,10) not null ,
    min_situacion char(10) not null ,
    constraint pk_gpl_ministerios primary key (min_id)  
  );
/
create table ADMIN.gpl_asig_mision 
  (
    ami_id number not null ,
    ami_comision number not null ,
    ami_mision number not null ,
    ami_situacion number not null 
  );
/
create table ADMIN.gpl_conductores 
  (
    con_catalogo number not null ,
    con_nom1 char(15) not null ,
    con_nom2 char(15) not null ,
    con_ape1 char(15) not null ,
    con_ape2 char(15) not null ,
    con_dep number not null ,
    con_puesto number not null ,
    con_sitacion char(10) not null ,
    constraint pk_gpl_conductores primary key (con_catalogo) 
  );
/
create table ADMIN.gpl_asig_lugar 
  (
    alu_id number not null ,
    alu_comision number not null ,
    alu_lugar number not null ,
    alu_actividad number,
    alu_latitud char(20),
    alu_longitud char(20),
    alu_fecha_rea date,
    alu_situacion number not null ,
    constraint pk_gpl_asig_lugar primary key (alu_id) 
  );
/
create table ADMIN.opaf_evento_per 
  (
    eve_codigo number not null ,
    eve_catalogo number not null ,
    eve_evento number not null ,
    eve_acta char(50) not null ,
    eve_situacion number not null ,
    eve_observacion char(100) not null ,
    constraint pk_opaf_evento_per primary key (eve_codigo)  
  );
/
