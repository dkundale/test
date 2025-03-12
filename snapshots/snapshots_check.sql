{% snapshot snapshot_city_check %}

    {{
        config(
          target_schema='ANALYTIC_SCHEMA',
          strategy='check',
          unique_key='user_id',
          check_cols=['user_city'],
          invalidate_hard_deletes=True
        )
    }}

    SELECT * FROM ANALYTIC_SCHEMA.USERS

{% endsnapshot %}