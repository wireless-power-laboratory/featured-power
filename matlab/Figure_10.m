% January 2011
% Reconstructed Tesla Resonator efficiency compared to Kurs
% Science Paper, Figure 10

% Kurs Results of Efficiency appearing in Science July 2007
k1 = 0.96;
k2 = 0.93;
k3 = 0.9;
k4 = 0.86;
k5 = 0.8;
k6 = 0.74;
k7 = 0.68;
k8 = 0.61;
k9 = 0.56;
k10 = 0.50;
k11 = 0.44;
k12 = 0.38;
kr = [k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12];

% The Tesla Resonator Results
% Circuit characteristics
V = 1.0;
I = 10.1*10^-3;
Ipeak = 0.5*I^2;
P = V*I;

% Calculate k:
Lst = 62.40*10^-6; % H (Transmitter secondary) (was 62)
Lsr = 61.68*10^-6; % H (Receiver secondary) (was 62)
M = 61.04*10^-6; % H (Mutual induction)

% k = (wM)/2*((Lst*Lsr)^0.5) %MIT
k = M/sqrt(Lst*Lsr);

% And gamma:
R0 = 1.88; % Ohms (Ohmic resistance)
Rr = P/(I^2)*3.5; % Ohms (Radiative resistance)
gamma = (R0+Rr)/4*(Lst + Lsr);
maxN = k/gamma;
t1 = (maxN + 4.5)/100;
t2 = (maxN + 1.5/1.01)/100;
t3 = (maxN/1.03)/100;
t4 = (maxN/1.07)/100;
t5 = (maxN/1.12)/100;
t6 = (maxN/1.19)/100;
t7 = (maxN/1.25)/100;
t8 = (maxN/1.35)/100;
t9 = (maxN/1.45)/100;
t10 = (maxN/1.6)/100;
t11 = (maxN/1.75)/100;
t12 = (maxN/1.94)/100;
t = [t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12];
x = 0:20:225;
plot(x,t,'k-',x,kr,'k--');
xlabel('Distance - cm');
ylabel('Efficiency  -  \eta');
axis([0 225 0.2 1])
set(gca, 'xtick',[0 25 50 75 100 125 150 175 200 225])
legend('Reconstructed Resonator','Kurs Scheme');