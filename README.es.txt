Uso del KIT de desarrollo de UTUTO XS
=====================================

* Editar el archivo "compile.list/compile.list.pkg".
* Poner en éste el/los paquete/s que se van a compilar en la misma linea y dejando un espacio entre los nombres.
  EJ.: kde-meta lxde-meta gimp
* Ejecutar el script "00-compile-list.sh". Este script buscará las dependencias y creará los scripts para compilar
  el/los paquete/s. Serán creados dentro de "compile.list" conteniendo el nombre del paquete como final del nombre
  del archivo. Un "compile.list.XXXXX" por cada paquete a compilar.
* Ejecutar "01-compile-all.sh" para crear los binarios que serán puestos en el directorio "packages"
  separados por optimizacion. Si el proceso da errores se detendrá y esperará al usuario.
* Ejecute "03-busca-deps.sh" para crear los pre-archivos para uget para cada paquete con sus dependencias que 
  se crearán en el directorio "scripts".
* Ejecute "04-crea-uget.sh" para crear los archivos de paquetes-recetas para Uget.
* Para crear un backup de lo compilado y poner el KIT en el modo inicial ejecute "05-fin-kit-proceso.sh".


UTUTO XS Devel Team
