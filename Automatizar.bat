@echo off
set /p projectName=Nombre del proyecto: 

REM Crear carpeta del proyecto
mkdir %projectName%
cd %projectName%

REM Crear ambiente virtual
python -m venv .venv

REM Crear carpeta src con estructura MVC
mkdir src
cd src
mkdir model
mkdir view
mkdir controller

REM Crear archivos vacíos
type nul > app.py
type nul > model\model.py
type nul > view\view.py
type nul > controller\controller.py

cd ..

REM Activar el entorno virtual
call .venv\Scripts\activate

REM Actualizar pip dentro del entorno
python -m pip install --upgrade pip

REM Abrir en Visual Studio Code dentro del ambiente activado
code .
