CREATE OR REPLACE FUNCTION arco_sp_pcomando(cat IN NUMBER,  grado IN NUMBER,fec IN DATE)
RETURN NUMBER 
IS
   
--***** PARA EL PRIMER QUERY --***
     v_pcomando NUMBER := 0;
	 meom_m VARCHAR2(6) := ' ';
	 meomdesc  VARCHAR2(35) := ' ';
	 gradod VARCHAR2(8) := ' ';
	 descempleo VARCHAR2(45) := ' ';
	 cati NUMBER := 0;
	 plaza NUMBER := 0;
	 fecnom date;
	 dependencia NUMBER := 0;
     arm NUMBER := 0;
     gradesc VARCHAR2(8) := ' ';
     descdependencia VARCHAR2(15) := ' ';
     fechoy date;
--***** PARA EL SEGUNDO QUERY --***

    -- v_pcomando NUMBER := 0;
	 meom_m1 VARCHAR2(6) := ' ';
	 meomdesc1  VARCHAR2(35) := ' ';
	 gradod1 VARCHAR2(8) := ' ';
     gradon NUMBER := 0;
	 descempleo1 VARCHAR2(45) :=' ';
	 cati1 NUMBER := 0;
	 plaza1 NUMBER := 0;
	 fecnom1 date;
	 dependencia1 NUMBER := 0;
     arm1 NUMBER := 0;
     gradesc1 VARCHAR2(8) := ' ';
     descdependencia1 VARCHAR2(15) := ' ';
   --  fechoy date;
     feccese date;


    --LET fechoy date;
   -- LET feccese date;

BEGIN
-----***************************************************
IF grado >= 81 THEN
    
   -- FOREACH
            SELECT per_catalogo,org_ceom,meom_desc_lg, gra_desc_ct,arm_codigo, per_desc_empleo, per_plaza,
            per_fec_nomb,dep_llave,dep_desc_ct 
            INTO
            cati,meom_m,meomdesc,gradod,arm,descempleo,plaza,fecnom,dependencia,descdependencia
            FROM mper,morg,meom,grados,mdep,armas
            WHERE per_plaza = org_plaza
            AND per_arma = arm_codigo
            AND org_ceom = meom_ceom
            AND per_grado = gra_codigo
            AND org_dependencia = dep_llave
            AND per_catalogo = cat
            AND meom_ceom IN ('O11E90','O81G60','O11E80','O11E70','O11D60','O11H70',
            'O11E60', 'O11B60', 'O12E90', 'O12E80', 'O12E70', 'O12C60', 'O80P90', 'O80P80',
            'O80P70', 'O10C60', 'O10C61', 'O13D90', 'O13D80', 'O13D70', 'O13D50','O81P92','O00C60');

            IF cati is not null THEN
                INSERT INTO arco_pcomando
                VALUES (cat,meom_m,meomdesc,grado,gradod,arm,descempleo,plaza,fecnom,fechoy,dependencia,descdependencia,fec);
            END IF;

--------------****************************



END IF ;
IF grado >= 81 THEN
       FOR REC IN(
             SELECT pue_catalogo,pue_ceom,meom_desc_lg,pue_grado, gra_desc_ct,pue_arma, pue_desc, pue_plaza,
            pue_fec_nomb, pue_fec_cese,dep_llave, dep_desc_ct
            INTO cati1,meom_m1,meomdesc1,gradon,gradod1,arm1,descempleo1,plaza1,fecnom1,feccese,dependencia1,descdependencia1
            FROM  morg, meom, grados, dpue, mdep
            WHERE pue_plaza = org_plaza
            AND org_ceom = meom_ceom
            AND pue_grado = gra_codigo
            AND pue_catalogo = pue_catalogo
            AND pue_dependencia = dep_llave
            AND pue_catalogo = cat
            AND pue_ceom IN ('O11E90','O81G60','O11E80','O11E70','O11D60','O11H70',
            'O11E60', 'O11B60', 'O12E90', 'O12E80', 'O12E70', 'O12C60', 'O80P90', 'O80P80',
            'O80P70', 'O10C60', 'O10C61', 'O13D90', 'O13D80', 'O13D70', 'O13D50','O81P92','O00C60')
       )LOOP

            IF cati1 is not null THEN
                INSERT INTO arco_pcomando
                VALUES (cat,meom_m1,meomdesc1,gradon,gradod1,arm1,descempleo1,plaza1,fecnom1,feccese,dependencia1,descdependencia1,fec);
           END IF;
           END LOOP;

END IF; 


 SELECT COUNT(pcom_catalogo) INTO v_pcomando FROM arco_pcomando WHERE pcom_fec = fec;


RETURN v_pcomando;
END arco_sp_pcomando;
/

CREATE OR REPLACE FUNCTION arco_sp_pafe(cat  IN NUMBER, fec IN  DATE, grado  IN NUMBER,ultimo  IN DATE)
RETURN NUMBER 
AS
--RETURNING DECIMAL (5,2)
  v_nota_pafe NUMBER := 0;
  v_prom_pafe NUMBER := 0;
  v_lleva_pafe NUMBER := 0; -- SUMA LAS NOTAS OBTETENIDAS EN CADA PAFE
  v_suma_pafe NUMBER := 0; 
 v_suma_pafe1 NUMBER := 0; 
 v_suma_pafe2  NUMBER := 0;
  cuenta_pafe  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_gra_pafe NUMBER := 0;
  v_cuenta NUMBER := 0; 
 v_cuenta1 NUMBER := 0;
  v_pond   NUMBER := 0 ;
  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
  v_f_pafe    DATE := '1900-01-01'; -- GUARDA LA FECHA DE LA PAFE
  v_tiempo_g  NUMBER := 0;
 -- v_tiempo_gr  := 0;
  v_tiempo_o  NUMBER := 0;
 tot_pafe  NUMBER := 0;
  i NUMBER := 0;
  j         NUMBER := 0;
  dmil NUMBER := 0;
  v_pafe_mas   NUMBER:= 0;
  v_tipo VARCHAR2(100) := ' '; --GUARDA EL TIPO DE PAFE PARA EL INSERT


BEGIN
    v_f_periodo := ultimo + 60 ;

------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo = cat;

----***************************************************************************

SELECT COUNT(not_promedio) INTO  tot_pafe --VA A TRAER CUANTAS PAFES TIENE EL OFICIAL EN SU GRADO ACTUAL
FROM   opaf_notas
WHERE  not_catalogo = cat
AND not_grado = grado 
AND not_tipo IN ('Z','A')
AND not_fecha < fec;

---------------------------******************-----------------------------------------

IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O

  IF v_tiempo_g > 0 AND v_tiempo_g <= 600 THEN 
	 cuenta_obli := 1;
	ELSIF v_tiempo_g > 600 AND v_tiempo_g <= 1130 THEN
    cuenta_obli := 2;
 END IF;
ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
   FOR i IN 5000..(v_tiempo_g/5000)LOOP-- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
       j    := j + 1;
       dmil := dmil + 5000;
   END LOOP;
  cuenta_obli := j;
   IF v_tiempo_g - dmil > 0 AND v_tiempo_g - dmil <= 600  THEN
     cuenta_obli := cuenta_obli + 1;
    IF 
     v_tiempo_g - dmil > 600 AND v_tiempo_g - dmil <= 1130 THEN
         cuenta_obli := cuenta_obli + 2;
   END IF;
   END IF;
END IF;


---------------------------******************-----------------------------------------
---------------------------******************-----------------------------------------


IF grado >=92 AND grado<=97  THEN -- LOS GENERALES SE LES CONTABILIZAN PARA LA DIVISION LA CANTIDAD QUE TENGAN
   FOR REC IN(                       -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
   SELECT unique not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
   FROM   opaf_notas
   WHERE  not_catalogo = cat
         AND not_fecha  BETWEEN fec - 60 AND fec
         AND not_tipo IN ('Z','A')
         ORDER BY not_fecha
   )LOOP
   IF v_lleva_pafe  <> 0 THEN
      cuenta_pafe := cuenta_pafe + 1;
   END IF;
   --LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;
   INSERT INTO arco_pafes
   VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);
----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	v_pafe_mas := 100;
	v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	 v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	 v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
        v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	    v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF; 

----***********************************-----

   END LOOP;
   IF v_suma_pafe <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
      v_prom_pafe := v_suma_pafe/cuenta_pafe;
   END IF;
END IF;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- PARA LOS CORONELES ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
---+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

IF grado >=88 AND grado<=89   THEN -- PARA EL RESTO DE LOS grado
      IF v_tiempo_g >10000 AND v_tiempo_g  < 50000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN (                                         -- PERO MENOS DE CINCO A�OS SE LE CALCULA LAS QUE TENGA EN EL GRADO
          SELECT not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado
                  AND not_tipo IN ('Z','A')
                  AND not_fecha < fec
                  ORDER BY not_fecha DESC
        )LOOP
             cuenta_pafe := cuenta_pafe +1;
           IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS

----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	   v_pafe_mas := 100;
	   v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	   v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	    v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	    v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
        v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	     v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	    v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF;

----***********************************-----


             -- LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;
              INSERT INTO arco_pafes
              VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);
           END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
              v_prom_pafe := v_suma_pafe/cuenta_obli;
        END IF;
      END IF;
      IF v_tiempo_g  > 50000  THEN -- POR SI EL CORONEL  TIENE MAS 5  A�O EN EL GRADO
         FOR REC IN(                   -- SE CALCULAN
          SELECT not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                --AND not_fecha >= v_f_periodo
                  AND not_fecha  BETWEEN fec - 60  AND fec
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
         ) LOOP
            cuenta_pafe := cuenta_pafe +1;
         IF cuenta_pafe <= 10  THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            --LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;

----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	    v_pafe_mas := 100;
	    v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	    v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	    v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	    v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
     v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	   v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	   v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF; 

----***********************************-----

              INSERT INTO arco_pafes
              VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
           v_prom_pafe := v_suma_pafe/10; -- EN CINCO A�OS DEBERIAN DE TENER 2 PAFES POR A�O OBLIGADAS 10
        END IF;
      END IF;
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
          SELECT unique not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado --v_gra_ante
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
        )LOOP

           cuenta_pafe := cuenta_pafe + 1;
	
         IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS

----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	 v_pafe_mas := 100;
	 v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	 v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	 v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	 v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
 v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	 v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	  v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF;

----***********************************-----

            --LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;
              INSERT INTO arco_pafes
              VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
              v_prom_pafe := v_suma_pafe/(cuenta_obli);
        END IF;
      END IF;
END IF;

---+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- PARA LOS QUE SON MENORES QUE CORONELES---------------------------------------------------------------------------------
---+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
IF grado >= 38 AND grado <= 87 THEN


      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
          SELECT unique not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado --v_gra_ante
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
        )LOOP
             cuenta_pafe := cuenta_pafe +1;
		 
		 
         IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            --LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;


----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	 v_pafe_mas := 100;
	 v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	 v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	 v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	 v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
 v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	     v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	    v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF; 

----***********************************-----

              INSERT INTO arco_pafes
              VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);
         END IF;
        END LOOP;
		
		--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
     	if tot_pafe = 1 then 
           v_prom_pafe := v_suma_pafe/(1);
		   else 
		       v_prom_pafe := v_suma_pafe/(2);
		   end if;
          -- LET v_prom_pafe= v_suma_pafe/(cuenta_obli);
        END IF;
	--*******************
	--*******************
	--*******************
      ELSE
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ACTUAL
          SELECT unique not_promedio,not_fecha,not_grado,not_tipo
          INTO v_lleva_pafe,v_f_pafe,v_gra_pafe,v_tipo
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado
                  AND not_tipo IN ('Z','A')
                  AND not_fecha < fec
                  ORDER BY not_fecha DESC

        )LOOP
               

----------------------------

				  
				  
           cuenta_pafe := cuenta_pafe + 1;
		 
         --IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
           -- LET v_suma_pafe = v_suma_pafe + v_lleva_pafe;

----- esto es nuevo ------------------
IF v_lleva_pafe >= 100 THEN
	 v_pafe_mas := 100;
	 v_suma_pafe1 := v_suma_pafe1 + v_lleva_pafe;
	 v_cuenta := v_cuenta + 1;
	
ELSIF v_lleva_pafe < 100 THEN
	    v_suma_pafe2 := v_suma_pafe2 + v_lleva_pafe;
	    v_cuenta1 := v_cuenta1 + 1;
	
END IF;

IF (v_suma_pafe1 > 0 AND v_suma_pafe2 = 0) OR (v_suma_pafe1 > 0 AND v_suma_pafe2 IS NULL) THEN
    v_suma_pafe := (v_pafe_mas * v_cuenta);
	--LET v_suma_pafe = v_suma_pafe1;

ELSIF (v_suma_pafe1 = 0 AND v_suma_pafe2 > 0) OR (v_suma_pafe1 IS NULL AND v_suma_pafe2 > 0) THEN
	    v_suma_pafe := v_suma_pafe2;

ELSIF v_suma_pafe1 > 0 AND v_suma_pafe2 > 0  THEN 
	    v_suma_pafe := (v_pafe_mas * v_cuenta ) + v_suma_pafe2;
END IF; 

----***********************************-----
			
			
              INSERT INTO arco_pafes
              VALUES (cat,v_f_pafe,v_gra_pafe,v_lleva_pafe,v_tipo,fec);

             
         --END IF
        END LOOP;
               
		
       IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS

          

                 v_prom_pafe := v_suma_pafe/(cuenta_obli);
          -- LET v_prom_pafe= v_suma_pafe/(cuenta_obli);
        END IF;

      END IF;
END IF;
-- ********* PARA CALCULAR LA NOTA DEL OFICIAL EN APTITUD FISICA
-- ********* EL PORCENTAJE DE APTITUD FISICA
IF v_tiempo_g < 1000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
  ---------******************-----------------
   SELECT pon_pafe INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado --v_gra_ante 
   AND pon_vigencia = 1;
   IF v_prom_pafe = 0  THEN -- SI HAY ALGUIEN QUE NO TENGA PAFES
       v_nota_pafe := 0 ;
   END IF;
   IF v_prom_pafe > 100 THEN -- SI HAY ALGUIEN CON PROMEDIO MAYOR A 100 PTS EN PAFES
        v_prom_pafe := 100;
        v_nota_pafe := v_prom_pafe * (v_pond/100);
   END IF;
   IF v_prom_pafe <= 100 THEN     -- SI ALGUIEN TIENEN PAFES Y SU PROMEDIO ES NORMAL
        v_nota_pafe := v_prom_pafe * (v_pond/100);
   END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
  ---------******************-----------------
   SELECT pon_pafe INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia = 1;
  IF v_prom_pafe = 0  THEN -- SI HAY ALGUIEN QUE NO TENGA PAFES
     v_nota_pafe := 0 ;
  END IF;
  IF v_prom_pafe > 100 THEN -- SI HAY ALGUIEN CON PROMEDIO MAYOR A 100 PTS EN PAFES
       v_prom_pafe := 100;
       v_nota_pafe := v_prom_pafe * (v_pond/100);
  END IF;
  IF v_prom_pafe <= 100 THEN     -- SI ALGUIEN TIENEN PAFES Y SU PROMEDIO ES NORMAL
       v_nota_pafe := v_prom_pafe * (v_pond/100);
  END IF;
END IF;

RETURN v_nota_pafe ;
END arco_sp_pafe;
/

CREATE OR REPLACE FUNCTION arco_sp_anual(fec_anual IN DATE)
RETURN NUMBER
IS
  v_ofs NUMBER := 0;
  cat mper.per_catalogo%TYPE;
  gra mper.per_grado%TYPE;
  arm mper.per_arma%TYPE;
  clase grados.gra_clase%TYPE;
  equi mper.per_grado%TYPE;
  plaza mper.per_plaza%TYPE;
  gra_equil arco_grados.arcgra_equivale%TYPE;
  promo mper.per_promocion%TYPE;
  plaza_esca arco_jefes.ajef_esca%TYPE;
  categoria arco_jefes.ajef_categoria%TYPE;
  ultimo tiempos.t_ult_asc%TYPE;
  proximo tiempos.t_prox_asc%TYPE;
  nota NUMBER(6,2) := 99.99;
  ubica arco_escalafon.esca_ubica%TYPE := 0;
  fecha arco_escalafon.esca_fec%TYPE;
  v_nota NUMBER(5,2) := 0;
  pcomando NUMBER := 0;
  v_capacidad NUMBER(4,2) := 0;
  v_evads NUMBER(4,2) := 0;
  v_conducta NUMBER(4,2) := 0;
  v_pafe NUMBER(4,2) := 0;
  v_biof NUMBER(4,2) := 0;
  v_pcomando NUMBER(4,2) := 0;
  v_creditos NUMBER(4,2) := 0;
  ubica_up NUMBER(5) := 0;
  llama NUMBER(5) := 0;
BEGIN
  DELETE FROM arco_escalafon1 WHERE esca_fec = fec_anual;
  DELETE FROM arco_escalafon WHERE esca_fec = fec_anual;
  DELETE FROM arco_notas WHERE not_fecha = fec_anual;
  DELETE FROM arco_evads WHERE evad_fecha = fec_anual;
  DELETE FROM arco_dcur WHERE acur_esca = fec_anual;
  DELETE FROM arco_pafes WHERE pafe_esca = fec_anual;
  DELETE FROM arco_sanciones WHERE asan_esca = fec_anual;
  DELETE FROM arco_capacitaciones WHERE acap_esca = fec_anual;
  DELETE FROM arco_dcon WHERE acon_esca = fec_anual;
  DELETE FROM arco_obligatorio WHERE aobli_esca = fec_anual;
  DELETE FROM arco_notas WHERE not_fecha = fec_anual;

  FOR rec IN (
    SELECT per_catalogo, per_grado, arcgra_equivale,
           per_plaza, ajef_esca, t_ult_asc, t_prox_asc,
           gra_clase, per_promocion, ajef_categoria, per_arma
    FROM mper, grados, arco_grados, arco_jefes, tiempos
    WHERE per_plaza NOT IN (9999, 99999) AND ajef_plaza = per_plaza
      AND per_grado > 39 AND t_catalogo = per_catalogo
      AND gra_codigo = arcgra_codigo
      AND gra_clase IN (1, 2) AND per_grado = gra_codigo
    ORDER BY 2 DESC, 5, 7
  ) LOOP
    IF gra < 88 THEN
      plaza_esca := 100;
    END IF;

    v_capacidad := arco_sp_capacidad(cat, gra, fec_anual);
    v_evads := arco_sp_evad(cat, fec_anual, gra, ultimo);
    v_conducta := arco_sp_condu(cat, fec_anual, gra, ultimo);
    v_pafe := arco_sp_pafe(cat, fec_anual, gra, ultimo);
    v_biof := arco_sp_bio(cat, fec_anual, gra);
    v_creditos := arco_sp_meri(cat, fec_anual, gra);
    v_pcomando := arco_sp_pcomando(cat, gra, fec_anual);

    ubica := ubica + 1;
    v_nota := v_capacidad + v_evads + v_conducta + v_pafe + v_biof + v_creditos;
    nota := v_nota;

    INSERT INTO arco_escalafon1
    VALUES (cat, gra, gra_equil, plaza, plaza_esca, ultimo, proximo, nota, promo, categoria, arm, fec_anual);

    INSERT INTO arco_notas
    VALUES (cat, fec_anual, v_capacidad, v_evads, v_conducta, v_pafe, v_biof, v_creditos);
  END LOOP;

  SELECT COUNT(esca_cat)
  INTO v_ofs
  FROM arco_escalafon1
  WHERE esca_fec = fec_anual;

  RETURN v_ofs;
END arco_sp_anual;
/

CREATE OR REPLACE FUNCTION arco_sp_bio(cat IN NUMBER, fecha_esca IN DATE, v_grado IN NUMBER)
RETURN NUMBER
IS
  v_nota_bio NUMBER(5,2);
  v_diagno   NUMBER(5);
  v_pond     NUMBER(5,2);
BEGIN
  v_diagno := 0;
  v_pond := 0;
  v_nota_bio := 0;

  -- TRAE LA ULTIMA EVALUACION EN SU DIAGNOSTICO
  SELECT e_diagnost INTO v_diagno
  FROM evaluaciones
  WHERE e_fecha = (SELECT MAX(e_fecha) FROM evaluaciones WHERE e_catalogo = cat)
    AND e_catalogo = cat;

  -- TRAE EL VALOR DE EL PERFIL EN LA TABLA DE PONDERACIONES DE ESCALAFON Y QUE ESTE VIGENTE
  SELECT pon_biof INTO v_pond
  FROM arco_ponderacion
  WHERE pon_grado = v_grado
    AND pon_vigencia = 1;

  -- EL VALOR DE PONDERACION % POR DIAGNOSTICO
  IF v_diagno = 1 OR v_diagno = 3 THEN
    v_nota_bio := (v_pond / 100) * 66;
  ELSIF v_diagno = 2 THEN
    v_nota_bio := (v_pond / 100) * 100;
  ELSIF v_diagno = 4 THEN
    v_nota_bio := (v_pond / 100) * 33;
  ELSIF v_diagno = 5 OR v_diagno = 6 THEN
    v_nota_bio := (v_pond / 100) * 0;
  END IF;

  RETURN v_nota_bio;
END arco_sp_bio;
/
CREATE  OR REPLACE FUNCTION arco_sp_capacidad(cat IN NUMBER,  grado IN NUMBER,fec IN DATE)
RETURN NUMBER
IS
  -- Par�metros de salida deben definirse como OUT

 v_punteo   NUMBER  := 0;
 v_pond   NUMBER:= 0;
 v_tiempo_g NUMBER;
 v_curso    NUMBER := 0;
 v_gra_ante NUMBER := 0;
   v_nota_cap NUMBER :=0;


BEGIN

------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
------------**********-----------------------
SELECT arcgra_anterior INTO v_gra_ante
 FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA DETERMINAR SU PONDERACION EN ESE GRADO SI
WHERE arcgra_codigo = grado;
--------******************----------------------


-- INICIA CON GRADO DE TTE. CORONEL Y CORONEL
IF grado >=75  OR grado <= 97   THEN -- BUSCA EL CURSO DEM , DEMN o DEMA
                                    -- QUE SE HAYA REALIZADO EN EL PAIS
                                    -- SI   NO BUSCA SI LO SACO EN OTRO PAIS
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- SI NO SI HAY HOMOLOGACION DE TTE CNEL A GENERAL
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso IN (43)
           AND cur_pais = 502 
           AND cur_punteo >= 0
            group by cur_curso;
           -- group by cur_curso;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
     SELECT  max (cur_punteo),cur_curso INTO v_punteo,v_curso
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso IN (43)
           AND cur_pais <> 502 AND cur_escuela <> 2
           AND cur_punteo >= 0
            group by cur_curso;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_equi IN (43)
           AND cur_punteo >= 0
            group by cur_curso;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    v_punteo := 0 ;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE CURSO DEM
    END IF;
END IF;
----FINALIZA CON GRADO DE TTE. CORONEL Y CORONEL


-- INICIA CON GRADO DE MAYOR
IF grado >= 72 AND grado <=74 THEN -- BUSCA EL DEM EN PRIMERA INSTANCIA SI NO CURSOS EQUIVALENETES PARA MAYORES
                                   -- SI NO BUSCA EL AVANZADO SI NO CURSOS EQUIVALENETES AL AVANZADO
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA DEM
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso IN (710,711,712)
           AND cur_pais = 502
           AND cur_punteo >= 0
            group by cur_curso;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso IN (710,711,712)
           AND cur_pais <> 502 AND cur_escuela <> 2
           AND cur_punteo >= 0
            group by cur_curso;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_equi IN (710,711,712)
           AND cur_punteo >= 0
        group by cur_curso;
    END IF;
     SELECT max(cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA AVAZADO
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso >= 729 AND cur_curso <= 742
           AND cur_pais =   502 
           AND cur_punteo >= 0
            group by cur_curso;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso >= 729 AND cur_curso <= 742
           AND cur_pais <> 502 AND cur_escuela <> 2
           AND cur_punteo >= 0
            group by cur_curso;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
     SELECT max(cur_punteo),cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_equi >=729 AND cur_equi <=742
           AND cur_punteo >= 0
            group by cur_curso;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    v_punteo := 0 ;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE CURSO DEM
    END IF;

END IF;
--FINALIZA CON GRADO DE MAYOR 


--INICIA CON GRADO DE CAPITAN PRIMERO
IF grado >= 64 AND grado <=66 THEN -- BUSCA EL AVANZADO EN PRIMERA INSTANCIA SI NO CURSOS EQUIVALENETES PARA CAPITAN PRIMERO
                                   -- SI NO BUSCA CURSOS EQUIVALENETES AL AVANZADO Y SI NO BUSCA EL EXAMEN DE ASCENSO
     SELECT max(cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA AVANZADO
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso >=729 and cur_curso <=742
           AND cur_pais = 502 
           AND cur_punteo >= 0
            group by cur_curso;
    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
		SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_curso >=729 and cur_curso <=742
		AND cur_pais <> 502 AND cur_escuela <> 2
        AND cur_punteo > 0
        group by cur_curso;
    END IF;

    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
		SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_equi  >=729 and cur_equi <=742
        AND cur_punteo > 0
        group by cur_curso;
    END IF;



    IF  v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    v_punteo := 0;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE informix DEM
    END IF;
END IF;
--FINALIZA CON GRADO DE CAPITAN PRIMERO


-- INICIA CON GRADO DE CAPITAN SEGUNDO 
IF grado >= 58 AND grado <=60 THEN -- BUSCA EL EX�?EN DE ASCENSO EN PRIMERA INSTANCIA SI NO CURSOS EQUIVALENETES PARA CAPITAN SEGUNDO
                                   -- SI NO BUSCA CURSOS EQUIVALENETES AL B�?ICO 

     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA EL BASICO
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso in (3201)-- CODIGOS CURSO B�?ICO (AIRE,MAR,TIERRA)
           AND cur_pais = 502 
           AND cur_punteo >= 0
           group by cur_curso;
	/* END IF;  */		-- HAY QUE DESCOMENTARIAR CUANDO SE HAGA EN EL IF DE ARRIBA TAMBIEN
	
    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
		SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_curso in(3201)
		AND cur_pais <> 502 AND cur_escuela <> 2
        AND cur_punteo >= 0
           group by cur_curso;
    END IF;
	
    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
		SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_equi  in(3201)
        AND cur_punteo >= 0
        group by cur_curso;
    END IF;
	
    IF v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    v_punteo := 0;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE AVANZADO
    END IF;
END IF;
--FINALIZA CON GRADO DE CAPITAN SEGUNDO


--INICIA CON GRADO  Y TENIENTE
IF grado >= 45 AND grado <=47 THEN -- BUSCA EL BASICO EN PRIMERA INSTANCIA SI NO EL EXAMEN DE ASCENSO A TENIENTES
                                   -- SI NO BUSCA CURSOS EQUIVALENETES AL B�?ICO 

     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA EL BASICO
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso in(750,751, 752, 753, 754, 755, 756, 777, 781, 783, 1001, 1020, 1099)  -- CODIGOS DE CURSO B�?ICO (AIRE,MAR,TIERRA)
           AND cur_pais = 502 
           AND cur_punteo > 0
           group by cur_curso;
           

    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
		SELECT unique cur_punteo,cur_curso INTO v_punteo,v_curso
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_curso in(750,751, 752, 753, 754, 755, 756, 777, 781, 783, 1001, 1020, 1099)
		AND cur_pais <> 502 AND cur_escuela <> 2
        AND cur_punteo > 0;
        --group by cur_curso;
    END IF;
	
    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
		SELECT unique cur_punteo,cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_equi  in(750,751, 752, 753, 754, 755, 756, 777, 781, 783, 1001, 1020, 1099)
        AND cur_punteo > 0;
        --group by cur_curso;
    END IF;
	
	/*
	IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE EL EXAMEN DE ASCENSO
			SELECT cur_punteo,cur_curso INTO v_punteo,v_curso -- BUSCA EXAMEN DE ASCENSO PARA SUBTENIENTES Y TENIENTES
			FROM   dcur										--ESTA COMENTARIADO PORQUE NO SE HA CREADO EL CODIGO 
			WHERE cur_catalogo = cat						--DEL EXAMEN DE ASCENSO
				AND cur_curso = XXXXX    -- AQU�?VA EL CODIGO DEL EXAMEN DE ASCENSO PARA SUBTENIENTES Y TENIENTES
				AND cur_pais =   502 AND cur_escuela = 2
				AND cur_punteo > 0;
	END IF;
	*/
    IF  v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
     v_punteo := 0;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE AVANZADO
    END IF;
END IF;

--------------------------
-- para los subtenientres va a buscar el codigo del examen de capacidad profesional
IF grado >= 39 AND grado <=41 THEN -- BUSCA codigo del examen de capacidad profesional
                                 

     SELECT  max (cur_punteo),cur_curso INTO v_punteo,v_curso -- BUSCA EL BASICO
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso in(3200)  -- CODIGOS DE CURSO B�?ICO (AIRE,MAR,TIERRA)
           AND cur_pais = 502 
           AND cur_punteo > 0
           group by cur_curso;

    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI LO SACO EN OTRO PAIS
		SELECT unique cur_punteo,cur_curso INTO v_punteo,v_curso
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_curso in(3200)
		AND cur_pais <> 502 AND cur_escuela <> 2
        AND cur_punteo > 0;
       --group by cur_curso;
    END IF;
	
    IF v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
		SELECT unique cur_punteo,cur_curso INTO v_punteo,v_curso -- U HOMOLOGACIONES
		FROM   dcur
		WHERE cur_catalogo = cat
		AND cur_equi  in(3200)
        AND cur_punteo > 0;
           -- group by cur_curso;
    END IF;
	

    IF  v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    v_punteo := 0;          -- EL PUNTEO SE VA A CERO NO TIENE NOTA DE AVANZADO
    END IF;
     RETURN v_punteo;
END IF;


----

IF grado >=90 OR grado <= 97   THEN -- BUSCA EL CURSO ALTOS ESTUDIOS O MAESTRIA EN DEFENSA PARA GENERALES
                                    -- SE DEJA EL CODIGO COMENTARIADO PARA MAESTRIA O ALTOS ESTUDIOS ESTRATEGICOS
                                    -- SI AUTORIZAN ESOS CURSOS PARA LA CLASIFICACION Y EVALUACION ALGUN DIA
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- ALTOS ESTUDIOS ESTRATEGICOS
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso =   2385
           AND cur_punteo > 0
            group by cur_curso; --curso= 2446;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE LA MAESTRIA DE DEFENSA
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso =   2385
           AND cur_punteo > 0
            group by cur_curso; --curso= 2446;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
     SELECT max (cur_punteo),cur_curso INTO v_punteo,v_curso -- A ALTOS ESTUDIOS O A LA MESTRIA
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_equi =   2385
           AND cur_punteo > 0
            group by cur_curso; --curso= 2446;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    -- EL PUNTEO SE VA A CERO
    v_punteo := 0 ;
    END IF;
END IF;
--*** INSERTO EN LA TABLA arco_obligatorio PARA DESPLEIGUES EN WEB***----
IF v_curso IS NULL THEN
   INSERT INTO arco_obligatorio
   VALUES (cat,0,0,fec);
  -- VALUES (cat,0,0,fec);
ELSE 
   INSERT INTO arco_obligatorio
   VALUES (cat,v_curso,v_punteo,fec);
END IF;
SELECT pon_capacidad INTO v_pond
FROM   arco_ponderacion
WHERE  pon_grado = grado AND pon_vigencia =1;
IF v_punteo = 0 THEN
   v_nota_cap := 0;
ELSE
   v_nota_cap := v_punteo*(v_pond/100);
END IF;
  RETURN v_nota_cap;
END arco_sp_capacidad;
/

CREATE OR REPLACE FUNCTION arco_sp_capacidad1(cat IN NUMBER, grado IN NUMBER)
RETURN NUMBER
IS
  v_punteo   NUMBER:= 0;
  v_pond     NUMBER:= 0;
  v_tiempo_g NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_nota_cap NUMBER := 0;
BEGIN


  -- VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
  SELECT t_grado INTO v_tiempo_g
  FROM tiempos
  WHERE t_catalogo = cat;

  -- VA ATRAER SU GRADO ANTERIOR PARA DETERMINAR SU PONDERACION EN ESE GRADO
  SELECT arcgra_anterior INTO v_gra_ante
  FROM arco_grados
  WHERE arcgra_codigo = grado;

  -- BUSCA EL CURSO DEM, DEMN o DEMA QUE SE HAYA REALIZADO EN EL PAIS
  IF grado >= 75 OR grado <= 97 THEN
    SELECT cur_punteo INTO v_punteo
    FROM dcur
    WHERE cur_catalogo = cat
      AND cur_curso IN (710, 711, 712)
      AND cur_pais = 502 AND cur_escuela = 2
      AND cur_punteo > 0;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_curso IN (710, 711, 712)
        AND cur_pais <> 502 AND cur_escuela <> 2
        AND cur_punteo > 0;
    END IF;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_equi IN (710, 711, 712)
        AND cur_punteo > 0;
    END IF;

    IF v_punteo IS NULL THEN
      v_punteo := 0;
    END IF;
  END IF;

  -- BUSCA EL DEM EN PRIMERA INSTANCIA SI NO CURSOS EQUIVALENETES PARA MAYORES
  IF grado >= 72 AND grado <= 74 THEN
    SELECT cur_punteo INTO v_punteo
    FROM dcur
    WHERE cur_catalogo = cat
      AND cur_curso IN (710, 711, 712)
      AND cur_pais = 502 AND cur_escuela = 2
      AND cur_punteo > 0;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_curso IN (710, 711, 712)
        AND cur_pais <> 502 AND cur_escuela <> 2;
    END IF;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_equi IN (710, 711, 712);
    END IF;

    SELECT cur_punteo INTO v_punteo
    FROM dcur
    WHERE cur_catalogo = cat
      AND cur_curso >= 729 AND cur_curso <= 742
      AND cur_pais = 502 AND cur_escuela = 2
      AND cur_punteo > 0;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_curso >= 729 AND cur_curso <= 742
        AND cur_pais <> 502 AND cur_escuela <> 2;
    END IF;

    IF v_punteo IS NULL THEN
      SELECT cur_punteo INTO v_punteo
      FROM dcur
      WHERE cur_catalogo = cat
        AND cur_equi >= 729 AND cur_equi <= 742;
    END IF;

    IF v_punteo IS NULL THEN
      v_punteo := 0;
    END IF;
  END IF;

  -- PARA EL RESTO DE LOS GRADOS SE SIGUE LA MISMA LOGICA
  -- SE BUSCAN LOS CURSOS QUE SE CURSAN EN EL GRADO, INCLUYENDO SACADOS EN EL EXTRANJERO O EQUIVALENCIAS
  -- SI NO SE BUSCA EL CURSO OBLIGATORIO PARA ASCENDER, INCLUYE SACADOS EN OTRO PAIS, O EQUIVALENCIAS DE ACUERDO A DONDE LO HAYA CURSADO
/*{IF grado >=90 OR grado <= 97   THEN -- BUSCA EL CURSO ALTOS ESTUDIOS O MAESTRIA EN DEFENSA PARA GENERALES
                                    -- SE DEJA EL CODIGO COMENTARIADO PARA MAESTRIA O ALTOS ESTUDIOS ESTRATEGICOS
                                    -- SI AUTORIZAN ESOS CURSOS PARA LA CLASIFICACION Y EVALUAALGUN DIA
     SELECT cur_punteo INTO v_punteo -- ALTOS ESTUDIOS ESTRATEGICOS
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso =   2385; --curso= 2446;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE LA MAESTRIA DE DEFENSA
     SELECT cur_punteo INTO v_punteo
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_curso =   2385; --curso= 2446;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE REVISA SI TIENE CURSOS EQUIVALNETES
     SELECT cur_punteo INTO v_punteo -- A ALTOS ESTUDIOS O A LA MESTRIA
     FROM   dcur
     WHERE cur_catalogo = cat
           AND cur_equivale =   2385; --curso= 2446;
    END IF;
    IF    v_punteo IS NULL THEN -- SI NO LO TIENE NINGUNO DE LOS ANTEIORES
    -- EL PUNTEO SE VA A CERO
    v_punteo := 0 ;
    END IF;
END IF;}*/
  SELECT pon_capacidad INTO v_pond
  FROM arco_ponderacion
  WHERE pon_grado = grado AND pon_vigencia = 1;

  IF v_punteo = 0 THEN
    v_nota_cap := 0;
  ELSE
    v_nota_cap := v_punteo * (v_pond / 100);
  END IF;

  RETURN v_nota_cap;
END arco_sp_capacidad1;
/
CREATE OR REPLACE FUNCTION arco_sp_condu(cat IN NUMBER, fec IN DATE, grado IN NUMBER,ultimo IN DATE)
RETURN NUMBER
IS 
 v_nota_con NUMBER := 0;
 v_demerito NUMBER := 0;
 v_limite   NUMBER := 0;
 v_gra_ante NUMBER := 0;
 v_cantidad NUMBER := 0;
 v_sancion NUMBER := 0;
 v_pond   NUMBER := 0;
 v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
 v_f_sancion DATE; -- GUARDA LA FECHA DE  SANCION TABLA ARCO SANCIONESU
 v_tiempo_g  NUMBER := 0;
 -- t_ultimo,t_proximo DATE;

BEGIN
------*****************--------------------

    v_f_periodo := ADD_MONTHS(ultimo, 60); 
    v_f_sancion := TO_DATE('1900-01-01', 'YYYY-MM-DD');  

SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
--
----------------**********-----------------------
--SELECT arcgra_anterior INTO v_gra_ante
-- FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
--WHERE arcgra_codigo = grado;
--------******************----------------------
IF grado = 88 OR grado = 89  THEN

   IF v_tiempo_g > 50000 THEN -- TRAE LOS DEMERITOS CON MAS DE CINCO A�OS EN EL GRADO
     SELECT SUM(san_cantidad) INTO v_demerito      -- DE LOS CORONELES EN SU SEGUNDO PERIODO DEL GRADO
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat 
            AND det_grado= grado
           AND san_tipo = 'D'
           AND det_sancion = san_codigo
           AND det_fecha >= v_f_periodo;
		  
		  --IF v_demerito > 0 THEN 
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
       FOR REC IN(
       SELECT san_cantidad,det_fecha,det_sancion
      
       FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
       WHERE det_catalogo = cat
             AND det_grado=  grado
             AND san_tipo='D'
             AND det_sancion = san_codigo
            AND det_fecha >= v_f_periodo
       )LOOP

       INSERT INTO arco_sanciones
       VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
	   
     END LOOP;
	 --END IF
   END IF;                               -- DE CORONEL
   --IF v_tiempo_g > 50000 AND v_tiempo_g < 60000 THEN -- TRAE LOS DEMERITOS DEL PRIMER PERIODO DE LOS CORONELES
    -- SELECT SUM(san_cantidad) INTO v_demerito      -- DEMAS DE CINCO A�OS Y
    -- FROM psan_sanciones, psan_detalle             -- QUE NO LLEGAN A UN A�O EN EL SEGUNDO PERIODO
     --WHERE det_catalogo = cat AND det_grado= grado
      --     AND san_tipo='D'
       --    AND det_sancion = san_codigo
         --  AND det_fecha BETWEEN ultimo AND  v_f_periodo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
     --FOREACH
     --  SELECT san_cantidad,det_fecha,det_sancion
      -- INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
      -- FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
      -- WHERE det_catalogo = cat
        --     AND det_grado=  grado
        --     AND san_tipo='D'
          --   AND det_sancion = san_codigo
          --  AND det_fecha BETWEEN ultimo AND  v_f_periodo--ENTRE LA ULTIMA FECHA DE ASCENSO A LA FECHA A LOS CINCO A�OS DE CORONEL
       --INSERT INTO arco_sanciones
      -- VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
    -- END FOREACH
 --  END IF
   IF v_tiempo_g  > 10000 AND v_tiempo_g < 50000 THEN ---- LOS CORONELES CON MAS DE UN A�O DE CORONEL PERO MENOS DE CINCO
     SELECT SUM(san_cantidad) INTO v_demerito
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat AND det_grado= grado
           AND san_tipo='D'
           AND det_sancion = san_codigo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
     FOR REC IN(
       SELECT san_cantidad,det_fecha,det_sancion
       INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
       FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
       WHERE det_catalogo = cat
             AND det_grado=  grado
             AND san_tipo='D'
             AND det_sancion = san_codigo
     )LOOP
       INSERT INTO arco_sanciones
       VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
     END LOOP;
   END IF;
   IF v_tiempo_g  < 10000  THEN -- CORONEL CON MENOS DE UN A�O TRAE LOS DEMERITOS DE TTE CNEL
     SELECT SUM(san_cantidad) INTO v_demerito
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat AND det_grado= grado --v_gra_ante
           AND san_tipo='D'
           AND det_sancion = san_codigo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
     FOR REC IN(
       SELECT san_cantidad,det_fecha,det_sancion
       INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
       FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
       WHERE det_catalogo = cat
             AND det_grado= grado -- v_gra_ante
             AND san_tipo='D'
             AND det_sancion = san_codigo
     )LOOP 
     INSERT INTO arco_sanciones
       VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
     END LOOP;
   END IF;
END IF;

--IF grado <>88 OR grado<>89   THEN -- PARA EL RESTO DE LOS grado
   IF grado >= 90 AND  grado <= 97 THEN   --EXEPTUANDO GENERALES DE BRIGADA SE LES CALCULA SUS ULTIMOS 3 A�OS DE CORONEL
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO GENERAL
        SELECT SUM(san_cantidad) INTO v_demerito
        FROM psan_sanciones, psan_detalle
        WHERE det_catalogo = cat AND san_tipo='D'
              AND det_sancion = san_codigo                 -- LOS ACUMULADOS EN EN SUS TRES ULTIMOS A�OS COMO COROENEL
              AND det_fecha BETWEEN ultimo  - 36  AND  ultimo ;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
         FOR REC IN (
            SELECT san_cantidad,det_fecha,det_sancion
            INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
            FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
            WHERE det_catalogo = cat
                  AND san_tipo='D'
                  AND det_sancion = san_codigo
                  AND det_fecha BETWEEN ultimo - 36 AND ultimo --ENTRE LA ULTIMA FECHA DE ASCENSO A TRES A�OS ANTES DE ASCENDER
            
         )LOOP
         INSERT INTO arco_sanciones
            VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
            END LOOP;
      ELSE
        SELECT SUM(san_cantidad) INTO v_demerito -- SI TIENE MAS DE UN A�O EN EL GRADO SON
        FROM psan_sanciones, psan_detalle        -- LOS ACUMULADOS EN EL GRADO
        WHERE det_catalogo = cat 
        AND det_grado= grado
             AND san_tipo='D'
             AND det_sancion = san_codigo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
        FOR REC IN(
          SELECT san_cantidad,det_fecha,det_sancion
          INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
          FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
          WHERE det_catalogo = cat
                AND det_grado=  grado
                AND san_tipo='D'
                AND det_sancion = san_codigo
        --        AND det_fecha BETWEEN ultimo AND  v_f_periodo--ENTRE LA ULTIMA FECHA DE ASCENSO A LA FECHA A LOS CINCO A�OS DE CORONEL
        )LOOP 
        INSERT INTO arco_sanciones
          VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
          END LOOP;
      END IF;

   ELSE IF grado < 88 THEN --SE -- PARA LOS QUE NO SON CORONELES NI GENERALES DE BRIGADA
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        SELECT SUM(san_cantidad) INTO v_demerito
        FROM psan_sanciones, psan_detalle
        WHERE det_catalogo = cat AND det_grado= grado --v_gra_ante
              AND san_tipo='D'
              AND det_sancion = san_codigo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
        FOR REC IN(
          SELECT san_cantidad,det_fecha,det_sancion
          INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
          FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
          WHERE det_catalogo = cat
                AND det_grado=  grado --v_gra_ante
                AND san_tipo='D'
                AND det_sancion = san_codigo
        --        AND det_fecha BETWEEN ultimo AND  v_f_periodo--ENTRE LA ULTIMA FECHA DE ASCENSO A LA FECHA A LOS CINCO A�OS DE CORONEL
        )LOOP
        INSERT INTO arco_sanciones
          VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
          END LOOP;
      ELSE
        SELECT SUM(san_cantidad) INTO v_demerito -- SI TIENE MAS DE UN A�O EN EL GRADO SON
        FROM psan_sanciones, psan_detalle        -- LOS ACUMULADOS EN EL GRADO
        WHERE det_catalogo = cat AND det_grado= grado
             AND san_tipo='D'
             AND det_sancion = san_codigo;
     --*** INSERTA SANCIONES EN LA TABLA DE SANCIONES HISTORICAS PARA LECTURAS EN EL ARCO
        FOR REC IN(
          SELECT san_cantidad,det_fecha,det_sancion
          INTO v_cantidad,v_f_sancion,v_sancion    -- INSERTA VALORES EN LA TABLA
          FROM psan_sanciones, psan_detalle          -- HISTORICA DE SANCIONES PARA EL ESC.
          WHERE det_catalogo = cat
                AND det_grado=  grado
                AND san_tipo='D'
                AND det_sancion = san_codigo
        --        AND det_fecha BETWEEN ultimo AND  v_f_periodo--ENTRE LA ULTIMA FECHA DE ASCENSO A LA FECHA A LOS CINCO A�OS DE CORONEL
        )LOOP
        INSERT INTO arco_sanciones
          VALUES (cat,v_f_sancion,v_sancion,v_cantidad,fec);
        END LOOP;
      END IF;
   END IF;
--END IF
-- ********* PARA CALCULAR LE LIMITE DE DEMERITOS EN EL GRADO O GRADO ANTERIOR Y
-- ********* EL PORCENTAJE DE CONDUCTA PARA EL GRADO O GRADO ANTERIOR SEGUN SEA
IF v_tiempo_g < 10000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
   SELECT dem_limite INTO v_limite
   FROM arco_demeritos -- BUSCA LOS DEMERITOS DEL GRADO ANTERIOR Y SE CALCULA CON EL GRADO ANTERIOR
   WHERE dem_grado = grado --v_gra_ante 
    AND dem_vigente = 1;
  ---------******************-----------------
   SELECT pon_conducta INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado --v_gra_ante 
    AND pon_vigencia = 1;
  IF v_demerito IS NULL THEN
      v_nota_con := 100 * (v_pond/100);
  ELSE
      v_nota_con :=(100 -(v_demerito*100/v_limite))*(v_pond/100);
  END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
   SELECT dem_limite INTO v_limite
   FROM arco_demeritos
   WHERE dem_grado = grado AND dem_vigente= 1; -- LIMITE DEMERITOS GRADO ACTUAL Y VIGENTE
   SELECT pon_conducta INTO v_pond --PONDERACION GRADO ACTUAL Y VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia=1;
  IF v_demerito IS NULL THEN
      v_nota_con := 100 * (v_pond/100);
  ELSE
      v_nota_con :=(100 -(v_demerito*100/v_limite))*(v_pond/100);
  END IF;

END IF;
END IF;

RETURN v_nota_con;
END arco_sp_condu;
/
CREATE OR REPLACE FUNCTION arco_sp_condu1(cat IN NUMBER, fec IN DATE, grado IN NUMBER,ultimo IN DATE)
RETURN NUMBER 
IS 
  v_nota_con DECIMAL := 0;
  v_demerito NUMBER := 0;
  v_limite   NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_pond   NUMBER := 0 ;
  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
  v_tiempo_g NUMBER := 0;

BEGIN  
    v_f_periodo := ultimo + 60 ;

------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
----------------**********-----------------------
SELECT arcgra_anterior INTO v_gra_ante
 FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
WHERE arcgra_codigo = grado;
--------******************----------------------
IF grado =88 OR grado=89  THEN
   IF v_tiempo_g > 60000 THEN -- TRAE LOS DEMERITOS CON MAS DE CINCO A�OS EN EL GRADO
     SELECT SUM(san_cantidad) INTO v_demerito      -- DE LOS CORONELES EN SU SEGUNDO PERIODO DEL GRADO
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat AND det_grado= grado
           AND san_tipo='D'
           AND det_sancion = san_codigo
           AND det_fecha >= v_f_periodo;
   END IF;                               -- DE CORONEL
   IF v_tiempo_g >50000 AND v_tiempo_g < 60000 THEN -- TRAE LOS DEMERITOS DEL PRIMER PERIODO DE LOS CORONELES
     SELECT SUM(san_cantidad) INTO v_demerito      -- DEMAS DE CINCO A�OS Y
     FROM psan_sanciones, psan_detalle             -- QUE NO LLEGAN A UN A�O EN EL SEGUNDO PERIODO
     WHERE det_catalogo = cat AND det_grado= grado
           AND san_tipo='D'
           AND det_sancion = san_codigo
           AND det_fecha BETWEEN fec AND  v_f_periodo;
   END IF;
   IF v_tiempo_g  > 10000 AND v_tiempo_g < 50000 THEN ---- LOS CORONELES CON MAS DE UN A�O DE CORONEL PERO MENOS DE CINCO
     SELECT SUM(san_cantidad) INTO v_demerito
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat AND det_grado= grado
           AND san_tipo='D'
           AND det_sancion = san_codigo;
   END IF;
   IF v_tiempo_g  < 10000  THEN -- CORONEL CON MENOS DE UN A�O TRAE LOS DEMERITOS DE TTE CNEL
     SELECT SUM(san_cantidad) INTO v_demerito
     FROM psan_sanciones, psan_detalle
     WHERE det_catalogo = cat AND det_grado= v_gra_ante
           AND san_tipo='D'
           AND det_sancion = san_codigo;
   END IF;
END IF;

IF grado <>88 OR grado<>89   THEN -- PARA EL RESTO DE LOS GRADOS
   IF grado >= 90 AND  grado <= 93 THEN   --EXEPTUANDO GENERALES DE BRIGADA SE LES CALCULA SUS ULTIMOS 3 A�OS DE CORONEL
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO GENERAL
        SELECT SUM(san_cantidad) INTO v_demerito
        FROM psan_sanciones, psan_detalle
        WHERE det_catalogo = cat AND san_tipo= 'D'
              AND det_sancion = san_codigo                 -- LOS ACUMULADOS EN EN SUS TRES ULTIMOS A�OS COMO COROENEL
              AND det_fecha BETWEEN ultimo  - 36  AND  ultimo ;
      ELSE
        SELECT SUM(san_cantidad) INTO v_demerito -- SI TIENE MAS DE UN A�O EN EL GRADO SON
        FROM psan_sanciones, psan_detalle        -- LOS ACUMULADOS EN EL GRADO
        WHERE det_catalogo = cat AND det_grado= grado
             AND san_tipo='D'
             AND det_sancion = san_codigo;
      END IF;

   ELSE -- PARA LOS QUE NO SON CORONELES NI GENERALES DE BRIGADA
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        SELECT SUM(san_cantidad) INTO v_demerito
        FROM psan_sanciones, psan_detalle
        WHERE det_catalogo = cat AND det_grado= v_gra_ante
              AND san_tipo='D'
              AND det_sancion = san_codigo;
      ELSE
        SELECT SUM(san_cantidad) INTO v_demerito -- SI TIENE MAS DE UN A�O EN EL GRADO SON
        FROM psan_sanciones, psan_detalle        -- LOS ACUMULADOS EN EL GRADO
        WHERE det_catalogo = cat AND det_grado= grado
             AND san_tipo='D'
             AND det_sancion = san_codigo;
      END IF;

   END IF;

END IF;
-- ********* PARA CALCULAR LE LIMITE DE DEMERITOS EN EL GRADO O GRADO ANTERIOR Y
-- ********* EL PORCENTAJE DE CONDUCTA PARA EL GRADO O GRADO ANTERIOR SEGUN SEA
IF v_tiempo_g < 10000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
   SELECT dem_limite INTO v_limite
   FROM arco_demeritos -- BUSCA LOS DEMERITOS DEL GRADO ANTERIOR Y SE CALCULA CON EL GRADO ANTERIOR
   WHERE dem_grado = v_gra_ante AND dem_vigente = 1;
  ---------******************-----------------
   SELECT pon_conducta INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = v_gra_ante AND pon_vigencia = 1;
  IF v_demerito IS NULL THEN
      v_nota_con := 100 * (v_pond/100);
  ELSE
      v_nota_con :=(100 -(v_demerito*100/v_limite))*(v_pond/100);
  END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
   SELECT dem_limite INTO v_limite
   FROM arco_demeritos
   WHERE dem_grado = grado AND dem_vigente= 1; -- LIMITE DEMERITOS GRADO ACTUAL Y VIGENTE
   SELECT pon_conducta INTO v_pond --PONDERACION GRADO ACTUAL Y VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia=1;
  IF v_demerito IS NULL THEN
      v_nota_con := 100 * (v_pond/100);
  ELSE
      v_nota_con :=(100 -(v_demerito*100/v_limite))*(v_pond/100);
  END IF;

END IF;

RETURN v_nota_con;
END arco_sp_condu1;
/
CREATE OR REPLACE FUNCTION arco_sp_descalafon(fec_anual IN DATE) 
--modificado
    RETURN NUMBER
    IS
        v_ofs    NUMBER := 0;
        cat       mper.per_catalogo%TYPE;
        gra       mper.per_grado%TYPE;
        clase     grados.gra_clase%TYPE;
        equi      mper.per_grado%TYPE;
        plaza     mper.per_plaza%TYPE;
	    promo     mper.per_promocion%TYPE;
        plaza_esca  arco_jefes.ajef_esca%TYPE;
		  categoria  arco_jefes.ajef_categoria%TYPE;
        ultimo    tiempos.t_ult_asc%TYPE;
	    proximo    tiempos.t_prox_asc%TYPE;
    -- fec_proximo LIKE tiempos.t_prox_asc;
    -- fec  VARCHAR2(10);
        nota    NUMBER := 99.99;
        ubica     arco_escalafon.esca_ubica%TYPE;
	    ubica1    NUMBER := 0;
        fecha     arco_escalafon.esca_fec%TYPE;
        v_nota  NUMBER;
    --    v_capacidad,v_evads,v_conducta,v_pafe,v_biof,v_creditos  DECIMAL(4,2);
        ubica_up NUMBER := 0;
   --  v_tiempo_g INT;
   --  v_tiempo_o INT;
   --  cuenta_obli INT;
    -- i,j   INT;

   -- LET v_tiempo_g = 0 ;
    -- LET v_tiempo_o = 0 ;
    -- LET i, j = 0;

    

---******** voy a traer la fecha actual y lo convierto en char de 10 posiciones --dd/mm/yyyy--
       -- SELECT TO_CHAR(TODAY, '%d/%m/%Y') INTO fec
       -- FROM systables WHERE tabid = 1;


--******** voy a traer la fecha del proximo ascenso que es un char de 10 posiciones --dd-mm-yyyy--
--SELECT t_prox_asc INTO fec_proximo
--FROM tiempos
--WHERE t_catalogo = cat;
---
--SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
--FROM tiempos
--WHERE t_catalogo = cat;
----
--SELECT arcgra_tiempo INTO v_tiempo_o -- EN EL GRADO ANTERIOR
 --  FROM   arco_grados
 --  WHERE  arcgra_codigo = gra;
------
--IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O EN EL TIEMPO DE SERVICIO LE ASIGNA UN NUMERO 1.
 
 --  LET cuenta_obli = 1;
--ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
  -- FOR i IN (10000 TO v_tiempo_g STEP 10000)-- 
    --   LET j    = j + 1;
       --LET dmil = dmil + 10000;
  -- END FOR
--LET cuenta_obli = j;
   
--END IF
---------------------
BEGIN 
	FOR REC IN(

	SELECT esca_cat,esca_grado,esca_grado_equi,esca_plaza,esca_plaza_nivel,
		esca_fec_asc,trim(esca_fec_prox_asc),esca_nota,esca_categoria,esca_promocion
		INTO cat,gra,equi,plaza, plaza_esca, ultimo,proximo,nota,categoria,promo
		FROM  arco_escalafon1,mper
---COMENTAREADAS LINEAS 78 Y 79 POR LINEA 80
--              WHERE esca_categoria not in (0100)
--               AND mper.per_catalogo = arco_escalafon1.esca_cat
              WHERE mper.per_catalogo = arco_escalafon1.esca_cat  --//ESTA LINEA ES PARA CUPULA Y EMDN
               AND mper.per_desc_empleo not LIKE ('%DISPONIBILIDAD')
               AND esca_fec = fec_anual
               order by 3 desc,6 asc,8 desc


			
--IF cuenta_obli < v_tiempo_o  THEN

										---************	********************  *********************   ****************  ***********
			
  )LOOP
  ubica := ubica+1;
			INSERT INTO arco_escalafon --INSERTA EN LA TABLA DE ESCALAFON PARA ORDENAMIENTO
			VALUES(cat,gra,plaza,plaza_esca,ultimo,proximo,nota,ubica,fec_anual);
--else 
        --LET ubica1 = ubica1 + 1;
       -- INSERT INTO arco_escalafonp --INSERTA EN LA TABLA DE ESCALAFON PARA ORDENAMIENTO
			--VALUES(cat,gra,plaza,plaza_esca,ultimo,proximo,nota,ubica,fec_anual);

--END IF	
END LOOP;



									--FINALIZA EL FOREACH
									--***********************************************************************************
									--***********************************************************************************

										--LET cat= 0;
										--FOREACH cur_up WITH HOLD FOR
										   --SELECT esca_cat  INTO cat
										  -- FROM   arco_escalafon,arco_grados
										  -- WHERE arcgra_codigo = esca_grado
											--	 AND esca_fec = fec_anual
										  -- ORDER BY arcgra_equivale desc,esca_plaza_nivel,esca_fec_asc,esca_nota desc
										 -- LET ubica_up = ubica_up +1;

										  -- BEGIN WORK;
												-- UPDATE arco_escalafon SET esca_ubica = ubica_up WHERE esca_cat = cat AND
												-- esca_fec = fec_anual;
										   --COMMIT WORK;
										--END FOREACH


						SELECT COUNT(esca_cat) INTO v_ofs FROM arco_escalafon WHERE esca_fec = fec_anual;
						RETURN  v_ofs ;

  END arco_sp_descalafon;
/
CREATE OR REPLACE FUNCTION arco_sp_evad(cat IN NUMBER, fec IN DATE, grado IN NUMBER,ultimo IN DATE)
RETURN NUMBER 
IS 
--iRETURNING NUMBER AS EVADS
  v_nota_evad NUMBER := 0;
  v_prom_evad NUMBER := 0;
  v_lleva_eva NUMBER := 0; -- SUMA LAS EVALUACIONES EN SUS ASPECTOS 20 ASPECTOS 5 C/U MAXUMO 100
  v_suma_eva  NUMBER := 0;
  cuenta_eva  NUMBER := 0;
  cuenta_eva1  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_periodo NUMBER := 0; --GUARDA EL PERIODO PARA INSERTAR EN TABLA DE EVALUACIONES.
  v_pond   NUMBER := 0;
  v_f_periodo DATE ; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
  v_tiempo_g NUMBER := 0;
  v_tiempo_o NUMBER := 0;
  i NUMBER := 0;
  j NUMBER := 0;
  dmil   NUMBER := 0;
BEGIN
     v_f_periodo := ultimo + 60;

------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
----------------**********-----------------------
--SELECT arcgra_anterior INTO v_gra_ante
-- FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
--WHERE arcgra_codigo = grado;
--------******************----------------------
IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O
  IF v_tiempo_g > 0 AND v_tiempo_g <= 600 THEN 
            cuenta_obli := 1;
	ELSIF v_tiempo_g > 600 AND v_tiempo_g <= 1130 THEN
   cuenta_obli := 2;
 END IF;
ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
  i := 5000;
WHILE i <= v_tiempo_g LOOP-- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
        j    := j + 1;
        dmil := dmil + 5000;
   END LOOP;
   cuenta_obli := j;
   IF v_tiempo_g - dmil > 0 AND v_tiempo_g - dmil <= 700  THEN
      cuenta_obli := cuenta_obli + 1;
     ELSIF dmil > 1000 AND v_tiempo_g - dmil <= 1130 THEN
        cuenta_obli := cuenta_obli + 2;
   END IF;
END IF;

IF grado >=92 AND grado<=97  THEN -- LOS GENERALES SE LES CONTABILIZAN PARA LA DIVISION LA CANTIDAD QUE TENGAN
   FOR REC IN(                       -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
   SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
          eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta +eva_solv_econ + eva_coopera
          + eva_discre + eva_salud + eva_prevision + eva_seg_confi + eva_voc_serv + eva_cap_ana,eva_periodo INTO v_lleva_eva,v_periodo
   FROM peva_evaluacion, peva_periodos, peva_admin
   WHERE eva_periodo = per_codigo
         AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
         AND per_fecha_inicio BETWEEN fec - 60  AND fec
         AND eva_catalogo = cat
         AND adm_grado IN(88,89)
         ORDER BY per_fecha_inicio
         )LOOP
   IF v_lleva_eva  <> 0 THEN
      cuenta_eva := cuenta_eva +1;
   END IF;
   
   --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
   INSERT INTO arco_evads
   VALUES (cat,v_periodo,v_lleva_eva,fec);
    v_suma_eva := v_suma_eva + v_lleva_eva;
   END LOOP;
   IF v_suma_eva <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
    v_prom_evad := v_suma_eva/cuenta_eva;
   END IF;
END IF;

IF grado >=88 AND grado<=89   THEN -- PARA EL RESTO DE LOS GRADOS
      IF v_tiempo_g >10000 AND v_tiempo_g  < 50000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                                        -- PERO MENOS DE CINCO A�OS SE LE CALCULA LAS QUE TENGA EN EL GRADO
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = grado
               ORDER BY per_fecha_inicio DESC
               )LOOP
          cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
            --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
             INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
           v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      END IF;
      IF v_tiempo_g  > 50000  THEN -- POR SI EL CORONEL  TIENE MAS 5  A�O EN EL GRADO
         FOR REC IN (                  -- SE CALCULAN
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND per_fecha_inicio BETWEEN ADD_MONTHS(fec, -60) AND fec -- LAS DE CINCO A�OS ATRAS
               AND eva_catalogo = cat
               AND adm_grado = grado
               --AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
               )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= 10  THEN
             v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
        
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
             INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
            v_prom_evad := v_suma_eva/(10-cuenta_eva); --DEBERIAN DE TENER 10 EVALUACIONES OBLIGATRIAS
        END IF;
      END IF;
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                   -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = grado --v_gra_ante
               --AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
               )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
             v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
    
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
             INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
            v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      END IF;
END IF;
IF grado >= 38 AND grado <= 87 THEN
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = grado --v_gra_ante
               --AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
               )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
             v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
        
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
             INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
           v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      ELSE -- SI TIENE  MAS DE UN A�O EL CALCULO SE HACE SOBRE LAS QUE TENGA BASADOS EN LAS OBLIGATORIAS
        FOR REC IN(
          SELECT  eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                  eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                  +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                  + eva_voc_serv + eva_cap_ana,eva_periodo
                  INTO v_lleva_eva,v_periodo
           FROM   peva_evaluacion, peva_periodos, peva_admin
           WHERE eva_periodo = per_codigo
                 AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
                 AND eva_catalogo = cat
                 AND adm_grado = grado
                 --AND eva_catalogo = cat
                 ORDER BY per_fecha_inicio DESC
                 )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                 cuenta_eva := cuenta_eva +1;
             END IF;
    
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
             INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
           v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
       END IF;
END IF;
-- ********* PARA CALCULAR LA NOTA DEL OFICIAL EN DESEMPE�O
-- ********* EL PORCENTAJE DE DESEMPE�O
IF v_tiempo_g < 1000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
  ---------******************-----------------
   SELECT pon_evad INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado --v_gra_ante 
   AND pon_vigencia = 1;
  IF v_prom_evad = 0  THEN
     v_nota_evad := 0 ;
  ELSE
      v_nota_evad := v_prom_evad * (v_pond/100);
  END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
  ---------******************-----------------
   SELECT pon_evad INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia = 1;
  IF v_prom_evad = 0  THEN
     v_nota_evad := 0 ;
  ELSE
     v_nota_evad := v_prom_evad * (v_pond/100);
  END IF;
END IF;

RETURN v_nota_evad;
--RETURN(cuenta_eva);
END arco_sp_evad;
/
CREATE OR REPLACE FUNCTION arco_sp_evad1(cat IN NUMBER, fec IN DATE, grado IN NUMBER,ultimo IN DATE)
RETURN NUMBER
IS 
--iRETURNING NUMBER AS EVADS
  v_nota_evad NUMBER := 0;
  v_prom_evad NUMBER := 0;
  v_lleva_eva NUMBER := 0; -- SUMA LAS EVALUACIONES EN SUS ASPECTOS 20 ASPECTOS 5 C/U MAXUMO 100
  v_suma_eva  NUMBER := 0;
  cuenta_eva  NUMBER := 0;
  cuenta_eva1  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_periodo NUMBER := 0; --GUARDA EL PERIODO PARA INSERTAR EN TABLA DE EVALUACIONES.
  v_pond   NUMBER := 0;
  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
  v_tiempo_g NUMBER := 0;
  v_tiempo_o NUMBER := 0;
  i NUMBER := 0;
  j NUMBER := 0;
  dmil   NUMBER := 0;
BEGIN 
    v_f_periodo := ultimo + 60;
   
------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
----------------**********-----------------------
SELECT arcgra_anterior INTO v_gra_ante
 FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
WHERE arcgra_codigo = grado;
--------******************----------------------
IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O
   SELECT arcgra_tiempo INTO v_tiempo_o -- EN EL GRADO ANTERIOR
   FROM   arco_grados
   WHERE  arcgra_codigo = v_gra_ante;
    cuenta_obli := v_tiempo_o * 2;
ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
   FOR i IN 10000..(v_tiempo_g/ 10000) LOOP -- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
        j    := j + 1;
        dmil := dmil + 10000;
   END LOOP;
    cuenta_obli := j * 2;
   IF v_tiempo_g - dmil >= 600  THEN
       cuenta_obli := cuenta_obli +1;
   END IF;
END IF;

IF grado >=92 AND grado<=97  THEN -- LOS GENERALES SE LES CONTABILIZAN PARA LA DIVISION LA CANTIDAD QUE TENGAN
   FOR REC IN(                     -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
   SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
          eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta +eva_solv_econ + eva_coopera
          + eva_discre + eva_salud + eva_prevision + eva_seg_confi + eva_voc_serv + eva_cap_ana,eva_periodo INTO v_lleva_eva,v_periodo
   FROM peva_evaluacion, peva_periodos, peva_admin
   WHERE eva_periodo = per_codigo
         AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
         AND per_fecha_inicio BETWEEN fec - 60  AND fec
         AND eva_catalogo = cat
         AND adm_grado IN(88,89)
         ORDER BY per_fecha_inicio
    )LOOP
   IF v_lleva_eva  <> 0 THEN
      cuenta_eva := cuenta_eva +1;
   END IF;
   
   --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
   /*{INSERT INTO arco_evads
   VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
    v_suma_eva := v_suma_eva + v_lleva_eva;
   END LOOP;
   IF v_suma_eva <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
    v_prom_evad := v_suma_eva/cuenta_eva;
   END IF;
END IF;

IF grado >=88 AND grado<=89   THEN -- PARA EL RESTO DE LOS GRADOS
      IF v_tiempo_g >10000 AND v_tiempo_g  < 50000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                                       -- PERO MENOS DE CINCO A�OS SE LE CALCULA LAS QUE TENGA EN EL GRADO
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = grado
               ORDER BY per_fecha_inicio DESC
        )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli THEN
             v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                 cuenta_eva := cuenta_eva +1;
             END IF;
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
            /*{ INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
            v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      END IF;
      IF v_tiempo_g  > 50000  THEN -- POR SI EL CORONEL  TIENE MAS 5  A�O EN EL GRADO
         FOR REC IN (                  -- SE CALCULAN
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND per_fecha_inicio BETWEEN  fec - 60  AND fec -- LAS DE CINCO A�OS ATRAS
               AND eva_catalogo = cat
               AND adm_grado = grado
               AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
         )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= 10  THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
           /* { INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
           v_prom_evad := v_suma_eva/(10-cuenta_eva); --DEBERIAN DE TENER 10 EVALUACIONES OBLIGATRIAS
        END IF;
      END IF;
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN (                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = v_gra_ante
               AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
        ) LOOP
          cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
            /*{ INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
            v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      END IF;
END IF;
IF grado >= 38 AND grado <= 87 THEN
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
         SELECT eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                + eva_voc_serv + eva_cap_ana,eva_periodo
                INTO v_lleva_eva,v_periodo
         FROM   peva_evaluacion, peva_periodos, peva_admin
         WHERE eva_periodo = per_codigo
               AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
               AND eva_catalogo = cat
               AND adm_grado = v_gra_ante
               AND eva_catalogo = cat
               ORDER BY per_fecha_inicio DESC
        )LOOP
          cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                 cuenta_eva := cuenta_eva +1;
             END IF;
                          --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
       /*{      INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
            v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
      ELSE -- SI TIENE  MAS DE UN A�O EL CALCULO SE HACE SOBRE LAS QUE TENGA BASADOS EN LAS OBLIGATORIAS
        FOR REC IN(
          SELECT  eva_disciplina + eva_rel_inter +eva_admon_rec + eva_cal_trab + eva_comunica+eva_coordina +
                  eva_plan_orga + eva_control + eva_iniciativa + eva_lider + eva_comp_soc + eva_adapta
                  +eva_solv_econ + eva_coopera + eva_discre + eva_salud + eva_prevision + eva_seg_confi
                  + eva_voc_serv + eva_cap_ana,eva_periodo
                  INTO v_lleva_eva,v_periodo
           FROM   peva_evaluacion, peva_periodos, peva_admin
           WHERE eva_periodo = per_codigo
                 AND (eva_catalogo = adm_catalogo AND eva_periodo = adm_periodo)
                 AND eva_catalogo = cat
                 AND adm_grado = grado
                 AND eva_catalogo = cat
                 ORDER BY per_fecha_inicio DESC
        )LOOP
         cuenta_eva1 := cuenta_eva1 +1;
         IF cuenta_eva1 <= cuenta_obli  THEN
              v_suma_eva := v_suma_eva + v_lleva_eva;
             IF v_lleva_eva  = 0 THEN
                cuenta_eva := cuenta_eva +1;
             END IF;
             --*** INSERTA EVALUACIONES EN LA TABLA DE HISTORICOS DEL EVALUACIONES DEL DESEMPE�O PARA EL ARCO**
            /*{ INSERT INTO arco_evads
             VALUES (cat,v_periodo,v_lleva_eva,fec);}*/
         END IF;
        END LOOP;
        IF v_suma_eva <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL DESEMPE�O CON NOTAS
           v_prom_evad := v_suma_eva/(cuenta_obli-cuenta_eva);
        END IF;
       END IF;
END IF;
-- ********* PARA CALCULAR LA NOTA DEL OFICIAL EN DESEMPE�O
-- ********* EL PORCENTAJE DE DESEMPE�O
IF v_tiempo_g < 1000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
  ---------******************-----------------
   SELECT pon_evad INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = v_gra_ante AND pon_vigencia = 1;
  IF v_prom_evad = 0  THEN
      v_nota_evad := 0 ;
  ELSE
     v_nota_evad := v_prom_evad * (v_pond/100);
  END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
  ---------******************-----------------
   SELECT pon_evad INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia = 1;
  IF v_prom_evad = 0  THEN
     v_nota_evad := 0 ;
  ELSE
     v_nota_evad := v_prom_evad * (v_pond/100);
  END IF;
END IF;

RETURN v_nota_evad;
--RETURN(cuenta_eva);
END arco_sp_evad1;
/
CREATE OR REPLACE FUNCTION arco_sp_meri(cat IN NUMBER, fec IN DATE, grado IN NUMBER)
RETURN NUMBER
IS 
  v_nota_meri NUMBER := 0;
  v_prom_meri     NUMBER := 0;
 v_lleva_effi NUMBER := 0;
 v_lleva_efac NUMBER := 0;
 v_lleva_efde NUMBER := 0;
   v_prom_carruni NUMBER := 0;
   v_prom_idioma NUMBER := 0;
   v_prom_cap NUMBER := 0;
   v_prom_curmil NUMBER := 0;
   v_prom_cond NUMBER := 0;
 -- v_maest     NUMBER := 0;-- GUARADA EL VALOR DE UNA MAESTRIA
 -- v_lic       NUMBER := 0;-- GUARADA EL VALOR DE UNA LICENCIATRA
 -- v_tec       NUMBER := 0;-- GUARADA EL VALOR DE UN TECNICO UNIVERSITARIO
 -- v_idio      NUMBER := 0;-- GUARADA EL VALOR DE UNO O DOS IDIOMAS
 -- v_talle     NUMBER := 0;-- GUARADA EL VALOR DE UN TALLER
  v_curso     NUMBER := 0;
  v_curso1     NUMBER := 0;
 v_puesto VARCHAR2(100) := '';
 v_puesto1  VARCHAR2(100) := '';
  v_libre     NUMBER := 0;
  v_fuerza  VARCHAR2(100) := '';
  v_suma_carruni NUMBER := 0;
  v_suma_idioma NUMBER := 0;
  v_suma_cap NUMBER := 0;
  v_suma_curmil NUMBER := 0;
  v_suma_cond NUMBER := 0;
  v_suma_condd NUMBER := 0;
  v_lleva_merd NUMBER := 0;
  v_suma_conddd NUMBER := 0;
  v_lleva_mer NUMBER := 0;
  v_lleva_mer1 NUMBER := 0;
  v_suma_mer NUMBER := 0; -- SUMA LAS EVALUACIONES EN SUS ASPECTOS 20 ASPECTOS 4 C/U MAXUMO 100
  cuenta_mer  NUMBER := 0;
  cuenta_doc NUMBER := 0;
  cuenta_maes NUMBER := 0;
  cuenta_lics NUMBER := 0;
  cuenta_tecs  NUMBER := 0;
  cuenta_tall NUMBER := 0;
  cuenta_semi NUMBER := 0;
  cuenta_libre NUMBER := 0;
  cuenta_diplo NUMBER := 0;
  cuenta_idio  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante   NUMBER := 0;
  v_pond   NUMBER := 0;
--  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 4 A�OS
  v_tiempo_g NUMBER := 0;
  v_tiempo_o NUMBER := 0;
  i NUMBER := 0;
  j NUMBER := 0;
  dmil   NUMBER := 0;
 v_con NUMBER := 0;
 v_efisica NUMBER := 0;
  v_tipo VARCHAR2(100) := '';
  v_clasifica  VARCHAR2(100) := '';
  
  BEGIN
------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
--
IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O
   SELECT arcgra_tiempo INTO v_tiempo_o -- EN EL GRADO ANTERIOR
   FROM   arco_grados
   WHERE  arcgra_codigo = grado; --v_gra_ante;
    cuenta_obli := v_tiempo_o * 2;
ELSE 


   FOR i IN 5000 .. (v_tiempo_g/5000) LOOP-- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
       j    := j + 1;
        dmil := dmil + 5000;
   END LOOP;
    cuenta_obli := j;
   IF v_tiempo_g - dmil >= 600  THEN
      cuenta_obli := cuenta_obli + 1;
   END IF;                                   -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
 --  FOR i IN (10000 TO v_tiempo_g STEP 10000)-- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
    --   LET j    = j + 1;
     --  LET dmil = dmil + 10000;
  -- END FOR
  -- LET cuenta_obli = j * 2;
   --IF v_tiempo_g - dmil >= 600  THEN
    --  LET cuenta_obli = cuenta_obli +1;
   --END IF
END IF;
----*****CALCULA CURSOS DE CAPACITACIONES, TITULOS UNIVERSITARIOS E IDIOMAS *****-----
						FOR REC IN(                      -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
						 SELECT eru_valor,cap_clasifica,cap_tipo
								INTO v_lleva_mer, v_clasifica, v_tipo
						 FROM   pdcapacitacion,arco_erudiccion
						 WHERE  (cap_clasifica = eru_clasifica
								 AND cap_tipo = eru_tipo)
								 AND cap_fec_fin <= fec
								 AND cap_catalogo = cat
								 AND eru_vigencia = 1
								 ORDER BY cap_fec_fin DESC
            )LOOP
						 ---******************************************************************************************	
						---validation CARRERAS UNIVESITARIAS  	DOCTORADOS, MAESTRIAS, LICENCIATURAS

						---******************************************************************************************
						 IF v_tipo = 'U' THEN -- VALIDA TITULOS UNIVERSITARIOS
							IF v_clasifica = 'D' AND cuenta_doc < 1 THEN
							    v_suma_carruni := v_suma_carruni + v_lleva_mer;
							   cuenta_doc := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'U','D',v_lleva_mer,fec);--DOCTORADO
							END IF;
							IF v_clasifica = 'M' AND cuenta_maes < 1 THEN --MAESTRIA
							    v_suma_carruni := v_suma_carruni + v_lleva_mer;
							    cuenta_maes := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'U','M',v_lleva_mer,fec);
							END IF;
							IF v_clasifica = 'L' AND cuenta_lics < 1 THEN --LICENCIATURA
							    v_suma_carruni := v_suma_carruni + v_lleva_mer;
							    cuenta_lics := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'U','L',v_lleva_mer,fec);
							END IF;
							IF v_clasifica = 'T' AND cuenta_tecs < 1 THEN --TECNICO UNIVERSITARIO
							   v_suma_carruni := v_suma_carruni + v_lleva_mer;
							   cuenta_tecs := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'U','T',v_lleva_mer,fec);
							END IF;
						 END IF;

						 v_prom_carruni :=  (v_suma_carruni * 3) / 20;
						 ---******************************************************************************************	
						---validacion capacitaciones talleres, seminarios, diplomados, cursos 	
						---******************************************************************************************

						 IF v_tipo = 'C' THEN -- VALIDA CAPACITACIONES
							IF v_clasifica = 'D' AND cuenta_diplo < 1 THEN --DIPLOMADOS
							    v_suma_cap := v_suma_cap + v_lleva_mer;
							   cuenta_diplo := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'C','D',v_lleva_mer,fec);
							END IF;
							IF v_clasifica = 'T' AND cuenta_tall < 1 THEN -- TALLERES
							   v_suma_cap := v_suma_cap + v_lleva_mer;
							   cuenta_tall := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'C','T',v_lleva_mer,fec);
							END IF;
							IF v_clasifica = 'S' AND cuenta_semi < 1 THEN --SEMINARIOS
							   v_suma_cap := v_suma_cap + v_lleva_mer;
							   cuenta_semi := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'C','S',v_lleva_mer,fec);
							END IF;
							IF v_clasifica = 'C' AND cuenta_libre < 1 THEN --CURSOS
							   v_suma_cap := v_suma_cap + v_lleva_mer;
							   cuenta_libre := 1;
							   INSERT INTO arco_capacitaciones
							   VALUES (cat,'C','C',v_lleva_mer,fec);
							END IF;
							 
							v_prom_cap := (v_suma_cap * 0.75) / 5;
						---******************************************************************************************	
						---validacion de los idiomas	
						---******************************************************************************************
							IF v_clasifica = 'I' AND cuenta_idio < 2 THEN --VALIDA IDIOMAS 
							   v_suma_idioma := v_suma_idioma + v_lleva_mer;
							   cuenta_idio := cuenta_idio + 1;
							   v_prom_idioma := (v_suma_idioma * 1.5) / 10;
							   IF cuenta_idio = 1 THEN
								  INSERT INTO arco_capacitaciones -- INGREESO PRIMER IDIOMA
								  VALUES (cat,'C','I',v_lleva_mer,fec);
							   ELSIF cuenta_idio = 2 THEN
								  INSERT INTO arco_capacitaciones -- INGREESO PRIMER IDIOMA
								  VALUES (cat,'C','E',v_lleva_mer,fec);
							   END IF;

							END IF;

						 END IF;
						 END LOOP;
 

 
 --**********************************************************************************************
--** INSERTA VALORES 0 EN LA TABLA arco_capacitaciones SI EL OFICIAL NO POSEE ESOS ESTUDIOS **--
--*************************************************************************************************
		 IF cuenta_doc = 0 THEN
			INSERT INTO arco_capacitaciones
			VALUES (cat,'U','D',0,fec);
		 END IF;
				 IF cuenta_maes = 0 THEN
					INSERT INTO arco_capacitaciones
					VALUES (cat,'U','M',0,fec);
				 END IF;
							 IF cuenta_lics = 0 THEN
								INSERT INTO arco_capacitaciones
								VALUES (cat,'U','L',0,fec);
							 END IF;
									 IF cuenta_tecs = 0 THEN
										INSERT INTO arco_capacitaciones
										VALUES (cat,'U','T',0,fec);
									 END IF;
								 IF cuenta_diplo = 0 THEN
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','D',0,fec);
								 END IF;
								 IF cuenta_tall = 0 THEN
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','T',0,fec);
								 END IF;
								 IF cuenta_semi = 0 THEN
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','S',0,fec);
								 END IF;
								 IF cuenta_libre = 0 THEN
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','C',0,fec);
								 END IF;
								 IF cuenta_idio = 0 THEN
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','I',0,fec);
									INSERT INTO arco_capacitaciones
									VALUES (cat,'C','E',0,fec);
								 END IF;
 
 ---******************************************************************************************	
---****************************************************************************************** 
--****CALCULO DE CURSOS MILITARES NO OBLIGARIOS****--
--TRAE EL ARMA DEL OFICIAL PARA DETERMINAR A QUE FUERZA PERTENECE--

 ---******************************************************************************************	
---****************************************************************************************** 
  SELECT  CASE per_arma WHEN 5 THEN 'A' --AVIACION
          WHEN 7 THEN 'A' --AVIACION
          WHEN 6 THEN 'M' --MARINA
          ELSE 'T' END --TIERRA
          INTO v_fuerza
          FROM  mper
          WHERE per_catalogo = cat;
		  
				  FOR REC IN(
					 SELECT UNIQUE curm_equi,curm_valor INTO v_curso1, v_lleva_mer1 --VA A BUSCAR LOS CURSOS PERMITIDOS SEGUN SU FUERZA
					 FROM arco_cursos
					 WHERE curm_fuerza = v_fuerza)LOOP

                 FOR REC IN (
					 SELECT DISTINCT curm_equi,curm_valor INTO v_curso, v_lleva_mer --VA A TRAER LOS CURSOS QUE POSEE
					 FROM dcur,arco_cursos
					 WHERE cur_catalogo = cat
						   AND cur_fec_fin < fec
						   AND cur_curso = curm_codigo
						   AND curm_fuerza= v_fuerza
						   AND curm_equi = v_curso1
						   AND curm_vigencia = 1
          )LOOP
						   
				  IF v_lleva_mer IS NOT NULL THEN
					  v_suma_curmil := v_suma_curmil + v_lleva_mer;
					  v_prom_curmil := (v_suma_curmil * 3.75)/ 25;
					 INSERT INTO arco_dcur
					 VALUES (v_curso,cat,v_lleva_mer,fec);
				  ELSE
					 INSERT INTO arco_dcur      --ESPECIFICARA QUE EL CODIGO DE CURSO TENDRA CERO
					 VALUES (v_curso1,cat,0,fec);
				  END IF;
				 END LOOP;
				  END LOOP;
				  
				  
				  
 --IF v_suma_curmil <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL MERITOS CON NOTAS
  --  LET v_prom_curmil = (v_suma_curmil * 3.75)/ 25;
 --END IF
--***** CALCULO DE CONDECORACIONES Y DISTINTIVOS *****--
-- PARA LA DIRECIVA DE CREDITOS DE 2013 LOS VALORES PARA LAS CONDECORACIONES
-- SONEXACTAMENTE IGUALES PARA LAS TRES FUERZAS POR TANTO   EL VALOR PARA ESTE CAMPO SERA G AL MENOS QUE CAMBIE

 ---******************************************************************************************	
---****************************************************************************************** 
--PARA LAS CONDECORACIONES
 ---******************************************************************************************	
---****************************************************************************************** 
--EFICIENCIA ACADEMICA---

SELECT  max(cur_curso),cur_puesto INTO v_curso,v_puesto -- BUSCA LOS 2DOS LUGARES DE LOS CURSOS DE PROFESIONALIZACION
    FROM   dcur
     WHERE cur_catalogo = cat
		  AND cur_curso in (710,711,712,750,751,752,753,754,755,756,777,781,783,1001,
		 1020, 1099,729,730,731,732,733,734,735,736,737,738,739,740,741,742)
		  AND cur_puesto = '2DO'
            group by cur_puesto;
----------**********************************************************************************---------------------

SELECT max(cur_curso),cur_puesto INTO v_curso,v_puesto1 -- BUSCA LOS 2DOS LUGARES DE LOS CURSOS DE PROFESIONALIZACION
     FROM   dcur
     WHERE cur_catalogo = cat
		   AND cur_curso in (710,711,712,750,751, 752, 753, 754, 
		   755, 756, 777, 781, 783, 1001,
		   1020, 1099,729,730,731,732,733,734,735,736,
		   737,738,739,740,741,742)
           AND cur_pais = 502 
		   AND cur_puesto = '3RO'
        group by cur_puesto;
----------**********************************************************************************---------------------
SELECT  max(con_condecoracion) INTO v_con -- BUSCA LAS MEDALLAS DEPORTIVAS 1RA, 2DA, 3RA. CLASE.
    FROM   dcon
     WHERE con_catalogo = cat
		  AND con_condecoracion in (21281,21118,21119);
---******************************************
SELECT  max(con_condecoracion) INTO v_efisica -- BUSCA A LOS QUE TIENEN EL DISTINTIVO DE EFICIENCIA FISICA
    FROM   dcon
     WHERE con_catalogo = cat
		  AND con_condecoracion in (21405);

SELECT  max(con_condecoracion) INTO v_con -- BUSCA LAS MEDALLAS DEPORTIVAS 1RA, 2DA, 3RA. CLASE.
    FROM   dcon
     WHERE con_catalogo = cat
		  AND con_condecoracion in (21281,21118,21119);





 v_fuerza := 'G';
  FOR REC IN( --BUSCA LAS CONDECORACIONES QUE POSEE Y LAS COMPARA ENTRE LAS CONDECORACIONES EN LA TABLA DE VALOR>ES DE CREDITO




---******************************************



     SELECT UNIQUE conm_equi,conm_valor INTO v_curso1, v_lleva_mer1
     FROM arco_cond
     WHERE conm_fuerza = v_fuerza)LOOP
    FOR REC IN(
     SELECT DISTINCT conm_equi,conm_valor INTO v_curso, v_lleva_mer
     FROM dcon, arco_cond
     WHERE con_catalogo = cat
           AND con_fec_con < fec
           AND conm_codigo  = con_condecoracion
           AND conm_fuerza= v_fuerza
           AND conm_equi = v_curso1
           AND conm_vigencia = 1
  )LOOP

  IF v_lleva_mer IS  NULL AND  v_curso1 = 21489 or v_curso1 = 21490 or v_curso1 = 21491  THEN
           IF v_curso1 = 21489   THEN 
                 IF (v_puesto = '2DO' or v_puesto1 = '3RO') OR (v_puesto = '2DO' AND  v_puesto1 = '3RO') THEN
                        INSERT INTO arco_dcon
                        VALUES (v_curso1,cat,0.5,fec);
                        
                             v_suma_cond := v_suma_cond +  0.5;
                END IF;
            END IF;
            IF v_curso1 = 21491 AND v_con IS NOT NULL THEN
                 
                         INSERT INTO arco_dcon
                        VALUES (v_curso1,cat,0.5,fec);
                        v_suma_cond := v_suma_cond +  0.5;
            END IF;
            IF v_curso1 = 21490 AND v_efisica IS NOT NULL THEN
                     
                          INSERT INTO arco_dcon
                         VALUES (v_curso1,cat,0.5,fec);
                          v_suma_cond := v_suma_cond +  0.5;
             END IF;

ELSIF v_lleva_mer IS NOT NULL THEN
         
     INSERT INTO arco_dcon
     VALUES (v_curso,cat,v_lleva_mer,fec);

        v_suma_cond := v_suma_cond + v_lleva_mer;
        
  ELSE
  
     INSERT INTO arco_dcon      --ESPECIFICARA QUE EL CODIGO DE LA CONDECORACION TENDRA CERO CURSO TENDRA CERO
     VALUES (v_curso1,cat,0,fec);
  END IF;

--LET v_suma_condd = v_suma_cond + v_suma_conddd;

--IF v_curso1 = 21489 AND v_puesto = '2DO' or v_puesto1 = '3RO' OR (v_puesto = '2DO' AND  v_puesto1 = '3RO') THEN 
 --   LET v_lleva_efac = v_lleva_efac + 0.5;
--END IF
--IF  v_curso1 = 21491 AND v_con IS NOT NULL then
  -- LET v_lleva_efde = v_lleva_efde + 0.5;
--END IF 
--IF  v_curso1 = 21490 AND v_efisica IS NOT NULL THEN 
  --  LET v_lleva_effi = v_lleva_effi + 0.5;
--END IF
 
--LET v_suma_condd = v_lleva_effi + v_lleva_efde + v_lleva_efac;
--LET v_suma_cond = v_suma_cond + v_suma_condd;


  v_prom_cond := (v_suma_cond * 6)/40;

--END IF
--LET v_prom_cond = (v_suma_conddd * 6)/40;
  END LOOP;
  END LOOP;

      
  
----********************************************************************************
v_nota_meri := v_prom_curmil + v_prom_cap + v_prom_carruni + v_prom_idioma + v_prom_cond;

INSERT INTO arco_not_creditos 
VALUES(cat,fec,v_prom_curmil,v_prom_carruni,v_prom_cap,v_prom_idioma,v_prom_cond,v_nota_meri);

RETURN  v_nota_meri;

--RETURN(v_fuerza  );
END arco_sp_meri;
/
CREATE OR REPLACE  FUNCTION arco_sp_meri1(cat IN NUMBER, fec IN DATE, grado IN NUMBER)
RETURN NUMBER
IS 
--RETURNING CHAR (1) AS FUERZA
  v_nota_meri NUMBER := 0;
  v_prom_meri     NUMBER := 0;
 -- v_maest     DECIMAL (4,2);-- GUARADA EL VALOR DE UNA MAESTRIA
 -- v_lic       DECIMAL (4,2);-- GUARADA EL VALOR DE UNA LICENCIATRA
 -- v_tec       DECIMAL (4,2);-- GUARADA EL VALOR DE UN TECNICO UNIVERSITARIO
 -- v_idio      DECIMAL (4,2);-- GUARADA EL VALOR DE UNO O DOS IDIOMAS
 -- v_talle     DECIMAL (4,2);-- GUARADA EL VALOR DE UN TALLER
  v_curso     NUMBER := 0;
  v_libre     NUMBER := 0;
  v_fuerza    VARCHAR2(100);
  v_lleva_mer NUMBER := 0;
  v_suma_mer NUMBER := 0; -- SUMA LAS EVALUACIONES EN SUS ASPECTOS 20 ASPECTOS 4 C/U MAXUMO 100
  cuenta_mer  NUMBER := 0;
  cuenta_doc NUMBER := 0;
  cuenta_maes NUMBER := 0;
  cuenta_lics NUMBER := 0;
  cuenta_tecs  NUMBER := 0;
  cuenta_tall NUMBER := 0;
  cuenta_semi NUMBER := 0;
  cuenta_libre NUMBER := 0;
  cuenta_diplo NUMBER := 0;
  cuenta_idio  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante   NUMBER := 0;
  v_pond   NUMBER := 0;
--  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 4 A�OS
  v_tiempo_g NUMBER := 0;
  v_tiempo_o NUMBER := 0;
  i  NUMBER := 0;
  j  NUMBER := 0;
  dmil   NUMBER := 0;
  v_tipo VARCHAR2(100);
  v_clasifica VARCHAR2(100); --GUARDA EL TIPO DE CAPACITACION QUE ES Y SU CLASIFICACION U,C UNIVERSIDAD CURSO
BEGIN 
 --   LET v_f_periodo = ultimo + 4 UNITS YEAR ;--ULTIMA FECHA DE ASCENSO MAS 4 ANOS FECHA A LOS CINCO

------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
----------------**********-----------------------
SELECT arcgra_anterior INTO v_gra_ante
 FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
WHERE arcgra_codigo = grado;
--------******************----------------------
IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O
   SELECT arcgra_tiempo INTO v_tiempo_o -- EN EL GRADO ANTERIOR
   FROM   arco_grados
   WHERE  arcgra_codigo = v_gra_ante;
    cuenta_obli := v_tiempo_o * 2;
ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
     FOR i IN  10000..(v_tiempo_g / 10000)LOOP-- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
       j    := j + 1;
       dmil := dmil + 10000;
   END LOOP;
   cuenta_obli := j * 2;
   IF v_tiempo_g - dmil >= 600  THEN
      cuenta_obli := cuenta_obli +1;
   END IF;
END IF;
----*****CALCULA CURSOS DE CAPACITACIONES, TITULOS UNIVERSITARIOS E IDIOMAS *****-----
FOR REC IN(                       -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
 SELECT eru_valor,cap_clasifica,cap_tipo
        INTO v_lleva_mer, v_clasifica, v_tipo
 FROM   pdcapacitacion,arco_erudiccion
 WHERE  (cap_clasifica = eru_clasifica
         AND cap_tipo = eru_tipo)
         AND cap_fec_fin <= fec
         AND cap_catalogo = cat
         AND eru_vigencia = 1
         ORDER BY cap_fec_fin DESC
)LOOP
----*****CALCULA CURSOS DE CAPACITACIONES *****-----
 IF v_tipo = 'U' THEN -- VALIDA TITULOS UNIVERSITARIOS
    IF v_clasifica = 'D' AND cuenta_doc < 1 THEN
        v_suma_mer := v_suma_mer + v_lleva_mer;
        cuenta_doc := 1;
    END IF;
    IF v_clasifica = 'M' AND cuenta_maes < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_maes := 1;
    END IF;
    IF v_clasifica = 'L' AND cuenta_lics < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_lics := 1;
    END IF;
    IF v_clasifica = 'T' AND cuenta_tecs < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_tecs := 1;
    END IF;
 END IF;
 IF v_tipo = 'C' THEN -- VALIDA TITULOS UNIVERSITARIOS
    IF v_clasifica = 'D' AND cuenta_diplo < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_diplo := 1;
    END IF;
    IF v_clasifica = 'T' AND cuenta_tall < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_tall := 1;
    END IF;
    IF v_clasifica = 'S' AND cuenta_semi < 1 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_semi := 1;
    END IF;
    IF v_clasifica = 'C' AND cuenta_libre < 1 THEN
        v_suma_mer := v_suma_mer + v_lleva_mer;
        cuenta_libre := 1;
    END IF;
    IF v_clasifica = 'I' AND cuenta_idio < 2 THEN
       v_suma_mer := v_suma_mer + v_lleva_mer;
       cuenta_idio := cuenta_idio + 1;
    END IF;
 END IF;
 END LOOP;
--****CALCULO DE CURSOS MILITARES NO OBLIGARIOS****--
--TRAE EL ARMA DEL OFICIAL PARA DETERMINAR A QUE FUERZA PERTENECE--
  SELECT  CASE per_arma WHEN 5 THEN 'A'
          WHEN 7 THEN 'A'
          WHEN 6 THEN 'M'
          ELSE 'T' END
          INTO v_fuerza
          FROM  mper
          WHERE per_catalogo = cat;
  FOR REC IN (
     SELECT DISTINCT curm_equi,curm_valor INTO v_curso, v_lleva_mer
     FROM dcur,arco_cursos
     WHERE cur_catalogo = cat
           AND cur_fec_fin < fec
           AND cur_curso = curm_codigo
           AND curm_fuerza= v_fuerza
           AND curm_vigencia = 1
  )LOOP
  IF v_lleva_mer IS NOT NULL THEN
     v_suma_mer := v_suma_mer + v_lleva_mer;
  END IF;
  END LOOP;
 IF v_suma_mer <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL MERITOS CON NOTAS
     v_prom_meri := v_suma_mer;
 END IF;
--***** CALCULO DE CONDECORACIONES Y DISTINTIVOS *****--
-- PARA LA DIRECIVA DE CREDITOS DE 2013 LOS VALORES PARA LAS CONDECORACIONES
-- SONEXACTAMENTE IGUALES PARA LAS TRES FUERZAS PUESTO QUE EL VALOR PARA ESTE CAMPO ES G
 v_fuerza := 'G';
  FOR REC IN ( --BUSCA LAS CONDECORACIONES QUE POSEE Y LAS COMPARA ENTRE LAS CONDECORACIONES EN LA TABLA DE VALOR>ES DE CREDITO
     SELECT DISTINCT conm_equi,conm_valor INTO v_curso, v_lleva_mer
     FROM dcon, arco_cond 
     WHERE con_catalogo = cat
           AND con_fec_con < fec
           AND conm_codigo  = con_condecoracion
           AND conm_fuerza= v_fuerza
           AND conm_vigencia = 1
  )LOOP 
  IF v_lleva_mer IS NOT NULL THEN
      v_suma_mer := v_suma_mer + v_lleva_mer;
  END IF;
  END LOOP;
 IF v_suma_mer <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL MERITOS CON NOTAS
    v_prom_meri := v_suma_mer;
 END IF;
-- ********* PARA CALCULAR LA NOTA DEL OFICIAL EN MERITOS
-- ********* EL PORCENTAJE DE MERITOS
IF v_tiempo_g < 1000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
  ---------******************-----------------
   SELECT pon_merito INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = v_gra_ante AND pon_vigencia = 1;
  IF v_prom_meri = 0  THEN
     v_nota_meri := 0 ;
  ELSE
     v_nota_meri := v_prom_meri * (v_pond/100);
  END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
  ---------******************-----------------
   SELECT pon_merito INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia = 1;
  IF v_prom_meri = 0  THEN
     v_nota_meri := 0 ;
  ELSE
     v_nota_meri := v_prom_meri * (v_pond/100);
  END IF;
END IF;
RETURN v_nota_meri ;
--RETURN(v_fuerza  );
END arco_sp_meri1;
/

CREATE OR REPLACE FUNCTION arco_sp_pafe1(cat IN NUMBER, fec IN DATE, grado IN NUMBER,ultimo IN DATE)
RETURN NUMBER 
IS 
--RETURNING DECIMAL (5,2)
  v_nota_pafe NUMBER := 0;
  v_prom_pafe NUMBER := 0;
  v_lleva_pafe NUMBER := 0; -- SUMA LAS NOTAS OBTETENIDAS EN CADA PAFE
  v_suma_pafe  NUMBER := 0;
  cuenta_pafe  NUMBER := 0;
  cuenta_obli  NUMBER := 0;
  v_gra_ante NUMBER := 0;
  v_pond   NUMBER := 0;
  v_f_periodo DATE; -- GUARDA LA FECHA DE ULTIMO ASCENSO + 5 A�OS
  v_tiempo_g NUMBER := 0;
  v_tiempo_o NUMBER := 0;
  i NUMBER := 0;
 j NUMBER := 0;
  dmil  NUMBER := 0;
BEGIN 

 v_f_periodo := ultimo + 60 ;
 
------*****************--------------------
SELECT t_grado INTO v_tiempo_g --VA ATRAER EL TIEMPO QUE LLEVA EN EL GRADO
FROM tiempos
WHERE t_catalogo=cat;
----------------**********-----------------------
SELECT arcgra_anterior INTO v_gra_ante
 FROM arco_grados--VA ATRAER SU GRADO ANTERIOR PARA BUSCAR DEMERITOS
WHERE arcgra_codigo = grado;
--------******************----------------------
IF v_tiempo_g < 10000 THEN-- SI TIENE MENOS DE UN A�O VA A BUSCAR LAS EVALUACIONES QUE DEBERIA TENER POR CADA A�O
   SELECT arcgra_tiempo INTO v_tiempo_o -- EN EL GRADO ANTERIOR
   FROM   arco_grados
   WHERE  arcgra_codigo = v_gra_ante;
    cuenta_obli := v_tiempo_o * 2;
ELSE                                    -- SI TIENE MAS DE UN A�O APARTIR DEL PRIMER A�O CALCULA CUANTOS A�OS LLEVA
   FOR i IN 10000..(v_tiempo_g/10000)LOOP -- Y CUANTAS EVALUACIONES DEBERIA TENER SON DOS POR CADA A�O
       j    := j + 1;
       dmil := dmil + 10000;
   END LOOP;
      cuenta_obli := j * 2;
   IF  v_tiempo_g- dmil >= 600 THEN -- CALCULA LAS EVALUACIONES OB>LIGATORIAS PARA LOS ASCENDIDOS EN JUNIO
       cuenta_obli := cuenta_obli +1;    -- QUE SIEMPRE TENDRIA UNA EVALUACION MAS QUE LOS ASCENDIDOS EN ENERO
   END IF;
END IF;
IF grado >=92 AND grado<=97  THEN -- LOS GENERALES SE LES CONTABILIZAN PARA LA DIVISION LA CANTIDAD QUE TENGAN
   FOR REC IN(                       -- NO SE LES CONTABILIZA SOBRE LAS 10 SUPUESTAS.
   SELECT not_promedio
          INTO v_lleva_pafe
   FROM   opaf_notas
   WHERE  not_catalogo = cat
         AND not_fecha  BETWEEN fec - 60  AND fec
         AND not_tipo IN ('Z','A')
         ORDER BY not_fecha
   )LOOP
   IF v_lleva_pafe  <> 0 THEN
      cuenta_pafe := cuenta_pafe +1;
   END IF;
      v_suma_pafe := v_suma_pafe + v_lleva_pafe;
   END LOOP;
   IF v_suma_pafe <> 0 THEN -- SI ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
      v_prom_pafe := v_suma_pafe/cuenta_pafe;
   END IF;
END IF;

IF grado >=88 AND grado<=89   THEN -- PARA EL RESTO DE LOS GRADOS
      IF v_tiempo_g >10000 AND v_tiempo_g  < 50000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                                         -- PERO MENOS DE CINCO A�OS SE LE CALCULA LAS QUE TENGA EN EL GRADO
           SELECT not_promedio
                  INTO v_lleva_pafe
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado
                  AND not_tipo IN ('Z','A')
                  AND not_fecha < fec
                  ORDER BY not_fecha DESC
        )LOOP
              cuenta_pafe := cuenta_pafe +1;
           IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
              v_suma_pafe := v_suma_pafe + v_lleva_pafe;
           END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
           v_prom_pafe := v_suma_pafe/cuenta_obli;
        END IF;
      END IF;
      IF v_tiempo_g  > 50000  THEN -- POR SI EL CORONEL  TIENE MAS 5  A�O EN EL GRADO
         FOR REC IN(                  -- SE CALCULAN
           SELECT not_promedio
                  INTO v_lleva_pafe
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_fecha  BETWEEN fec - 60  AND fec
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
         )LOOP
            cuenta_pafe := cuenta_pafe +1;
         IF cuenta_pafe <= 9  THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            v_suma_pafe := v_suma_pafe + v_lleva_pafe;
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
           v_prom_pafe := v_suma_pafe/9; -- EN CINCO A�OS DEBERIAN DE TENER 2 PAFES POR A�O OBLIGADAS 10
        END IF;
      END IF;
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO COMO CORONEL
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
           SELECT not_promedio
                  INTO v_lleva_pafe
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = v_gra_ante
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
        )LOOP
             cuenta_pafe := cuenta_pafe +1;
         IF  v_tiempo_o = 5    THEN --!!!!!!!!!!!!!IMPORTANTE!!!!!!!!!!!!!--
             cuenta_obli := cuenta_obli - 1; -- PARA COMPENSAR QUE EN EL 2008 SOLO SE EFECTUO UNA PAFE
         END IF;                                 -- ESTA CONDICION DEBE ANULARSE A APRTIR DEL 2013-12-31
         IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            v_suma_pafe := v_suma_pafe + v_lleva_pafe;
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
           v_prom_pafe := v_suma_pafe/(cuenta_obli);
        END IF;
      END IF;
END IF;
IF grado >= 38 AND grado <= 87 THEN
      IF v_tiempo_g  < 10000  THEN -- SI EL OFICIAL TIENE MENOS DE UN A�O EN EL GRADO
        FOR REC IN(                  -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
           SELECT not_promedio
                  INTO v_lleva_pafe
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = v_gra_ante
                  AND not_tipo IN ('Z','A')
                  ORDER BY not_fecha DESC
        )LOOP
             cuenta_pafe := cuenta_pafe +1;
         IF  v_tiempo_o = 5    THEN --!!!!!!!!!!IMPORTANTE !!!!!!!!!--
             cuenta_obli := cuenta_obli - 1; -- PARA COMPENSAR QUE EN EL 2008 SOLO SE EFECTUO UNA PAFE
         END IF;                                 -- ESTA CONDICION DEBE ANULARSE A APRTIR DEL 2013-12-31
         IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            v_suma_pafe := v_suma_pafe + v_lleva_pafe;
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
            v_prom_pafe := v_suma_pafe/(cuenta_obli);
        END IF; 
      ELSE
        FOR REC IN(                    -- EL CALCULO SE HARA EN BASE A SU GRADO ANTERIOR
           SELECT not_promedio
                  INTO v_lleva_pafe
           FROM   opaf_notas
           WHERE  not_catalogo = cat
                  AND not_grado = grado     
                  AND not_tipo IN ('Z','A')
                  AND not_fecha < fec
                  ORDER BY not_fecha DESC
        )LOOP
            cuenta_pafe := cuenta_pafe +1;
         IF cuenta_pafe <= cuenta_obli THEN -- NO MAS DE 10 PAFES EN UN PERIODO DE CINCO A�OS
            v_suma_pafe := v_suma_pafe + v_lleva_pafe;
         END IF;
        END LOOP;
        IF v_suma_pafe <> 0 THEN -- POR SI  ALGUIEN NO TIENE EVALUACIONES DEL APTITUD FISICA CON NOTAS
           v_prom_pafe := v_suma_pafe/(cuenta_obli);
        END IF; 

      END IF;
END IF;
-- ********* PARA CALCULAR LA NOTA DEL OFICIAL EN APTITUD FISICA
-- ********* EL PORCENTAJE DE APTITUD FISICA
IF v_tiempo_g < 1000 THEN --OFICIALES CON MENOS DE UN A�O EN EL GRADO
  ---------******************-----------------
   SELECT pon_pafe INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = v_gra_ante AND pon_vigencia = 1;
   IF v_prom_pafe = 0  THEN -- SI HAY ALGUIEN QUE NO TENGA PAFES
      v_nota_pafe := 0 ;
   END IF;
   IF v_prom_pafe > 100 THEN -- SI HAY ALGUIEN CON PROMEDIO MAYOR A 100 PTS EN PAFES
      v_prom_pafe := 100;
      v_nota_pafe := v_prom_pafe * (v_pond/100);
   END IF;
   IF v_prom_pafe <= 100 THEN     -- SI ALGUIEN TIENEN PAFES Y SU PROMEDIO ES NORMAL
      v_nota_pafe := v_prom_pafe * (v_pond/100);
   END IF;
ELSE    --PARA OFICIALES EN SU GRADO ACTUAL Y QUE LAS PONDERACIONES ESTEN VIGENTES
  ---------******************-----------------
   SELECT pon_pafe INTO v_pond --BUSCA PONDERACION DEL GRADO ANTERIOR QUE ESTE VIGENTE
   FROM  arco_ponderacion
   WHERE pon_grado = grado AND pon_vigencia = 1;
  IF v_prom_pafe = 0  THEN -- SI HAY ALGUIEN QUE NO TENGA PAFES
     v_nota_pafe := 0 ;
  END IF;
  IF v_prom_pafe > 100 THEN -- SI HAY ALGUIEN CON PROMEDIO MAYOR A 100 PTS EN PAFES
       v_prom_pafe := 100;
       v_nota_pafe := v_prom_pafe * (v_pond/100);
  END IF;
  IF v_prom_pafe <= 100 THEN     -- SI ALGUIEN TIENEN PAFES Y SU PROMEDIO ES NORMAL
       v_nota_pafe := v_prom_pafe * (v_pond/100);
  END IF;
END IF;

RETURN v_nota_pafe ;
END arco_sp_pafe1;
/

CREATE OR REPLACE FUNCTION fn_plazasllenas_porgrado

RETURN  VARCHAR2
IS 

 
 v_dep_llave NUMBER := 0;
 v_dep_desc_lg VARCHAR2(100) := ' '; 
 v_soldado_segunda_tropa_esp NUMBER := 0;
  v_soldado_de_segunda NUMBER := 0;
  v_soldado_de_segunda_dup NUMBER := 0;
  v_marinero_de_tercera NUMBER := 0;
  v_soldado_de_2da_especialista NUMBER := 0;
  v_infante NUMBER := 0;
  v_soldado_de_primera NUMBER := 0;
  v_soldado_de_primera_tropa_esp NUMBER := 0;
  v_marinero_de_segunda NUMBER := 0;
  v_soldado_de_1ra_especialista NUMBER := 0;
  v_policia_militar NUMBER := 0;
  v_caballero_alumno NUMBER := 0;
  v_caballero_cadete NUMBER := 0;
  v_dama_cadete NUMBER := 0;
  v_cabo NUMBER := 0;
  v_cabo_tropa_especializada NUMBER := 0;
  v_marinero_de_primera NUMBER := 0;
  v_cabo_especialista NUMBER := 0;
  v_infante_de_primera NUMBER := 0;
  v_sargento_segundo NUMBER := 0;
  v_sargento_segundo_tropa_esp NUMBER := 0;
  v_contra_maestre NUMBER := 0;
  v_sargento_segundo_especialista NUMBER := 0;
  v_sargento_primero NUMBER := 0;
  v_tropa_especializada NUMBER := 0;
  v_sargento_primero_especialista NUMBER := 0;
  v_maestre NUMBER := 0;
  v_maestre_tecnico NUMBER := 0;
  v_sargento_tecnico_especialista NUMBER := 0;
  v_maestre_mayor NUMBER := 0;
  v_sargento_mayor_especialista NUMBER := 0;
  v_sargento_comandante_peloton NUMBER := 0;
  v_especialista_sin_grado NUMBER := 0;
  	v_Alferez_Fragata_Asimilado NUMBER := 0;
  	v_Subteniente_Asimilado NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Infanteria NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Caballeria NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Artilleria NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Ingenieros NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Marina NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Aviacion NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Intendencia NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Material_de_Guerra NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Sanidad_Militar NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Transmisiones NUMBER := 0;
  	v_Alferez_Fragata_Retirado_Policia_Militar NUMBER := 0;
  	v_Subteniente_de_Reservas_Infanteria NUMBER := 0;
  	v_Subteniente_de_Reservas_Caballeria NUMBER := 0;
  	v_Subteniente_de_Reservas_Artilleria NUMBER := 0;
  	v_Subteniente_de_Reservas_Ingenieros NUMBER := 0;
  	v_Subteniente_de_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Subteniente_de_Reservas_Marina NUMBER := 0;
  	v_Subteniente_de_Reservas_Aviacion NUMBER := 0;
  	v_Subteniente_de_Reservas_Intendencia NUMBER := 0;
  	v_Subteniente_de_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Subteniente_de_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Subteniente_de_Reservas_Transmisiones NUMBER := 0;
  	v_Subteniente_de_Reservas_Policia_Militar NUMBER := 0;
  	v_Alferez_de_Fragata_Infanteria NUMBER := 0;
  	v_Alferez_de_Fragata_Caballeria NUMBER := 0;
  	v_Alferez_de_Fragata_Artilleria NUMBER := 0;
  	v_Alferez_de_Fragata_Ingenieros NUMBER := 0;
  	v_Alferez_de_Fragata_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Alferez_de_Fragata_Marina NUMBER := 0;
  	v_Alferez_de_Fragata_Aviacion NUMBER := 0;
  	v_Alferez_de_Fragata_Intendencia NUMBER := 0;
  	v_Alferez_de_Fragata_Material_de_Guerra NUMBER := 0;
  	v_Alferez_de_Fragata_Sanidad_Militar NUMBER := 0;
  	v_Alferez_de_Fragata_Transmisiones NUMBER := 0;
  	v_Alferez_de_Fragata_Policia_Militar NUMBER := 0;
  	v_Subteniente_Infanteria NUMBER := 0;
  	v_Subteniente_Caballeria NUMBER := 0;
  	v_Subteniente_Artilleria NUMBER := 0;
  	v_Subteniente_Ingenieros NUMBER := 0;
  	v_Subteniente_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Subteniente_Marina NUMBER := 0;
  	v_Subteniente_Aviacion NUMBER := 0;
  	v_Subteniente_Intendencia NUMBER := 0;
  	v_Subteniente_Material_de_Guerra NUMBER := 0;
  	v_Subteniente_Sanidad_Militar NUMBER := 0;
  	v_Subteniente_Transmisiones NUMBER := 0;
  	v_Subteniente_Policia_Militar NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Infanteria NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Caballeria NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Artilleria NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Ingenieros NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Marina NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Aviacion NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Intendencia NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Material_de_Guerra NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Sanidad_Militar NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Transmisiones NUMBER := 0;
  	v_Alferez_Navio_Asimilado_Policia_Militar NUMBER := 0;
  	v_Teniente_Asimilado NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Infanteria NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Caballeria NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Artilleria NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Ingenieros NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Marina NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Aviacion NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Intendencia NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Transmisiones NUMBER := 0;
  	v_Alferez_Navio_de_Reservas_Policia_Militar NUMBER := 0;
  	v_Teniente_de_Reservas_Infanteria NUMBER := 0;
  	v_Teniente_de_Reservas_Caballeria NUMBER := 0;
  	v_Teniente_de_Reservas_Artilleria NUMBER := 0;
  	v_Teniente_de_Reservas_Ingenieros NUMBER := 0;
  	v_Teniente_de_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_de_Reservas_Marina NUMBER := 0;
  	v_Teniente_de_Reservas_Aviacion NUMBER := 0;
  	v_Teniente_de_Reservas_Intendencia NUMBER := 0;
  	v_Teniente_de_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Teniente_de_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Teniente_de_Reservas_Transmisiones NUMBER := 0;
  	v_Teniente_de_Reservas_Policia_Militar NUMBER := 0;
  	v_Alferez_de_Navio_Infanteria NUMBER := 0;
  	v_Alferez_de_Navio_Caballeria NUMBER := 0;
  	v_Alferez_de_Navio_Artilleria NUMBER := 0;
  	v_Alferez_de_Navio_Ingenieros NUMBER := 0;
  	v_Alferez_de_Navio_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Alferez_de_Navio_Marina NUMBER := 0;
  	v_Alferez_de_Navio_Aviacion NUMBER := 0;
  	v_Alferez_de_Navio_Intendencia NUMBER := 0;
  	v_Alferez_de_Navio_Material_de_Guerra NUMBER := 0;
  	v_Alferez_de_Navio_Sanidad_Militar NUMBER := 0;
  	v_Alferez_de_Navio_Transmisiones NUMBER := 0;
  	v_Alferez_de_Navio_Policia_Militar NUMBER := 0;
  	v_Teniente_Infanteria NUMBER := 0;
  	v_Teniente_Caballeria NUMBER := 0;
  	v_Teniente_Artilleria NUMBER := 0;
  	v_Teniente_Ingenieros NUMBER := 0;
  	v_Teniente_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_Marina NUMBER := 0;
  	v_Teniente_Aviacion NUMBER := 0;
  	v_Teniente_Intendencia NUMBER := 0;
  	v_Teniente_Material_de_Guerra NUMBER := 0;
  	v_Teniente_Sanidad_Militar NUMBER := 0;
  	v_Teniente_Transmisiones NUMBER := 0;
  	v_Teniente_Policia_Militar NUMBER := 0;
  	v_Capitan_Asimilado NUMBER := 0;
  	v_Capitan_de_Reservas_Infanteria NUMBER := 0;
  	v_Capitan_de_Reservas_Caballeria NUMBER := 0;
  	v_Capitan_de_Reservas_Artilleria NUMBER := 0;
  	v_Capitan_de_Reservas_Ingenieros NUMBER := 0;
  	v_Capitan_de_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_de_Reservas_Marina NUMBER := 0;
  	v_Capitan_de_Reservas_Aviacion NUMBER := 0;
  	v_Capitan_de_Reservas_Intendencia NUMBER := 0;
  	v_Capitan_de_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Capitan_de_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Capitan_de_Reservas_Transmisiones NUMBER := 0;
  	v_Capitan_de_Reservas_Policia_Militar NUMBER := 0;
  	v_capitan_infanteria NUMBER := 0;
  	v_capitan_caballeria NUMBER := 0;
  	v_capitan_artilleria NUMBER := 0;
  	v_capitan_ingenieros NUMBER := 0;
  	v_capitan_aviacion_piloto_aviador NUMBER := 0;
  	v_capitan_marina NUMBER := 0;
  	v_capitan_aviacion NUMBER := 0;
  	v_capitan_intendencia NUMBER := 0;
  	v_capitan_material_guerra NUMBER := 0;
  	v_capitan_sanidad_militar NUMBER := 0;
  	v_capitan_transmisiones NUMBER := 0;
  	v_capitan_policia_militar NUMBER := 0;
  	v_Teniente_Fragata_Asimilado NUMBER := 0;
  	v_Capitan_Segundo_Asimilado NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Infanteria NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Caballeria NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Artilleria NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Ingenieros NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Marina NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Aviacion NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Intendencia NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Material_de_Guerra NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Sanidad_Militar NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Transmisiones NUMBER := 0;
  	v_Teniente_Fragata_Reserva_Policia_Militar NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Infanteria NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Caballeria NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Artilleria NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Ingenieros NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Marina NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Aviacion NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Intendencia NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Transmisiones NUMBER := 0;
  	v_Capitan_Segundo_Reservas_Policia_Militar NUMBER := 0;
  	v_Teniente_de_Fragata_Infanteria NUMBER := 0;
  	v_Teniente_de_Fragata_Caballeria NUMBER := 0;
  	v_Teniente_de_Fragata_Artilleria NUMBER := 0;
  	v_Teniente_de_Fragata_Ingenieros NUMBER := 0;
  	v_Teniente_de_Fragata_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_de_Fragata_Marina NUMBER := 0;
  	v_Teniente_de_Fragata_Aviacion NUMBER := 0;
  	v_Teniente_de_Fragata_Intendencia NUMBER := 0;
  	v_Teniente_de_Fragata_Material_de_Guerra NUMBER := 0;
  	v_Teniente_de_Fragata_Sanidad_Militar NUMBER := 0;
  	v_Teniente_de_Fragata_Transmisiones NUMBER := 0;
  	v_Teniente_de_Fragata_Policia_Militar NUMBER := 0;
  	v_Capitan_Segundo_Infanteria NUMBER := 0;
  	v_Capitan_Segundo_Caballeria NUMBER := 0;
  	v_Capitan_Segundo_Artilleria NUMBER := 0;
  	v_Capitan_Segundo_Ingenieros NUMBER := 0;
  	v_Capitan_Segundo_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Segundo_Marina NUMBER := 0;
  	v_Capitan_Segundo_Aviacion NUMBER := 0;
  	v_Capitan_Segundo_Intendencia NUMBER := 0;
  	v_Capitan_Segundo_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Segundo_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Segundo_Transmisiones NUMBER := 0;
  	v_Capitan_Segundo_Policia_Militar NUMBER := 0;
  	v_Teniente_Navio_Asimilado NUMBER := 0;
  	v_Capitan_Primero_Asimilado_Infanteria NUMBER := 0;
  	v_Teniente_Navio_Reservas_Infanteria NUMBER := 0;
  	v_Teniente_Navio_Reservas_Caballeria NUMBER := 0;
  	v_Teniente_Navio_Reservas_Artilleria NUMBER := 0;
  	v_Teniente_Navio_Reservas_Ingenieros NUMBER := 0;
  	v_Teniente_Navio_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_Navio_Reservas_Marina NUMBER := 0;
  	v_Teniente_Navio_Reservas_Aviacion NUMBER := 0;
  	v_Teniente_Navio_Reservas_Intendencia NUMBER := 0;
  	v_Teniente_Navio_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Teniente_Navio_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Teniente_Navio_Reservas_Transmisiones NUMBER := 0;
  	v_Teniente_Navio_Reservas_Policia_Militar NUMBER := 0;
  	v_Capitan_Primero_Reservas_Infanteria NUMBER := 0;
  	v_Capitan_Primero_Reservas_Caballeria NUMBER := 0;
  	v_Capitan_Primero_Reservas_Artilleria NUMBER := 0;
  	v_Capitan_Primero_Reservas_Ingenieros NUMBER := 0;
  	v_Capitan_Primero_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Primero_Reservas_Marina NUMBER := 0;
  	v_Capitan_Primero_Reservas_Aviacion NUMBER := 0;
  	v_Capitan_Primero_Reservas_Intendencia NUMBER := 0;
  	v_Capitan_Primero_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Primero_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Primero_Reservas_Transmisiones NUMBER := 0;
  	v_Capitan_Primero_Reservas_Policia_Militar NUMBER := 0;
  	v_Teniente_de_Navio_Infanteria NUMBER := 0;
  	v_Teniente_de_Navio_Caballeria NUMBER := 0;
  	v_Teniente_de_Navio_Artilleria NUMBER := 0;
  	v_Teniente_de_Navio_Ingenieros NUMBER := 0;
  	v_Teniente_de_Navio_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_de_Navio_Marina NUMBER := 0;
  	v_Teniente_de_Navio_Aviacion NUMBER := 0;
  	v_Teniente_de_Navio_Intendencia NUMBER := 0;
  	v_Teniente_de_Navio_Material_de_Guerra NUMBER := 0;
  	v_Teniente_de_Navio_Sanidad_Militar NUMBER := 0;
  	v_Teniente_de_Navio_Transmisiones NUMBER := 0;
  	v_Teniente_de_Navio_Policia_Militar NUMBER := 0;
  	v_Capitan_Primero_Infanteria NUMBER := 0;
  	v_Capitan_Primero_Caballeria NUMBER := 0;
  	v_Capitan_Primero_Artilleria NUMBER := 0;
  	v_Capitan_Primero_Ingenieros NUMBER := 0;
  	v_Capitan_Primero_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Primero_Marina NUMBER := 0;
  	v_Capitan_Primero_Aviacion NUMBER := 0;
  	v_Capitan_Primero_Intendencia NUMBER := 0;
  	v_Capitan_Primero_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Primero_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Primero_Transmisiones NUMBER := 0;
  	v_Capitan_Primero_Policia_Militar NUMBER := 0;
  	v_Capitan_Corbeta_Asimilado NUMBER := 0;
  	v_Mayor_Asimilado_Infanteria NUMBER := 0;
  	v_Mayor_Asimilado_Caballeria NUMBER := 0;
  	v_Mayor_Asimilado_Artilleria NUMBER := 0;
  	v_Mayor_Asimilado_Ingenieros NUMBER := 0;
  	v_Mayor_Asimilado_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Mayor_Asimilado_Marina NUMBER := 0;
  	v_Mayor_Asimilado_Aviacion NUMBER := 0;
  	v_Mayor_Asimilado_Intendencia NUMBER := 0;
  	v_Mayor_Asimilado_Material_de_Guerra NUMBER := 0;
  	v_Mayor_Asimilado_Sanidad_Militar NUMBER := 0;
  	v_Mayor_Asimilado_Transmisiones NUMBER := 0;
  	v_Mayor_Asimilado_Policia_Militar NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Infanteria NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Caballeria NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Artilleria NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Ingenieros NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Marina NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Aviacion NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Intendencia NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Transmisiones NUMBER := 0;
  	v_Capitan_Corbeta_Reservas_Policia_Militar NUMBER := 0;
  	v_Mayor_Reservas_Infanteria NUMBER := 0;
  	v_Mayor_Reservas_Caballeria NUMBER := 0;
  	v_Mayor_Reservas_Artilleria NUMBER := 0;
  	v_Mayor_Reservas_Ingenieros NUMBER := 0;
  	v_Mayor_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Mayor_Reservas_Marina NUMBER := 0;
  	v_Mayor_Reservas_Aviacion NUMBER := 0;
  	v_Mayor_Reservas_Intendencia NUMBER := 0;
  	v_Mayor_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Mayor_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Mayor_Reservas_Transmisiones NUMBER := 0;
  	v_Mayor_Reservas_Policia_Militar NUMBER := 0;
  	v_Capitan_de_Corbeta_Infanteria NUMBER := 0;
  	v_Capitan_de_Corbeta_Caballeria NUMBER := 0;
  	v_Capitan_de_Corbeta_Artilleria NUMBER := 0;
  	v_Capitan_de_Corbeta_Ingenieros NUMBER := 0;
  	v_Capitan_de_Corbeta_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_de_Corbeta_Marina NUMBER := 0;
  	v_Capitan_de_Corbeta_Aviacion NUMBER := 0;
  	v_Capitan_de_Corbeta_Intendencia NUMBER := 0;
  	v_Capitan_de_Corbeta_Material_de_Guerra NUMBER := 0;
  	v_Capitan_de_Corbeta_Sanidad_Militar NUMBER := 0;
  	v_Capitan_de_Corbeta_Transmisiones NUMBER := 0;
  	v_Capitan_de_Corbeta_Policia_Militar NUMBER := 0;
  	v_Mayor_Infanteria NUMBER := 0;
  	v_Mayor_Caballeria NUMBER := 0;
  	v_Mayor_Artilleria NUMBER := 0;
  	v_Mayor_Ingenieros NUMBER := 0;
  	v_Mayor_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Mayor_Marina NUMBER := 0;
  	v_Mayor_Aviacion NUMBER := 0;
  	v_Mayor_Intendencia NUMBER := 0;
  	v_Mayor_Material_de_Guerra NUMBER := 0;
  	v_Mayor_Sanidad_Militar NUMBER := 0;
  	v_Mayor_Transmisiones NUMBER := 0;
  	v_Mayor_Policia_Militar NUMBER := 0;
  	v_Capitan_Fragata_Asimilado NUMBER := 0;
  	v_Teniente_Coronel_Asimilado NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Infanteria NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Caballeria NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Artilleria NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Ingenieros NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Marina NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Aviacion NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Intendencia NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Transmisiones NUMBER := 0;
  	v_Capitan_Fragata_Reservas_Policia_Militar NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Infanteria NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Caballeria NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Artilleria NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Ingenieros NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Marina NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Aviacion NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Intendencia NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Material_de_Guerra NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Sanidad_Militar NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Transmisiones NUMBER := 0;
  	v_Teniente_Coronel_Reservas_Policia_Militar NUMBER := 0;
  	v_Capitan_Fragata_Infanteria NUMBER := 0;
  	v_Capitan_Fragata_Caballeria NUMBER := 0;
  	v_Capitan_Fragata_Artilleria NUMBER := 0;
  	v_Capitan_Fragata_Ingenieros NUMBER := 0;
  	v_Capitan_Fragata_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Fragata_Marina NUMBER := 0;
  	v_Capitan_Fragata_Aviacion NUMBER := 0;
  	v_Capitan_Fragata_Intendencia NUMBER := 0;
  	v_Capitan_Fragata_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Fragata_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Fragata_Transmisiones NUMBER := 0;
  	v_Capitan_Fragata_Policia_Militar NUMBER := 0;
  	v_Teniente_Coronel_Infanteria NUMBER := 0;
  	v_Teniente_Coronel_Caballeria NUMBER := 0;
  	v_Teniente_Coronel_Artilleria NUMBER := 0;
  	v_Teniente_Coronel_Ingenieros NUMBER := 0;
  	v_Teniente_Coronel_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Teniente_Coronel_Marina NUMBER := 0;
  	v_Teniente_Coronel_Aviacion NUMBER := 0;
  	v_Teniente_Coronel_Intendencia NUMBER := 0;
  	v_Teniente_Coronel_Material_de_Guerra NUMBER := 0;
  	v_Teniente_Coronel_Sanidad_Militar NUMBER := 0;
  	v_Teniente_Coronel_Transmisiones NUMBER := 0;
  	v_Teniente_Coronel_Policia_Militar NUMBER := 0;
  	v_Capitan_Navio_Asimilado NUMBER := 0;
  	v_Coronel_Asimilado NUMBER := 0;
  	v_Oficial_Asimilado_Sin_Grado NUMBER := 0;
  	v_Capitan_Navio_Infanteria NUMBER := 0;
  	v_Capitan_Navio_Caballeria NUMBER := 0;
  	v_Capitan_Navio_Artilleria NUMBER := 0;
  	v_Capitan_Navio_Ingenieros NUMBER := 0;
  	v_Capitan_Navio_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Capitan_Navio_Marina NUMBER := 0;
  	v_Capitan_Navio_Aviacion NUMBER := 0;
  	v_Capitan_Navio_Intendencia NUMBER := 0;
  	v_Capitan_Navio_Material_de_Guerra NUMBER := 0;
  	v_Capitan_Navio_Sanidad_Militar NUMBER := 0;
  	v_Capitan_Navio_Transmisiones NUMBER := 0;
  	v_Capitan_Navio_Policia_Militar NUMBER := 0;
  	v_Coronel_Infanteria NUMBER := 0;
  	v_Coronel_Caballeria NUMBER := 0;
  	v_Coronel_Artilleria NUMBER := 0;
  	v_Coronel_Ingenieros NUMBER := 0;
  	v_Coronel_Aviacion_Piloto_Aviador NUMBER := 0;
  	v_Coronel_Marina NUMBER := 0;
  	v_Coronel_Aviacion NUMBER := 0;
  	v_Coronel_Intendencia NUMBER := 0;
  	v_Coronel_Material_de_Guerra NUMBER := 0;
  	v_Coronel_Sanidad_Militar NUMBER := 0;
  	v_Coronel_Transmisiones NUMBER := 0;
  	v_Coronel_policia_militar NUMBER := 0;
  	v_vicealmirante NUMBER := 0;
  	v_general_brigada NUMBER := 0;
  	v_almirante NUMBER := 0;
  	v_general_division NUMBER := 0;


BEGIN


FOR REC IN(
    SELECT DISTINCT dep_llave, MDEP.dep_desc_lg,
    SUM(CASE wHEN per_grado = 2 THEN 1 ELSE 0 END) AS soldado_segunda_tropa_esp,
    SUM(CASE wHEN per_grado = 3 THEN 1 ELSE 0 END) AS soldado_de_segunda,
    SUM(CASE wHEN per_grado = 4 THEN 1 ELSE 0 END) AS soldado_de_segunda_dup,
    SUM(CASE wHEN per_grado = 5 THEN 1 ELSE 0 END) AS marinero_de_tercera,
    SUM(CASE wHEN per_grado = 6 THEN 1 ELSE 0 END) AS soldado_de_2da_especialista,
    SUM(CASE wHEN per_grado = 7 THEN 1 ELSE 0 END) AS infante,
    SUM(CASE wHEN per_grado = 8 THEN 1 ELSE 0 END) AS soldado_de_primera,
    SUM(CASE wHEN per_grado = 9 THEN 1 ELSE 0 END) AS soldado_de_primera_tropa_esp,
    SUM(CASE wHEN per_grado = 10 THEN 1 ELSE 0 END) AS marinero_de_segunda,
    SUM(CASE wHEN per_grado = 11 THEN 1 ELSE 0 END) AS soldado_de_1ra_especialista,
    SUM(CASE wHEN per_grado = 12 THEN 1 ELSE 0 END) AS policia_militar,
    SUM(CASE wHEN per_grado = 13 THEN 1 ELSE 0 END) AS caballero_alumno,
    SUM(CASE wHEN per_grado = 14 THEN 1 ELSE 0 END) AS caballero_cadete,
    SUM(CASE wHEN per_grado = 15 THEN 1 ELSE 0 END) AS dama_cadete,
    SUM(CASE wHEN per_grado = 16 THEN 1 ELSE 0 END) AS cabo,
    SUM(CASE wHEN per_grado = 17 THEN 1 ELSE 0 END) AS cabo_tropa_especializada,
    SUM(CASE wHEN per_grado = 18 THEN 1 ELSE 0 END) AS marinero_de_primera,
    SUM(CASE wHEN per_grado = 19 THEN 1 ELSE 0 END) AS cabo_especialista,
    SUM(CASE wHEN per_grado = 20 THEN 1 ELSE 0 END) AS infante_de_primera,
    SUM(CASE wHEN per_grado = 21 THEN 1 ELSE 0 END) AS sargento_segundo,
    SUM(CASE wHEN per_grado = 22 THEN 1 ELSE 0 END) AS sargento_segundo_tropa_esp,
    SUM(CASE wHEN per_grado = 23 THEN 1 ELSE 0 END) AS contra_maestre,
    SUM(CASE wHEN per_grado = 24 THEN 1 ELSE 0 END) AS sargento_segundo_especialista,
    SUM(CASE wHEN per_grado = 26 THEN 1 ELSE 0 END) AS sargento_primero,
    SUM(CASE wHEN per_grado = 27 THEN 1 ELSE 0 END) AS tropa_especializada,
    SUM(CASE wHEN per_grado = 28 THEN 1 ELSE 0 END) AS sargento_primero_especialista,
    SUM(CASE wHEN per_grado = 29 THEN 1 ELSE 0 END) AS maestre,
    SUM(CASE wHEN per_grado = 30 THEN 1 ELSE 0 END) AS maestre_tecnico,
    SUM(CASE wHEN per_grado = 31 THEN 1 ELSE 0 END) AS sargento_tecnico_especialista,
    SUM(CASE wHEN per_grado = 32 THEN 1 ELSE 0 END) AS maestre_mayor,
    SUM(CASE wHEN per_grado = 33 THEN 1 ELSE 0 END) AS sargento_mayor_especialista,
    SUM(CASE wHEN per_grado = 34 THEN 1 ELSE 0 END) AS sargento_comandante_peloton,
    SUM(CASE wHEN per_grado = 35 THEN 1 ELSE 0 END) AS especialista_sin_grado,
SUM(CASE wHEN per_grado  =	36	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Asimilado	,
SUM(CASE wHEN per_grado  =	37	 THEN 1 ELSE 0 END) AS 	Subteniente_Asimilado	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Infanteria	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Caballeria	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Artilleria	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Ingenieros	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Marina	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Aviacion	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Intendencia	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Transmisiones	,
SUM(CASE wHEN per_grado  =	38	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Alferez_Fragata_Retirado_Policia_Militar	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	39	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Subteniente_de_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Infanteria	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Caballeria	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Artilleria	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Ingenieros	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Marina	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Aviacion	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Intendencia	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Transmisiones	,
SUM(CASE wHEN per_grado  =	40	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Alferez_de_Fragata_Policia_Militar	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Subteniente_Infanteria	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Subteniente_Caballeria	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Subteniente_Artilleria	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Subteniente_Ingenieros	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Subteniente_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Subteniente_Marina	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Subteniente_Aviacion	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Subteniente_Intendencia	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Subteniente_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Subteniente_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Subteniente_Transmisiones	,
SUM(CASE wHEN per_grado  =	41	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Subteniente_Policia_Militar	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Infanteria	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Caballeria	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Artilleria	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Ingenieros	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Marina	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Aviacion	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Intendencia	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Transmisiones	,
SUM(CASE wHEN per_grado  =	42	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_Asimilado_Policia_Militar	,
SUM(CASE wHEN per_grado  =	43	 THEN 1 ELSE 0 END) AS 	Teniente_Asimilado	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	44	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Alferez_Navio_de_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	45	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_de_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Infanteria	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Caballeria	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Artilleria	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Ingenieros	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Marina	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Aviacion	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Intendencia	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Transmisiones	,
SUM(CASE wHEN per_grado  =	46	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Alferez_de_Navio_Policia_Militar	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_Infanteria	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_Caballeria	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_Artilleria	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_Ingenieros	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_Marina	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_Aviacion	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_Intendencia	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_Transmisiones	,
SUM(CASE wHEN per_grado  =	47	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_Policia_Militar	,
SUM(CASE wHEN per_grado  =	50	 THEN 1 ELSE 0 END) AS 	Capitan_Asimilado	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	51	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_de_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	capitan_infanteria	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	capitan_caballeria	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	capitan_artilleria	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	capitan_ingenieros	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	capitan_aviacion_piloto_aviador	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	capitan_marina	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	capitan_aviacion	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	capitan_intendencia	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	capitan_material_guerra	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	capitan_sanidad_militar	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	capitan_transmisiones	,
SUM(CASE wHEN per_grado  =	52	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	capitan_policia_militar	,
SUM(CASE wHEN per_grado  =	54	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Asimilado	,
SUM(CASE wHEN per_grado  =	55   THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Asimilado	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Infanteria	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Caballeria	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Artilleria	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Ingenieros	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Marina	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Aviacion	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Intendencia	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Transmisiones	,
SUM(CASE wHEN per_grado  =	57	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_Fragata_Reserva_Policia_Militar	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	58	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Infanteria	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Caballeria	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Artilleria	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Ingenieros	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Marina	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Aviacion	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Intendencia	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Transmisiones	,
SUM(CASE wHEN per_grado  =	59	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_de_Fragata_Policia_Militar	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Infanteria	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Caballeria	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Artilleria	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Ingenieros	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Marina	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Aviacion	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Intendencia	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Transmisiones	,
SUM(CASE wHEN per_grado  =	60	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Segundo_Policia_Militar	,
SUM(CASE wHEN per_grado  =	61	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Asimilado,
SUM(CASE wHEN per_grado  =	62	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Asimilado_Infanteria	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	63	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_Navio_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	64	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Infanteria	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Caballeria	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Artilleria	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Ingenieros	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Marina	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Aviacion	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Intendencia	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Transmisiones	,
SUM(CASE wHEN per_grado  =	65	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_de_Navio_Policia_Militar	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Infanteria	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Caballeria	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Artilleria	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Ingenieros	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Marina	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Aviacion	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Intendencia	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Transmisiones	,
SUM(CASE wHEN per_grado  =	66	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Primero_Policia_Militar	,
SUM(CASE wHEN per_grado  =	69	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Asimilado	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Infanteria	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Caballeria	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Artilleria	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Ingenieros	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Marina	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Aviacion	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Intendencia	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Transmisiones	,
SUM(CASE wHEN per_grado  =	70	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Mayor_Asimilado_Policia_Militar	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	71	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Corbeta_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	72	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Mayor_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Infanteria	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Caballeria	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Artilleria	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Ingenieros	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Marina	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Aviacion	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Intendencia	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Transmisiones	,
SUM(CASE wHEN per_grado  =	73	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_de_Corbeta_Policia_Militar	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Mayor_Infanteria	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Mayor_Caballeria	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Mayor_Artilleria	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Mayor_Ingenieros	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Mayor_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Mayor_Marina	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Mayor_Aviacion	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Mayor_Intendencia	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Mayor_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Mayor_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Mayor_Transmisiones	,
SUM(CASE wHEN per_grado  =	74	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Mayor_Policia_Militar	,
SUM(CASE wHEN per_grado  =	77	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Asimilado	,
SUM(CASE wHEN per_grado  =	78	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Asimilado	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	79	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Infanteria	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Caballeria	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Artilleria	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Ingenieros	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Marina	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Aviacion	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Intendencia	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Transmisiones	,
SUM(CASE wHEN per_grado  =	80	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Reservas_Policia_Militar	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Infanteria	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Caballeria	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Artilleria	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Ingenieros	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Marina	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Aviacion	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Intendencia	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Transmisiones	,
SUM(CASE wHEN per_grado  =	81	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Fragata_Policia_Militar	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Infanteria	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Caballeria	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Artilleria	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Ingenieros	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Marina	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Aviacion	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Intendencia	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Transmisiones	,
SUM(CASE wHEN per_grado  =	82	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Teniente_Coronel_Policia_Militar	,
SUM(CASE wHEN per_grado  =	85	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Asimilado	,
SUM(CASE wHEN per_grado  =	86	 THEN 1 ELSE 0 END) AS 	Coronel_Asimilado	,
SUM(CASE wHEN per_grado  =	87	 THEN 1 ELSE 0 END) AS 	Oficial_Asimilado_Sin_Grado	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Infanteria	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Caballeria	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Artilleria	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Ingenieros	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Marina	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Aviacion	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Intendencia	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Transmisiones	,
SUM(CASE wHEN per_grado  =	88	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Capitan_Navio_Policia_Militar	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	1	 THEN 1 ELSE 0 END) AS 	Coronel_Infanteria	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	2	 THEN 1 ELSE 0 END) AS 	Coronel_Caballeria	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	3	 THEN 1 ELSE 0 END) AS 	Coronel_Artilleria	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	4	 THEN 1 ELSE 0 END) AS 	Coronel_Ingenieros	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	5	 THEN 1 ELSE 0 END) AS 	Coronel_Aviacion_Piloto_Aviador	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	6	 THEN 1 ELSE 0 END) AS 	Coronel_Marina	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	7	 THEN 1 ELSE 0 END) AS 	Coronel_Aviacion	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	20	 THEN 1 ELSE 0 END) AS 	Coronel_Intendencia	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	24	 THEN 1 ELSE 0 END) AS 	Coronel_Material_de_Guerra	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	26	 THEN 1 ELSE 0 END) AS 	Coronel_Sanidad_Militar	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	28	 THEN 1 ELSE 0 END) AS 	Coronel_Transmisiones	,
SUM(CASE wHEN per_grado  =	89	 AND per_arma =	36	 THEN 1 ELSE 0 END) AS 	Coronel_policia_militar	,
SUM(CASE wHEN per_grado  =	92	 THEN 1 ELSE 0 END) AS 	vicealmirante	,
SUM(CASE wHEN per_grado  =	93	 THEN 1 ELSE 0 END) AS 	general_brigada	,
SUM(CASE wHEN per_grado  =	96	 THEN 1 ELSE 0 END) AS 	almirante	,
SUM(CASE wHEN per_grado  =	97	 THEN 1 ELSE 0 END) AS 	general_division	
FROM MDEP 
INNER JOIN MORG ON ORG_DEPENDENCIA = DEP_LLAVE 
INNER JOIN MPER ON PER_PLAZA = ORG_PLAZA  
wHERE ORG_SITUACION = 'A' 
GROUP BY dep_llave, dep_desc_lg 


)LOOP



RETURN v_dep_desc_lg;

 end LOOP;
 
 end fn_plazasllenas_porgrado;
/
CREATE OR REPLACE FUNCTION fn_plazasvacantes_porgrado

RETURN VARCHAR2
IS 
 v_dep_llave NUMBER;
 v_dep_desc_lg VARCHAR2(100); 
 v_soldado_segunda_tropa_esp NUMBER; 
 v_soldado_de_segunda NUMBER; 
 v_soldado_de_segunda_dup NUMBER; 
 v_marinero_de_tercera NUMBER; 
 v_soldado_de_2da_especialista NUMBER; 
 v_infante NUMBER; 
 v_soldado_de_primera NUMBER; 
 v_soldado_de_primera_tropa_esp NUMBER; 
 v_marinero_de_segunda NUMBER; 
 v_soldado_de_1ra_especialista NUMBER; 
 v_policia_militar NUMBER; 
 v_caballero_alumno NUMBER; 
 v_caballero_cadete NUMBER; 
 v_dama_cadete NUMBER; 
 v_cabo NUMBER; 
 v_cabo_tropa_especializada NUMBER; 
 v_marinero_de_primera NUMBER; 
 v_cabo_especialista NUMBER; 
 v_infante_de_primera NUMBER; 
 v_sargento_segundo NUMBER; 
 v_sargento_segundo_tropa_esp NUMBER; 
 v_contra_maestre NUMBER; 
 v_sargento_segundo_especialista NUMBER; 
 v_sargento_primero NUMBER; 
 v_tropa_especializada NUMBER; 
 v_sargento_primero_especialista NUMBER; 
 v_maestre NUMBER; 
 v_maestre_tecnico NUMBER; 
 v_sargento_tecnico_especialista NUMBER; 
 v_maestre_mayor NUMBER; 
 v_sargento_mayor_especialista NUMBER; 
 v_sargento_comandante_peloton NUMBER; 
 v_especialista_sin_grado NUMBER; 
 v_alferez_fragata_asimilado NUMBER; 
 v_subteniente_asimilado NUMBER; 
 v_alferez_fragata_retirado NUMBER; 
 v_subteniente_de_reservas NUMBER; 
 v_alferez_de_fragata NUMBER; 
 v_subteniente NUMBER; 
 v_alferez_navio_asimilado NUMBER; 
 v_teniente_asimilado NUMBER; 
 v_alferez_navio_de_reservas NUMBER; 
 v_teniente_de_reservas NUMBER; 
 v_alferez_de_navio NUMBER; 
 v_teniente NUMBER; 
 v_capitan_asimilado NUMBER; 
 v_capitan_de_reservas NUMBER; 
 v_capitan NUMBER; 
 v_teniente_fragata_asimilado NUMBER; 
 v_capitan_segundo_asimilado NUMBER; 
 v_teniente_fragata_reserva NUMBER; 
 v_capitan_segundo_reservas NUMBER; 
 v_teniente_de_fragata NUMBER; 
 v_capitan_segundo NUMBER; 
 v_teniente_navio_asimilado NUMBER; 
 v_capitan_primero_asimilado NUMBER; 
 v_teniente_navio_reservas NUMBER; 
 v_capitan_primero_reservas NUMBER; 
 v_teniente_de_navio NUMBER; 
 v_capitan_primero NUMBER; 
 v_capitan_corbeta_asimilado NUMBER; 
 v_mayor_asimilado NUMBER; 
 v_capitan_corbeta_reservas NUMBER; 
 v_mayor_reservas NUMBER; 
 v_capitan_de_corbeta NUMBER; 
 v_mayor NUMBER; 
 v_capitan_fragata_asimilado NUMBER; 
 v_teniente_coronel_asimilado NUMBER; 
 v_capitan_fragata_reservas NUMBER; 
 v_teniente_coronel_reservas NUMBER; 
 v_capitan_fragata NUMBER; 
 v_teniente_coronel NUMBER; 
 v_capitan_navio_asimilado NUMBER; 
 v_coronel_asimilado NUMBER; 
 v_oficial_asimilado_singrado NUMBER; 
 v_capitan_navio NUMBER; 
 v_coronel NUMBER; 
 v_vice_almirante NUMBER; 
 v_general_brigada NUMBER; 
 v_almirante NUMBER; 
 v_general_de_division NUMBER; 
 v_oficial_singrado NUMBER;
BEGIN
FOR REC IN( 

SELECT DISTINCT dep_llave, MDEP.dep_desc_lg,
    SUM(CASE WHEN per_grado is null and org_grado = 2 THEN 1 ELSE 0 END) AS soldado_segunda_tropa_esp,
    SUM(CASE WHEN per_grado is null and org_grado = 3 THEN 1 ELSE 0 END) AS soldado_de_segunda,
    SUM(CASE WHEN per_grado is null and org_grado = 4 THEN 1 ELSE 0 END) AS soldado_de_segunda_dup,
    SUM(CASE WHEN per_grado is null and org_grado = 5 THEN 1 ELSE 0 END) AS marinero_de_tercera,
    SUM(CASE WHEN per_grado is null and org_grado = 6 THEN 1 ELSE 0 END) AS soldado_de_2da_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 7 THEN 1 ELSE 0 END) AS infante,
    SUM(CASE WHEN per_grado is null and org_grado = 8 THEN 1 ELSE 0 END) AS soldado_de_primera,
    SUM(CASE WHEN per_grado is null and org_grado = 9 THEN 1 ELSE 0 END) AS soldado_de_primera_tropa_esp,
    SUM(CASE WHEN per_grado is null and org_grado = 10 THEN 1 ELSE 0 END) AS marinero_de_segunda,
    SUM(CASE WHEN per_grado is null and org_grado = 11 THEN 1 ELSE 0 END) AS soldado_de_1ra_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 12 THEN 1 ELSE 0 END) AS policia_militar,
    SUM(CASE WHEN per_grado is null and org_grado = 13 THEN 1 ELSE 0 END) AS caballero_alumno,
    SUM(CASE WHEN per_grado is null and org_grado = 14 THEN 1 ELSE 0 END) AS caballero_cadete,
    SUM(CASE WHEN per_grado is null and org_grado = 15 THEN 1 ELSE 0 END) AS dama_cadete,
    SUM(CASE WHEN per_grado is null and org_grado = 16 THEN 1 ELSE 0 END) AS cabo,
    SUM(CASE WHEN per_grado is null and org_grado = 17 THEN 1 ELSE 0 END) AS cabo_tropa_especializada,
    SUM(CASE WHEN per_grado is null and org_grado = 18 THEN 1 ELSE 0 END) AS marinero_de_primera,
    SUM(CASE WHEN per_grado is null and org_grado = 19 THEN 1 ELSE 0 END) AS cabo_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 20 THEN 1 ELSE 0 END) AS infante_de_primera,
    SUM(CASE WHEN per_grado is null and org_grado = 21 THEN 1 ELSE 0 END) AS sargento_segundo,
    SUM(CASE WHEN per_grado is null and org_grado = 22 THEN 1 ELSE 0 END) AS sargento_segundo_tropa_esp,
    SUM(CASE WHEN per_grado is null and org_grado = 23 THEN 1 ELSE 0 END) AS contra_maestre,
    SUM(CASE WHEN per_grado is null and org_grado = 24 THEN 1 ELSE 0 END) AS sargento_segundo_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 26 THEN 1 ELSE 0 END) AS sargento_primero,
    SUM(CASE WHEN per_grado is null and org_grado = 27 THEN 1 ELSE 0 END) AS tropa_especializada,
    SUM(CASE WHEN per_grado is null and org_grado = 28 THEN 1 ELSE 0 END) AS sargento_primero_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 29 THEN 1 ELSE 0 END) AS maestre,
    SUM(CASE WHEN per_grado is null and org_grado = 30 THEN 1 ELSE 0 END) AS maestre_tecnico,
    SUM(CASE WHEN per_grado is null and org_grado = 31 THEN 1 ELSE 0 END) AS sargento_tecnico_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 32 THEN 1 ELSE 0 END) AS maestre_mayor,
    SUM(CASE WHEN per_grado is null and org_grado = 33 THEN 1 ELSE 0 END) AS sargento_mayor_especialista,
    SUM(CASE WHEN per_grado is null and org_grado = 34 THEN 1 ELSE 0 END) AS sargento_comandante_peloton,
    SUM(CASE WHEN per_grado is null and org_grado = 35 THEN 1 ELSE 0 END) AS especialista_sin_grado,
    SUM(CASE WHEN per_grado is null and org_grado = 36 THEN 1 ELSE 0 END) AS alferez_fragata_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 37 THEN 1 ELSE 0 END) AS subteniente_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 38 THEN 1 ELSE 0 END) AS alferez_fragata_retirado,
    SUM(CASE WHEN per_grado is null and org_grado = 39 THEN 1 ELSE 0 END) AS subteniente_de_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 40 THEN 1 ELSE 0 END) AS alferez_de_fragata,
    SUM(CASE WHEN per_grado is null and org_grado = 41 THEN 1 ELSE 0 END) AS subteniente,
    SUM(CASE WHEN per_grado is null and org_grado = 42 THEN 1 ELSE 0 END) AS alferez_navio_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 43 THEN 1 ELSE 0 END) AS teniente_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 44 THEN 1 ELSE 0 END) AS alferez_navio_de_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 45 THEN 1 ELSE 0 END) AS teniente_de_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 46 THEN 1 ELSE 0 END) AS alferez_de_navio,
    SUM(CASE WHEN per_grado is null and org_grado = 47 THEN 1 ELSE 0 END) AS teniente,
    SUM(CASE WHEN per_grado is null and org_grado = 50 THEN 1 ELSE 0 END) AS capitan_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 51 THEN 1 ELSE 0 END) AS capitan_de_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 52 THEN 1 ELSE 0 END) AS capitan,
    SUM(CASE WHEN per_grado is null and org_grado = 54 THEN 1 ELSE 0 END) AS teniente_fragata_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 55 THEN 1 ELSE 0 END) AS capitan_segundo_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 57 THEN 1 ELSE 0 END) AS teniente_fragata_reserva,
    SUM(CASE WHEN per_grado is null and org_grado = 58 THEN 1 ELSE 0 END) AS capitan_segundo_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 59 THEN 1 ELSE 0 END) AS teniente_de_fragata,
    SUM(CASE WHEN per_grado is null and org_grado = 60 THEN 1 ELSE 0 END) AS capitan_segundo,
    SUM(CASE WHEN per_grado is null and org_grado = 61 THEN 1 ELSE 0 END) AS teniente_navio_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 62 THEN 1 ELSE 0 END) AS capitan_primero_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 63 THEN 1 ELSE 0 END) AS teniente_navio_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 64 THEN 1 ELSE 0 END) AS capitan_primero_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 65 THEN 1 ELSE 0 END) AS teniente_de_navio,
    SUM(CASE WHEN per_grado is null and org_grado = 66 THEN 1 ELSE 0 END) AS capitan_primero,
    SUM(CASE WHEN per_grado is null and org_grado = 69 THEN 1 ELSE 0 END) AS capitan_corbeta_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 70 THEN 1 ELSE 0 END) AS mayor_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 71 THEN 1 ELSE 0 END) AS capitan_corbeta_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 72 THEN 1 ELSE 0 END) AS mayor_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 73 THEN 1 ELSE 0 END) AS capitan_de_corbeta,
    SUM(CASE WHEN per_grado is null and org_grado = 74 THEN 1 ELSE 0 END) AS mayor,
    SUM(CASE WHEN per_grado is null and org_grado = 77 THEN 1 ELSE 0 END) AS capitan_fragata_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 78 THEN 1 ELSE 0 END) AS teniente_coronel_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 79 THEN 1 ELSE 0 END) AS capitan_fragata_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 80 THEN 1 ELSE 0 END) AS teniente_coronel_reservas,
    SUM(CASE WHEN per_grado is null and org_grado = 81 THEN 1 ELSE 0 END) AS capitan_fragata,
    SUM(CASE WHEN per_grado is null and org_grado = 82 THEN 1 ELSE 0 END) AS teniente_coronel,
    SUM(CASE WHEN per_grado is null and org_grado = 85 THEN 1 ELSE 0 END) AS capitan_navio_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 86 THEN 1 ELSE 0 END) AS coronel_asimilado,
    SUM(CASE WHEN per_grado is null and org_grado = 87 THEN 1 ELSE 0 END) AS oficial_asimilado_singrado, 
    SUM(CASE WHEN per_grado is null and org_grado = 88 THEN 1 ELSE 0 END) AS capitan_navio,           
    SUM(CASE WHEN per_grado is null and org_grado = 89 THEN 1 ELSE 0 END) AS coronel,
    SUM(CASE WHEN per_grado is null and org_grado = 92 THEN 1 ELSE 0 END) AS vice_almirante,
    SUM(CASE WHEN per_grado is null and org_grado = 93 THEN 1 ELSE 0 END) AS general_brigada,
    SUM(CASE WHEN per_grado is null and org_grado = 96 THEN 1 ELSE 0 END) AS almirante,
    SUM(CASE WHEN per_grado is null and org_grado = 97 THEN 1 ELSE 0 END) AS general_de_division,
    SUM(CASE WHEN per_grado is null and org_grado = 99 THEN 1 ELSE 0 END) AS oficial_singrado


FROM MDEP
INNER JOIN MORG ON org_dependencia = dep_llave
LEFT OUTER JOIN MPER ON org_plaza = per_plaza
LEFT OUTER JOIN GRADOS ON org_grado = gra_codigo
WHERE org_situacion = 'A'
  AND org_ceom <> 'TITULO'
GROUP BY dep_llave, dep_desc_lg

)LOOP

RETURN v_dep_desc_lg;
END LOOP;
END fn_plazasvacantes_porgrado;
/
CREATE OR REPLACE PROCEDURE ADMIN.sp_chichi
IS
  v_cat INTEGER;
  cont INTEGER := 0;
  v_cant NUMBER(16,2);
BEGIN
  -- CAPITAN JOSE RIVAS
  -- 27MAR06
  FOR rec IN (SELECT dfa_catalogo, dfa_cantidad FROM dfasig) LOOP
    v_cat := rec.dfa_catalogo;
    v_cant := rec.dfa_cantidad;
    
    UPDATE hfasig
    SET hfa_aguinaldo = v_cant
    WHERE hfa_catalogo = v_cat
      AND hfa_fecha > TO_DATE('20090201', 'YYYYMMDD')
      AND hfa_catalogo < 1000000;
      
    cont := cont + 1;
  END LOOP;
  
 DBMS_OUTPUT.PUT_LINE('Total de registros actualizados: ' || cont);
END;
/
CREATE OR REPLACE PROCEDURE ADMIN.sp_psan_sanciones(cat IN NUMBER, san IN NUMBER, gra IN NUMBER,
 dep IN NUMBER)

IS 
  mensaje VARCHAR2(100) := '';
  v_existe NUMBER := 0;
  v_tieneh NUMBER := 0;
  v_tiened NUMBER := 0;
  v_tiempo NUMBER := 0;
  v_para_convertir NUMBER := 0;
  v_para_demeritos NUMBER := 0;
  v_para_restar NUMBER := 0;
  v_demeritos NUMBER := 0;
  v_demeritos_tiene NUMBER := 0;
  v_alarma NUMBER := 0;
  v_indicador NUMBER := 0;
  v_status NUMBER := 0;
  v_insert_fecha DATE;
  v_compara_fecha DATE;
  v_compara_maxfec DATE;
  v_tipo VARCHAR2(1) := '';

-- LET mensaje = '';

BEGIN

 ----- TRAIGO LA CANTIDAD Y EL TIPO DE LA SANCION (SI ES HORA O DEMERITO)

 SELECT san_cantidad, san_tipo INTO v_tiempo, v_tipo
   FROM psan_sanciones WHERE san_codigo = san;

 ----- SI SON HORAS -----

 IF v_tipo = 'H' then

    ----- VEO SI YA TIENE SANCION INGRESADA EN psan_estadistica -----

    SELECT COUNT(est_catalogo) INTO v_existe

      FROM psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;

    IF v_existe = 1 THEN

       SELECT est_horas INTO v_tieneh
         FROM psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;
        v_tieneh := v_tieneh + v_tiempo;

       UPDATE  psan_estadistica SET est_horas = v_tieneh
         WHERE est_catalogo = cat AND est_grado = gra;

    ELSE

       INSERT into psan_estadistica values (cat, gra, v_tiempo,0,0);

    END IF;
    END IF;

    ----- PARA CONVERTIR HORAS A DEMERITOS -----

    SELECT est_horas INTO v_para_convertir

      FROM psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;

    ----- MAYOR A 24 HORAS Y MENOR A 48 -----

    IF v_para_convertir >= 24 AND v_para_convertir < 48 THEN

         v_para_restar := v_para_convertir - 24;

         SELECT  est_demeritos + 1, SYSDATE INTO  v_para_demeritos, v_insert_fecha

           FROM  psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;

         UPDATE  psan_estadistica SET est_horas = v_para_restar,

                 est_demeritos = v_para_demeritos

           WHERE est_catalogo = cat AND est_grado = gra;

------EVITAR QUE EN LA TABLA DE DETALLE HAYAN 2 REGISTROS IGUALES DE ACUMULACION
    
         SELECT MAX(det_fecha)
         INTO   v_compara_maxfec
         FROM   psan_detalle
         WHERE  det_catalogo = cat AND det_grado = gra AND det_sancion = 9997;

         IF v_compara_maxfec IS NULL THEN
            INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,
                                      det_dependencia,det_observaciones,det_detalle,det_status)
                                     VALUES(cat, v_insert_fecha, 9997, gra, dep,'','',0);

         ELSE

            v_compara_maxfec := v_compara_maxfec + 1;

            INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,
                                      det_dependencia,det_observaciones,det_detalle,det_status)
                                     VALUES(cat, v_compara_maxfec, 9997, gra, dep,'','',0);

         END If;
         END IF;



------------------------------------------------------------------

    ----- MAYOR A 48 HORAS Y MENOR A 72 -----

    IF v_para_convertir >= 48 AND v_para_convertir < 72 THEN
        v_para_restar := v_para_convertir - 48;
	   
       SELECT  est_demeritos + 2, SYSDATE
         INTO  v_para_demeritos, v_insert_fecha
         FROM  psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;
       UPDATE  psan_estadistica SET est_horas = v_para_restar,

                        est_demeritos = v_para_demeritos

         WHERE est_catalogo = cat AND est_grado = gra;

------EVITAR QUE EN LA TABLA DE DETALLE HAYAN 2 REGISTROS IGUALES DE ACUMULACION

         SELECT MAX(det_fecha)
         INTO   v_compara_maxfec
         FROM   psan_detalle
         WHERE  det_catalogo = cat AND det_grado = gra AND det_sancion = 9998;

         IF v_compara_maxfec IS NULL THEN

             INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,

                                       det_dependencia,det_observaciones,det_detalle,det_status)

                                       VALUES(cat, v_insert_fecha, 9998, gra, dep,'','',0);

         ELSE

            v_compara_maxfec := v_compara_maxfec + 1;

             INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,

                                       det_dependencia,det_observaciones,det_detalle,det_status)

                                       VALUES(cat, v_compara_maxfec, 9998, gra, dep,'','',0);

         END If;

    END IF;

------------------------------------------------------------------

    ----- MAYOR A 72 HORAS -----

    IF v_para_convertir >= 72 THEN

       v_para_restar := v_para_convertir - 72;

       SELECT  est_demeritos + 3, SYSDATE
         INTO  v_para_demeritos, v_insert_fecha
         FROM  psan_estadistica WHERE est_catalogo = cat AND est_grado = gra;
       UPDATE  psan_estadistica SET est_horas = v_para_restar,
                        est_demeritos = v_para_demeritos
         WHERE est_catalogo = cat AND est_grado = gra;

------EVITAR QUE EN LA TABLA DE DETALLE HAYAN 2 REGISTROS IGUALES DE ACUMULACION

         SELECT MAX(det_fecha)
         INTO   v_compara_maxfec
         FROM   psan_detalle
         WHERE  det_catalogo = cat AND det_grado = gra AND det_sancion = 9999;

         IF v_compara_maxfec IS NULL THEN

             INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,
                                      det_dependencia,det_observaciones,det_detalle,det_status)
                                      VALUES(cat, v_insert_fecha, 9999, gra, dep,'','',0);

         ELSE

            v_compara_maxfec := v_compara_maxfec + 1;

             INSERT INTO psan_detalle (det_catalogo,det_fecha,det_sancion,det_grado,

                                      det_dependencia,det_observaciones,det_detalle,det_status)

                                      VALUES(cat, v_compara_maxfec, 9999, gra, dep,'','',0);

         END If;

    END IF;

------------------------------------------------------------------

    -------- ACTIVA LA ALARMA DESPUES DE INGRESAR LOS DEMERITOS

    SELECT  est_demeritos, gra_demeritos INTO v_demeritos_tiene, v_demeritos

      FROM  psan_estadistica, grados

      WHERE est_grado = gra_codigo

      AND   est_catalogo = cat

      AND   est_grado = gra;

    v_alarma := (v_demeritos_tiene * 100) / v_demeritos;

    IF v_alarma >= 25 THEN

        v_status := 1;

       IF v_alarma >= 50 THEN

          v_status := 2;

          IF v_alarma >= 75 THEN

             v_status := 3;

             IF v_alarma >= 100 THEN

                v_status := 4;

             END IF;

          END IF;

       END IF;

    END IF;

    v_indicador := ROUND(v_alarma, 0);

    --UPDATE  psan_estadistica SET est_indicador = v_status

    --WHERE est_catalogo = cat AND est_grado = gra;



 ----- SI SON DEMERITOS

 IF v_tipo = 'D' THEN

    SELECT count(est_catalogo) INTO v_existe

    FROM psan_estadistica WHERE est_catalogo = cat

    AND est_grado = gra;

    IF v_existe = 1 THEN

      SELECT est_demeritos
      INTO v_tiened FROM psan_estadistica
      WHERE est_catalogo = cat
      AND est_grado = gra;
      v_tiened := v_tiened + v_tiempo;

      UPDATE psan_estadistica SET est_demeritos = v_tiened 
        WHERE est_catalogo = cat
        AND est_grado = gra;

    ELSE

     INSERT into psan_estadistica values (cat,gra,0,v_tiempo,0);

    END IF;

    -------- ACTIVA LA ALARMA DESPUES DE INGRESAR LOS DEMERITOS

    SELECT  est_demeritos, gra_demeritos INTO v_demeritos_tiene, v_demeritos
      FROM  psan_estadistica, grados
      WHERE est_grado = gra_codigo
      AND   est_catalogo = cat
      AND   est_grado = gra;

    v_alarma := (v_demeritos_tiene * 100) / v_demeritos;

    IF v_alarma >= 25 THEN
        v_status := 1;

       IF v_alarma >= 50 THEN
           v_status := 2;

          IF v_alarma >= 75 THEN
              v_status := 3;

             IF v_alarma >= 100 THEN
                 v_status := 4;

             END IF;

          END IF;

        END IF;

    END IF;

     v_indicador := ROUND(v_alarma, 0);

  --  UPDATE  psan_estadistica SET est_indicador = v_status

  --  WHERE est_catalogo = cat AND est_grado = gra;

 END IF;

 ------- MENSAJES QUE DEVUELVE EL PROCEDIMIENTO RESPECTO A DEMERITOS

 IF v_status = 0 THEN  mensaje := 'INSERTADO SATISFACTORIAMENTE'; END IF;
 IF v_status = 1 THEN mensaje := 'CATALOGO SOBREPASO 25 % DE DEMERITOS'; END IF;
 IF v_status = 2 THEN mensaje := 'CATALOGO SOBREPASO 50 % DE DEMERITOS'; END IF;
 IF v_status = 3 THEN mensaje := 'CATALOGO SOBREPASO 75 % DE DEMERITOS'; END IF;
 IF v_status = 4 THEN mensaje := 'CATALOGO SOBREPASO 100 % DE DEMERITOS'; END IF;


DBMS_OUTPUT.PUT_LINE(mensaje);

END ;