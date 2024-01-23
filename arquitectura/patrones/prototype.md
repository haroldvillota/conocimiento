# Prototype

El patrón de diseño Prototype (Prototipo) es un patrón creacional que se utiliza para crear nuevos objetos duplicando un objeto existente, conocido como prototipo. En lugar de crear un nuevo objeto desde cero, el patrón Prototype copia un objeto existente y modifica las copias según sea necesario. Este enfoque se utiliza cuando la creación de un objeto es más costosa o compleja que duplicar un objeto existente.

A continuación, se describen los elementos clave del patrón Prototype:

1. **Prototype (Prototipo):**
   - Define una interfaz para la creación de objetos clonables. Puede ser una interfaz o una clase abstracta que declare un método de clonación.

2. **ConcretePrototype (Prototipo Concreto):**
   - Implementa la interfaz del prototipo y proporciona una implementación concreta del método de clonación.

3. **Client (Cliente):**
   - Utiliza el prototipo para crear nuevos objetos duplicándolos. El cliente no necesita conocer los detalles de cómo se implementa la clonación.

4. **Cloning (Clonación):**
   - El proceso de creación de nuevos objetos mediante la duplicación de un prototipo existente.

A continuación, se presenta un ejemplo simple en un contexto de programación en Java:

```java
// Prototype
interface Prototype {
    Prototype clone();
}

// ConcretePrototype
class ConcretePrototype implements Prototype {
    private String data;

    public ConcretePrototype(String data) {
        this.data = data;
    }

    @Override
    public Prototype clone() {
        return new ConcretePrototype(this.data);
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getData() {
        return data;
    }
}

// Client
public class Client {
    public static void main(String[] args) {
        ConcretePrototype original = new ConcretePrototype("Original Data");
        System.out.println("Original Data: " + original.getData());

        // Cloning the prototype
        ConcretePrototype cloned = (ConcretePrototype) original.clone();
        System.out.println("Cloned Data: " + cloned.getData());

        // Modifying the cloned object
        cloned.setData("Modified Data");
        System.out.println("Original Data after modification: " + original.getData());
        System.out.println("Cloned Data after modification: " + cloned.getData());
    }
}
```

En este ejemplo:

- `Prototype` define la interfaz de clonación mediante el método `clone`.
- `ConcretePrototype` es una implementación concreta del prototipo y proporciona una implementación específica del método `clone`.
- `Client` utiliza el prototipo para crear nuevos objetos clonando un objeto existente.

El patrón Prototype es útil cuando la creación de un objeto es costosa en términos de recursos o tiempo, y la mayoría de los atributos del objeto pueden ser copiados directamente. También permite la creación de objetos complejos con configuraciones iniciales predefinidas.