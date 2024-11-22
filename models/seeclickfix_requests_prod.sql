
SELECT
    description,
    address,
    service_request_id,
    lat,
    long,
    ST_SetSRID(ST_MakePoint(long, lat), 4326) as geometry,
    n.name
FROM
    {{ ref('seeclickfix_requests_stage') }} stg,
    {{ source('boundary' ,'neighborhood') }} n
WHERE ST_Contains(n.geometry, stg.geometry)

