import java.util.Scanner;

// Clase abstracta para capturar datos por consola
public abstract class CapturaDatos {
    private static final Scanner scanner = new Scanner(System.in);

    // Método para capturar texto
    public static String CapturarTexto(String mensaje) {
        System.out.print(mensaje + ": ");
        return scanner.nextLine();
    }

    // Método para capturar número
    public static Double CapturarNumero(String mensaje) {
        while (true) {
            String input = CapturarTexto(mensaje);
            try {
                return Double.parseDouble(input);
            } catch (NumberFormatException e) {
                System.out.println("¡Error! Debe ingresar un número válido.");
            }
        }
    }
}