# Singleton

El patrón Singleton es un patrón de diseño creacional que garantiza que una clase tenga una única instancia y proporciona un punto de acceso global a esa instancia. Este patrón es útil cuando se quiere restringir la creación de instancias de una clase a una única instancia y proporcionar un único punto de acceso para esa instancia en toda la aplicación.

A continuación, se describen los componentes clave y cómo funciona el patrón Singleton:

1. **Constructor Privado:**
   - La clase Singleton tiene un constructor privado, lo que impide la creación de instancias mediante la invocación directa del constructor desde fuera de la clase.

2. **Instancia Estática:**
   - La clase contiene una instancia estática privada de sí misma. Esta instancia es la única instancia que se creará y compartirá.

3. **Método Estático de Obtención de la Instancia:**
   - La clase proporciona un método estático público que actúa como un punto de acceso global para obtener la única instancia de la clase. Si la instancia aún no ha sido creada, este método la crea y la devuelve; de lo contrario, devuelve la instancia existente.

4. **Lazy Initialization (Inicialización Perezosa):**
   - La creación de la instancia se realiza solo cuando es necesaria, es decir, la inicialización se realiza de forma perezosa. Esto significa que la instancia se crea la primera vez que se solicita mediante el método de obtención.

A continuación, se presenta un ejemplo simple de implementación del patrón Singleton en Java:

```java
public class Singleton {
    // Instancia estática privada
    private static Singleton instance;

    // Constructor privado para evitar la creación de instancias directas
    private Singleton() {
        // Inicialización del objeto
    }

    // Método estático para obtener la instancia (implementación de inicialización perezosa)
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

En este ejemplo:

- La clase `Singleton` tiene un constructor privado.
- La instancia se mantiene como una variable estática privada.
- El método estático `getInstance` es el punto de acceso para obtener la instancia de la clase, y se encarga de crear la instancia si aún no existe.

Es importante señalar que esta implementación de inicialización perezosa (lazy initialization) no es segura para entornos multihilo. Si múltiples hilos intentan obtener la instancia al mismo tiempo, podrían crear instancias duplicadas. Para hacer la implementación segura para entornos multihilo, se pueden aplicar mecanismos de sincronización, o utilizar inicialización temprana o Double-Checked Locking para garantizar la creación única de la instancia. Sin embargo, en entornos modernos de Java, el uso de la inicialización estática de campos garantiza la inicialización segura y eficiente en hilos.