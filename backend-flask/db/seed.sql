-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Olise','isiakponaolise@gmail.com' , 'olise' ,'93a75468-eec9-46a2-a642-52bff5bd2615'),
  ('Andrew Bayko','bayko@exampro.co' , 'bayko' ,'MOCK'),
  ('Londo Mollari','lmollari@centari.com' ,'londo' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'olise' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )