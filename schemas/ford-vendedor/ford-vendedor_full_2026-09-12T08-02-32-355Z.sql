-- ============================================================
-- FULL BACKUP — Schema: ford-vendedor
-- Generated: 2026-09-12T08:02:32.355Z
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
INSERT INTO "ford-vendedor"."agnMemory" VALUES ('5493815635227', 'Gustavo', 'Abierta', '', '', NULL, 'Cliente Gustavo eligió ver la categoría SUVs dentro de los modelos Ford. Se le presentaron las opciones: Bronco, Bronco Sport, Everest y Territory. Pidió fotos del catálogo de SUVs. Envió un número de teléfono sin contexto claro. Aún sin definir modelo puntual, provincia ni otros datos de calificación.', '2026-09-04T10:01:28.975266+00:00', '2026-09-04T11:33:32.54165+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "ford-vendedor"."agnMemory" VALUES ('5493815505510', 'Oscar', 'Cierre', 'Ranger Raptor', '', NULL, 'Cliente Oscar, de Catamarca capital (fuera de zona Norte), interesado en Ranger Raptor versión Cabina Doble 4x4, forma de pago Financiado. Confirmó contacto por llamada desde Tucumán el sábado 9 a 10hs. Se le detalló tecnología (SYNC 4, cámara 360°, crucero adaptativo). Pidió el video del modelo pero no está disponible; se le ofreció que el asesor lo muestre en la llamada. Falta registrar uso previsto.', '2026-09-11T09:38:56.401014+00:00', '2026-09-11T10:21:50.894149+00:00', '', '', 'Otra', 'Catamarca capital', 'Fuera de zona', 'Baja probabilidad de compra', 'https://agnford.com.ar/wp-content/uploads/2026/09/utilitarios.jpeg:Utilitarios,https://agnford.com.ar/wp-content/uploads/2023/08/10027-3-1024x576.jpg:principal', 'Raptor Cabina Doble 4x4', '', 'Financiado', 'sábado entre 9 y 10hs', 'false', '', '', '2026-09-12 09:00');
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
