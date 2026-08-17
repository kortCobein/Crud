# CRUD CAAI - Java + base real de CAAIS Web

Proyecto de consola con POO, JDBC y MySQL. Trabaja sobre la misma base configurada en `C:\Users\cobei\Desktop\caais web\.env` y sobre las tablas reales `caais_*`.

- Crear agrega la cuenta a `caais_usuarios`, su perfil en `caais_alumnos` y su inscripción activa.
- Modificar actualiza esos mismos registros.
- Eliminar realiza una baja lógica: desactiva cuenta e inscripciones y cierra sesiones. El historial no se destruye.
- Buscar, listar y directorio solo muestran cuentas activas del entorno real.

## Abrir en IntelliJ

Abre la carpeta que contiene `pom.xml`, carga Maven y usa JDK 21 o superior. Para ejecutarlo normalmente usa `run.bat`, que selecciona el JDK disponible y la configuración de CAAIS Web.

Clase principal:

`src/main/java/mx/edu/utsjr/caai/app/Main.java`

## Packages

- `app`: punto de entrada y menú.
- `modelo`: Persona, Alumno, Docente, Tutor y Validable.
- `dao`: acceso a datos y CRUD.
- `config`: conexión a MySQL.
- `util`: colores y datos generales del proyecto.

## Menú

1. Buscar alumno.
2. Registrar alumno.
3. Modificar alumno.
4. Eliminar alumno.
5. Listar alumnos.
6. Consultar directorio CAAI.
7. Salir.

El directorio trabaja con objetos `Persona` que pueden ser `Alumno`, `Docente` o `Tutor`; cada objeto ejecuta su propia implementación de `mostrarResumen()`.
