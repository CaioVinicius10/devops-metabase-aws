FROM metabase/metabase:v0.41.0

ENV MB_DB_TYPE=your_db_type \
    MB_DB_DBNAME=your_db_name \
    MB_DB_PORT=your_db_port \
    MB_DB_USER=your_db_user \
    MB_DB_PASS=your_db_password \
    MB_DB_HOST=your_db_host

EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
