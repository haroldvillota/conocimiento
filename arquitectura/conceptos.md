# Conceptos importantes

## deadlocks

Los deadlocks, también conocidos como interbloqueos o bloqueos mutuos, ocurren en sistemas de cómputo cuando dos o más procesos o hilos se bloquean indefinidamente, esperando que los otros liberen recursos o completen tareas. Un deadlock generalmente sucede cuando hay una dependencia circular de recursos entre dos o más procesos.

Para que un deadlock ocurra, generalmente deben cumplirse las siguientes cuatro condiciones (conocidas como las condiciones de Coffman):

-   Exclusión mutua: Al menos un recurso debe estar en un estado no compartible. Es decir, sólo un proceso puede usar el recurso a la vez.

-   Retención y espera: Un proceso está reteniendo al menos un recurso y está esperando adquirir recursos adicionales que están siendo retenidos por otros procesos.

-   No apropiación: Los recursos no pueden ser apropiados (forzadamente quitados) de los procesos que los tienen asignados. Si el sistema permitiera la apropiación, podrían evitarse los deadlocks al quitarle los recursos al proceso que los está reteniendo.

-   Espera circular: Debe existir un conjunto de procesos, {P1, P2, ..., Pn}, tal que P1 está esperando un recurso que es retenido por P2, P2 está esperando un recurso que es retenido por P3, y así sucesivamente hasta Pn, que está esperando un recurso retenido por P1, formando un ciclo en la espera de recursos.

Cuando un sistema se encuentra en un estado de deadlock, los procesos implicados no pueden continuar su ejecución y el sistema puede dejar de funcionar correctamente. Esto puede resultar en la congelación de aplicaciones, el rendimiento insuficiente del sistema o incluso en la necesidad de reiniciar el sistema para recuperarse del estado de bloqueo.

Para manejar deadlocks, los sistemas operativos y las aplicaciones pueden utilizar técnicas como:

-   Prevención de deadlocks: Diseñar el sistema de tal forma que se evite alguna (o algunas) de las cuatro condiciones de Coffman.
-   Detección y recuperación: Permitir que los deadlocks ocurran, detectarlos mediante algún algoritmo y luego recuperarse del deadlock abortando un proceso o forzando la liberación de recursos.
-   Ignorar el problema: En algunos entornos con bajos recursos, se puede asumir que los deadlocks ocurren raramente y son reiniciados manualmente.

En el desarrollo de software, buena parte del diseño de algoritmos de concurrencia y sistemas multihilo trata de evitar la posibilidad de deadlocks mediante el uso cuidadoso de primitivas de sincronización como mutexes, semáforos, monitores y usando patrones de diseño que minimizan las dependencias circulares. Además, en algunos lenguajes o entornos, como las bases de datos, se ofrecen mecanismos como transacciones y deadlocks detection que ayudan a manejar estas situaciones.
