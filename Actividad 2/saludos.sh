# Consultando la API de github.
URL="https://api.github.com/users/"

# Ubicacion del archivo.
ubi="/tmp"
archivo="saludos.log"
fecha=$(date)
path="$ubi/$fecha/"


# Consultando datos al usuario.
echo 'Introduzca el usuario de github : '
# Guardamos el usuario en la variable.
read -r GITHUB_USER
# Mostrar el valor de la variable.
echo "Usuario github : $GITHUB_USER"
# Concatenamos la URL y el nombre del usuario.
API=$URL$GITHUB_USER
# Mostramos la concatenacion.
echo "$API"

id=$(curl -s "$API" | jq ."id") 
createdat=$(curl -s "$API" | jq ."created_at") 

logfile="Hola $GITHUB_USER, ID: $id, Cuenta fue creada el: $createdat"
echo "$logfile"

#nuevaruta
mkdir "$path"

logger -s "$logfile" > "$path$archivo"
echo "$logfile" >> "$path$archivo"

CRON_JOB="*/5 * * * * /home/dialjub/Escritorio"
(crontab -l ; echo "$CRON_JOB") | crontab -

echo ---------Fin del script.-------------
