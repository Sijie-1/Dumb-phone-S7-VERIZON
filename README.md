# Clean S7 - Script de Optimización (Android 6)

[cite_start]Este script elimina aplicaciones residuales en el Samsung S7[cite: 1]. Su diseño toma como base el entorno generado por el método de root de *jrkruse* en XDA (Root_Method_Rev_B/11_Bootloader_Using_Combo_Firmware). El uso de la imagen `system_g935_vzw_103122.img` anula la funcionalidad de la red Verizon. El entorno de red TMB carece de soporte oficial para este proceso.

## Características

* [cite_start]**Depuración masiva del sistema:** Elimina decenas de aplicaciones preinstaladas de Samsung, integraciones de Microsoft, servicios de operador y utilidades redundantes[cite: 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].

* [cite_start]**Preservación de servicios críticos:** Mantiene operativos los componentes de Google Mobile Services, el servicio de telefonía y mensajería SMS/MMS[cite: 15]. [cite_start]Conserva los servicios IMS necesarios para el funcionamiento de los datos móviles[cite: 16].

* [cite_start]**Reemplazo del entorno gráfico:** Elimina el launcher nativo TouchWiz y anula los asistentes de configuración iniciales de Samsung y KNOX[cite: 16].

* [cite_start]**Integración de interfaz personalizada:** Instala Nova Launcher con permisos de aplicación privilegiada dentro de la ruta `/system/priv-app/`[cite: 18, 19].

* [cite_start]**Gestión de archivos nativa:** Incorpora ZArchiver como aplicación de sistema estándar en la ruta `/system/app/`[cite: 20, 21].

* [cite_start]**Gestión autónoma de particiones:** Ejecuta el montaje de las particiones `/data` y `/system` al iniciar la instalación[cite: 1]. [cite_start]Desmonta ambas particiones de manera segura antes de finalizar[cite: 21, 22].

## Requisitos previos

1.  Obtén acceso root mediante el método del usuario *jrkruse* en los foros de XDA.

2.  Flashea el archivo `system_g935_vzw_103122.img` mediante las instrucciones de la guía original.

3.  Flashea el archivo `xposed-v8.1.zip` desde tu entorno recovery (Paso opcional).

## Instrucciones de instalación

1.  Inicia el sistema operativo de forma normal.

2.  Instala la aplicación `xposed.apk` provista en el repositorio.

3.  Configura el entorno de Xposed según tus preferencias.

4.  Abre la aplicación FlashFire y navega a la sección Wipe.

5.  Selecciona estrictamente las siguientes casillas: *3rd party apps*, *Dalvik cache*, *Internal storage*, *Cache partition* y *Cache partition format*.

6.  Ejecuta el borrado y reinicia el dispositivo en modo recovery (TWRP).

7.  Flashea el archivo ZIP de este repositorio para aplicar el script de limpieza.

8.  [cite_start]Reinicia el dispositivo[cite: 22].

## Notas de atribución

El archivo base de este script de limpieza proviene de un usuario no identificado en los foros de XDA. Este repositorio estructura y complementa el desarrollo original para facilitar su distribución.
