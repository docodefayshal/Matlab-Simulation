clc;
clear all;
close all;
A_amplitude=input('Enter the Amplitude of the Sine wave A:');
B_amplitude=input('Enter the Amplitude of the Sine wave B:');
frequency=input('Enter the Frequency f:');
phase_difference=input('Enter the Phase difference Q:');
t=0:0.02:1;
omega=2*pi*frequency;
A_signal=A_amplitude*sin(omega*t+phase_difference);
B_signal=B_amplitude*cos(omega*t-phase_difference);
C_signal=A_signal.*B_signal;
figure;
subplot(3, 1, 1);
plot(t, A_signal, 'm', 'linewidth', 1.5); 
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave Signal');
subplot(3, 1, 2);
plot(t, B_signal, 'g', 'linewidth', 1.5); 
xlabel('Time');
ylabel('Amplitude');
title('Cosine Wave Signal');
subplot(3, 1, 3);
plot(t, C_signal, 'c', 'linewidth', 1.5); xlabel('Time');
ylabel('Amplitude');
title('Multiplication of the Two Above Signals (A.B)');
