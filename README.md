# Clean S7 - Script de Optimización (Android 6)

Este script elimina aplicaciones residuales en el Samsung S7. Su diseño toma como base el entorno generado por el método de root de jrkruse en XDA (`Root_Method_Rev_B/11_Bootloader_Using_Combo_Firmware`). Recomiendo el uso de `system_g935_vzw_103122.img`, ya que de este se baso todo el script, debido a que el mismo anula la funcionalidad de la red Verizon. El entorno de red T-MB carece de soporte oficial para este proceso.

## Características

* **Depuración masiva del sistema:** Elimina decenas de aplicaciones preinstaladas de Samsung, integraciones de Microsoft, servicios de operador y utilidades redundantes.
* **Preservación de servicios críticos:** Mantiene operativos los componentes de Google Mobile Services, el servicio de telefonía y mensajería SMS/MMS. Conserva los servicios IMS necesarios para el funcionamiento de los datos móviles.
* **Reemplazo del entorno gráfico:** Elimina el launcher nativo TouchWiz y anula los asistentes de configuración iniciales de Samsung y KNOX.
* **Integración de interfaz personalizada:** Instala Nova Launcher con permisos de aplicación privilegiada dentro de la ruta `/system/priv-app/`.
* **Gestión de archivos nativa:** Incorpora ZArchiver como aplicación de sistema estándar en la ruta `/system/app/`.
* **Gestión autónoma de particiones:** Ejecuta el montaje de las particiones `/data` y `/system` al iniciar la instalación. Desmonta ambas particiones de manera segura antes de finalizar.

## Requisitos previos

1. Obtén acceso root mediante el método del usuario jrkruse en los foros de XDA.
2. Hacer uso de `system_g935_vzw_103122.img` mediante las instrucciones de la guía original de XDA.
3. Flashea el archivo `xposed-v87.1-sdk23-arm64-custom-build-by-wanam-20161125.zip` desde tu entorno recovery (Paso opcional).

## Instrucciones de instalación

1. Inicia el sistema operativo de forma normal (Primer boot).
2. Instala la aplicación `XposedInstaller_by_dvdandroid_19_10_18.apk` provista en el repositorio (Paso opcional).
3. Abre la aplicación FlashFire y navega a la sección Wipe.
4. Selecciona estrictamente las siguientes casillas: 3rd party apps, Dalvik cache, Internal storage, Cache partition y Cache partition format.
5. Ejecuta el borrado y espera.
6. Reinicia el dispositivo en modo recovery.
7. Flashea el archivo `Clean.zip` de este repositorio para aplicar el script de limpieza.
8. Reinicia el dispositivo.

## Notas de atribución

El archivo base de este script de limpieza proviene de un usuario en los foros de XDA (No logre identificarlo). Este repositorio estructura y complementa el desarrollo original para facilitar su distribución.
