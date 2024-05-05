clc;
clear all;
close all;

a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
c=input('Enter the value of c: ');

D=b^2-4*a*c;

if D > 0  
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    disp('Real and distinct roots:');
    disp(['x1 = ', num2str(x1)]);
    disp(['x2 = ', num2str(x2)]);
    
elseif D == 0
    x = -b / (2*a);
    disp('Real and equal roots:');
    disp(['x = ', num2str(x)]);

else
    realPart = -b / (2*a);
    imagPart = sqrt(abs(D)) / (2*a);
    disp('Complex roots:');
    disp(['x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i']);
    disp(['x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
end
