-- ============================================================
-- FULL BACKUP — Schema: nissan-vendedor
-- Generated: 2026-08-28T08:00:56.803Z
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
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493874732132', '', 'Abierta', '', '', NULL, 'El cliente inició la conversación saludando. Aún no se registraron datos personales ni de interés.', '2026-08-20T09:48:05.414036+00:00', '2026-08-20T09:48:05.414036+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815278437', '', 'Abierta', '', '', NULL, 'Cliente saluda por primera vez, sin datos aún. Se le preguntó el nombre para continuar la charla.', '2026-08-21T14:18:13.236736+00:00', '2026-08-21T14:18:13.236736+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815505510', 'Oscar', 'Desarrollada', 'Kait', '', NULL, 'Oscar mostró interés en el Kait para uso familiar, nunca lo vio en vivo. Se le propuso visita presencial. Pidió fotos y detalles de versiones; consultó por la versión Advance CVT del Kait. Ahora pidió fotos del frente del Kait, se le envió imagen y se retomó la propuesta de coordinar visita presencial para conocerlo en persona.', '2026-08-20T10:02:19.714853+00:00', '2026-08-20T10:23:01.394301+00:00', '', '', '', '', '', '', 'https://agnnissan.com.ar/wp-content/uploads/2026/08/agn-nissan-vehiculos.jpeg:catalogo', 'Advance CVT', 'Particular', '', '', 'true', '', '', '');
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
