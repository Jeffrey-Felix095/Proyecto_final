SELECT
    DEPARTAMENTO,
    GENERO,
    RANK() OVER (PARTITION BY DEPARTAMENTO ORDER BY total_personas DESC) AS ranking
FROM {{  ref('genero_por_departamento')  }}