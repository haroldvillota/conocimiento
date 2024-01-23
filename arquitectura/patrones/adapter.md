# Adapter

El patrón Adapter es un patrón estructural que permite que dos interfaces incompatibles trabajen juntas. Este patrón actúa como un puente entre dos interfaces que de otro modo no podrían interactuar, permitiendo que objetos con interfaces diferentes colaboren entre sí.

A continuación, se describen los componentes clave y cómo funciona el patrón Adapter:

1. **Target (Objetivo):**
   - Define la interfaz específica del dominio que el cliente utiliza.

2. **Client (Cliente):**
   - Colabora con objetos conformes a la interfaz del Target.

3. **Adaptee (Adaptado):**
   - Define una interfaz existente que necesita ser adaptada.

4. **Adapter (Adaptador):**
   - Implementa la interfaz del Target y mantiene una referencia al objeto Adaptee. Actúa como un intermediario que permite que el cliente interactúe con el Adaptee a través de la interfaz del Target.

A continuación, se presenta un ejemplo simple en Java:

```java
// Target
interface Target {
    void request();
}

// Adaptee
class Adaptee {
    void specificRequest() {
        System.out.println("Specific request from Adaptee");
    }
}

// Adapter
class Adapter implements Target {
    private Adaptee adaptee;

    Adapter(Adaptee adaptee) {
        this.adaptee = adaptee;
    }

    @Override
    public void request() {
        adaptee.specificRequest();
    }
}

// Client
public class Client {
    public static void main(String[] args) {
        // Creación de un objeto Adaptee
        Adaptee adaptee = new Adaptee();

        // Uso del Adapter para adaptar la interfaz del Adaptee al Target
        Target target = new Adapter(adaptee);

        // El cliente interactúa con el Target
        target.request();
    }
}
```

En este ejemplo:

- `Target` define la interfaz específica del dominio que el cliente utiliza.
- `Adaptee` es la clase con la interfaz existente que necesita ser adaptada.
- `Adapter` implementa la interfaz del `Target` y mantiene una referencia al objeto `Adaptee`. Actúa como un adaptador que permite que el cliente interactúe con el `Adaptee` a través de la interfaz del `Target`.
- El `Client` interactúa con el `Target` sin necesidad de conocer la implementación específica del `Adaptee`.

El patrón Adapter es útil cuando se desea utilizar una clase existente con una interfaz incompatible en un nuevo contexto sin modificar su código fuente. Esto permite la reutilización de código existente y facilita la integración de componentes que no fueron diseñados para trabajar juntos inicialmente.