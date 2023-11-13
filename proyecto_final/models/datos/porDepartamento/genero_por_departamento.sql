SELECT
    DEPARTAMENTO,
    GENERO,
    COUNT(*) AS total_personas
FROM {{ source("Hurto", "Hurtos") }}
GROUP BY DEPARTAMENTO, GENERO