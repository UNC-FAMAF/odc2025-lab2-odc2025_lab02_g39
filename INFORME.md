Nombre y apellido 
Integrante 1: Fabrizio Joaquin Simonian
Integrante 2: Trinidad Seleme Neild
Integrante 3: Patricio Tobias Rivadeneira
Integrante 4: Bruno Amaya Peña

Descripción ejercicio 1: La escena representa una moto futurista inspirada en TRON, recorriendo las zonas limítrofes de la Web. Al fondo se observa una nave vigilante y la silueta de la Web, simbolizando el corazón del ciberespacio.

Descripción ejercicio 2: Misma escena que el ejercicio 1, pero animando la nave, los edificios y el suelo, dandole vida al ciberespacio y al viaje del programa (el piloto).

Justificación instrucciones ARMv8: 
.macro: Se utilizaron macros para simplificar las llamadas a las rutinas de dibujo, permitiendo invocarlas en una sola línea de código y pasándoles directamente los valores deseados para cada figura. Esto mejora la legibilidad y reduce errores al reutilizar código repetitivo.
ldr: Se empleó la instrucción ldr en lugar de ldur debido a su mayor eficiencia en la carga de datos desde memoria cuando se usan desplazamientos inmediatos.
str: Se utilizó la instrucción str en lugar de stur por el mismo motivo: ofrece una forma más eficiente de almacenar datos en memoria con desplazamientos inmediatos.
