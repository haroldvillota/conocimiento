# Factory Method

El patrón de diseño Factory Method (Método de Fábrica) es un patrón creacional que proporciona una interfaz para la creación de objetos en una superclase, pero permite que las subclases alteren el tipo de objetos que se crearán. Este patrón promueve la abstracción de la creación de objetos y permite que una clase delegue la responsabilidad de la creación a sus subclases.

A continuación, se describen los componentes clave del patrón Factory Method:

1. **Product (Producto):**
   - Define la interfaz de los objetos que el Factory Method crea.

2. **ConcreteProduct (Producto Concreto):**
   - Implementa la interfaz definida por el Product. Es el objeto que se crea a través del Factory Method.

3. **Creator (Creador):**
   - Declara el Factory Method, que es una interfaz para la creación de objetos Product. Puede contener lógica común para todos los productos.

4. **ConcreteCreator (Creador Concreto):**
   - Implementa el Factory Method para crear un objeto ConcreteProduct específico. Es responsable de instanciar un objeto concreto de la clase Product.

A continuación, se presenta un ejemplo simple en un contexto de programación en lenguaje de programación como Java:

```java
// Product
interface Product {
    void operation();
}

// ConcreteProductA
class ConcreteProductA implements Product {
    @Override
    public void operation() {
        System.out.println("ConcreteProductA operation");
    }
}

// ConcreteProductB
class ConcreteProductB implements Product {
    @Override
    public void operation() {
        System.out.println("ConcreteProductB operation");
    }
}

// Creator
interface Creator {
    Product factoryMethod();
}

// ConcreteCreatorA
class ConcreteCreatorA implements Creator {
    @Override
    public Product factoryMethod() {
        return new ConcreteProductA();
    }
}

// ConcreteCreatorB
class ConcreteCreatorB implements Creator {
    @Override
    public Product factoryMethod() {
        return new ConcreteProductB();
    }
}
```

En este ejemplo:

- `Product` define la interfaz que deben implementar los objetos creados por el Factory Method.
- `ConcreteProductA` y `ConcreteProductB` son implementaciones concretas de `Product`.
- `Creator` declara el Factory Method (`factoryMethod`) que las subclases deben implementar para crear objetos `Product`.
- `ConcreteCreatorA` y `ConcreteCreatorB` son las subclases que implementan el Factory Method para crear instancias específicas de `ConcreteProductA` y `ConcreteProductB`, respectivamente.

El patrón Factory Method es útil cuando una clase no puede anticipar la clase de objetos que debe crear o cuando una clase quiere delegar la responsabilidad de la creación de objetos a sus subclases. Esto permite una mayor flexibilidad y extensibilidad en el diseño del software.