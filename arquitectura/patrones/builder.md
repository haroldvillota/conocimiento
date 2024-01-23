# Builder

El patrón Builder es un patrón de diseño creacional que se utiliza para construir objetos complejos paso a paso. Este patrón separa la construcción de un objeto de su representación, permitiendo que el mismo proceso de construcción pueda crear diferentes representaciones del objeto.

A continuación, se describen los componentes clave y cómo funciona el patrón Builder:

1. **Builder (Constructor):**
   - Define una interfaz abstracta para construir las partes del objeto. Esta interfaz generalmente incluye métodos para construir cada parte del objeto.

2. **ConcreteBuilder (Constructor Concreto):**
   - Implementa la interfaz del Builder y proporciona una implementación específica para construir y ensamblar las partes del objeto. Puede tener métodos para configurar características específicas del objeto.

3. **Product (Producto):**
   - Representa el objeto complejo que se está construyendo. Puede ser una clase con muchas propiedades y métodos.

4. **Director:**
   - Coordina el proceso de construcción utilizando el Builder. El Director conoce el Builder y guía el proceso paso a paso, solicitando al Builder que construya las partes necesarias del objeto.

A continuación, se presenta un ejemplo simple en Java:

```java
// Product
class Car {
    private String brand;
    private String model;
    private int year;
    private String color;

    // Constructor privado para evitar la creación directa de instancias
    private Car() {}

    // Métodos getter
    // ...

    @Override
    public String toString() {
        return "Car{" +
                "brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", year=" + year +
                ", color='" + color + '\'' +
                '}';
    }

    // Builder
    static class CarBuilder {
        private Car car;

        CarBuilder() {
            car = new Car();
        }

        CarBuilder withBrand(String brand) {
            car.brand = brand;
            return this;
        }

        CarBuilder withModel(String model) {
            car.model = model;
            return this;
        }

        CarBuilder withYear(int year) {
            car.year = year;
            return this;
        }

        CarBuilder withColor(String color) {
            car.color = color;
            return this;
        }

        Car build() {
            return car;
        }
    }

    // Director (opcional)
    static class CarDirector {
        Car buildSportsCar() {
            return new CarBuilder()
                    .withBrand("SportsBrand")
                    .withModel("SportsModel")
                    .withYear(2023)
                    .withColor("Red")
                    .build();
        }
    }
}

// Uso del patrón Builder
public class BuilderExample {
    public static void main(String[] args) {
        // Creación de un objeto Car mediante el Builder
        Car.CarBuilder builder = new Car.CarBuilder();
        Car car = builder
                .withBrand("ExampleBrand")
                .withModel("ExampleModel")
                .withYear(2022)
                .withColor("Blue")
                .build();

        System.out.println(car);

        // Uso del Director (opcional)
        Car.CarDirector director = new Car.CarDirector();
        Car sportsCar = director.buildSportsCar();
        System.out.println(sportsCar);
    }
}
```

En este ejemplo:

- `Car` es el producto que se está construyendo.
- `CarBuilder` es el constructor concreto que implementa la interfaz del Builder y proporciona métodos para construir las partes del objeto.
- `CarDirector` (opcional) coordina el proceso de construcción utilizando el Builder.
- Se crea un objeto `Car` mediante el proceso de construcción paso a paso proporcionado por el patrón Builder.

El patrón Builder es especialmente útil cuando se trabaja con objetos complejos que tienen muchas configuraciones posibles y se desea proporcionar una interfaz clara y paso a paso para construir esos objetos. Esto facilita la creación de objetos con diferentes configuraciones sin tener que utilizar constructores con múltiples parámetros o setters.