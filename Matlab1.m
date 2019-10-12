%% Basics
clc; clear;
num_muestras=1000;
num_intentos=25;
total_muestras=num_muestras*num_intentos;
fprintf('El numero de muestras es: %d',num_muestras);
fprintf('\n');
fprintf('El total de muestras es: %d',total_muestras);
%% Arrays
clc; clear;
%vector
temperaturas=[25 18 20 17 22 23 27];
temperatura_miercoles=temperaturas(3);
fprintf('La temperatura del miércoles es: %d',temperatura_miercoles);
%% matrix_manual
clc; clear;
glicemia=[100 89 110 103 95 120 115;
          103 101 87 96 99 101 98;
          89 99 108 110 105 100 95];
disp(glicemia);
glicemia_miercoles_semana1=glicemia(1,3);
glicemia_todos_miercoles=glicemia(:,3);
glicemia_dias_habiles=glicemia(:,1:5);
glicemia_todas_menos_jueves=glicemia(:,[1 2 3 5])
glicemia_todas_menos_jueves=glicemia(:,[1:3 5:7])
%% matrix random
clc; clear;
dados=rand(8);
disp(dados);
size(dados);
fprintf('Suma vertical');
sum(dados,1)
fprintf('Suma horizontal');
sum(dados,2)
fprintf('Promedio vertical');
mean(dados,1)
fprintf('Promedio horizontal');
mean(dados,2)
std(dados,0,1)
std(dados,0,2)
%% Image
clc; clear;
noise=int8(floor(255*rand(480,640)));
mujer=int8(imread('images/grace.jpg'));
mujer_parcial=mujer(100:250,200:350);
subplot(1,3,1);
imshow(noise);
subplot(1,3,2);
imshow(mujer);
subplot(1,3,3);
imshow(mujer+noise);
%% save data 
% creando matriz de 300 filas y 6 columnas
clc; clear;
datos=100*rand(300,6);
csvwrite('data/pacientes.csv',datos);
%% load data
% leer datos desde un archivo externo
clc; clear;
datos_externos=csvread('data/pacientes.csv');
datos_externos(1:15,:);
mean(datos_externos,1);
%% forloops

%% forloops numerico
clc; clear;
resultados_acumulados={}
for temperatura=1:10
    temp_converted=temperatura*2.8;
    riesgo_enfermedad=temp_converted*3;
    fprintf('la temperatura convertida es: %.1f\n', temp_converted);
    fprintf('el riesgo de enfermedad es: %.1f\n', riesgo_enfermedad);
    %resultados_acumulados={resultados_acumulados, sprintf('la temperatura convertida es: %.1f', temp_converted)};
end
%% forloops numerico 2
clc; clear;
for temperatura=[10 15 22 18 26 11 25 21]
    temp_converted=temperatura*2.8;
    riesgo_enfermedad=temp_converted*3;
    fprintf('la temperatura convertida es: %.1f\n', temp_converted);
    fprintf('el riesgo de enfermedad es: %.1f\n', riesgo_enfermedad);
end
%% forloops numerico 3
clc; clear;
for temperatura=1:0.12:5
    if temperatura>3.5 & temperatura<4
       fprintf('la temperatura es: %.2f\n', temperatura);
    end
end   
    
% cómo guardar estos resultados en un archivo
% debe crearse un arreglo que vaya acumulando los resultados
% ese arreglo debe guardarse en un archivo

%% forloops strings
clc; clear;
for sentence='hoy el día está';
    disp(sentence);
end

%% forloops word elements
clc; clear;
for sentence={'hoy','el','día','está'}
    disp(sentence);
end