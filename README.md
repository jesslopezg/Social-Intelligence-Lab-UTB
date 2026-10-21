# Social Intelligence Lab · UTB–ETD

Laboratorio interactivo de escucha social, reputación de marca, procesamiento de lenguaje natural y análisis de tendencias. Está orientado a estudiantes de marketing.

## Sitio público
https://jesslopezg.github.io/Social-Intelligence-Lab-UTB/

## Funciones
- **Radar**: filtra menciones por canal y tema, consulta indicadores y descarga CSV.
- **NLP Lab**: analiza comentarios con diccionarios de palabras positivas y negativas y reglas de temas. **No es inteligencia artificial entrenada ni mide probabilidades**.
- **Tendencias**: compara conteos entre dos grupos cronológicos de fechas; no estima tasas ni causalidad.
- **Práctica guiada**: actividad paso a paso con el caso ficticio Nébula Coffee.
- **Evaluación**: cinco ejemplos sobre sentimiento, ambivalencia y sarcasmo.
- **Evidencias**: importa comentarios CSV, elabora un reporte TXT y prepara archivos para subir manualmente a Savio.

## CSV de entrada
El archivo debe ser UTF-8, con encabezados en inglés. Ejemplo:

```csv
content,channel,date
"Me encantó el latte",Instagram,2026-10-01
"El servicio fue muy lento",TikTok,2026-10-02
```

`content` es obligatorio; `channel` y `date` son opcionales. Máximo 1 MB y 1000 registros. Los textos se procesan en el navegador; no hay persistencia ni sincronización con Savio. Nunca cargar datos personales o sensibles.

## Procedimiento del estudiante
1. Abre la práctica guiada y lee el caso.
2. Consulta el Radar, registra hallazgos y filtra por tema.
3. Prueba comentarios en NLP Lab y compara la clasificación automática con tu interpretación.
4. Discute límites de los datos en Tendencias.
5. Resuelve la evaluación.
6. En Evidencias, redacta hallazgos, limitaciones y recomendaciones. Descarga reporte TXT y CSV y súbelos a Savio.

## Publicación
La fuente del sitio de GitHub Pages es `index.html`, sin compilación ni dependencias. `.github/workflows/deploy.yml` publica ese archivo. El código `src/`, `package.json`, `vite.config.js` y `schema.sql` son remanentes de un prototipo React/Vite/Supabase y **no participan en el despliegue GitHub Pages**. Para evitar inconsistencias, edita `index.html` para modificar el sitio público.

## Limitaciones académicas
Todos los comentarios iniciales son ficticios. Las coincidencias léxicas no comprenden ironía, negaciones ni contexto de manera fiable. Las etiquetas pueden ser incorrectas; no usar como medición validada, inferencia poblacional o seguimiento real de una marca. No existe integración en tiempo real con plataformas sociales.