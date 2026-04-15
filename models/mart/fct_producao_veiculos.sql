with modelos as (
    select * from {{ ref('stg_vw_modelos') }}
),

producao as (
    select * from {{ ref('stg_vw_producao') }}
)

select
    p.registro_id,
    m.modelo_nome,
    m.tipo_plataforma,
    p.ano_referencia,
    p.unidades_produzidas,
    p.mercado
from producao p
left join modelos m on p.modelo_id = m.modelo_id