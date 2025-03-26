CREATE OR REPLACE PROCEDURE ADMIN.cierre_mensual IS

    fecha_traslado DATE := SYSDATE;
    fecha_movimiento DATE := SYSDATE;
    sal_cuota CHAR(1);
    sal_cuota_r CHAR(1);
    sal_tipo INTEGER;
    sal_tipo_r INTEGER;
    id_generado INTEGER;
    cantidad INTEGER;
    cantidad_r INTEGER;
    dependencia_entrega INTEGER;

        CURSOR saldo_cursor IS
        SELECT codigo_desc, saldo
from (
    SELECT distinct "desc", sum(ingresos) - (sum(salidas) + sum(reasignacion)) as saldo, codigo_desc
     from(
            SELECT 
            t1.com_desc as "desc", t1.com_code as codigo_desc, me1.men_tipo as tipo , d1.dep_desc_lg as dep, d1.dep_id as dep_code,
            SUM(m1.mov_cantidad) as ingresos, 0 as salidas, 0 as reasignacion
            
            FROM comb_movimientos m1
            INNER JOIN comb_solicitudes s1 ON m1.mov_solicitud = s1.sol_id 
            INNER JOIN comb_asignaciones a1 ON s1.sol_asignacion = a1.asig_id
            INNER JOIN comb_proyectos p1 ON a1.asig_proyecto = p1.pro_id
            INNER JOIN comb_mensuales me1 ON p1.pro_mensual = me1.men_id
            INNER JOIN comb_contratos c1 ON me1.men_contrato = c1.cont_id
            INNER JOIN lveh_combustible t1 ON c1.cont_tipo_combustible = t1.com_code
            INNER JOIN comb_dependencias d1 ON m1.mov_dep = d1.dep_id
            where m1.mov_tipo = 'T' and s1.sol_recibe = 56

            group by t1.com_desc, me1.men_tipo, d1.dep_desc_lg, t1.com_code, d1.dep_id
            UNION 
   select t2.com_desc as "desc", t2.com_code as codigo_desc, me2.men_tipo as tipo, d2.dep_desc_lg as dep, d2.dep_id as dep_code, 0 as ingresos, SUM(m2.mov_cantidad) as salida, 0 as reasignacion
            from comb_movimientos m2
            INNER JOIN comb_vales v2 ON m2.mov_vale = v2.val_id 
            INNER JOIN comb_asignaciones a2 ON v2.val_asignacion = a2.asig_id
            INNER JOIN comb_proyectos p2 ON a2.asig_proyecto = p2.pro_id
            INNER JOIN comb_mensuales me2 ON p2.pro_mensual = me2.men_id
            INNER JOIN comb_contratos c2 ON me2.men_contrato = c2.cont_id
            INNER JOIN lveh_combustible t2 ON c2.cont_tipo_combustible = t2.com_code
            INNER JOIN comb_dependencias d2 ON m2.mov_dep = d2.dep_id
            where mov_tipo = 'S' AND VAL_DESPACHO = 56 and mov_dep != 56


            group by t2.com_desc, me2.men_tipo, d2.dep_desc_lg, t2.com_code, d2.dep_id
            
            
            union 
            
              select t2.com_desc as "desc", t2.com_code as codigo_desc, v2.sal_cuota as tipo, d2.dep_desc_lg as dep, d2.dep_id as dep_code, 0 as ingresos, 0 as salidas, SUM(m2.mov_cantidad) as reasignacion
            from comb_movimientos m2
            INNER JOIN comb_asignaciones_saldos v2 ON m2.mov_traslado = v2.sal_id 
            INNER JOIN lveh_combustible t2 ON t2.com_code = v2.sal_tipo
            INNER JOIN comb_dependencias d2 ON m2.mov_dep = d2.dep_id
            where mov_tipo = 'N' and mov_dep != 56
                group by t2.com_desc, v2.sal_cuota, d2.dep_desc_lg, t2.com_code, d2.dep_id 
      

            )

           GROUP BY "desc", tipo,codigo_desc
            HAVING SUM(ingresos) - (SUM(salidas) + SUM(reasignacion)) > 0
           
        );
    
     CURSOR saldo_movimiento_cursor IS
        SELECT tipo, codigo_desc, saldo, dep_code   
from(
    SELECT distinct "desc", tipo, dep, sum(ingresos) - (sum(salidas) + sum(reasignacion)) as saldo, codigo_desc, dep_code from(
            SELECT 
            t1.com_desc as "desc", t1.com_code as codigo_desc, me1.men_tipo as tipo , d1.dep_desc_lg as dep, d1.dep_id as dep_code,
            SUM(m1.mov_cantidad) as ingresos, 0 as salidas, 0 as reasignacion
            
            FROM comb_movimientos m1
            INNER JOIN comb_solicitudes s1 ON m1.mov_solicitud = s1.sol_id 
            INNER JOIN comb_asignaciones a1 ON s1.sol_asignacion = a1.asig_id
            INNER JOIN comb_proyectos p1 ON a1.asig_proyecto = p1.pro_id
            INNER JOIN comb_mensuales me1 ON p1.pro_mensual = me1.men_id
            INNER JOIN comb_contratos c1 ON me1.men_contrato = c1.cont_id
            INNER JOIN lveh_combustible t1 ON c1.cont_tipo_combustible = t1.com_code
            INNER JOIN comb_dependencias d1 ON m1.mov_dep = d1.dep_id
            where m1.mov_tipo = 'T' and s1.sol_recibe = 56

            group by  t1.com_desc, me1.men_tipo, d1.dep_desc_lg, t1.com_code,  d1.dep_id
            UNION 
   select t2.com_desc as "desc", t2.com_code as codigo_desc, me2.men_tipo as tipo, d2.dep_desc_lg as dep, d2.dep_id as dep_code, 0 as ingresos, SUM(m2.mov_cantidad) as salida, 0 as reasignacion
            from comb_movimientos m2
            INNER JOIN comb_vales v2 ON m2.mov_vale = v2.val_id 
            INNER JOIN comb_asignaciones a2 ON v2.val_asignacion = a2.asig_id
            INNER JOIN comb_proyectos p2 ON a2.asig_proyecto = p2.pro_id
            INNER JOIN comb_mensuales me2 ON p2.pro_mensual = me2.men_id
            INNER JOIN comb_contratos c2 ON me2.men_contrato = c2.cont_id
            INNER JOIN lveh_combustible t2 ON c2.cont_tipo_combustible = t2.com_code
            INNER JOIN comb_dependencias d2 ON m2.mov_dep = d2.dep_id
            where mov_tipo = 'S' AND VAL_DESPACHO = 56 and mov_dep != 56


            group by t2.com_desc, me2.men_tipo, d2.dep_desc_lg, t2.com_code, d2.dep_id
            
            
            union 
            
              select t2.com_desc as "desc", t2.com_code as codigo_desc, v2.sal_cuota as tipo, d2.dep_desc_lg as dep, d2.dep_id as dep_code, 0 as ingresos, 0 as salidas, SUM(m2.mov_cantidad) as reasignacion
            from comb_movimientos m2
            INNER JOIN comb_asignaciones_saldos v2 ON m2.mov_traslado = v2.sal_id 
            INNER JOIN lveh_combustible t2 ON t2.com_code = v2.sal_tipo
            INNER JOIN comb_dependencias d2 ON m2.mov_dep = d2.dep_id
            where mov_tipo = 'N' and mov_dep != 56
                group by t2.com_desc, v2.sal_cuota, d2.dep_desc_lg, t2.com_code,  d2.dep_id


        

            )

            group by "desc", tipo, dep, codigo_desc, dep_code
             having  sum(ingresos) - (sum(salidas) + sum(reasignacion)) > 0);

BEGIN
   
    FOR saldo_rec IN saldo_cursor LOOP
        sal_tipo_r := saldo_rec.codigo_desc;
        cantidad_r := saldo_rec.saldo;
        
       
        INSERT INTO comb_asignaciones_saldos (sal_fecha, sal_cuota, sal_tipo, sal_situacion) 
        VALUES (fecha_traslado, 'O', sal_tipo_r, 1)        
         RETURNING SAL_ID INTO id_generado;
        
        INSERT INTO comb_movimientos (mov_dep, mov_tipo, mov_cantidad, mov_fecha, mov_traslado, mov_situacion) 
        VALUES (56, 'R', ROUND(cantidad_r * 0.60), fecha_movimiento, id_generado, 1);
        
        INSERT INTO comb_asignaciones_saldos (sal_fecha, sal_cuota, sal_tipo, sal_situacion) 
        VALUES (fecha_traslado, 'E', sal_tipo_r, 1)        
        RETURNING SAL_ID INTO id_generado;
        
        INSERT INTO comb_movimientos (mov_dep, mov_tipo, mov_cantidad, mov_fecha, mov_traslado, mov_situacion) 
        VALUES (56, 'R', ROUND(cantidad_r * 0.40), fecha_movimiento, id_generado, 1);
    END LOOP;

    FOR saldo_movimiento_rec IN saldo_movimiento_cursor LOOP
        sal_cuota := saldo_movimiento_rec.tipo;
        sal_tipo := saldo_movimiento_rec.codigo_desc;
        cantidad := saldo_movimiento_rec.saldo;
        dependencia_entrega := saldo_movimiento_rec.dep_code;
        

        INSERT INTO comb_asignaciones_saldos (sal_fecha, sal_cuota, sal_tipo, sal_situacion) 
        VALUES (fecha_traslado, sal_cuota, sal_tipo, 1)    
      RETURNING SAL_ID INTO id_generado;
        
 
        INSERT INTO comb_movimientos (mov_dep, mov_tipo, mov_cantidad, mov_fecha, mov_traslado, mov_situacion) 
        VALUES (dependencia_entrega, 'N', cantidad, fecha_movimiento, id_generado, 1);
    COMMIT;
    END LOOP;
    
EXCEPTION
    WHEN OTHERS THEN
      
        RAISE;
END cierre_mensual;

/

CREATE OR REPLACE PROCEDURE ADMIN.insert_sql_lang AS
BEGIN
    -- Verificar si el servidor es OL (Online DSA)
    IF 'OL' = 'OL' THEN  -- Ajusta esta condición según el entorno
        INSERT INTO xsql_languages
        VALUES ('X/OPEN SQL', '1992', 'XPG4', 'YES', 'ONLINE DSA', 'EMBEDDED', 'C');
        
        INSERT INTO xsql_languages
        VALUES ('X/OPEN SQL', '1992', 'XPG4', 'YES', 'ONLINE DSA', 'EMBEDDED', 'COBOL');
        
        INSERT INTO xsql_languages
        VALUES ('ANSI X3.135', '1992', 'ENTRY', 'YES', 'ONLINE DSA', 'EMBEDDED', 'C');
        
        INSERT INTO xsql_languages
        VALUES ('ANSI X3.135', '1992', 'ENTRY', 'YES', 'ONLINE DSA', 'EMBEDDED', 'COBOL');
    COMMIT;
    END IF;
END;
/


CREATE OR REPLACE PROCEDURE ADMIN.insert_srv_info AS
    log_flag   CHAR(1);
    ansi_flag  CHAR(1);
    engine_type VARCHAR2(2);

BEGIN
    
    engine_type := 'OL'; 

   
    IF engine_type = 'SE' THEN
        INSERT INTO xserver_info VALUES ('ENGINE TYPE', 'Standard Engine');
        INSERT INTO xserver_info VALUES ('ROW_LENGTH', '32511');
    ELSE
        INSERT INTO xserver_info VALUES ('ENGINE TYPE', 'Online DSA');
        INSERT INTO xserver_info VALUES ('ROW_LENGTH', '32767');
    END IF;

    INSERT INTO xserver_info VALUES ('IDENTIFIER_LENGTH', '18');
    INSERT INTO xserver_info VALUES ('USERID_LENGTH', '8');
    INSERT INTO xserver_info VALUES ('COLLATION_SEQ', 'ISO 8859-1');


    log_flag := 'N';  
    ansi_flag := 'N'; 

    IF engine_type = 'SE' OR log_flag = 'N' THEN
        INSERT INTO xserver_info VALUES ('TXN_ISOLATION', 'READ UNCOMMITTED');
    ELSIF log_flag = 'Y' AND ansi_flag = 'N' THEN
        INSERT INTO xserver_info VALUES ('TXN_ISOLATION', 'READ COMMITTED');
    ELSIF ansi_flag = 'Y' THEN
        INSERT INTO xserver_info VALUES ('TXN_ISOLATION', 'SERIALIZABLE');
    COMMIT;
    END IF;

END;
/
CREATE OR REPLACE PROCEDURE ADMIN.sp_datosfza AS
BEGIN
 
    DELETE FROM f_datosfza;

    INSERT INTO f_datosfza
    SELECT dep_llave, dep_desc_md, gra_clase, 'P', org_grado, COUNT(*), 0, 0
    FROM morg, mdep, grados
    WHERE org_grado = gra_codigo
      AND dep_llave = org_dependencia
      AND org_situacion = 'A'
      AND org_ceom != 'TITULO'
    GROUP BY dep_llave, dep_desc_md, gra_clase, org_grado;


    INSERT INTO f_datosfza
    SELECT dep_llave, dep_desc_md, gra_clase, 'P', per_grado, 0, COUNT(*), 0
    FROM mper, morg, mdep, grados
    WHERE per_plaza = org_plaza
      AND per_grado = gra_codigo
      AND org_dependencia = dep_llave
      AND per_plaza NOT IN (9999, 99999)
      AND org_situacion = 'A'
    GROUP BY dep_llave, dep_desc_md, gra_clase, per_grado;


    INSERT INTO f_datosfza
    SELECT dep_llave, dep_desc_md, gra_clase, 'P', org_grado, 0, 0, COUNT(*)
    FROM morg, mdep, grados
    WHERE org_grado = gra_codigo
      AND dep_llave = org_dependencia
      AND org_situacion = 'A'
      AND org_ceom != 'TITULO'
      AND org_plaza NOT IN (
          SELECT per_plaza
          FROM mper
          WHERE per_plaza NOT IN (9999, 99999)
      )
    GROUP BY dep_llave, dep_desc_md, gra_clase, org_grado;


    UPDATE f_datosfza SET df_dclase = '01.OFICIALES' WHERE df_clase IN ('1', '2');
    UPDATE f_datosfza SET df_dclase = '02.ASIMILADOS' WHERE df_clase = '3';
    UPDATE f_datosfza SET df_dclase = '03.ESPECIALISTAS' WHERE df_clase = '4';
    UPDATE f_datosfza SET df_dclase = '04.CADETES/ALUMNOS' WHERE df_clase = '5';
    UPDATE f_datosfza SET df_dclase = '05.TROPA' WHERE df_clase = '6';

    COMMIT;
END;
/
CREATE OR REPLACE PROCEDURE ADMIN.sp_his_morg(
    plaza IN NUMBER,     
    ceom IN VARCHAR2,  
    grado IN NUMBER,
    desc_plaza IN VARCHAR2,  
    accion IN CHAR,
    usuario IN VARCHAR2,  
    fecha IN TIMESTAMP
) IS
   
    descripcion_empleo VARCHAR2(45);
BEGIN
  
    SELECT per_desc_empleo INTO descripcion_empleo
    FROM mper, morg
    WHERE org_plaza = per_plaza
    AND org_plaza = plaza;


    INSERT INTO his_morg (
        his_plaza, his_ceom, his_grado,
        his_plaza_desc, his_desc_empleo, his_accion, his_usuario,
        his_hora
    ) VALUES (
        plaza, ceom, grado, desc_plaza, descripcion_empleo, accion,
        usuario, fecha
    );
COMMIT;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Si no se encuentra ningún registro, manejar el error
        DBMS_OUTPUT.PUT_LINE('No se encontró la descripción del empleo para la plaza ' || plaza);
    WHEN OTHERS THEN
        -- Manejo de cualquier otro error
        DBMS_OUTPUT.PUT_LINE('Error al procesar: ' || SQLERRM);
END sp_his_morg;
/

CREATE  OR REPLACE  PROCEDURE ADMIN.spf_cerrados AS
  BEGIN 
  update agtsa set ag_des_flag = 'C'  
    where ag_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and ag_des_flag = 'N';

  update banejer_car set car_si_no = 'C'
    where car_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and car_si_no = 'N';

  update dfdes_btrab set dfdt_si_no = 'C'
    where dfdt_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and dfdt_si_no = 'N';

  update dfdes_gra set dfdg_si_no = 'C'
    where dfdg_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and dfdg_si_no = 'N';

  update dfdes_inv set dfdi_si_no = 'C'
    where dfdi_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and dfdi_si_no = 'N';

  update f_amt set amt_si_no = 'C'
    where amt_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and amt_si_no = 'N';

  update f_asgral set as_si_no = 'C'
    where as_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and as_si_no = 'N';

  update f_bac set bac_si_no = 'C'
    where bac_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and bac_si_no = 'N';

  update f_cmm set cmm_control = 5
    where cmm_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and cmm_control= 0;

  update findustria set ind_control ='C' 
    where ind_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and ind_control = 'N';

  update f_ipm_cart set ipc_status ='C' 
    where ipc_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and ipc_status = 'N';

  update f_ipm_cart set ipc_motivo ='CODIGO CERRADO' 
    where ipc_status = 'C';

  update ipm_fact set fact_estado ='C' 
    where fact_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and fact_estado = 'N';

  update ipm_manto set man_descontada ='C' 
    where man_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and man_descontada = 'N';

  update economato set eco_control ='C' 
    where eco_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and eco_control = 'N';

  update dfdes_grat set dfdg_si_no = 'C'
    where dfdg_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and dfdg_si_no = 'N';

  update dfdes_invt set dfdi_si_no = 'C'
    where dfdi_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and dfdi_si_no = 'N';

  update f_hreal set hr_control ='C'
    where hr_catalogo in
    (select per_catalogo
     from mper,morg
     where per_plaza = org_plaza
     and org_cod_pago = '2'
     and per_situacion in('1T','11','12','1$','1P','1Q','1R'))
     and hr_control = 'N';
 COMMIT;
END ;
/

CREATE OR REPLACE PROCEDURE ADMIN.spf_destinos AS
BEGIN
  update agtsa set ag_des_flag = 'D'  
    where ag_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and ag_des_flag = 'N';

  update banejer_car set car_si_no = 'D'
    where car_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and car_si_no = 'N';

  update dfdes_btrab set dfdt_si_no = 'D'
    where dfdt_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and dfdt_si_no = 'N';

  update dfdes_gra set dfdg_si_no = 'D'
    where dfdg_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and dfdg_si_no = 'N';

  update dfdes_inv set dfdi_si_no = 'D'
    where dfdi_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and dfdi_si_no = 'N';

  update f_amt set amt_si_no = 'D'
    where amt_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and amt_si_no = 'N';

  update f_asgral set as_si_no = 'D'
    where as_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and as_si_no = 'N';

  update f_bac set bac_si_no = 'D'
    where bac_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and bac_si_no = 'N';

  update f_cmm set cmm_control = 4
    where cmm_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and cmm_control = 0;

  update findustria set ind_control ='D' 
    where ind_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and ind_control = 'N';

  update f_ipm_cart set ipc_status ='D' 
    where ipc_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and ipc_status = 'N';

  update f_ipm_cart set ipc_motivo ='NO ESTA ACTIVO' 
    where ipc_status = 'D';

  update ipm_fact set fact_estado ='D' 
    where fact_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and fact_estado = 'N';

  update ipm_manto set man_descontada ='D' 
    where man_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and man_descontada = 'N';

  update economato set eco_control ='D' 
    where eco_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and eco_control = 'N';

  update dfdes_grat set dfdg_si_no = 'D'
    where dfdg_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('T0'))
    and dfdg_si_no = 'N';

  update dfdes_invt set dfdi_si_no = 'D'
    where dfdi_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('T0'))
    and dfdi_si_no = 'N';
  update f_hreal set hr_control ='D'
    where hr_catalogo not in
    (select per_catalogo from mper
     where per_situacion in('1T','11','12','1$','1P','1Q','1R'))
    and hr_control = 'N';

COMMIT;
END;
--------------------------------------------------------- VASQUEZ --------------
CREATE OR REPLACE PROCEDURE ADMIN.chk_dpue(
  catalogo IN NUMBER, 
  grado IN NUMBER, 
  arma IN NUMBER, 
  dependencia IN NUMBER, 
  jerarquia IN VARCHAR2, 
  plaza IN NUMBER, 
  ceom IN VARCHAR2, 
  "desc" IN VARCHAR2, 
  situacion IN VARCHAR2, 
  fec_nomb IN DATE, 
  ord_gral IN VARCHAR2, 
  punto_og IN NUMBER, 
  fec_cese IN DATE, 
  accion IN VARCHAR2, 
  usuario IN VARCHAR2, 
  fecha IN DATE
) 
IS 
  fec DATE;
BEGIN
  SELECT MAX(pue_fec_cese) INTO fec
  FROM dpue
  WHERE pue_catalogo = catalogo 
    AND pue_fec_nomb <> fec_nomb
    AND pue_plaza <> plaza;

  IF fec >= fec_nomb THEN
    RAISE_APPLICATION_ERROR(-746, 'HAY UNA FECHA DE CESE MAYOR O IGUAL QUE LA DE NOMBRAMIENTO QUE INGRESO');
  ELSE
    INSERT INTO aud_dpue (
      desp_catalogo,
      desp_grado,
      desp_arma,
      desp_dependencia,
      desp_jerarquia,
      desp_plaza,
      desp_ceom,
      desp_desc,
      desp_situacion,
      desp_fec_nomb,
      desp_ord_gral,
      desp_punto_og,
      desp_fec_cese,
      accion,
      usuario,
      hora
    ) VALUES (
      catalogo,
      grado,
      arma,
      dependencia,
      jerarquia,
      plaza,
      ceom,
      "desc",
      situacion,
      fec_nomb,
      ord_gral,
      punto_og,
      fec_cese,
      accion,
      usuario,
      fecha
    );
  COMMIT;
  END IF;
END;

/
------ LA TABLA DPUE_PRUEBA NO EXSISTE 
-- CREATE OR REPLACE PROCEDURE ADMIN.chk_dpue1(
--   catalogo NUMBER,
--   grado NUMBER, 
--   arma NUMBER,
--   dependencia NUMBER,
--   jerarquia VARCHAR2,
--   plaza NUMBER,
--   ceom VARCHAR2,
--   "desc" VARCHAR2,
--   situacion VARCHAR2,
--   fec_nomb date,
--   ord_gral VARCHAR2,
--   punto_og NUMBER,
--   fec_cese date,
--   accion VARCHAR2,
--   usuario VARCHAR2,
--   fecha TIMESTAMP )
--   IS
--    fec date;
--   BEGIN 

--   select max(pue_fec_cese) into fec
--   from dpue_prueba where pue_catalogo=catalogo and pue_fec_nomb<>fec_nomb
--   and pue_plaza <> plaza;
--   IF fec>=fec_nomb THEN
--     RAISE_APPLICATION_ERROR (-746,"HAY UNA FECHA DE CESE MAYOR O IGUAL QUE LA DE NOMBRAMIENTO QUE INGRESO");
--   ELSE
--     insert into aud_dpue_prueba ( desp_catalogo,desp_grado,
--     desp_arma,desp_dependencia,desp_jerarquia,desp_plaza,
--     desp_ceom,desp_desc,desp_situacion,desp_fec_nomb,
--     desp_ord_gral,desp_punto_og,desp_fec_cese,accion,
--     usuario,hora)  
--     values ( catalogo
--     ,grado ,arma ,dependencia
--     ,jerarquia ,plaza ,ceom
--     ,"desc" ,situacion ,fec_nomb
--     ,ord_gral ,punto_og ,fec_cese
--     ,accion ,usuario ,fecha );
--   COMMIT;
--   END IF;
-- END;
/
CREATE OR REPLACE PROCEDURE ADMIN.ejecutar_si_ultimo_dia IS
    hoy DATE;
    manana DATE;

BEGIN

    hoy := TRUNC(SYSDATE);  -- TRUNC elimina la parte de la hora, obteniendo solo la fecha


    manana := hoy + 1;


    IF TO_NUMBER(TO_CHAR(manana, 'DD')) = 1 THEN
     
     --   DBMS_OUTPUT.PUT_LINE('Hoy es el último día del mes.');
        
   
        cierre_mensual;
   -- ELSE
     
      --  DBMS_OUTPUT.PUT_LINE('Hoy NO es el último día del mes.');
    END IF;
    
END ejecutar_si_ultimo_dia;
/
/
CREATE OR REPLACE PROCEDURE ADMIN.procedimiento_conexiones (
    latitud IN NUMBER,
    longitud IN NUMBER
) IS
    v_contador INTEGER;
    v_hostname VARCHAR2(15);
BEGIN
    -- Obtener el hostname de la base de datos
    SELECT SYS_CONTEXT('USERENV', 'HOST') INTO v_hostname FROM dual;

    -- Verificar si el usuario ya tiene un registro en la tabla
    SELECT COUNT(*) INTO v_contador
    FROM historial_conexiones
    WHERE usuarios = USER;

    IF v_contador = 0 THEN
        -- Si no hay registros para el usuario, hacer un INSERT
        INSERT INTO historial_conexiones (
            usuarios, 
            ultima_conexion, 
            hostname, 
            latitudes, 
            longitudes
        ) VALUES (
            USER, 
            SYSDATE - INTERVAL '6' HOUR,  -- Ajuste de la zona horaria
            v_hostname, 
            latitud, 
            longitud
        );
    ELSE
        -- Si ya existe un registro, hacer un UPDATE
        UPDATE historial_conexiones
        SET 
            ultima_conexion = SYSDATE - INTERVAL '6' HOUR,
            hostname = v_hostname,
            latitudes = latitud,
            longitudes = longitud
        WHERE usuarios = USER;
    END IF;

    COMMIT;
END procedimiento_conexiones;
/

CREATE OR REPLACE PROCEDURE ADMIN.spf_desc_ini AS 
BEGIN
  update agtsa set ag_des_flag = 'N';

  update banejer_car set car_si_no = 'N';

  update dfdes_btrab set dfdt_si_no = 'N';

  update dfdes_gra set dfdg_si_no = 'N';

  update dfdes_grat set dfdg_si_no = 'N';

  update dfdes_inv set dfdi_si_no = 'N';

  update dfdes_invt set dfdi_si_no = 'N';

  update f_amt set amt_si_no = 'N';

  update f_asgral set as_si_no = 'N';

  update f_bac set bac_si_no = 'N';

  update f_cmm set cmm_control = '0';

  update f_hreal set hr_control = 'N';

  update findustria set ind_control = 'N';

  update f_ipm_cart set ipc_status = 'N';

  update f_ipm_cart set ipc_motivo = 'PEND';

  update ipm_fact set fact_estado = '0';

  update f_mulfar set mf_control = 'N';

  update ipm_manto set man_descontada = 'N';

  update economato set eco_control = 'N';
COMMIT;
end;


