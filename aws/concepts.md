
# CloudFormation

AWS CloudFormation es un servicio de Amazon Web Services (AWS) que permite a los usuarios modelar y configurar los recursos de AWS de manera automatizada y predecible. Utilizando archivos de plantillas escritos en lenguajes de formato común como JSON o YAML, los usuarios pueden definir una colección de recursos de AWS y sus interrelaciones para implementar y gestionar de manera coherente a lo largo del tiempo.

# SAM - Serverless Application Model

AWS SAM (Serverless Application Model) es un framework desarrollado por Amazon Web Services que simplifica la creación, gestión y despliegue de aplicaciones serverless (sin servidor). AWS SAM permite a los desarrolladores definir y desplegar aplicaciones serverless utilizando una sintaxis simplificada para recursos de AWS como funciones Lambda, API Gateway, bases de datos DynamoDB y otros servicios necesarios para una aplicación sin servidor.

Aquí hay un desglose de las características y beneficios principales de AWS SAM:

1. **Plantillas Simplificadas**: SAM utiliza un formato de plantilla basado en YAML que extiende AWS CloudFormation, lo que facilita la definición de los recursos de la aplicación serverless con menos código.

2. **Componentes Principales**:
   - **Funciones Lambda**: Definición y configuración de funciones Lambda que ejecutan el código en respuesta a eventos.
   - **API Gateway**: Creación de endpoints HTTP para exponer las funciones Lambda como APIs.
   - **Bases de Datos**: Configuración de tablas DynamoDB para almacenar datos persistentes.
   - **Triggers de Eventos**: Definición de eventos de otros servicios de AWS que desencadenan las funciones Lambda, como cambios en buckets S3, colas SQS, etc.

3. **Local Development and Testing**: SAM CLI (Command Line Interface) permite a los desarrolladores construir, probar y depurar sus aplicaciones localmente antes de desplegarlas en la nube. Esto incluye la simulación de entornos de ejecución Lambda y la interacción con APIs y bases de datos locales.

4. **Deployments Sencillos**: Con comandos simples, SAM permite empaquetar y desplegar aplicaciones serverless en AWS. SAM maneja el empaquetado del código, la gestión de versiones y el despliegue a entornos específicos.

5. **IAM Role Generation**: SAM puede generar roles y políticas de IAM (Identity and Access Management) necesarias para que los recursos de la aplicación tengan los permisos adecuados, mejorando la seguridad y simplificando la configuración de permisos.

6. **Compatibility with CloudFormation**: Dado que SAM extiende AWS CloudFormation, se pueden utilizar todas las capacidades y características de CloudFormation, incluyendo stacks anidados, transformaciones y gestión de cambios de infraestructura.

7. **Optimización de Implementaciones**: SAM incluye características como las capas de Lambda (Lambda Layers) y la lógica de enrutamiento avanzada que optimiza la implementación y ejecución de aplicaciones serverless.
