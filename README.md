# Clean S7 — Script de Optimización (Android 6)

⚠️ **ADVERTENCIA DE RESPONSABILIDAD**

Este script modifica archivos de sistema críticos. El usuario asume total responsabilidad por:
- Daño o corrupción de la tarjeta SD
- Dispositivo brickeado o no funcional
- Pérdida de datos
- Incompatibilidad con versiones de firmware no especificadas

El autor no proporciona garantía de ningún tipo ni se responsabiliza por consecuencias derivadas del uso de este script.

---

## Descripción

Script que elimina aplicaciones residuales en el Samsung S7 ejecutado sobre entorno generado por el método de root de jrkruse en XDA. Basado en `system_g935_vzw_103122.img` (anula funcionalidad de red Verizon). No compatible con entornos T-Mobile.

## Requisitos previos

1. Acceso root mediante el método de jrkruse (XDA forums)
2. Archivo `system_g935_vzw_103122.img` flasheado según instrucciones XDA
3. Batería del dispositivo por encima del 50%
4. Tarjeta SD formateada en NTFS con espacio mínimo para `system.img`
5. Archivos en la tarjeta SD:
   - `system_g935_vzw_103122.img`
   - `xposed-v87.1-sdk23-arm64-custom-build-by-wanam-20161125.zip`
   - `XposedInstaller_by_dvdandroid_19_10_18.apk`
   - `Clean.zip`

## Características

- **Depuración masiva:** Elimina decenas de aplicaciones preinstaladas (Samsung, Microsoft, operador)
- **Preservación de servicios críticos:** Mantiene GMS, telefonía, SMS/MMS e IMS para datos móviles
- **Reemplazo de launcher:** Elimina TouchWiz e instaladores de KNOX; instala Nova Launcher como aplicación privilegiada (`/system/priv-app/`)
- **Gestor de archivos:** Incorpora ZArchiver en `/system/app/`
- **Gestión automática de particiones:** Monta `/data` y `/system` al iniciar; desmonta de forma segura al finalizar

## Instrucciones de instalación

1. Inicia el dispositivo en modo normal (primer boot)
2. Instala `XposedInstaller_by_dvdandroid_19_10_18.apk` (opcional)
3. Abre FlashFire y accede a la sección **Wipe**
4. Marca estas casillas únicamente:
   - 3rd party apps
   - Dalvik cache
   - Internal storage
   - Cache partition
   - Cache partition format
5. Ejecuta el borrado y espera a que finalice
6. Reinicia en modo recovery
7. Flashea `Clean.zip` desde recovery
8. Reinicia el dispositivo

## Notas de atribución

El archivo base de este script de limpieza proviene de un usuario en los foros de XDA (No logre identificar el post). Este repositorio estructura y complementa el desarrollo original.
