# Parte 1: Creacion del script
## 1. Creamos el script con el siguiente contenido:
![Imagen 1](./img/img4.png)

## 1.1 Verificacion de permisos para el script
![Imagen 2](./img/img5.png)

## 2. Creacion del servicio
## 2.1. Nos posicionamos en el directorio /system
![Imagen 3](./img/img1.png)

## 2.2 Contenido del servicio:
![Imagen 4](./img/img2.png)

## 2.3 Verificacion del servicio creado:
![Imagen 5](./img/img3.png)

## 3. Habilitando el servicio
```bash
sudo systemctl enable saludo.service
```
![Imagen 6](./img/img6.png)

## 4. Iniciando el servicio
```bash
sudo systemctl start saludo.service
```
![Imagen 7](./img/img7.png)

## 5. Verificando el servicio
```bash
sudo systemctl status saludo.service
```
![Imagen 8](./img/img8.png)
