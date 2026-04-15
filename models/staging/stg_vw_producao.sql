with source as (
    select * from {{ source('raw_vw', 'vw_producao_mundial') }}
)

select
    cast(registro_id as int64) as registro_id,
    cast(modelo_id as int64) as modelo_id,
    cast(motor_id as int64) as motor_id,
    ano_referencia,
    unidades_produzidas,
    mercado
from source