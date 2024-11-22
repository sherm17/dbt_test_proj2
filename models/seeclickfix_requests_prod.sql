
SELECT
    description,
    address,
    service_request_id,
    lat,
    long,
    n.name
FROM
    {{ ref('seeclickfix_requests_stage') }} stg,
    {{ ref('neighborhood') }} n
WHERE ST_Contains(n.geometry, stg.geometry)

