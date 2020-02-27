

\list
\du 
\du+
\dt


create database chronus;


create user chronus with encrypted password 'DUsC8G8QEsf77tRwXrEt';

DROP DATABASE [IF EXISTS] name;
CREATE DATABASE hrdb;
CREATE DATABASE testdb1;

grant all privileges on database chronus to richapp;
grant all privileges on database chronus to 

ALTER USER username CREATEDB;

GRANT CONNECT ON DATABASE my_db TO my_user;

GRANT USAGE ON SCHEMA public TO my_user;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO my_user;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO my_user;

GRANT privileges ON object TO user;
GRANT SELECT, INSERT, UPDATE, DELETE ON products TO techonthenet;
GRANT ALL ON products TO techonthenet; 
GRANT SELECT ON products TO PUBLIC;


REVOKE privileges ON object FROM user;

REVOKE DELETE, UPDATE ON products FROM techonthenet;

REVOKE ALL ON products FROM techonthenet;

REVOKE SELECT ON products FROM PUBLIC;

ALTER USER someuser WITH NOCREATEDB;









1. Grant CONNECT to the database:

GRANT CONNECT ON DATABASE database_name TO username;
2. Grant USAGE on schema:

GRANT USAGE ON SCHEMA schema_name TO username;
3. Grant on all tables for DML statements: SELECT, INSERT, UPDATE, DELETE:

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO username;
4. Grant all privileges on all tables in the schema:

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_name TO username;
5. Grant all privileges on all sequences in the schema:

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA schema_name TO username;
6. Grant all privileges on the database:

GRANT ALL PRIVILEGES ON DATABASE database_name TO username;
7. Grant permission to create database:

ALTER USER username CREATEDB;
8. Make a user superuser:

ALTER USER myuser WITH SUPERUSER;
9. Remove superuser status:

ALTER USER username WITH NOSUPERUSER;
Those statements above only affect the current existing tables. To apply to newly created tables, you need to use alter default. For example:

ALTER DEFAULT PRIVILEGES
FOR USER username
IN SCHEMA schema_name
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO username;



create database sonar;

create user sonar with encrypted password 'JMMTU0Ph6ibIQPeRfvhj';

ALTER DATABASE sonar OWNER TO sonar;

grant all privileges on database sonar to sonar;



Export

pg_dump -U sonar  sonar > sonar.pgsql


Import

psql -U sonar -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432  sonar < sonar.pgsql

Conexion

 psql -U sonar -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432 sonar






#facturacion

create database facturacion;

create user facturacion with encrypted password '27uMioMR1mJE8xGd8Fbv';

grant all privileges on database facturacion to postgres;



ALTER DATABASE facturacion OWNER TO facturacion;

grant all privileges on database facturacion to facturacion;



Conexion

 psql -U facturacion -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432 facturacion

Export

pg_dump -U facturacion facturacion > facturacion.pgsql


Import

psql -U facturacion -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com admin	eJCiVc8Ac0oE8  facturacion < facturacion.pgsql




create extension pgcrypto;
create extension plpgsql;
create extension uuid-ossp;






create database chronus;

create user chronus with encrypted password 'GINSaZOkFISoyALO29bB';

grant all privileges on database chronus to postgres;



ALTER DATABASE chronus OWNER TO chronus;

grant all privileges on database chronus to chronus;



Conexion

 psql -U chronus -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432 chronus

Export

pg_dump -U chronus chronus > chronus.pgsql


Import

psql -U chronus -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432  chronus < chronus.pgsql




 asistencia | asistencia | HOg2h53wgARECrxVCKMu


#facturacion

create database asistencia;

create user asistencia with encrypted password 'HOg2h53wgARECrxVCKMu';

grant all privileges on database asistencia to asistencia;



ALTER DATABASE asistencia OWNER TO asistencia;

grant all privileges on database asistencia to asistencia;

 
 







 psql -U postgres -h sophosenv.cwwnq4udm5d0.us-east-1.rds.amazonaws.com -p 5432 postgres


create user ricardoramirez with encrypted password 'fO0HUexQskYYN1Q22NfR';

grant all privileges on database chronus to ricardoramirez;
grant all privileges on database facturacion to ricardoramirez;
grant all privileges on database sonar to ricardoramirez;




create user asistencia with encrypted password 'HOg2h53wgARECrxVCKMu';








https://dev.azure.com/sophosproyectos/


sudo docker rm $(sudo docker stop $(sudo docker ps -a -q --filter ancestor=sophos/chatbotangular --format="{{.ID}}"))


sudo docker build -t sophos/chatbotnodejs .
sudo docker run --name chatbotback -d -p 3000:3000 sophos/chatbotnodejs


sudo docker build --build-arg JAR_FILE=build/libs/*.jar -t sophos/chatbotspring .
sudo docker run --name spring -p 8085:8085 -t sophos/chatbotspring


sudo docker build -t sophos/chatbotangular .
sudo docker run --name chatbotfront -d -p 4200:80 sophos/chatbotangular


GRANT CONNECT ON DATABASE chronus TO jamesgarcia;
GRANT CONNECT ON DATABASE chronus TO alexandercastano;
GRANT CONNECT ON DATABASE chronus TO sebastiancaro;
GRANT CONNECT ON DATABASE chronus TO danielesquivel;
GRANT CONNECT ON DATABASE chronus TO josemira;
GRANT CONNECT ON DATABASE chronus TO jaimemontoya;

GRANT USAGE ON SCHEMA schchronus TO jamesgarcia;
GRANT USAGE ON SCHEMA schchronus TO alexandercastano;
GRANT USAGE ON SCHEMA schchronus TO sebastiancaro;
GRANT USAGE ON SCHEMA schchronus TO danielesquivel;
GRANT USAGE ON SCHEMA schchronus TO josemira;
GRANT USAGE ON SCHEMA schchronus TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.encuesta_satisfaccion TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.opcion_perfil TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.perfil TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_perfil TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.pregunta_util TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.publicacion TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.respuesta_encuesta TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario TO jaimemontoya;

GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO jamesgarcia;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO alexandercastano;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO sebastiancaro;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO danielesquivel;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO josemira;
GRANT SELECT, INSERT, UPDATE, DELETE ON schchronus.usuario_perfil TO jaimemontoya;






