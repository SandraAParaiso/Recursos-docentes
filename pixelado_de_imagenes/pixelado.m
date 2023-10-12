
% Dra. Sandra Arranz-Paraíso, 2023.
% Programa para pixelar imágenes acromáticas

clear all
close all

imagen = imread('Alan_Turing.jpg'); %Escribir el nombre de la imagen, por ejemplo mantis.jpg

nuevo_tamano = [512, 512];

% Recortar la imagen
[alto, ancho, ~] = size(imagen);

inicio_x = round((ancho - nuevo_tamano(2)) / 2) + 1;
fin_x = inicio_x + nuevo_tamano(2) - 1;
inicio_y = round((alto - nuevo_tamano(1)) / 2) + 1;
fin_y = inicio_y + nuevo_tamano(1) - 1;

imagen_recortada = imagen(inicio_y:fin_y, inicio_x:fin_x, :);

% Imagen en escala de grises
imagen = rgb2gray(imagen_recortada);

figure(2) 
subplot(2,1,2)
imshow(imagen, []); % Imagen original en escala de grises y recortada

% Pixelado de la imagen
tamano_cuadrado = 32;
[alto, ancho, ~] = size(imagen);

valores_medios = zeros(round(alto/tamano_cuadrado), round(ancho/tamano_cuadrado));

for i = 1:alto/tamano_cuadrado
    for j = 1:ancho/tamano_cuadrado
        roi = imagen((i-1)*tamano_cuadrado+1:i*tamano_cuadrado, (j-1)*tamano_cuadrado+1:j*tamano_cuadrado);
        valor_medio = mean(roi(:));
        valores_medios(i, j) = valor_medio;
        imagen((i-1)*tamano_cuadrado+1:i*tamano_cuadrado, (j-1)*tamano_cuadrado+1:j*tamano_cuadrado) = valor_medio;
    end
end

figure(1) 
imshow(imagen, []); % Imagen pixelada

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Filtrado paso bajo de la imagen

imagen_fft = fftshift(fft2(imagen)); %Transformada de Fourier

umbral = 10; % Filtrado paso bajo: eliminar las frecuencias mayores al umbral fijado.

% Filtrado paso bajo con filtro ideal
[m, n] = size(imagen);
filtro_paso_bajo = zeros(m, n);
centro = [m / 2, n / 2];
for i = 1:m
    for j = 1:n
        distancia = sqrt((i - centro(1))^2 + (j - centro(2))^2);
        if distancia <= umbral
            filtro_paso_bajo(i, j) = 1;
        end
    end
end

imagen_filtrada_fft = imagen_fft .* filtro_paso_bajo;

imagen_filtrada = ifft2(ifftshift(imagen_filtrada_fft)); % Transformada inversa de Fourier


figure(2)
subplot(2,1,1)
imshow(abs(imagen_filtrada), []); %Imagen filtrada (con filtro paso bajo)

