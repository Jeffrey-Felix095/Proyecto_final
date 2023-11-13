{{ config(materialized='table') }}
SELECT
  DEPARTAMENTO,
  GENERO
FROM {{  ref("genero_max_afectado_por_departamento")  }}
WHERE
  ranking = 1