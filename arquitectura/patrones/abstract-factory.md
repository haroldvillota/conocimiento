# Abstract Factory

El patrón Abstract Factory es un patrón de diseño creacional que proporciona una interfaz para crear familias de objetos relacionados o dependientes sin especificar sus clases concretas. Este patrón abstrae la creación de objetos y permite intercambiar fácilmente las implementaciones concretas de esos objetos sin cambiar el código que los utiliza.

A continuación, se describen los componentes clave y cómo funciona el patrón Abstract Factory:

1. **Abstract Factory (Fábrica Abstracta):**
   - Declara una interfaz para la creación de productos abstractos. Esta interfaz puede contener varios métodos, cada uno de los cuales es responsable de crear un tipo específico de producto o familia de productos.

2. **Concrete Factory (Fábrica Concreta):**
   - Implementa la interfaz de la Fábrica Abstracta y proporciona implementaciones concretas para la creación de productos concretos. Cada Concrete Factory se asocia con una familia específica de productos.

3. **Abstract Product (Producto Abstracto):**
   - Declara una interfaz común para una familia de productos. Puede ser una interfaz o una clase abstracta que define las operaciones que deben ser implementadas por los productos concretos.

4. **Concrete Product (Producto Concreto):**
   - Implementa la interfaz del Producto Abstracto y proporciona una implementación concreta de un producto específico asociado con una familia.

5. **Cliente:**
   - Utiliza la Fábrica Abstracta y los productos abstractos. No necesita conocer las clases concretas de productos ni las Fábricas Concretas, ya que trabaja con las interfaces abstractas.

A continuación, se presenta un ejemplo simple en Java:

```java
// Abstract Product A
interface Chair {
    void sit();
}

// Concrete Product A1
class ModernChair implements Chair {
    @Override
    public void sit() {
        System.out.println("Sitting on a modern chair");
    }
}

// Concrete Product A2
class VictorianChair implements Chair {
    @Override
    public void sit() {
        System.out.println("Sitting on a Victorian chair");
    }
}

// Abstract Product B
interface Table {
    void use();
}

// Concrete Product B1
class ModernTable implements Table {
    @Override
    public void use() {
        System.out.println("Using a modern table");
    }
}

// Concrete Product B2
class VictorianTable implements Table {
    @Override
    public void use() {
        System.out.println("Using a Victorian table");
    }
}

// Abstract Factory
interface FurnitureFactory {
    Chair createChair();
    Table createTable();
}

// Concrete Factory 1
class ModernFurnitureFactory implements FurnitureFactory {
    @Override
    public Chair createChair() {
        return new ModernChair();
    }

    @Override
    public Table createTable() {
        return new ModernTable();
    }
}

// Concrete Factory 2
class VictorianFurnitureFactory implements FurnitureFactory {
    @Override
    public Chair createChair() {
        return new VictorianChair();
    }

    @Override
    public Table createTable() {
        return new VictorianTable();
    }
}

// Cliente
public class Client {
    public static void main(String[] args) {
        // Uso de una fábrica de muebles moderna
        FurnitureFactory modernFactory = new ModernFurnitureFactory();
        Chair modernChair = modernFactory.createChair();
        Table modernTable = modernFactory.createTable();

        modernChair.sit();
        modernTable.use();

        // Uso de una fábrica de muebles victoriana
        FurnitureFactory victorianFactory = new VictorianFurnitureFactory();
        Chair victorianChair = victorianFactory.createChair();
        Table victorianTable = victorianFactory.createTable();

        victorianChair.sit();
        victorianTable.use();
    }
}
```

En este ejemplo:

- `Chair` y `Table` son las interfaces de los productos abstractos.
- `ModernChair`, `VictorianChair`, `ModernTable`, y `VictorianTable` son las implementaciones concretas de los productos.
- `FurnitureFactory` es la interfaz de la Fábrica Abstracta.
- `ModernFurnitureFactory` y `VictorianFurnitureFactory` son las implementaciones concretas de la Fábrica Abstracta.
- El cliente utiliza la Fábrica Abstracta y los productos abstractos, sin conocer las clases concretas de productos o fábricas.

El patrón Abstract Factory permite crear familias de objetos relacionados sin acoplar el código del cliente a las clases concretas de esos objetos, facilitando así la creación de sistemas que puedan ser configurados para utilizar diferentes conjuntos de objetos relacionados.