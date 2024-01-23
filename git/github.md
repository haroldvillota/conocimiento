
## Iniciar el repositorio

git init

## Guardar la configuracion de la cuenta

git config --global credential.helper store

# Asociar una carpeta que ya tiene contenido a un repo

git init
git branch -M main
git remote add origin https://disarrollo:PASSWORD@github.com/disarrollo/api-com-extandar-pyworker.git
git add -A
git commit -m "First commit"
git push -u origin main
