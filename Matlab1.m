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

%% charting

%% grafico basico
clc;clear;
x=[1 3 5 7 9 11 13 15 17 19 21];
y=[100 90 80 10 20 30 50 60 70 40 110];
plot(x,y)

%% grafico 2
clc;clear;
x=[1 3 5 7 9 11 13 15 17 19 21];
y=[100 90 80 10 20 30 50 60 70 40 110];
plot(x,y,'o')

%% grafico grid
clc;clear;
x=[1 3 5 7 9 11 13 15 17 19 21];
y=[100 90 80 10 20 30 50 60 70 40 110];
plot(x,y.^2)
grid

%% grafico barras
clc;clear;
x=[1 3 5 7 9 11 13 15 17 19 21];
y=[100 90 80 10 20 30 50 60 70 40 110];
bar(x,y)
grid

%% grafico 
clc;clear;
figure1=figure;
x=0:0.5:4;
y_modelo=x/2+0.5;
y_medidos=[0.39 0.66 1.07 1.15 1.43 1.69 1.90 2.34 2.55];
plot(x,y_modelo,'-',x,y_medidos,'o')
legend('datos modelo','dato experimental')
grid
title('Valores de cortisol diario')
xlabel('tiempo(horas)')
ylabel('concentración sérica(ul/l)')
saveas(figure1,'results/grafico.jpg')


%% grafico 7

clc;clear;
x=0:0.5:4;
y_modelo=x/2+0.5;
y_medidos=[0.39 0.66 1.07 1.15 1.43 1.69 1.90 2.34 2.55];
y_error=y_medidos-y_modelo;
errorbar(x,y_modelo,y_error)
legend('datos modelo','dato experimental')
grid
title('Valores de cortisol diario')
xlabel('tiempo(horas)')
ylabel('concentración sérica(ul/l)')

%% multigrafico

clc;clear;
figure1=figure;
subplot(1,2,1);
x=0:0.5:4;
y_modelo=x/2+0.5;
y_medidos=[0.39 0.66 1.07 1.15 1.43 1.69 1.90 2.34 2.55];
plot(x,y_modelo,'-',x,y_medidos,'o')
legend('datos modelo','dato experimental','fontsize',8)
grid
title('Valores de cortisol pre examen','fontsize',16)
xlabel('tiempo(horas)')
ylabel('concentración sérica(ul/l)','fontsize',12)

subplot(1,2,2);
x=0:0.5:4;
y_modelo=x/2+0.5;
y_medidos=[0.39 0.66 1.07 1.15 1.43 1.69 1.90 2.34 2.55];
y_error=y_medidos-y_modelo;
errorbar(x,y_modelo,y_error)
legend('datos modelo','dato experimental')
grid
title('Valores de cortisol por hora')
xlabel('tiempo(horas)')
ylabel('concentración sérica(ul/l)')
saveas(figure1, 'results/multigrafico.jpg')
