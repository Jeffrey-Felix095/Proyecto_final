{{ config(materialized='table') }}

SELECT * EXCEPT(AGRUPA_EDAD_PERSONA, ARMAS_MEDIOS, GENERO, indice) , G.GENERO AS GENERO, E.AGRUPA_EDAD_PERSONA AS AGRUPA_EDAD_PERSONA, A.ARMAS_MEDIOS AS ARMA_USADA 
FROM {{ source("Hurto", "Hurtos") }} AS H
JOIN {{ ref("genero") }} AS G ON H.indice = G.indice
JOIN {{ ref("edad_persona") }} AS E ON H.indice = E.indice
JOIN {{ ref("arma_usadas") }} AS A ON H.indice = A.indice
