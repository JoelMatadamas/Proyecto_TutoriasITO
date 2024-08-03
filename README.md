# Proyecto_TutoriasITO

## Descripción

El programa de tutorías en Java es una aplicación robusta diseñada para gestionar de manera eficiente la interacción entre administradores, tutores y alumnos en un entorno educativo. Utiliza una base de datos compuesta por cinco tablas: usuarios, alumnos, tutores, cursos y materias. Al iniciar el programa, los usuarios se autentican a través de un sistema de login que detecta su nivel de acceso, el cual puede ser administrador o tutor. Dependiendo del nivel de usuario, se despliega una versión específica de la interfaz. Los administradores tienen acceso a funciones avanzadas como la consulta y gestión de alumnos, tutores y materias. Pueden agregar, eliminar y actualizar los registros de alumnos, así como asignarles cursos. Asimismo, tienen la capacidad de gestionar tutores y asociar materias a cursos. Además, los administradores pueden crear nuevos usuarios con nivel de acceso de administrador.

En la versión para tutores, el programa presenta los cursos que han sido asignados a cada tutor. Los tutores pueden abrir archivos PDF relacionados con los cursos y consultar información detallada de los alumnos inscritos en sus cursos. La interfaz es intuitiva y permite una navegación fácil para realizar todas estas acciones. Este enfoque asegura que los administradores puedan mantener una supervisión y gestión detallada de todos los componentes educativos, mientras que los tutores pueden centrarse en sus cursos y los alumnos que enseñan. Con esta organización, el programa facilita una gestión educativa eficiente y estructurada, adaptándose a las necesidades específicas de administradores y tutores.

## Como utilizar

Para utilizar el programa de tutorías en Java, siga las instrucciones detalladas a continuación. Al iniciar la aplicación, se le pedirá que ingrese su nombre de usuario y contraseña en la pantalla de inicio de sesión. Dependiendo de su nivel de acceso, será dirigido a la versión correspondiente del programa: administrador o tutor.

### Para Administradores:
1. **Inicio de sesión:**
   - Ingrese sus credenciales de administrador.
   - Si las credenciales son correctas, será dirigido a la interfaz principal de administrador.

2. **Navegación en el menú lateral:**
   - **Alumnos:** 
     - Seleccione esta opción para consultar la lista de alumnos. 
     - Desde aquí, puede agregar nuevos alumnos, eliminar registros existentes y actualizar información de los alumnos.
     - También puede asignar cursos a los alumnos.
   - **Tutores:**
     - Seleccione esta opción para gestionar los tutores.
     - Puede agregar, eliminar y actualizar la información de los tutores.
   - **Materias:**
     - Seleccione esta opción para consultar y gestionar las materias.
     - Puede asignar materias a cursos, agregar nuevas materias o eliminar las existentes.

3. **Creación de nuevos usuarios:**
   - Desde cualquiera de las opciones mencionadas, puede acceder a la funcionalidad para crear nuevos usuarios de nivel administrador.

### Para Tutores:
1. **Inicio de sesión:**
   - Ingrese sus credenciales de tutor.
   - Si las credenciales son correctas, será dirigido a la interfaz principal de tutor.

2. **Navegación en el menú lateral:**
   - **Mis Clases:**
     - Seleccione esta opción para ver los cursos que se le han asignado.
   - **Recursos:**
     - Desde aquí, puede abrir archivos PDF relacionados con sus cursos para acceder a materiales y recursos adicionales.
   - **Mis Alumnos:**
     - Seleccione esta opción para consultar la información de los alumnos inscritos en sus cursos.
     - Puede buscar alumnos específicos y ver detalles relevantes sobre su inscripción y progreso.

Estas instrucciones le permitirán aprovechar al máximo las funcionalidades del programa de tutorías, ya sea gestionando los diferentes componentes como administrador o accediendo a los recursos y datos necesarios para la enseñanza como tutor.

## API
### Paquete controlador
#### Clase conexion
##### Descripcion de la clase `conexion`
La clase `Conexion` contiene varios métodos públicos y campos privados para gestionar la conexión a la base de datos. A continuación, se presenta una tabla con la descripción de cada método y campo:

##### Campos
| Tipo     | Campo     | Descripción                                  |
|----------|-----------|----------------------------------------------|
| `String` | URL       | URL de la base de datos.                     |
| `String` | USER      | Usuario de la base de datos.                 |
| `String` | PASSWORD  | Contraseña de la base de datos.              |

##### Constructores
| Constructor            | Descripción |
|------------------------|-------------|
| `Conexion()`           | Constructor por defecto que inicializa la clase. |

##### Métodos públicos
| Método                  | Retorno     | Parámetros | Descripción                                                       |
|-------------------------|-------------|------------|-------------------------------------------------------------------|
| `getConexion()`         | `Connection`| -          | Obtiene y retorna una conexión a la base de datos.                |


### Paquete modelo
#### Clase AccesoAlumnos
##### Descripción de la clase `AccesoAlumnos`

La clase `AccesoAlumnos` contiene varios métodos públicos y campos privados para gestionar la interacción con la tabla `alumnos` en la base de datos. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                    | Retorno           | Parámetros                | Descripción                                                     |
|-------------------------------------------|-------------------|---------------------------|-----------------------------------------------------------------|
| `getAlumnos()`                            | `List<Alumno>`    | -                         | Obtiene una lista de todos los alumnos de la base de datos.     |
| `obtenerAlumno(int id)`                   | `Alumno`          | `int id`                 | Obtiene un alumno específico por su número de control.          |
| `asignarMateria(int numControl, int idMateria)` | `boolean`      | `int numControl, int idMateria` | Asigna una materia a un alumno específico.                       |
| `obtenerAlumnoPorIdMateria(int idMateria)` | `Alumno`         | `int idMateria`          | Obtiene un alumno específico por el ID de la materia.           |
| `getAlumnosPorIdMateria(int idMateria)`   | `List<Alumno>`    | `int idMateria`          | Obtiene una lista de alumnos que están inscritos en una materia específica. |
| `obtenerAlumnoPorNombre(String nombre)`    | `Alumno`          | `String nombre`          | Obtiene un alumno específico por su nombre.                     |
| `agregarAlumno(Alumno alumno)`             | `void`            | `Alumno alumno`          | Agrega un nuevo alumno a la base de datos.                      |
| `actualizarAlumno(Alumno alumno)`          | `boolean`         | `Alumno alumno`          | Actualiza los datos de un alumno existente en la base de datos. |
| `eliminarAlumno(int numControl)`           | `boolean`         | `int numControl`         | Elimina un alumno de la base de datos por su número de control.  |

#### Clase AccesoCursos
##### Descripción de la clase `AccesoCursos`

La clase `AccesoCursos` contiene varios métodos públicos para gestionar la interacción con la tabla `curso` en la base de datos. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                    | Retorno           | Parámetros                              | Descripción                                                       |
|-------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getCursos()`                             | `List<Curso>`     | -                                       | Obtiene una lista de todos los cursos de la base de datos.        |
| `obtenerCursoPorMateria(int idMateria)`   | `Curso`           | `int idMateria`                         | Obtiene un curso específico por su ID de materia.                 |
| `obtenerCursoPorTutor(int idTutor)`       | `Curso`           | `int idTutor`                           | Obtiene un curso específico por su ID de tutor.                   |
| `asignarCurso(int idTutor, int idMateria, Time horaInicio, Time horaFin, String aula)` | `boolean` | `int idTutor, int idMateria, Time horaInicio, Time horaFin, String aula` | Asigna un curso a un tutor para una materia específica.          |
| `insertarCurso(Curso curso)`              | `void`            | `Curso curso`                           | Inserta un nuevo curso en la base de datos.                       |
| `getCursosPorTutor(int idTutor)`          | `List<Curso>`     | `int idTutor`                           | Obtiene una lista de cursos asignados a un tutor específico.      |

#### Clase AccesoMaterias
##### Descripción de la clase `AccesoMaterias`

La clase `AccesoMaterias` proporciona métodos públicos para gestionar la interacción con la tabla `materias` en la base de datos. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getMaterias()`                            | `List<Materia>`   | -                                       | Obtiene una lista de todas las materias de la base de datos.      |
| `getMateriasFiltro(String carrera, int semestre)` | `List<Materia>`   | `String carrera, int semestre`         | Obtiene una lista de materias filtradas por carrera y semestre.   |
| `obtenerMateria(int id)`                    | `Materia`         | `int id`                                | Obtiene una materia específica por su ID.                         |
| `obtenerMateriasPorId(int id)`             | `List<Materia>`   | `int id`                                | Obtiene una lista de materias por su ID.                          |
| `obtenerMateriasPorNombre(String nombre)`   | `List<Materia>`   | `String nombre`                         | Obtiene una lista de materias filtradas por nombre.               |
| `obtenerMateriaPorNombre(String nombre)`     | `Materia`         | `String nombre`                         | Obtiene una materia específica por su nombre.                     |

#### Clase AccesoTutores
##### Descripción de la clase `AccesoTutores`

La clase `AccesoTutores` proporciona métodos públicos para gestionar la interacción con la tabla `tutores` en la base de datos. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getTutores()`                             | `List<Tutor>`     | -                                       | Obtiene una lista de todos los tutores de la base de datos.       |
| `obtenerTutor(int id)`                     | `Tutor`           | `int id`                                | Obtiene un tutor específico por su RFC.                           |
| `obtenerTutorconID(int id)`                | `Tutor`           | `int id`                                | Obtiene un tutor específico por su ID.                            |
| `getTutorconCorreo(String email)`           | `Tutor`           | `String email`                          | Obtiene un tutor específico por su correo electrónico.            |
| `agregarTutor(String nombre, String Apaterno, String AMaterno, int rfc, String numC, String Correo)` | `boolean`         | `String nombre, String Apaterno, String AMaterno, int rfc, String numC, String Correo` | Agrega un nuevo tutor a la base de datos.                         |
| `actualizarTutor(Tutor tutor)`              | `boolean`         | `Tutor tutor`                           | Actualiza la información de un tutor en la base de datos.        |
| `eliminarTutor(int id)`                     | `boolean`         | `int id`                                | Elimina un tutor de la base de datos por su ID.                  |

#### Clase AccesoUsuarios
##### Descripción de la clase `AccesoUsuarios`

La clase `AccesoUsuarios` proporciona métodos públicos para gestionar la interacción con la tabla `usuarios` en la base de datos. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getUsuarios(String email)`                 | `Usuario`         | `String email`                          | Obtiene un usuario específico por su correo electrónico.          |
| `agregarUsuario(String correo, String contraseña, int nivel, String user)` | `boolean`         | `String correo, String contraseña, int nivel, String user` | Agrega un nuevo usuario a la base de datos.                      |

#### Clase Alumno
##### Descripción de la clase `Alumno`

La clase `Alumno` representa a un estudiante con información relevante como su número de control, nombre, apellidos, semestre, carrera, materia y correo electrónico. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getNombre()`                               | `String`          | -                                       | Obtiene el nombre del alumno.                                     |
| `setNombre(String nombre)`                  | `void`            | `String nombre`                        | Establece el nombre del alumno.                                   |
| `getAPaterno()`                             | `String`          | -                                       | Obtiene el apellido paterno del alumno.                           |
| `setAPaterno(String APaterno)`              | `void`            | `String APaterno`                      | Establece el apellido paterno del alumno.                        |
| `getAMaterno()`                             | `String`          | -                                       | Obtiene el apellido materno del alumno.                           |
| `setAMaterno(String AMaterno)`              | `void`            | `String AMaterno`                      | Establece el apellido materno del alumno.                        |
| `getSemestre()`                             | `int`             | -                                       | Obtiene el semestre del alumno.                                   |
| `setSemestre(int semestre)`                 | `void`            | `int semestre`                         | Establece el semestre del alumno.                                 |
| `getCarrera()`                              | `String`          | -                                       | Obtiene la carrera del alumno.                                    |
| `setCarrera(String carrera)`                | `void`            | `String carrera`                       | Establece la carrera del alumno.                                  |
| `getMateria()`                              | `int`             | -                                       | Obtiene la materia del alumno.                                    |
| `setMateria(int materia)`                   | `void`            | `int materia`                          | Establece la materia del alumno.                                  |
| `getNumControl()`                           | `int`             | -                                       | Obtiene el número de control del alumno.                          |
| `setNumControl(int numControl)`             | `void`            | `int numControl`                       | Establece el número de control del alumno.                        |
| `getCorreo()`                               | `String`          | -                                       | Obtiene el correo electrónico del alumno.                         |
| `setCorreo(String correo)`                  | `void`            | `String correo`                        | Establece el correo electrónico del alumno.                       |


#### Clase Curso
##### Descripción de la clase `Curso`

La clase `Curso` representa un curso impartido por un tutor en una materia específica, incluyendo información sobre los horarios y el aula donde se imparte. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getIdCurso()`                              | `int`             | -                                       | Obtiene el ID del curso.                                          |
| `setIdCurso(int idCurso)`                   | `void`            | `int idCurso`                          | Establece el ID del curso.                                       |
| `getIdTutor()`                              | `int`             | -                                       | Obtiene el ID del tutor asignado al curso.                       |
| `setIdTutor(int idTutor)`                   | `void`            | `int idTutor`                          | Establece el ID del tutor asignado al curso.                     |
| `getIdMateria()`                            | `int`             | -                                       | Obtiene el ID de la materia del curso.                           |
| `setIdMateria(int idMateria)`               | `void`            | `int idMateria`                        | Establece el ID de la materia del curso.                         |
| `getHoraInicio()`                           | `Time`            | -                                       | Obtiene la hora de inicio del curso.                             |
| `setHoraInicio(Time horaInicio)`            | `void`            | `Time horaInicio`                      | Establece la hora de inicio del curso.                           |
| `getHoraFin()`                              | `Time`            | -                                       | Obtiene la hora de fin del curso.                                |
| `setHoraFin(Time horaFin)`                  | `void`            | `Time horaFin`                         | Establece la hora de fin del curso.                              |
| `getAula()`                                 | `String`          | -                                       | Obtiene el aula donde se imparte el curso.                       |
| `setAula(String aula)`                      | `void`            | `String aula`                          | Establece el aula donde se imparte el curso.                    |


#### Clase Materia
##### Descripción de la clase `Materia`

La clase `Materia` representa una materia que puede ser asignada a los alumnos, incluyendo información sobre su nombre, capacidad, carrera y semestre. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getId()`                                   | `int`             | -                                       | Obtiene el ID de la materia.                                     |
| `setId(int id)`                             | `void`            | `int id`                                | Establece el ID de la materia.                                   |
| `getNombre()`                               | `String`          | -                                       | Obtiene el nombre de la materia.                                 |
| `setNombre(String nombre)`                  | `void`            | `String nombre`                        | Establece el nombre de la materia.                               |
| `getCapacidad()`                            | `int`             | -                                       | Obtiene la capacidad de la materia.                              |
| `setCapacidad(int capacidad)`               | `void`            | `int capacidad`                        | Establece la capacidad de la materia.                            |
| `getCarrera()`                              | `String`          | -                                       | Obtiene la carrera a la que pertenece la materia.               |
| `setCarrera(String carrera)`                | `void`            | `String carrera`                      | Establece la carrera a la que pertenece la materia.             |
| `getSemestre()`                             | `int`             | -                                       | Obtiene el semestre al que pertenece la materia.                |
| `setSemestre(int semestre)`                 | `void`            | `int semestre`                        | Establece el semestre al que pertenece la materia.              |

#### Clase Tutor
##### Descripción de la clase `Tutor`

La clase `Tutor` representa un tutor que puede guiar a los alumnos en su aprendizaje. Incluye información como su nombre, apellidos, RFC, número de teléfono y correo electrónico. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                      | Retorno           | Parámetros                              | Descripción                                                       |
|---------------------------------------------|-------------------|-----------------------------------------|-------------------------------------------------------------------|
| `getId()`                                   | `int`             | -                                       | Obtiene el ID del tutor.                                        |
| `setId(int id)`                             | `void`            | `int id`                                | Establece el ID del tutor.                                      |
| `getRfc()`                                  | `int`             | -                                       | Obtiene el RFC del tutor.                                       |
| `setRfc(int rfc)`                           | `void`            | `int rfc`                               | Establece el RFC del tutor.                                     |
| `getNombre()`                               | `String`          | -                                       | Obtiene el nombre del tutor.                                    |
| `setNombre(String nombre)`                  | `void`            | `String nombre`                        | Establece el nombre del tutor.                                  |
| `getAPaterno()`                             | `String`          | -                                       | Obtiene el apellido paterno del tutor.                          |
| `setAPaterno(String APaterno)`               | `void`            | `String APaterno`                      | Establece el apellido paterno del tutor.                        |
| `getAMaterno()`                             | `String`          | -                                       | Obtiene el apellido materno del tutor.                          |
| `setAMaterno(String AMaterno)`               | `void`            | `String AMaterno`                      | Establece el apellido materno del tutor.                        |
| `getNumTel()`                               | `String`          | -                                       | Obtiene el número de teléfono del tutor.                        |
| `setNumTel(String numTel)`                  | `void`            | `String numTel`                        | Establece el número de teléfono del tutor.                      |
| `getCorreo()`                               | `String`          | -                                       | Obtiene el correo electrónico del tutor.                        |
| `setCorreo(String correo)`                  | `void`            | `String correo`                        | Establece el correo electrónico del tutor.                      |

#### Clase Usuario
##### Descripción de la clase `Usuario`

La clase `Usuario` representa un usuario del sistema, que incluye información sobre su correo electrónico, contraseña, nivel de acceso y nombre de usuario. A continuación, se presenta una tabla con la descripción de cada método.

##### Métodos públicos
| Método                                   | Retorno           | Parámetros                             | Descripción                                                    |
|------------------------------------------|-------------------|----------------------------------------|----------------------------------------------------------------|
| `getCorreo()`                            | `String`          | -                                      | Obtiene el correo electrónico del usuario.                    |
| `getContraseña()`                        | `String`          | -                                      | Obtiene la contraseña del usuario.                             |
| `getNivel()`                             | `int`             | -                                      | Obtiene el nivel de acceso del usuario.                       |
| `getUsuario()`                           | `String`          | -                                      | Obtiene el nombre de usuario.                                  |


### Paquete funcionalidad
#### Clase GenerarContra
##### Descripción de la clase `GeneradorContra`

La clase `GeneradorContra` se encarga de generar contraseñas seguras de una longitud específica, asegurando que contengan al menos un carácter de cada tipo: mayúsculas, minúsculas, dígitos y caracteres especiales.

##### Métodos públicos
| Método                  | Retorno           | Parámetros                  | Descripción                                                    |
|-------------------------|-------------------|-----------------------------|----------------------------------------------------------------|
| `GeneradorContra(int)`  | -                 | `int passwordLength`        | Constructor que establece la longitud de la contraseña a generar. |
| `generarContraseña()`   | `String`          | -                           | Genera una nueva contraseña que cumple con los requisitos de seguridad. |

#### Clase ValidacionContra
##### Descripción de la clase `ValidacionContra`

La clase `ValidacionContra` proporciona métodos para validar contraseñas, asegurando que cumplan con ciertos criterios de seguridad.

##### Métodos públicos
| Método                       | Retorno    | Parámetros            | Descripción                                                    |
|------------------------------|------------|-----------------------|----------------------------------------------------------------|
| `validarLongitud(String)`    | `boolean`  | `String contrasena`   | Valida que la contraseña tenga exactamente 8 caracteres.      |
| `validarCaracterEspecial(String)` | `boolean` | `String contrasena` | Valida que la contraseña contenga al menos un carácter especial. |
| `validarNumero(String)`      | `boolean`  | `String contrasena`   | Valida que la contraseña contenga al menos un dígito.         |
| `validarMayuscula(String)`   | `boolean`  | `String contrasena`   | Valida que la contraseña contenga al menos una letra mayúscula. |
| `validarContrasena(String)`  | `boolean`  | `String contrasena`   | Combina todas las validaciones anteriores para verificar la contraseña. |

#### Clase ValidacionCorreo
##### Descripción de la clase `ValidacionCorreo`

La clase `ValidacionCorreo` proporciona métodos para validar direcciones de correo electrónico, asegurando que cumplan con ciertos formatos y dominios.

##### Métodos públicos
| Método                       | Retorno    | Parámetros          | Descripción                                                      |
|------------------------------|------------|---------------------|------------------------------------------------------------------|
| `validarCorreo(String)`      | `boolean`  | `String c`          | Valida si la dirección de correo electrónico corresponde a los dominios permitidos: Gmail, Hotmail, Outlook o la institución "itoaxaca.edu.mx". |
| `validarArroba(String)`      | `boolean`  | `String c`          | Verifica si la dirección de correo electrónico contiene el símbolo '@'. |
| `validarExtension(String)`    | `boolean`  | `String c`          | Valida que la dirección de correo electrónico tenga la extensión correcta según los dominios permitidos. |

#### Clase ValidacionNumero
##### Descripción de la clase `ValidacionNumero`

La clase `ValidacionNumero` proporciona métodos para validar la longitud de números, asegurando que cumplan con requisitos específicos.

##### Métodos públicos
| Método                       | Retorno    | Parámetros          | Descripción                                                      |
|------------------------------|------------|---------------------|------------------------------------------------------------------|
| `validarLongitud(String)`    | `boolean`  | `String numero`     | Valida que la longitud de un número sea exactamente 10 caracteres. |
| `ValidanumC(String)`         | `boolean`  | `String n`          | Valida que la longitud de un número sea exactamente 8 caracteres. |


### Paquete paquetegrafico
#### Clase AgregarAdmin
##### Descripción de la clase `AgregarAdmin`

La clase `AgregarAdmin` es un cuadro de diálogo que permite agregar un nuevo administrador al sistema. Esta clase realiza validaciones en los campos de entrada para asegurar que el correo electrónico y la contraseña cumplen con los criterios establecidos.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `validarContra`        | `ValidacionContra`        | Objeto para validar las contraseñas ingresadas.        |
| `validarCorreo`        | `ValidacionCorreo`        | Objeto para validar correos electrónicos.              |
| `usuario`              | `Usuario`                 | Objeto que representa al usuario que se está agregando.|
| `usuarios`             | `AccesoUsuarios`          | Objeto para manejar el acceso a la base de datos de usuarios. |
| `confi`                | `Confirmacion`            | Objeto para manejar la ventana de confirmación.        |
| `c1`, `c2`, `c3`, `c4`, `c5` | `boolean`               | Flags para controlar el estado de las validaciones.     |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `AgregarAdmin(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `main(String[] args)`              | `void`     | Método principal que ejecuta la aplicación.                      |
| `btnAceptarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de aceptar, validando y agregando un nuevo administrador. |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo.      |

##### Eventos
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `txtCorreoKeyReleased(KeyEvent evt)`  | Valida el correo electrónico ingresado mientras se teclea.      |
| `txtContraKeyReleased(KeyEvent evt)`  | Valida la contraseña ingresada mientras se teclea.              |
| `txtRepContraKeyReleased(KeyEvent evt)` | Valida que la contraseña repetida coincida con la original.     |
| `txtCorreoMouseClicked(MouseEvent evt)` | Limpia el campo de correo cuando se hace clic.                  |
| `txtContraMouseClicked(MouseEvent evt)` | Limpia el campo de contraseña cuando se hace clic.              |
| `txtRepContraMouseClicked(MouseEvent evt)` | Limpia el campo de repetición de contraseña cuando se hace clic. |

#### Clase AgregarAlumno
##### Descripción de la clase `AgregarAlumno`

La clase `AgregarAlumno` es un cuadro de diálogo que permite agregar un nuevo alumno al sistema. Esta clase realiza validaciones en los campos de entrada para asegurar que los datos ingresados cumplen con los criterios establecidos.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `NumControl`           | `int`                     | Número de control del alumno.                           |
| `Nombre`               | `String`                  | Nombre del alumno.                                      |
| `ApellidoPaterno`      | `String`                  | Apellido paterno del alumno.                            |
| `ApellidoMaterno`      | `String`                  | Apellido materno del alumno.                            |
| `Semestre`             | `int`                     | Semestre actual del alumno.                             |
| `carrera`              | `String`                  | Carrera del alumno.                                     |
| `correo`               | `String`                  | Correo electrónico del alumno.                          |
| `confi`                | `Confirmacion`            | Objeto para manejar la ventana de confirmación.        |
| `valnum`               | `ValidacionNumero`        | Objeto para validar el número de control ingresado.    |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `AgregarAlumno(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `main(String[] args)`              | `void`     | Método principal que ejecuta la aplicación.                      |
| `btnAceptarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de aceptar, validando y agregando un nuevo alumno. |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo.      |

##### Eventos
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `txtNombreMouseClicked(MouseEvent evt)`  | Limpia el campo de nombre cuando se hace clic.                  |
| `txtApPaternoMouseClicked(MouseEvent evt)` | Limpia el campo de apellido paterno cuando se hace clic.        |
| `txtApMaternoMouseClicked(MouseEvent evt)` | Limpia el campo de apellido materno cuando se hace clic.        |
| `txtSemestreMouseClicked(MouseEvent evt)` | Limpia el campo de semestre cuando se hace clic.                |
| `btnAceptarActionPerformed(ActionEvent evt)` | Valida y agrega un nuevo alumno si los campos son válidos.     |
| `btnCancelarActionPerformed(ActionEvent evt)` | Cierra el cuadro de diálogo.                                   |
| `txtSemestreKeyTyped(KeyEvent evt)`         | Permite solo caracteres numéricos en el campo de semestre.    |
| `txtNombreKeyTyped(KeyEvent evt)`           | Permite solo caracteres alfabéticos en el campo de nombre.    |
| `txtApPaternoKeyTyped(KeyEvent evt)`        | Permite solo caracteres alfabéticos en el campo de apellido paterno. |
| `txtApMaternoKeyTyped(KeyEvent evt)`        | Permite solo caracteres alfabéticos en el campo de apellido materno. |
| `txtCorreoMouseClicked(MouseEvent evt)`     | Limpia el campo de correo cuando se hace clic.                  |
| `txtNumControlMouseClicked(MouseEvent evt)`  | Limpia el campo de número de control cuando se hace clic.       |
| `txtNumControlKeyReleased(KeyEvent evt)`     | Valida el número de control ingresado y cambia su color.        |
| `txtNumControlKeyTyped(KeyEvent evt)`        | Permite solo caracteres numéricos en el campo de número de control. |

##### Getters
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `getNombre()`                         | Retorna el nombre del alumno.                                   |
| `getApellidoPaterno()`                | Retorna el apellido paterno del alumno.                         |
| `getApellidoMaterno()`                | Retorna el apellido materno del alumno.                         |
| `getSemestre()`                       | Retorna el semestre del alumno.                                 |
| `getCarrera()`                        | Retorna la carrera del alumno.                                  |

#### Clase AgregarTutor
##### Descripción de la clase `AgregarTutor`

La clase `AgregarTutor` es un cuadro de diálogo que permite agregar un nuevo tutor al sistema. Esta clase realiza validaciones en los campos de entrada para asegurar que los datos ingresados cumplen con los criterios establecidos.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `Nombre`               | `String`                  | Nombre del tutor.                                      |
| `ApellidoPaterno`      | `String`                  | Apellido paterno del tutor.                            |
| `ApellidoMaterno`      | `String`                  | Apellido materno del tutor.                            |
| `rfc`                  | `int`                     | RFC del tutor.                                        |
| `numContacto`          | `String`                  | Número de contacto del tutor.                          |
| `correo`               | `String`                  | Correo electrónico del tutor.                          |
| `confi`                | `Confirmacion`            | Objeto para manejar la ventana de confirmación.        |
| `usuarios`             | `AccesoUsuarios`          | Objeto para acceder a la base de datos de usuarios.    |
| `usuario`              | `Usuario`                 | Objeto que representa al usuario que se está agregando.|
| `b1`, `b2`, `b3`, `b4`, `b5`, `b6` | `boolean` | Variables para controlar la interacción del usuario con los campos de texto. |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `AgregarTutor(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `main(String[] args)`              | `void`     | Método principal que ejecuta la aplicación.                      |
| `btnAceptarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de aceptar, validando y agregando un nuevo tutor. |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo.      |

##### Eventos
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `txtNombreMouseClicked(MouseEvent evt)`  | Limpia el campo de nombre cuando se hace clic.                  |
| `txtApPaternoMouseClicked(MouseEvent evt)` | Limpia el campo de apellido paterno cuando se hace clic.        |
| `txtApMaternoMouseClicked(MouseEvent evt)` | Limpia el campo de apellido materno cuando se hace clic.        |
| `txtRfcMouseClicked(MouseEvent evt)`       | Limpia el campo de RFC cuando se hace clic.                    |
| `txtnumContMouseClicked(MouseEvent evt)`   | Limpia el campo de número de contacto cuando se hace clic.      |
| `btnAceptarActionPerformed(ActionEvent evt)` | Valida y agrega un nuevo tutor si los campos son válidos.     |
| `btnCancelarActionPerformed(ActionEvent evt)` | Cierra el cuadro de diálogo.                                   |
| `txtRfcKeyTyped(KeyEvent evt)`             | Permite solo caracteres numéricos en el campo de RFC.         |
| `txtnumContKeyTyped(KeyEvent evt)`         | Permite solo caracteres numéricos en el campo de número de contacto. |
| `txtNombreKeyTyped(KeyEvent evt)`           | Permite solo caracteres alfabéticos en el campo de nombre.    |
| `txtApPaternoKeyTyped(KeyEvent evt)`        | Permite solo caracteres alfabéticos en el campo de apellido paterno. |
| `txtApMaternoKeyTyped(KeyEvent evt)`        | Permite solo caracteres alfabéticos en el campo de apellido materno. |
| `txtCorreoMouseClicked(MouseEvent evt)`     | Limpia el campo de correo cuando se hace clic.                  |
| `txtCorreoKeyReleased(KeyEvent evt)`        | Valida el correo electrónico ingresado y cambia su color.       |

##### Getters
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `getNombre()`                         | Retorna el nombre del tutor.                                   |
| `getApellidoPaterno()`                | Retorna el apellido paterno del tutor.                         |
| `getApellidoMaterno()`                | Retorna el apellido materno del tutor.                         |
| `getRFC()`                           | Retorna el RFC del tutor.                                      |
| `getNumContacto()`                    | Retorna el número de contacto del tutor.                        |
| `getCorreo()`                         | Retorna el correo electrónico del tutor.                       |

#### Clase AsignarMaterias:
##### Descripción de la clase `AsignarMaterias`

La clase `AsignarMaterias` es responsable de la asignación de materias a un alumno en el sistema. Esta clase interactúa con la base de datos para obtener la lista de materias disponibles y permitir que el administrador seleccione las materias que desea asignar a un alumno.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `materias`             | `ArrayList<Materia>`      | Lista de materias disponibles para asignar.             |
| `usuario`              | `Usuario`                 | Objeto que representa al tutor al que se le asignarán materias. |
| `cursos`               | `ArrayList<Curso>`        | Lista de cursos a los que se pueden asignar las materias. |
| `accesoMaterias`       | `AccesoMaterias`          | Objeto para acceder a la base de datos de materias.     |
| `accesoCursos`        | `AccesoCursos`            | Objeto para acceder a la base de datos de cursos.       |
| `jTable`               | `JTable`                  | Tabla para mostrar las materias disponibles.            |
| `btnAsignar`           | `JButton`                 | Botón para confirmar la asignación de materias.         |
| `btnCancelar`          | `JButton`                 | Botón para cancelar la asignación de materias.          |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `AsignarMaterias(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `main(String[] args)`              | `void`     | Método principal que ejecuta la aplicación.                      |
| `btnAsignarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de asignar, validando y guardando la asignación. |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo.      |

##### Eventos
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `btnAsignarActionPerformed(ActionEvent evt)` | Valida y asigna las materias seleccionadas al tutor.          |
| `btnCancelarActionPerformed(ActionEvent evt)` | Cierra el cuadro de diálogo sin realizar cambios.              |
| `jTableMouseClicked(MouseEvent evt)` | Permite la selección de materias en la tabla.                  |
| `btnAsignarMouseEntered(MouseEvent evt)` | Cambia el color del botón al pasar el mouse.                 |
| `btnAsignarMouseExited(MouseEvent evt)` | Restaura el color original del botón al salir el mouse.      |

##### Getters
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `getMaterias()`                      | Retorna la lista de materias disponibles para asignar.         |
| `getUsuario()`                       | Retorna el objeto usuario que representa al tutor.              |
| `getCursos()`                        | Retorna la lista de cursos a los que se pueden asignar las materias. |

#### Clase Confirmacion
##### Descripción de la clase `Confirmacion`

La clase `Confirmacion` es un cuadro de diálogo que solicita al usuario una confirmación antes de realizar una acción. Esta clase proporciona dos opciones: aceptar o cancelar, y almacena la elección del usuario.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `elegido`              | `boolean`                 | Indica la elección del usuario: `true` para cancelar, `false` para aceptar. |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `Confirmacion(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `main(String[] args)`              | `void`     | Método principal que ejecuta la aplicación.                      |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo y estableciendo `elegido` en `true`. |
| `btnAceptarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de aceptar, cerrando el cuadro de diálogo y estableciendo `elegido` en `false`. |

##### Métodos de acceso
| Método                                | Descripción                                                      |
|---------------------------------------|------------------------------------------------------------------|
| `eleccion()`                         | Retorna el valor de `elegido`, indicando la elección del usuario. |

#### Clase CrearCurso
##### Descripción de la clase `CrearCurso`

La clase `CrearCurso` es un cuadro de diálogo que permite a los usuarios crear y asignar un nuevo curso a un tutor seleccionado. Proporciona opciones para elegir un tutor y especificar detalles del curso, como la materia, horario y aula.

##### Atributos
| Atributo               | Tipo                       | Descripción                                             |
|------------------------|---------------------------|---------------------------------------------------------|
| `Tutor`                | `String`                  | Nombre del tutor seleccionado.                          |
| `tutor`                | `Tutor`                   | Objeto que representa al tutor seleccionado.            |
| `tutores`             | `AccesoTutores`          | Objeto para acceder a la base de datos de tutores.     |
| `listaTutores`        | `List<Tutor>`             | Lista de tutores disponibles para seleccionar.          |
| `materia`             | `Materia`                 | Objeto que representa la materia asociada al curso.     |
| `cursos`              | `AccesoCursos`            | Objeto para acceder a la base de datos de cursos.      |
| `confi`               | `Confirmacion`            | Objeto para manejar la ventana de confirmación.        |
| `c1`                  | `boolean`                 | Variable para controlar el estado del campo de texto del aula. |

##### Métodos públicos
| Método                             | Retorno    | Descripción                                                      |
|------------------------------------|------------|------------------------------------------------------------------|
| `CrearCurso(Frame parent, boolean modal)` | `void`   | Constructor que inicializa el cuadro de diálogo y sus componentes. |
| `asignarMateria(Materia materia)`  | `void`     | Asigna la materia al curso y actualiza los labels correspondientes. |
| `getTutor()`                       | `String`   | Retorna el nombre del tutor seleccionado.                         |
| `btnAceptarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de aceptar, validando los datos y creando un nuevo curso. |
| `btnCancelarActionPerformed(ActionEvent evt)` | `void` | Maneja la acción de cancelar, cerrando el cuadro de diálogo.      |

##### Métodos privados
| Método                             | Descripción                                                      |
|------------------------------------|------------------------------------------------------------------|
| `actualizarLabels()`               | Actualiza los labels con la información de la materia seleccionada. |
| `cargarTutores()`                  | Carga los tutores disponibles en el `cboTutor` desde la base de datos. |
| `txtAulaMouseClicked(MouseEvent evt)` | Limpia el campo de texto del aula cuando se hace clic.       |
