## Proyecto para Alitaware - Examen

Proyecto realizado por Sebastián Barcatt Mirande (sbarcatt@gmail.com) - 3814147560

## Modelo de Base de datos

![Modelo de BD](https://raw.githubusercontent.com/sebibm/alitaware/master/Captura%20de%20pantalla%202020-09-19%20a%20la(s)%2001.01.21.png)

[Base de datos para importar](https://raw.githubusercontent.com/sebibm/alitaware/master/alitaware.sql)



## Aclaracion Punto 3 de la consigna

Las bases de datos ya habian sido creadas en los puntos 1 y 2 por lo tanto se crearon 2 nuevas migraciones que modificaban las tablas: suscriptor y suscriptor_team agregando los campos longitud y latitud


## Valor agregado

Ademas de la creación de las BD solicitadas se agregaron todos los modelos, tablas y migraciones de la tabla service.

Todas las tablas cuentan con sus correspondiente modelo, seeder y migración. 

## Pasos para ejecutar el proyecto:

    git clone git@github.com:sebibm/alitaware.git
    cd alitaware
    composer install
    php artisan migrate:fresh --seed o importar BD
    php artisan serve


> Creado por Sebastian Barcatt Mirande 
