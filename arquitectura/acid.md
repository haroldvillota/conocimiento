## ACID

** El acrónimo ACID representa los siguientes principios:** 

Atomicidad (Atomicity):

Este principio asegura que una transacción se realiza de manera completa o no se realiza en absoluto. Si una parte de la transacción falla, se deshacen todas las operaciones realizadas antes del fallo, asegurando que la base de datos permanezca en un estado coherente.
Consistencia (Consistency):

La consistencia garantiza que una transacción lleve la base de datos de un estado válido a otro estado válido. Cada transacción debe cumplir con todas las reglas de integridad y restricciones de la base de datos, y la ejecución de una transacción no debe dejar la base de datos en un estado inconsistente.
Aislamiento (Isolation):

El principio de aislamiento asegura que múltiples transacciones que se ejecutan simultáneamente no interfieran entre sí. Cada transacción debe ser independiente de las demás, y sus efectos deben ser visibles solo después de que la transacción se haya completado.
Durabilidad (Durability):

La durabilidad garantiza que una vez que una transacción se ha completado con éxito, sus cambios permanecen de manera permanente en la base de datos incluso en caso de fallo del sistema. Los cambios realizados por una transacción exitosa deben ser persistentes y resistir cualquier pérdida de datos posterior.
Estos principios se aplican principalmente en entornos de bases de datos relacionales y proporcionan un marco sólido para garantizar la integridad y confiabilidad de las transacciones. Es importante destacar que mientras que los principios ACID son esenciales para garantizar la consistencia en transacciones críticas, en algunos casos, en sistemas distribuidos o con requisitos de escalabilidad extrema, se pueden adoptar modelos más flexibles, como el teorema CAP (Consistency, Availability, Partition Tolerance). Este teorema sostiene que es imposible lograr simultáneamente consistencia, disponibilidad y tolerancia a particiones en un sistema distribuido durante una partición de red. La elección entre ACID y modelos más flexibles depende de los requisitos específicos del sistema y las transacciones que se están realizando.