# Waves — Game Off 2025

El juego Waves fue desarrollado en Godot 4 para la Game Off.


## 🎮 Concepto básico del juego

Waves es un juego donde:
- Aparece un punto de inicio (verde) en una posición aleatoria.
- Después de 0.30 segundos, este punto lanza una onda (temporalmente representada como una línea recta) en dirección a un punto objetivo (amarillo) que no será visible durante el gameplay.
- También aparece un punto meta (morado), visible y ubicado aleatoriamente.
- El objetivo del jugador será esquivar, reaccionar o actuar en función de estas ondas (definiremos la mecánica exacta más adelante).

## 📁 Estructura del proyecto
```
Waves/
│── scenes/
│   ├── Main.tscn
│   ├── StartPoint.tscn
│   ├── TargetPoint.tscn
│   └── EndPoint.tscn
│
│── scripts/
│   ├── Main.gd
│   ├── StartPoint.gd
│   ├── Wave.gd
│   └── EndPoint.gd
│
└── assets/
    └── (sprites, sonidos, etc.)
```
