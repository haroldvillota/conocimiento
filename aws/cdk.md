# CDK - Cloud Development Kit

AWS CDK (Cloud Development Kit) es un framework de desarrollo de software de Amazon Web Services que permite a los desarrolladores definir su infraestructura en la nube utilizando lenguajes de programación conocidos, como TypeScript, JavaScript, Python, Java y C#. A diferencia de AWS CloudFormation y AWS SAM, que utilizan archivos de plantilla en YAML o JSON, AWS CDK permite a los desarrolladores usar el poder y la flexibilidad de lenguajes de programación modernos para definir recursos de infraestructura.

Aquí se presentan las características y beneficios principales de AWS CDK:

1. **Infraestructura como Código (IaC) con Lenguajes de Programación**: AWS CDK permite a los desarrolladores utilizar lenguajes de programación para definir y provisionar la infraestructura de AWS. Esto incluye la capacidad de utilizar estructuras de control de flujo, bucles, funciones y otros elementos propios de los lenguajes de programación.

2. **Componentes de Alto Nivel (Constructs)**: CDK introduce el concepto de "constructs", que son componentes reutilizables que encapsulan recursos de AWS. Hay tres niveles de constructs:
   - **L1 (nivel 1)**: Constructs que mapean directamente a recursos de AWS CloudFormation.
   - **L2 (nivel 2)**: Constructs que proporcionan abstracciones de alto nivel y son más fáciles de usar.
   - **L3 (nivel 3)**: Patrones completos que combinan múltiples recursos para construir soluciones completas, como aplicaciones web o arquitecturas de microservicios.

3. **Compatibilidad con CloudFormation**: El código definido en AWS CDK se convierte en plantillas de AWS CloudFormation, lo que significa que se puede aprovechar la robustez y las capacidades de CloudFormation, incluyendo la gestión de estado y la detección de cambios.

4. **Facilidad de Uso y Productividad**: Al permitir el uso de lenguajes de programación familiares, CDK facilita la integración con herramientas y procesos de desarrollo existentes. Los desarrolladores pueden utilizar IDEs, realizar pruebas unitarias y aplicar principios de desarrollo ágil.

5. **Bibliotecas y Módulos Preconstruidos**: AWS CDK incluye una colección amplia de bibliotecas y módulos preconstruidos que encapsulan las mejores prácticas de AWS. Estos módulos facilitan la configuración y gestión de recursos comunes, como redes, seguridad, almacenamiento y cómputo.

6. **Custom Constructs**: Los desarrolladores pueden crear sus propios constructs personalizados para encapsular patrones de infraestructura específicos de su organización, promoviendo la reutilización y la consistencia.

## Core framework

El "Core Framework" de AWS CDK es la base sobre la cual se construyen las aplicaciones de infraestructura como código (IaC). Este framework proporciona los componentes esenciales para definir y configurar recursos de AWS utilizando lenguajes de programación. Incluye clases y métodos que permiten a los desarrolladores describir la infraestructura en código, gestionar el ciclo de vida de los recursos y aplicar prácticas de desarrollo modernas.

## AWS Construct Library

La "AWS Construct Library" es una colección de componentes reutilizables llamados "constructs" que encapsulan configuraciones de recursos de AWS. Los constructs son bloques de construcción de diferentes niveles de abstracción que facilitan la definición de infraestructuras complejas de manera sencilla y eficiente

## AWS CDK CLI

La "AWS CDK CLI" (Command Line Interface) es una herramienta de línea de comandos que permite a los desarrolladores interactuar con AWS CDK. Proporciona comandos para inicializar, desarrollar y desplegar aplicaciones de infraestructura definidas con CDK. Algunas de sus funcionalidades incluyen:

- ***Inicialización de Proyectos***: Crear un nuevo proyecto de CDK con la estructura de directorios y archivos básicos.
- ***Compilación y Síntesis:*** Transformar el código de CDK en plantillas de CloudFormation.
- ***Despliegue:*** Implementar la infraestructura definida en CDK en la nube de AWS.
- ***Inspección:*** Verificar y depurar las plantillas generadas y los recursos desplegados.

## Iniciar proyecto

```bash
cdk init app --language go
```

## CDK Bootstrap

```bash
cdk bootstrap aws://NUMBER_OF_ACOUNT/us-east-1
```
