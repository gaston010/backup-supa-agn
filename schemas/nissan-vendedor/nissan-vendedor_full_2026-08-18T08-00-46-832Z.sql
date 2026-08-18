-- ============================================================
-- FULL BACKUP — Schema: nissan-vendedor
-- Generated: 2026-08-18T08:00:46.832Z
-- ============================================================

CREATE SCHEMA IF NOT EXISTS "nissan-vendedor";


CREATE TABLE IF NOT EXISTS "nissan-vendedor"."agnMemory" (
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
  provincia text,
  ciudad text,
  zona_cobertura text,
  subestado text,
  imagenes_enviadas text,
  version text,
  uso_previsto text,
  forma_pago text,
  horario_contacto text,
  prueba_manejo_ofrecida boolean DEFAULT false,
  prueba_manejo_fecha text,
  vehiculo_permuta text,
  fecha_hora_contacto_acordada text,
  PRIMARY KEY (remitente),
  CONSTRAINT "46906_49636_1_not_null" CHECK (remitente IS NOT NULL),
  CONSTRAINT "46906_49636_8_not_null" CHECK (created_at IS NOT NULL),
  CONSTRAINT "46906_49636_9_not_null" CHECK (updated_at IS NOT NULL)
);

-- Data: "agnMemory"
CREATE OR REPLACE FUNCTION "nissan-vendedor".set_updated_at()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  new.updated_at = now() AT TIME ZONE 'America/Argentina/Salta';
  return new;
end;
$function$
;

CREATE TRIGGER trggr_agnmemory_updated_at BEFORE UPDATE ON "nissan-vendedor"."agnMemory" FOR EACH ROW EXECUTE FUNCTION "nissan-vendedor".set_updated_at();
