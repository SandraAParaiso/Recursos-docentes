%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Material docente de la asignatura Psicolog�a de la Percepci�n. Dra. Sandra Arranz-Paraiso. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Es importante liberar memoria antes de nada, por lo que:
clear all % 1. Borramos todas las variables que existen en el espacio de trabajo actual.
close all % 2. Cerramos todas las figuras o ventanas de gr�ficos que puedan estar abiertas en ese momento.

%______________________________________________________________________________________________________________________________%

% Aspectos b�sicos del sonido
%______________________________________________________________________________________________________________________________%


% Tonos puros: generaci�n de tres funciones sinusoidales diferentes utilizando ciertos par�metros. Puede modificar los par�metros a conveniencia.


%Crear un vector de tiempo con una alta resoluci�n temporal para muestrear las se�ales sinusoidales en el rango de tiempo de 0 a 4 segundos.
t = [0:0.001:4]; %secuencia de valores de tiempo que van desde 0 hasta 4 segundos, increment�ndose en pasos de 0.001 segundos. 

A = 0.1; % Amplitud
frec = 1; % Frecuencia

A2 = 0.3; % Amplitud
frec2 = 2; % Frecuencia

A3 = 0.9; % Amplitud
frec3 = 3; % Frecuencia

fase = 0; % Fase. Se emplear� la misma fase en los tres tonos puros. Puede modificarse.

%Se calculan las tres funciones sinusoidales:
f1 = (A*cos(2*pi*frec*t+fase));
f2 = (A2*cos(2*pi*frec2*t+fase));
f3 = (A3*cos(2*pi*frec3*t+fase));


% Representaci�n gr�fica

figure(1) % Genera la figura 1. Se representar�n tres tonos puros.

% Representaci�n gr�fica del primer tono puro
subplot(1,3,1) % Crea una cuadr�cula de gr�ficos y selecciona un subgr�fico espec�fico en esa cuadr�cula, en este caso se crea una cuadr�cula de 1 fila y 3 columnas y se selecciona el primer subgr�fico (el de la izquierda) de esa cuadr�cula.
plot(t,f1,'b-','LineWidth',2) % Representa la funci�n f1 en funci�n del tiempo t. En este caso, 'b-' indica una l�nea azul s�lida. El argumento 'LineWidth',2 establece el grosor de la l�nea del gr�fico en 2 unidades.
axis square % Fuerza la relaci�n 1:1 entre las escalas de los ejes x e y, mejorando la visualizaci�n. Es decir, muestra un aspecto cuadrado en los ejes del gr�fico.
axis([0 2 -1 1]) % Define los l�mites de los ejes en un gr�fico. Los argumentos [xmin xmax ymin ymax] especifican los valores m�nimos y m�ximos para el eje x y el eje y, respectivamente.
grid on % Muestra una cuadr�cula en el gr�fico.
title('Tono puro 1') % A�ade un t�tulo al gr�fico.
xlabel('Tiempo (s)') % A�ade un t�tulo al eje x.
ylabel('Amplitud relativa') % A�ade un t�tulo al eje y.
ax = gca; % Permite acceder y modificar propiedades del eje. La abreviatura "gca" significa "get current axis" (obtener el eje actual).
ax.LineWidth = 2; % Cambia el grosor de las l�neas de los ejes en la figura.
ax.FontSize = 20; % Cambia a 20 puntos el tama�o de las etiquetas de los ejes, los t�tulos y otros elementos de texto relacionados con el eje.

% Representaci�n gr�fica del segundo tono puro
subplot(1,3,2)
plot(t,f2,'r-','LineWidth',2) % Representa la funci�n f2 en funci�n del tiempo t.
axis square 
axis([0 2 -1 1])
grid on
title('Tono puro 2')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

% Representaci�n gr�fica del tercer tono puro
subplot(1,3,3)
plot(t,f3,'g-','LineWidth',2) % Representa la funci�n f3 en funci�n del tiempo t.
axis square 
axis([0 2 -1 1])
grid on 
title('Tono puro 3')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;


figure(2) % Genera la figura 2. Representaci�n gr�fica del espectro de amplitud de los tres tonos puros.

subplot(1,3,1)
plot([frec frec],[0 A],'b-','LineWidth',2) % Representa el espectro de amplitud del primer tono puro.
axis square 
title('Espectro de amplitud. Tono puro 1')
axis([0 4 0 1])
xlabel('Frecuencia temporal (Hz)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

subplot(1,3,2)
plot([frec2 frec2],[0 A2],'r-','LineWidth',2) % Representa el espectro de amplitud del segundo tono puro.
axis square 
title('Espectro de amplitud. Tono puro 2')
axis([0 4 0 1])
xlabel('Frecuencia temporal (Hz)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

subplot(1,3,3)
plot([frec3 frec3],[0 A3],'g-','LineWidth',2) % Representa el espectro de amplitud del tercer tono puro.
axis square 
title('Espectro de amplitud. Tono puro 3')
axis([0 4 0 1])
xlabel('Frecuencia temporal (Hz)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;


figure(3) % Genera la figura 3. Representaci�n gr�fica del tono complejo formado por los tres tonos puros anteriores.

plot(t,f1+f2+f3,'k-','LineWidth',2) % Representa el tono complejo (mediante la suma de f1, f2 y f3) en funci�n del tiempo t. Se suma f1, f2 y f3 puesto que, siguiendo el Teorema de Fourier, la suma de senos y cosenos con diferentes frecuencias (arm�nicos) y con coeficientes espec�ficos permite reconstruir la se�al original, en este caso el sonido complejo formado por f1, f2 y f3.
axis square 
axis([0 2 -2 2])
grid on 
title('Representaci�n temporal de un sonido complejo')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
axis square
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

figure(4) % Genera la figura 4. Representaci�n gr�fica del espectro de amplitud del sonido complejo.

plot([frec frec],[0 A],'b-','LineWidth',2) % Representa la amplitud de la frecuencia fundamental o primer arm�nico del sonido complejo.
hold on
plot([frec2 frec2],[0 A2],'r-','LineWidth',2) % Representa la amplitud del segundo arm�nico del sonido complejo. N�tese que la frecuencia es el doble de la frecuencia fundamental o primer arm�nico.
hold on
plot([frec3 frec3],[0 A3],'g-','LineWidth',2) % Representa la amplitud del tercer arm�nico del sonido complejo. N�tese que la frecuencia es el triple de la frecuencia fundamental o primer arm�nico.
axis square 
title('Espectro de amplitud de un sonido complejo')
axis([0 4 0 1])
xlabel('Frecuencia temporal (Hz)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

