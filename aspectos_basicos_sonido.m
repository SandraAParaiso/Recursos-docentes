%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Material docente de la asignatura Psicología de la Percepción. Dra. Sandra Arranz-Paraiso. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Es importante liberar memoria antes de nada, por lo que:
clear all % 1. Borramos todas las variables que existen en el espacio de trabajo actual.
close all % 2. Cerramos todas las figuras o ventanas de gráficos que puedan estar abiertas en ese momento.

%______________________________________________________________________________________________________________________________%

% Aspectos básicos del sonido
%______________________________________________________________________________________________________________________________%


% Tonos puros: generación de tres funciones sinusoidales diferentes utilizando ciertos parámetros. Puede modificar los parámetros a conveniencia.


%Crear un vector de tiempo con una alta resolución temporal para muestrear las señales sinusoidales en el rango de tiempo de 0 a 4 segundos.
t = [0:0.001:4]; %secuencia de valores de tiempo que van desde 0 hasta 4 segundos, incrementándose en pasos de 0.001 segundos. 

A = 0.1; % Amplitud
frec = 1; % Frecuencia

A2 = 0.3; % Amplitud
frec2 = 2; % Frecuencia

A3 = 0.9; % Amplitud
frec3 = 3; % Frecuencia

fase = 0; % Fase. Se empleará la misma fase en los tres tonos puros. Puede modificarse.

%Se calculan las tres funciones sinusoidales:
f1 = (A*cos(2*pi*frec*t+fase));
f2 = (A2*cos(2*pi*frec2*t+fase));
f3 = (A3*cos(2*pi*frec3*t+fase));


% Representación gráfica

figure(1) % Genera la figura 1. Se representarán tres tonos puros.

% Representación gráfica del primer tono puro
subplot(1,3,1) % Crea una cuadrícula de gráficos y selecciona un subgráfico específico en esa cuadrícula, en este caso se crea una cuadrícula de 1 fila y 3 columnas y se selecciona el primer subgráfico (el de la izquierda) de esa cuadrícula.
plot(t,f1,'b-','LineWidth',2) % Representa la función f1 en función del tiempo t. En este caso, 'b-' indica una línea azul sólida. El argumento 'LineWidth',2 establece el grosor de la línea del gráfico en 2 unidades.
axis square % Fuerza la relación 1:1 entre las escalas de los ejes x e y, mejorando la visualización. Es decir, muestra un aspecto cuadrado en los ejes del gráfico.
axis([0 2 -1 1]) % Define los límites de los ejes en un gráfico. Los argumentos [xmin xmax ymin ymax] especifican los valores mínimos y máximos para el eje x y el eje y, respectivamente.
grid on % Muestra una cuadrícula en el gráfico.
title('Tono puro 1') % Añade un título al gráfico.
xlabel('Tiempo (s)') % Añade un título al eje x.
ylabel('Amplitud relativa') % Añade un título al eje y.
ax = gca; % Permite acceder y modificar propiedades del eje. La abreviatura "gca" significa "get current axis" (obtener el eje actual).
ax.LineWidth = 2; % Cambia el grosor de las líneas de los ejes en la figura.
ax.FontSize = 20; % Cambia a 20 puntos el tamaño de las etiquetas de los ejes, los títulos y otros elementos de texto relacionados con el eje.

% Representación gráfica del segundo tono puro
subplot(1,3,2)
plot(t,f2,'r-','LineWidth',2) % Representa la función f2 en función del tiempo t.
axis square 
axis([0 2 -1 1])
grid on
title('Tono puro 2')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

% Representación gráfica del tercer tono puro
subplot(1,3,3)
plot(t,f3,'g-','LineWidth',2) % Representa la función f3 en función del tiempo t.
axis square 
axis([0 2 -1 1])
grid on 
title('Tono puro 3')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;


figure(2) % Genera la figura 2. Representación gráfica del espectro de amplitud de los tres tonos puros.

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


figure(3) % Genera la figura 3. Representación gráfica del tono complejo formado por los tres tonos puros anteriores.

plot(t,f1+f2+f3,'k-','LineWidth',2) % Representa el tono complejo (mediante la suma de f1, f2 y f3) en función del tiempo t. Se suma f1, f2 y f3 puesto que, siguiendo el Teorema de Fourier, la suma de senos y cosenos con diferentes frecuencias (armónicos) y con coeficientes específicos permite reconstruir la señal original, en este caso el sonido complejo formado por f1, f2 y f3.
axis square 
axis([0 2 -2 2])
grid on 
title('Representación temporal de un sonido complejo')
xlabel('Tiempo (s)')
ylabel('Amplitud relativa')
axis square
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

figure(4) % Genera la figura 4. Representación gráfica del espectro de amplitud del sonido complejo.

plot([frec frec],[0 A],'b-','LineWidth',2) % Representa la amplitud de la frecuencia fundamental o primer armónico del sonido complejo.
hold on
plot([frec2 frec2],[0 A2],'r-','LineWidth',2) % Representa la amplitud del segundo armónico del sonido complejo. Nótese que la frecuencia es el doble de la frecuencia fundamental o primer armónico.
hold on
plot([frec3 frec3],[0 A3],'g-','LineWidth',2) % Representa la amplitud del tercer armónico del sonido complejo. Nótese que la frecuencia es el triple de la frecuencia fundamental o primer armónico.
axis square 
title('Espectro de amplitud de un sonido complejo')
axis([0 4 0 1])
xlabel('Frecuencia temporal (Hz)')
ylabel('Amplitud relativa')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;

