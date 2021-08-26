CREATE TEMPORARY TABLE IF NOT EXISTS empresas_temp AS (SELECT * FROM empresas limit 1000);


select * from empresas_temp;