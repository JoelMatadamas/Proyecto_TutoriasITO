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
#### Clase


