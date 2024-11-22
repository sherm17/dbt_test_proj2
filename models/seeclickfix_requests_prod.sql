
SELECT
    description,
    address,
    service_request_id,
    lat,
    long,
    n.name,
    stg.geometry
FROM
    {{ ref('seeclickfix_requests_stage') }} stg,
    {{ ref('neighborhood') }} n
WHERE ST_Contains(n.geometry, stg.geometry)

