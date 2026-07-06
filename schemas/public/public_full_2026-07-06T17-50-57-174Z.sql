-- ============================================================
-- FULL BACKUP — Schema: public
-- Generated: 2026-07-06T17:50:57.174Z
-- ============================================================

CREATE OR REPLACE FUNCTION public.update_updated_at_column()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  new.updated_at = now();
  return new;
end;
$function$
;
