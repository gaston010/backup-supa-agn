-- ============================================================
-- FULL BACKUP — Schema: hyundai-ventas
-- Generated: 2026-07-09T08:00:34.500Z
-- ============================================================

CREATE SCHEMA IF NOT EXISTS "hyundai-ventas";


CREATE TABLE IF NOT EXISTS "hyundai-ventas"."agnMemory" (
  remitente text NOT NULL,
  nombre text,
  etapa varchar(50),
  modelo varchar(50),
  presupuesto text,
  destinatario text,
  resumen_conversacion text,
  created_at timestamp with time zone DEFAULT (now() AT TIME ZONE 'America/Argentina/Salta'::text) NOT NULL,
  updated_at timestamp with time zone DEFAULT (now() AT TIME ZONE 'America/Argentina/Salta'::text) NOT NULL,
  email text,
  apellido text,
  PRIMARY KEY (remitente),
  CONSTRAINT "46908_47905_1_not_null" CHECK (remitente IS NOT NULL),
  CONSTRAINT "46908_47905_8_not_null" CHECK (created_at IS NOT NULL),
  CONSTRAINT "46908_47905_9_not_null" CHECK (updated_at IS NOT NULL)
);

-- Data: "agnMemory"
CREATE OR REPLACE FUNCTION "hyundai-ventas".set_updated_at()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  new.updated_at = now() AT TIME ZONE 'America/Argentina/Salta';
  return new;
end;
$function$
;

CREATE TRIGGER trg_agnmemory_updated_at BEFORE UPDATE ON "hyundai-ventas"."agnMemory" FOR EACH ROW EXECUTE FUNCTION "hyundai-ventas".set_updated_at();
