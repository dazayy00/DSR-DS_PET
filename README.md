RAMA develop (rama de desarrollo) 
Estructura de carpetas clean architecture:

Bussines: se definen abstracciones de clases y métodos que se usarán, esta capa defice QUÉ SE HARÁ, pero no el CÓMO se implementa la solución.
    
    -Entities: define la estructura y atributos de una clase/entidad sin asignar algún valor.

    -Repositories: clase abstracta que declara métodos a usar.

    -Usecases: representan una función o método en específico dentro del sistema.

Data: acá nos encargamos de la implementación de los métodos y funcionalidades que se declaran en la capa Bussines.

    -Datasources: se encarga del manejo de los datos que usará la aplicación, ya sea de una BD local o solicitudes a un API. 
    (Podría haber un LocalDataSource y un RemoteDataSource).

    -Models: se encarga de la lógica de las entities, asignación de valores a sus atributos/variables.

    -Repositories: se hace la implementación de los métodos definidos en los UseCases y Repositories de la capa busiess

Presentation:  parte visual del sistema, no debe depender de nada implementado dentro de Data (es decir, un cambio dentro de alguna función dentro de Data no debe afectar el funcionamiento de esta sección).

    -Pages: Los archivos de esta carpeta representan las distintas pantallas que se usaran dentro de la app.

    -Providers: "proveen" la información necesaria para que el UI se actualica o funcione

    -Widgets: son los pequeños componentes o piezas que contienen las pages. Cada parte de una pantalla puede verse como una piezas por separado que se unen para crear esta pantalla, sirve tener código más limpio y permite que reutilicemos código.

