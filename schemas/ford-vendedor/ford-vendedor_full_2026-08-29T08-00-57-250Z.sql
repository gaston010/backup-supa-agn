-- ============================================================
-- FULL BACKUP — Schema: ford-vendedor
-- Generated: 2026-08-29T08:00:57.250Z
-- ============================================================

CREATE SCHEMA IF NOT EXISTS "ford-vendedor";


CREATE TABLE IF NOT EXISTS "ford-vendedor"."agnMemory" (
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
  CONSTRAINT "46910_50132_1_not_null" CHECK (remitente IS NOT NULL),
  CONSTRAINT "46910_50132_8_not_null" CHECK (created_at IS NOT NULL),
  CONSTRAINT "46910_50132_9_not_null" CHECK (updated_at IS NOT NULL)
);

-- Data: "agnMemory"
CREATE OR REPLACE FUNCTION "ford-vendedor".set_updated_at()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  new.updated_at = now() AT TIME ZONE 'America/Argentina/Salta';
  return new;
end;
$function$
;

CREATE TRIGGER trggrfv_agnmemory_updated_at BEFORE UPDATE ON "ford-vendedor"."agnMemory" FOR EACH ROW EXECUTE FUNCTION "ford-vendedor".set_updated_at();
