with source as (
    select * from {{ source('raw_vw', 'vw_modelos') }}
)

select
    cast(modelo_id as int64) as modelo_id,
    lower(nome) as modelo_nome,
    tipo_plataforma,
    ano_inicio,
    ano_fim,
    pais_origem
from source