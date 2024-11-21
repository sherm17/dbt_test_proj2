
SELECT
    description,
    address,
    service_request_id,
    lat,
    long,
    ST_SetSRID(ST_MakePoint(long, lat), 4326) as geometry
FROM
    {{ ref('seeclickfix_requests_stage') }}

