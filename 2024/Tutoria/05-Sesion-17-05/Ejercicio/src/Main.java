import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Crear un HashMap para almacenar los estudiantes
        Map<String, String> estudiantes = new HashMap<>();

        // Crear un objeto Scanner para capturar datos desde la consola
        Scanner scanner = new Scanner(System.in);

        // Pedir al usuario que ingrese los datos de 5 estudiantes
        for (int i = 0; i < 5; i++) {
            System.out.println("Ingrese el código del estudiante " + (i + 1) + ": ");
            String codigo = scanner.nextLine();
            System.out.println("Ingrese el nombre del estudiante " + (i + 1) + ": ");
            String nombre = scanner.nextLine();

            // Agregar el estudiante al HashMap
            estudiantes.put(codigo, nombre);
        }

        // Imprimir la lista de estudiantes
        System.out.println("Lista de estudiantes:");
        for (Map.Entry<String, String> entry : estudiantes.entrySet()) {
            System.out.println("Código: " + entry.getKey() + ", Nombre: " + entry.getValue());
        }
    }
}
