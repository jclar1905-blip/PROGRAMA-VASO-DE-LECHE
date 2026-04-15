PROGRAMA DEL VASO DE LECHE - VERSION WEB V1.3

USUARIO INICIAL: pvl
CONTRASENA INICIAL: 2026
CONTRASENA ADMINISTRAR MESES: J0el1905

USO LOCAL:
1. Descomprime la carpeta.
2. Ejecuta iniciar_web.bat
3. Abre http://127.0.0.1:5050

RESPALDO AUTOMATICO:
- El sistema crea respaldos ZIP automaticamente cuando:
  * cambias la contrasena
  * subes una pecosa o acta
  * actualizas el stock
  * confirmas recojo de un comite
- Los respaldos se guardan en la carpeta data/backups.
- Puedes descargar el ultimo respaldo desde el panel.

PUBLICAR EN INTERNET REAL CON RENDER:
1. Sube esta carpeta a un repositorio de GitHub.
2. En Render crea un Web Service desde ese repositorio.
3. Usa los valores:
   Build Command: pip install -r requirements.txt
   Start Command: gunicorn app:app
4. Agrega un Persistent Disk y monta en:
   /opt/render/project/src/persistent
5. Configura la variable de entorno:
   PVL_DATA_DIR=/opt/render/project/src/persistent
6. Despliega. Render te dara un enlace publico https://...onrender.com

IMPORTANTE:
- Para que no se pierdan base de datos ni archivos subidos, el hosting debe usar almacenamiento persistente.
- Si quieres un dominio propio, lo agregas despues en el panel del hosting.
