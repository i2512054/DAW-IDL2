<h1>Tarea de Caso Práctico IDL2: Elaborar un CRUD completa en un entorno administrativo.</h1>
<h2>La aplicación debe tener todas las funcionalidades de un CRUD(Listar, Nuevo, Editar y Eliminar)</h2>

- De acuerdo a lo solicitado, se elaboro un CRUD para un control de registro de vehículos, de las cuales se uso lo siguiente:
	+ Se creo una base de datos denominada: db_daw_idl2, en las cuales contiene las tablas de categories, brands, colors, fuels y vehicles.
	+ Para crear el backend(APIs), se uso el framework PHP: Codeigniter 4
        - Se creo 5 Models(CategoryModel, BrandModel, ColorModel, FuelModel y VehicleModel) en /IDL2/be/app/Models/
        - Se creo 5 Controllers(Categories, Brands, Colors, Fuels y Vehicles) en /IDL2/be/app/Controllers/
        - Se agregaron 5 routes para categories, brands, colors, fuels y vehicles en el archivo /IDL2/be/app/Config/Routes.php
	+ Para crear el frontend(HTML5, CSS3 y JavaScript), se uso Bootstrap, Fontawesome y jQuery.
        - Se creo un archivo JavaScript (/IDL2/assets/js/vehicles.js) que contiene lo siguiente: 
            + Se crearon métodos asíncronos para consumir las APIs de categories, brands, colors, fuels y vehicles.
            + Se crearon métodos para construir dinámicamente los contenidos web de acuerdo a los resultados de las APIs.
            + Se crearon Modales para mostrar mensajes, confirmación y formulario para el CRUD.

- Operaciones CRUD de Vehículos:
	+ Listar Vehículos
    <br />
	<img src="https://github.com/i2512054/Assets2025/blob/main/01_GET_ALL_VEHICLE.png?raw=true" width="400" /><br />
    
    + Crear Vehículo
    <br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/02_01_BTN_VEHICLE_CREATE.png?raw=true" width="100" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/02_CREATE_01_VEHICLE.png?raw=true" width="400" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/03_CREATE_02_VEHICLE.png?raw=true" width="400" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/04_CREATE_03_VEHICLE.png?raw=true" width="400" /><br />
    
    + Actualizar Vehículo
    <br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/05_01_BTN_VEHICLE_EDIT.png?raw=true" width="40" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/05_UPDATE_01_VEHICLE.png?raw=true" width="400" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/03_CREATE_02_VEHICLE.png?raw=true" width="400" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/06_UPDATE_02_VEHICLE.png?raw=true" width="400" /><br />
    
    + Eliminar Vehículo
    <br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/07_01_BTN_VEHICLE_DELETE.png?raw=true" width="40" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/07_DELETE_01_VEHICLE.png?raw=true" width="400" /><br />
    <img src="https://github.com/i2512054/Assets2025/blob/main/08_DELETE_02_VEHICLE.png?raw=true" width="400" /><br />

- Para deployar la aplicación a un Localhost, realizar lo siguiente:
	+ Instalar el servidor XAMPP
        - Nota Importante: El Framework Codeigniter 4, funciona en versión de PHP 8.2.12 o posterior
	+ Clonar el repositorio https://github.com/i2512054/DAW-IDL2.git
	+ Luego ejecutar el script en el phpMyAdmin: db_daw_idl2.sql
	+ Luego copiar y pegar la carpeta IDL2 a htdocs. Ejemplo: C:/XAMPP/htdocs/IDL2
	+ Modificar los parametros de base de datos en el archivo(C:/XAMPP/htdocs/IDL2/be/app/Config/Database.php)
    <br />
    <pre>
        public array $default = [
            'DSN'          => '',
            'hostname'     => 'localhost',//INDICAR EL IP o localhost DE TU PC
            'username'     => 'root',//INDICAR EL USUARIO de MySQL por defecto es root
            'password'     => '',//INDICAR EL PASSWORD de MySQL por defecto no tiene contraseña
            'database'     => 'db_daw_idl2',//INDICAR el nombre de la base de datos, en este caso: db_daw_idl2
            'DBDriver'     => 'MySQLi',
            'DBPrefix'     => '',
            'pConnect'     => false,
            'DBDebug'      => true,
            'charset'      => 'utf8mb4',
            'DBCollat'     => 'utf8mb4_general_ci',
            'swapPre'      => '',
            'encrypt'      => false,
            'compress'     => false,
            'strictOn'     => false,
            'failover'     => [],
            'port'         => 3306,
            'numberNative' => false,
            'dateFormat'   => [
                'date'     => 'Y-m-d',
                'datetime' => 'Y-m-d H:i:s',
                'time'     => 'H:i:s',
            ],
        ];
    </pre>
	+ Luego ir al navegador web y digitar http://localhost/IDL2/
    El resultado final, será mostrar el CRUD de Vehículos.
    <img src="https://github.com/i2512054/Assets2025/blob/main/01_GET_ALL_VEHICLE.png?raw=true" width="400" /><br />

## Autor
| [<img src="https://avatars.githubusercontent.com/u/213133340?v=4" width=115><br><sub>José Hugo Saravia Chávez</sub>](https://github.com/i2512054/DAW-IDL1) |
| :---: |