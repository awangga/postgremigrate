#psql db_non_pertandingan

SELECT nspname
  FROM pg_namespace;


GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO new_user;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA akomodasi TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA hubda TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA kesehatan TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA konsumsi TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA perlengkapan TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA transportasi TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA eoffice TO simpon;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA helpdesk TO simpon;