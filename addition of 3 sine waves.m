clc;
clear all;
close all;
t = 0:0.01:10;
sin1=sin(2*pi*0.1*t);  
sin2=sin(2*pi*0.2*t);  
sin3=sin(2*pi*0.3*t);  
combined_wave = sin1+sin2+sin3;
figure;
subplot(2, 1, 1);
plot(t, sin1, 'r', 'LineWidth', 1.5);
hold on;
plot(t, sin2, 'b', 'LineWidth', 1.5);
plot(t, sin3, 'g', 'LineWidth', 1.5);
title('Sine Waves');
xlabel('Time');
ylabel('Amplitude');
subplot(2, 1, 2);
plot(t, combined_wave, 'k', 'LineWidth', 1.5);
title('Combined Sine Waves');
xlabel('Time');
ylabel('Amplitude');
suptitle('Three Sine Waves and their Combination');
