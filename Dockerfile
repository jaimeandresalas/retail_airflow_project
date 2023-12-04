FROM quay.io/astronomer/astro-runtime:9.6.0

RUN python -m venv soda_env && source soda_env/bin/activate && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir soda-core-bigquery==3.0.45 && \
    pip install --no-cache-dir soda-core-scientific==3.0.45 && deactivate
    

RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-bigquery==1.5.3 && deactivate