{{ config(materialized='table') }}


SELECT
    description,
    address,
    service_request_id,
    lat,
    long,
    ST_SetSRID(ST_MakePoint(long, lat), 4326) as geometry
FROM
    {{ source('requests', 'seeclickfix_requests_raw') }}