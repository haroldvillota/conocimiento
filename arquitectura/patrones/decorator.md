# Decorator

El patrón Decorator es un patrón de diseño estructural que permite agregar comportamiento adicional a un objeto dinámicamente. Este patrón se basa en la composición de objetos, permitiendo que los clientes añadan nuevas funcionalidades a un objeto existente sin alterar su estructura.

A continuación, se describen los componentes clave y cómo funciona el patrón Decorator:

1. **Component (Componente):**
   - Define la interfaz común para todos los objetos que pueden tener responsabilidades adicionales. Puede ser una interfaz o una clase abstracta.

2. **ConcreteComponent (Componente Concreto):**
   - Implementa la interfaz del Componente y proporciona la funcionalidad base.

3. **Decorator (Decorador):**
   - Mantiene una referencia a un objeto del tipo Component y también implementa la interfaz del Component. Esta clase actúa como la clase base para todos los decoradores con funcionalidades adicionales.

4. **ConcreteDecorator (Decorador Concreto):**
   - Extiende el Decorador y agrega responsabilidades adicionales al Component. Puede haber varios ConcreteDecorators que se pueden apilar para agregar múltiples capas de funcionalidad.

A continuación, se presenta un ejemplo simple en Java:

```java
// Component
interface Coffee {
    double cost();
    String description();
}

// ConcreteComponent
class SimpleCoffee implements Coffee {
    @Override
    public double cost() {
        return 2.0; // Costo base
    }

    @Override
    public String description() {
        return "Simple Coffee";
    }
}

// Decorator
abstract class CoffeeDecorator implements Coffee {
    protected Coffee decoratedCoffee;

    CoffeeDecorator(Coffee decoratedCoffee) {
        this.decoratedCoffee = decoratedCoffee;
    }

    @Override
    public double cost() {
        return decoratedCoffee.cost();
    }

    @Override
    public String description() {
        return decoratedCoffee.description();
    }
}

// ConcreteDecorator
class MilkDecorator extends CoffeeDecorator {
    MilkDecorator(Coffee decoratedCoffee) {
        super(decoratedCoffee);
    }

    @Override
    public double cost() {
        return super.cost() + 0.5; // Costo adicional por leche
    }

    @Override
    public String description() {
        return super.description() + " with Milk";
    }
}

// ConcreteDecorator
class SugarDecorator extends CoffeeDecorator {
    SugarDecorator(Coffee decoratedCoffee) {
        super(decoratedCoffee);
    }

    @Override
    public double cost() {
        return super.cost() + 0.2; // Costo adicional por azúcar
    }

    @Override
    public String description() {
        return super.description() + " with Sugar";
    }
}

// Cliente
public class Client {
    public static void main(String[] args) {
        // Creación de un SimpleCoffee
        Coffee simpleCoffee = new SimpleCoffee();
        System.out.println("Cost: $" + simpleCoffee.cost() + ", Description: " + simpleCoffee.description());

        // Decoración con leche
        Coffee milkCoffee = new MilkDecorator(simpleCoffee);
        System.out.println("Cost: $" + milkCoffee.cost() + ", Description: " + milkCoffee.description());

        // Decoración con azúcar
        Coffee sugarMilkCoffee = new SugarDecorator(milkCoffee);
        System.out.println("Cost: $" + sugarMilkCoffee.cost() + ", Description: " + sugarMilkCoffee.description());
    }
}
```

En este ejemplo:

- `Coffee` es la interfaz común para todos los objetos que pueden tener responsabilidades adicionales.
- `SimpleCoffee` es una implementación concreta de `Coffee` que proporciona la funcionalidad base.
- `CoffeeDecorator` es la clase base abstracta para todos los decoradores.
- `MilkDecorator` y `SugarDecorator` son decoradores concretos que extienden `CoffeeDecorator` y agregan responsabilidades adicionales al componente base (`SimpleCoffee`).

El patrón Decorator es útil cuando se necesita extender la funcionalidad de los objetos de manera dinámica y flexible, sin necesidad de alterar su estructura. Se puede aplicar para añadir funcionalidades específicas de manera modular, y los decoradores pueden combinarse de forma flexible para crear diversas combinaciones de comportamientos adicionales.