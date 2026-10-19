# Social Intelligence Lab · UTB

Laboratorio de escucha social, reputación de marca y NLP con datos simulados. React + Vite. El clasificador es léxico, no un modelo entrenado.

## Desarrollo

`npm install && npm run dev`

## Supabase

La app funciona en modo demostración sin credenciales. Para persistencia, se necesita un proyecto Supabase independiente, ejecutar `schema.sql`, configurar variables `VITE_SUPABASE_URL` y `VITE_SUPABASE_ANON_KEY`, y habilitar autenticación. No colocar claves `service_role` en Vite. El modo demo no escribe datos en Supabase.

## Despliegue

Importar el repositorio en Vercel; framework Vite, build `npm run build`, output `dist`. Configurar variables de entorno solo tras crear el proyecto Supabase. Los comentarios son ficticios; no existe ingestión en tiempo real de redes sociales.
