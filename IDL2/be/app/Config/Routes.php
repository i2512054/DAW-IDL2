<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Home::index');
//RUTAS DE API PARA EL CRUD DE VEHICLES
$routes->resource('vehicles');
$routes->resource('categories');
$routes->resource('brands');
$routes->resource('colors');
$routes->resource('fuels');