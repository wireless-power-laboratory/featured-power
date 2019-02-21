% January 2011
% Reconstructed Tesla Resonator - Broadcast efficiency
% Science Paper, Figure 9

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
gamma = (R0+Rr)/3.3*(Lst + Lsr);

% And the qualities of the transmitter and receiver
Qt = 155;
Qr = 155;

% Therefore, the efficiency is
maxN = k/gamma;
%maxN = 1/(1 + (1 / (k^2 * Qt * Qr))); % Eq. 14
%den = 1 / (k^2 * Qt * Qr); % here is the raw component of the denominator
%of Eq. 14

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

% Plot the results - from the theory
y1 = [0.810 0.772 0.725 0.7016 0.672 0.639 0.598 0.563 0.530 0.472 0.440 0.400];
% From experiment
y = [uL1 uL2 uL3 uL4 uL5 uL6 uL7 uL8 uL9 uL10 uL11 uL12];
%x = [25 50 75 100 125 150 175 200 225];
x = 5:20:225;

plot(x,y1,'k+',x,y,'k-');
xlabel('Distance - cm');
ylabel('Efficiency  -  \eta');
axis([0 230 0.2 1])
set(gca, 'xtick',[0 25 50 75 100 125 150 175 200 225])
legend('Theoretical Values','Measured Values');
%set(gca, 'ytick',[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0])
%title('Efficiency of the Tesla Resonator');