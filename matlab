clc;
clear;

% Given line impedances
z12 = 0.06 + 0.08j;
z23 = 0.04 + 0.12j;
z31 = 0 + 0.06j;

% Shunt admittances
y1 = 0 + 0.1j;
y2 = 0 + 0.121j;
y3 = 0 + 0.1j;

% Line admittances
y12 = 1 / z12;
y23 = 1 / z23;
y31 = 1 / z31;

% Diagonal elements
Y11 = y12 + y31 + y1;
Y22 = y12 + y23 + y2;
Y33 = y31 + y23 + y3;

% Off-diagonal elements
Y12 = -y12;
Y13 = -y31;
Y21 = -y12;
Y23 = -y23;
Y31 = -y31;
Y32 = -y23;

% Ybus matrix
Ybus = [Y11 Y12 Y13;
        Y21 Y22 Y23;
        Y31 Y32 Y33];

% Display Ybus
disp('Ybus =');
disp(Ybus);
