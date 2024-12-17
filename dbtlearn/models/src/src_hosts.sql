WITH raw_hosts AS (
    SELECT
        *
    FROM
        {{ source('airbnb', 'hosts') }}
)
SELECT
    id as host_id,
    name as host_name,
    *
FROM
    raw_hosts