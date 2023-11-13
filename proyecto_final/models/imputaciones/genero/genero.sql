SELECT indice,
  CASE 
    WHEN GENERO != 'MASCULINO' AND GENERO != 'FEMENINO' THEN (SELECT GENERO FROM {{ ref("moda_genero") }})
    ELSE GENERO
  END AS GENERO
FROM {{ source("Hurto","Hurtos") }}