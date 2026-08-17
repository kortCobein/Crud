# CRUD CAAI - Java + MySQL

Proyecto de consola con POO, JDBC y MySQL.

## Abrir en IntelliJ``

Abre la carpeta que contiene `pom.xml`, carga Maven y usa JDK 21.

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
