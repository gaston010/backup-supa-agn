-- ============================================================
-- FULL BACKUP — Schema: nissan-vendedor
-- Generated: 2026-09-12T08:02:32.355Z
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
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493816915957', 'Lucas', 'Cierre', 'Kicks / Sentra', '', NULL, 'Lucas contactó pidiendo que lo llame un asesor de ventas. Confirmó que es de Tucumán y que financiará la diferencia entregando dos vehículos en permuta: un Ford Territory Platinium 2025 con 10.000km y un Peugeot 208 GT 2025 con 11.000km. Ahora mostró interés en dos modelos: Nuevo Kicks y Sentra, todavía sin definirse por uno. Se enviaron imágenes principales de ambos. Falta definir modelo final, ciudad puntual y uso previsto. Ya están los datos obligatorios (nombre, provincia, forma de pago) y hay derivación en curso a asesor comercial.', '2026-09-09T11:35:04.825792+00:00', '2026-09-09T11:44:20.063192+00:00', '', '', 'Tucumán', '', 'Tucumán', '', 'https://www.nissan-cdn.net/content/dam/Nissan/ar/vehicles/kicks-my25/overview/260212_nuevo_kicks_fipa_header_d.jpg:principal, https://agnnissan.com.ar/wp-content/uploads/2023/08/sentra-premium-excitement-m.jpg:principal', '', '', 'Financiado', '', 'false', '', 'Ford Territory Platinium 2025, 10.000km; Peugeot 208 GT 2025, 11.000km', '2026-09-09 12:00');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815635227', '', 'Abierta', '', '', NULL, 'Cliente contactó por primera vez pidiendo información general sobre AGN Nissan. Todavía no se identificó, ni mencionó modelo, provincia ni otros datos.', '2026-09-09T12:49:57.912758+00:00', '2026-09-09T12:49:57.912758+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815760221', '', 'Abierta', '', '', NULL, 'El cliente inició la conversación enviando un número de teléfono (3813337260), sin especificar consulta puntual. Se le preguntó su nombre para poder continuar la charla, pero volvió a enviar solo un número sin responder. Se reitera la pregunta de nombre y apellido.', '2026-09-02T17:42:23.666132+00:00', '2026-09-02T17:42:39.571027+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815505510', 'Oscar', 'Desarrollada', 'Kait', '', NULL, 'Oscar mostró interés en el Kait para uso familiar, nunca lo vio en vivo. Se le propuso visita presencial. Pidió fotos y detalles de versiones; consultó por la versión Advance CVT del Kait. Pidió fotos del frente, se le envió imagen y se retomó la propuesta de visita presencial. Preguntó de forma genérica sobre AGN Nissan como empresa, y luego declinó avanzar por ahora (''no gracias'') ante la propuesta de visita. Cerró la charla agradeciendo, sin nuevos datos.', '2026-08-20T10:02:19.714853+00:00', '2026-09-09T11:21:26.844081+00:00', '', '', '', '', '', '', 'https://agnnissan.com.ar/wp-content/uploads/2026/08/agn-nissan-vehiculos.jpeg:catalogo', 'Advance CVT', 'Particular', '', '', 'true', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815278437', '', 'Abierta', '', '', NULL, 'Cliente saluda por primera vez, sin datos aún. Se le preguntó el nombre para continuar la charla.', '2026-08-21T14:18:13.236736+00:00', '2026-08-21T14:18:13.236736+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815428397', '', 'Abierta', '', '', NULL, 'Cliente contactó por WhatsApp pidiendo presupuesto de un repuesto. Se derivó a posventa con el número de contacto oficial. Cliente agradeció, comentó que no encontraba el número en la web, y cerró la conversación deseando buen fin de semana. Aún no se registró nombre, provincia ni modelo de interés.', '2026-09-11T09:37:52.640129+00:00', '2026-09-11T09:39:30.546557+00:00', '', '', '', '', '', '', '', '', '', '', '', 'false', '', '', '');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815434276', 'Guadalupe', 'Cierre', 'Versa', '', NULL, 'Cliente (Guadalupe) inicia contacto consultando si AGN Nissan recibe vehículo usado como parte de pago. Se confirma que sí. Guadalupe indica que su vehículo en permuta es una Ford EcoSport 2019 con 183.000 km. Confirma interés en el Nissan Versa, se le envió imagen principal del modelo. Confirma que es de Tucumán, ciudad San Miguel de Tucumán. Indicó que el uso previsto es particular/personal, uso diario en ciudad. Aún no definió versión específica. Se le ofreció coordinar una prueba de manejo. Preguntó por la tasación de su EcoSport; se le explicó que la define un asesor. Confirmó que quiere probar el auto tras la tasación. Indicó que pasaría el viernes próximo por la tarde; se coordinó horario de 16hs para la visita y prueba de manejo con permuta incluida. Preguntó el horario de atención del local; se le informó y se reconfirmó la cita ya acordada.', '2026-09-11T15:15:11.451399+00:00', '2026-09-11T15:22:54.577229+00:00', '', '', 'Tucumán', 'San Miguel de Tucumán', 'Tucumán', '', 'https://agnnissan.com.ar/wp-content/uploads/2024/04/versa-header-m_ok-1-1-1.jpg:principal', '', 'Particular', 'Permuta', 'Viernes por la tarde', 'true', '2026-09-18 16:00', 'Ford EcoSport 2019, 183.000 km', '2026-09-18 16:00');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815874788', 'Emilia', 'Cierre', 'Kait', '', NULL, 'Cliente (Emilia López) preguntó por plan de ahorro del Nuevo Kicks y del Kait, se le explicó la mecánica general. Confirmó ser de Tucumán, Yerba Buena. Pidió ser contactada por llamada durante la tarde. Confirmó que prefiere financiar la compra del Kait. Reagendó el horario de la llamada acordada para las 17:30hs del mismo día 2026-09-11. Confirmó y agradeció el agendamiento. Quedan pendientes: versión específica y uso previsto del vehículo.', '2026-09-11T12:43:36.313575+00:00', '2026-09-11T13:11:05.658701+00:00', '', 'López', 'Tucumán', 'Yerba Buena', 'Tucumán', '', '', '', '', 'Financiado', 'Tarde', 'false', '', '', '2026-09-11 17:30');
INSERT INTO "nissan-vendedor"."agnMemory" VALUES ('5493815296293', 'Pablo', 'Cierre', 'Sentra', '', NULL, 'Cliente se llama Pablo, de San Miguel de Tucumán capital. Interesado en el Nissan Sentra, se le envió imagen principal. Uso previsto: particular. Eligió ser contactado por llamada. Forma de pago: financiado (confirmado). Se confirmó derivación a asesor por llamada para hoy 10/09 a las 11:06, cliente confirma disponibilidad (''cuando gustes'').', '2026-09-10T10:35:31.840571+00:00', '2026-09-10T10:52:34.105213+00:00', '', '', 'Tucumán', 'San Miguel de Tucumán', 'Tucumán', '', 'https://agnnissan.com.ar/wp-content/uploads/2023/08/sentra-premium-excitement-m.jpg:principal', '', 'Particular', 'Financiado', '', 'false', '', '', '2026-09-10 11:06');
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
