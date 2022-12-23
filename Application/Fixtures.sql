

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('cdc8aff7-91e3-4475-b67f-95f33aa998e0', 'foo', 'bar');
INSERT INTO public.posts (id, title, body) VALUES ('d49f3c6a-a971-438f-ab7f-88045a53d57c', 'a', 'a a a');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1671820011);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;


