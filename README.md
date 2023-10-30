# Recursos-docentes

## Ficheros de Matlab y Python empleados en las prácticas de Psicología de la Percepción en el Grado de Psicología de la Universidad Complutense de Madrid.

_Cualquier sugerencia de mejora es bienvenida._

Al ejecutar el código del fichero 'aspectos_basicos_sonido.m' en Matlab se representan gráficamente tres tonos puros (Figura 1) y su respectivo espectro de amplitud (Figura 2). Además, siguiendo el Teorema de Fourier, se reconstruye la señal original (un sonido complejo) mediante la suma de los tres tonos puros (véase la Figura 3). Finalmente, en la Figura 4 se representa el espectro de amplitud del sonido complejo. Nótese que el sonido complejo está formado por tres armónicos, siendo su frecuencia fundamental o primer armónico 1 Hz. Aclaración: se han representado frecuencias temporales muy bajas [1-3hz] con fines didácticos.

La carpeta 'pixelado_de_imagenes' contiene dos imágenes de ejemplo para poder ejecutar el código 'pixelado.m'. La imagen 'alan_turing.jpg' va acompañada de su licencia de uso 'licence_Alan_Turing_image.txt'. Si se desea pixelar otra imagen hay que incluirla dentro de la carpeta y modificar la línea de código 'imagen = imread('Alan_Turing.jpg');' sustituyendo el nombre de la imagen de ejemplo 'Alan_Turing.jpg' por el de la imagen que se desea pixelar. Al ejecutar el código aparecen dos figuras. En la Figura 1 se muestra la imagen pixelada. En la parte superior de la Figura 2 aparece la imagen pixelada de la Figura 1 con un filtrado paso bajo, facilitando el reconocimiento de la imagen puesto que se eliminan las frecuencias espaciales altas que añade el pixelado. En la parte inferior de la Figura 2 aparece la imagen original en escala de grises y recortada a un tamaño de 512x512 píxeles.

El archivo 'Ley potencial de Stevens para la sonoridad.ipynb' permite predecir cuál será la sonoridad (medida en SONES) en función del nivel de presión sonora (dB) mediante la estimación de la constante (b) y el exponente (a) de la Ley Potencial de Stevens.
