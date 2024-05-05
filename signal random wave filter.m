clc;
clear all;
close all;
fs = 200;
T = 1/fs;
t = 0:T:1-T;
f = 10;
w = 2*pi*f;
A = 15;
C = 10;

signal=A*sin(w*t);

signal2=A*cos(w*t);

noise=C*randn(size(t));

m=signal+noise;
d_lowpass = designfilt('lowpassfir', 'filterorder', 10, 'cutofffrequency', 15, 'samplerate', fs);
y_lowpass = filter(d_lowpass, m);
y_lowpass_zero_phase = filtfilt(d_lowpass, m);
d_highpass = designfilt('highpassfir', 'filterorder', 10, 'cutofffrequency', 2, 'samplerate', fs);
y_highpass = filter(d_highpass, m);
y_highpass_zero_phase = filtfilt(d_highpass, m);
figure;
subplot(4, 2, 1);
plot(t, signal, 'r', 'linewidth', 1.5);
title('1. Signal (Sin Wave)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 2);
plot(t, signal2, 'b', 'linewidth', 1.5);
title('2. Signal (Cos Wave)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 3);
plot(t, noise, 'g', 'linewidth', 1.5);
title('3. Noise');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 4);
plot(t, m, 'g', 'linewidth', 1.5);
title('4. Combined Signal (Noise + Signal)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 5);
plot(t, y_lowpass, 'linewidth', 1.5);
title('5. Low-pass Filtered Signal (Normal)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 6);
plot(t, y_lowpass_zero_phase, 'c', 'linewidth', 1.5);
title('6. Low-pass Filtered Signal (Zero-phase)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 7);
plot(t, y_highpass, 'r', 'linewidth', 1.5);
title('7. High-pass Filtered Signal (Normal)');
xlabel('Time');
ylabel('Amplitude');
subplot(4, 2, 8);
plot(t, y_highpass_zero_phase, 'linewidth', 1.5);
title('8. High-pass Filtered Signal (Zero-phase)');
xlabel('Time');
ylabel('Amplitude');