# Buenas practicas para escribir los mensajes de commit

- Separa el título del contenido con un intro: Podemos utilizar saltos de línea para separar el título y el cuerpo del mensaje, ganando enormemente en legibilidad gracias a que el ecosistema de Git está preparado para diferenciar así título y cuerpo del mensaje y tratarlo adecuadamente

- El título del commit no puede ser más largo de 50 carácteres: Aunque algunos IDEs y entornos de trabajo ya aplican reglas visuales para esta cuestión, debemos tenerlo en cuenta para facilitar su lectura

- El cuerpo del commit no más de los 72 carácteres por línea: De este modo, su lectura resulta mucho más sencilla independientemente de si estamos consultando el histórico en nuestra terminal o desde el navegador

- Primera letra en mayúscula: Con este detalle ganamos bastante en consistencia y legibilidad de los títulos de los commits

- No acabes el commit con un punto: Al igual que el tip anterior, aportará mayor consistencia si por norma no ponenmos nunca un punto al final

- Utiliza el modo imperativo al escribir: Comunmente, si no definimos este tipo de normas, acabaremos encontrando históricos en los que un compañero escribe las descripciones en pasado, otro en presente… Lo que termina dificultando su lectura en diagonal

- Utiliza el cuerpo para explicar el ‘qué’ y el ‘por qué’ en lugar del ‘cómo’: Ya que el cómo lo hemos hecho es algo que podremos ver en el propio código, así que la descripción debería justificar qué cambios y por qué se han aplicado