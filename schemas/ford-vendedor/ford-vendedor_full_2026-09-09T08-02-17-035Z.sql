-- ============================================================
-- FULL BACKUP — Schema: ford-vendedor
-- Generated: 2026-09-09T08:02:17.035Z
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
INSERT INTO "ford-vendedor"."agnMemory" VALUES ('5493874732132', '', 'Abierta', '', '', NULL, 'Cliente saluda por primera vez, sin historial previo. Aún no se identificó ni mostró interés en un modelo puntual.', '2026-09-02T09:53:00.328776+00:00', '2026-09-02T09:53:00.328776+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "ford-vendedor"."agnMemory" VALUES ('5493815505510', 'Oscar', 'Cierre', 'Ranger Raptor', '', NULL, 'Oscar (Santiago del Estero), contacto agendado para hoy 08/09 18hs por financiación. Comparó Territory vs Ranger Raptor por estética, uso particular, forma de pago financiado. Pidió ficha PDF (no disponible) y preguntó por cámara trasera (confirmada). Confirmó que sigue dudando pero prefiere conversarlo con el vendedor. Pidió ver fotos de los Utilitarios antes de cerrar la charla, se le envió el catálogo de esa categoría.', '2026-09-03T10:25:19.295963+00:00', '2026-09-08T09:50:59.718961+00:00', '', '', 'Santiago del Estero', '', 'Norte', '', 'utilitarios_catalogo.png:Utilitarios', 'Raptor Cabina Doble 4x4', 'Particular', 'Financiado', 'tarde', 'false', '', '', '2026-09-08 18:00');
INSERT INTO "ford-vendedor"."agnMemory" VALUES ('5493815635227', 'Gustavo', 'Abierta', '', '', NULL, 'Cliente Gustavo eligió ver la categoría SUVs dentro de los modelos Ford. Se le presentaron las opciones: Bronco, Bronco Sport, Everest y Territory. Pidió fotos del catálogo de SUVs. Envió un número de teléfono sin contexto claro. Aún sin definir modelo puntual, provincia ni otros datos de calificación.', '2026-09-04T10:01:28.975266+00:00', '2026-09-04T11:33:32.54165+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
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
