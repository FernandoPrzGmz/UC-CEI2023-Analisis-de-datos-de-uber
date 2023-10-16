# UC-CEI2023 Análisis de datos de uber

## Descripción

Este proyecto forma parte de los recursos desarrollados para el taller: "Explorando datos a través de la web: Introducción a Django para la ingeniería en datos" del Congreso de Estudiantes de Ingenierías 2023 de la universidad del Caribe.


## Instrucciones de uso

1. Construir la imagen de docker

```bash
sudo docker build -t cei2023-jupyter .
```

2. Contenedor
```bash
sudo docker run \
    --name cei2023-jupyter \
    -p 8888:8888 \
    -d cei2023-jupyter
```
