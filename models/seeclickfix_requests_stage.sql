{{ config(materialized='table') }}


SELECT
    description,
    address,
    service_request_id,
    lat,
    long
FROM
    {{ ref('seeclickfix_requests_raw') }}