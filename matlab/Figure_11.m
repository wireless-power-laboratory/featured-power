% January 2011
% Tesla Resonator plus C and R - Maximum Efficiency
% Science Paper, Figure 12

% Circuit characteristics
V = 1.0;
I = 10.1*10^-3;
Ipeak = 0.5*I^2;
P = V*I;

% Calculate k:
Lst = 62.40*10^-6; % H (Transmitter secondary)
Lsr = 61.68*10^-6; % H (Receiver secondary)
M = 61.04*10^-6; % H
%w = 
% k = (wM)/2*((Lst*Lsr)^0.5) %MIT
k = M/sqrt(Lst*Lsr);

% And gamma:
R0 = 1.88; % Ohms (Ohmic resistance)
Rr = P/(I^2)*3.5;
gamma = (R0+Rr)/4*(Lst + Lsr);

% And the qualities of the transmitter and receiver
Qt = 175;
Qr = 175;

% Therefore, the efficiency is
maxN = k/gamma;

% at a distance, the dissipation measured per unit:
uL1 = (maxN + 4.5)/100;
uL2 = (maxN + 1.5/1.01)/100;
uL3 = (maxN/1.03)/100;
uL4 = (maxN/1.07)/100;
uL5 = (maxN/1.12)/100;
uL6 = (maxN/1.19)/100;
uL7 = (maxN/1.25)/100;
uL8 = (maxN/1.35)/100;
uL9 = (maxN/1.45)/100;
uL10 = (maxN/1.6)/100;
uL11 = (maxN/1.75)/100;
uL12 = (maxN/1.94)/100;
% Plus 5% C, 0 R (BLACK)
vL1 = (maxN + 4.5)/100;
vL2 = (maxN + 1.5/1.1)/100;
vL3 = (maxN/1.02)/100;
vL4 = (maxN/1.06)/100;
vL5 = (maxN/1.11)/100;
vL6 = (maxN/1.18)/100;
vL7 = (maxN/1.24)/100;
vL8 = (maxN/1.35)/100;
vL9 = (maxN/1.43)/100;
vL10 = (maxN/1.62)/100;
vL11 = (maxN/1.74)/100;
vL12 = (maxN/1.93)/100;
% Plus 10% C, 1% R (MAGENTA)
wL1 = (maxN + 4.5)/100;
wL2 = (maxN + 1.5/1.1)/100;
wL3 = (maxN/1.02)/100;
wL4 = (maxN/1.05)/100;
wL5 = (maxN/1.10)/100;
wL6 = (maxN/1.16)/100;
wL7 = (maxN/1.22)/100;
wL8 = (maxN/1.33)/100;
wL9 = (maxN/1.41)/100;
wL10 = (maxN/1.58)/100;
wL11 = (maxN/1.71)/100;
wL12 = (maxN/1.9)/100;
% Plus 15% C, 2% R (RED)
xL1 = (maxN + 4.5)/100;
xL2 = (maxN + 1.5/1.1)/100;
xL3 = (maxN/1.01)/100;
xL4 = (maxN/1.04)/100;
xL5 = (maxN/1.08)/100;
xL6 = (maxN/1.14)/100;
xL7 = (maxN/1.21)/100;
xL8 = (maxN/1.31)/100;
xL9 = (maxN/1.39)/100;
xL10 = (maxN/1.56)/100;
xL11 = (maxN/1.69)/100;
xL12 = (maxN/1.88)/100;
% Plus 20% C, 5% R (GREEN)
yL1 = (maxN + 4.5)/100;
yL2 = (maxN + 1.5/.7)/100;
yL3 = (maxN/1.0)/100;
yL4 = (maxN/1.02)/100;
yL5 = (maxN/1.06)/100;
yL6 = (maxN/1.12)/100;
yL7 = (maxN/1.19)/100;
yL8 = (maxN/1.29)/100;
yL9 = (maxN/1.37)/100;
yL10 = (maxN/1.54)/100;
yL11 = (maxN/1.67)/100;
yL12 = (maxN/1.86)/100;
% Plot the results
% Plus 20% capacitance, 3% R
y20 = [yL1 yL2 yL3 yL4 yL5 yL6 yL7 yL8 yL9 yL10 yL11 yL12];
x = [0:20:225];
% Plus 15% capacitance, 2% R
y15 = [xL1 xL2 xL3 xL4 xL5 xL6 xL7 xL8 xL9 xL10 xL11 xL12];
x = [0:20:225];
% Plus 10% capacitance, 1% R
y10 = [wL1 wL2 wL3 wL4 wL5 wL6 wL7 wL8 wL9 wL10 wL11 wL12];
x = [0:20:225];
% Plus 5% capacitance
y5 = [vL1 vL2 vL3 vL4 vL5 vL6 vL7 vL8 vL9 vL10 vL11 vL12];
x = [0:20:225];
% No capacitance added
y = [uL1 uL2 uL3 uL4 uL5 uL6 uL7 uL8 uL9 uL10 uL11 uL12];
x = [0:20:225];

% plot the results
plot(x,y,'k-',x,y5,'k--',x,y10,'k:',x,y15,'k-.',x,y20,'.');
xlabel('Distance - cm');
ylabel('Efficiency  -  \eta');
axis([0 225 0.2 1])
set(gca, 'xtick',[0 25 50 75 100 125 150 175 200 225])
%title('Efficiencies adding capcacitance');
legend('0 C, 0 R','+ 5% C, 0 R','+ 10% C, 1% R','+ 15% C, 2% R','+ 20% C, 3% R');