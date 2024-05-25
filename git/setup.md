# Setup environment

Ejecutar el comando:

```bash
git config --global credential.helper store
```

Luego de ejecutar el comando, clonar un proyecto privado, ingresar username y personal token

Configurar la identidad:

```bash
git config --global user.name "Iron Man"
git config --global user.email micorreo@example.com
```

## Asociar una carpeta que ya tiene contenido a un repo

```bash
git init
git branch -M main
git remote add origin <https://username:PASSWORD@github.com/username/api-com-extandar-pyworker.git>
git add -A
git commit -m "First commit"
git push -u origin main
```
