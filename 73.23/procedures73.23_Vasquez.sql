CREATE PROCEDURE chk_dpue(
  catalogo integer,grado smallint, arma
smallint, dependencia smallint, jerarquia char(3),plaza integer,ceom
char(6),desc char(45),situacion char(2),fec_nomb date,ord_gral
char(7),punto_og
smallint ,fec_cese date,accion char(1),usuario char(12),fecha datetime year
to minute )
  DEFINE fec date;
  select max(pue_fec_cese) into fec
  from dpue where pue_catalogo=catalogo and pue_fec_nomb<>fec_nomb
  and pue_plaza <> plaza;
  IF fec>=fec_nomb THEN
    RAISE EXCEPTION -746, 0, "HAY UNA FECHA DE CESE MAYOR O IGUAL QUE LA DE NOMBRAMIENTO QUE INGRESO";
  ELSE
    insert into aud_dpue ( desp_catalogo,desp_grado,
    desp_arma,desp_dependencia,desp_jerarquia,desp_plaza,
    desp_ceom,desp_desc,desp_situacion,desp_fec_nomb,
    desp_ord_gral,desp_punto_og,desp_fec_cese,accion,
    usuario,hora)  values ( catalogo
    ,grado ,arma ,dependencia
    ,jerarquia ,plaza ,ceom
    ,desc ,situacion ,fec_nomb
    ,ord_gral ,punto_og ,fec_cese
    ,accion ,usuario ,fecha );
  END IF
END PROCEDURE
; GO



CREATE PROCEDURE chk_dpue1(catalogo integer,grado smallint, 
   arma smallint, dependencia smallint, jerarquia char(3),plaza integer,
   ceom char(6),desc char(45),situacion char(2),fec_nomb date,
   ord_gral char(7),punto_og smallint ,fec_cese date,
   accion char(1),usuario char(12),fecha datetime year to minute )
  DEFINE fec date;
  select max(pue_fec_cese) into fec
  from dpue_prueba where pue_catalogo=catalogo and pue_fec_nomb<>fec_nomb
  and pue_plaza <> plaza;
  IF fec>=fec_nomb THEN
    RAISE EXCEPTION -746, 0,
 "HAY UNA FECHA DE CESE MAYOR O IGUAL QUE LA DE NOMBRAMIENTO QUE INGRESO";
  ELSE
    insert into aud_dpue_prueba ( desp_catalogo,desp_grado,
    desp_arma,desp_dependencia,desp_jerarquia,desp_plaza,
    desp_ceom,desp_desc,desp_situacion,desp_fec_nomb,
    desp_ord_gral,desp_punto_og,desp_fec_cese,accion,
    usuario,hora)  
    values ( catalogo
    ,grado ,arma ,dependencia
    ,jerarquia ,plaza ,ceom
    ,desc ,situacion ,fec_nomb
    ,ord_gral ,punto_og ,fec_cese
    ,accion ,usuario ,fecha );
  END IF
END PROCEDURE; GO





CREATE PROCEDURE ejecutar_si_ultimo_dia()
    DEFINE hoy DATE;
    DEFINE manana DATE;
    DEFINE fecha_ajustada DATETIME YEAR TO SECOND;

    LET fecha_ajustada = CURRENT - (INTERVAL(6) HOUR TO HOUR);


    LET hoy = fecha_ajustada::DATE;
    LET manana = hoy + 1;

    IF DAY(manana) = 1 THEN

       CALL cierre_mensual();
      -- dbms_out_line: "si hoy ultimo dia "

    ELSE

    END IF;

END PROCEDURE;
GO

CREATE PROCEDURE procedimiento_conexiones(latitud decimal(24,6), longitud decimal(24,6))
    DEFINE v_contador INTEGER;
    DEFINE v_hostname VARCHAR(15);

    -- Obtener la IP del cliente
    LET v_hostname = DBINFO('dbhostname');

    -- Verificar si el usuario ya tiene un registro en la tabla
    SELECT COUNT(*) INTO v_contador
    FROM historial_conexiones
    WHERE usuarios = USER;

    IF v_contador = 0 THEN
        -- Si no hay registros para el usuario, hacer un INSERT
        INSERT INTO historial_conexiones (usuarios, ultima_conexion, hostname, latitudes, longitudes)
        VALUES (USER, CURRENT - INTERVAL(6) HOUR TO HOUR, v_hostname, latitud, longitud);
    ELSE
        -- Si ya existe un registro, hacer un UPDATE
        UPDATE historial_conexiones
        SET ultima_conexion = CURRENT - INTERVAL(6) HOUR TO HOUR, hostname = v_hostname, latitudes = latitud, longitudes = longitud
        WHERE usuarios = USER;
    END IF;
END PROCEDURE;
GO





CREATE PROCEDURE spf_desc_ini()

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

end procedure;
GO



