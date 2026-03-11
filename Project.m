data = readtable('Battery51.csv');
head(data)
data_clean=data(~isnan(data.current_load),:);
t=data_clean.time;
v=data_clean.voltage_load;
I=data_clean.current_load;
T=data_clean.temperature_battery;

figure;
plot(t,v);
xlabel('time (s)');
ylabel('volatge (v)');
title('battery volatage(discharge)');
grid on;


figure;
plot(t,I);
xlabel('time (s)');
ylabel('current(A)');
title('battery current (discharge)');
grid on;


figure;
plot(t,T);
xlabel('time (s)');
ylabel('Temperature (degree celcius)');
title('battery temperature');
grid on;

%{
compute  state of charge(SoC)
%}
I = abs(I);                 % make current positive
t = t - t(1);               % start time from 0
dt = mean(diff(t));

c_nom = 2.3;                % Ah (assumed)

SoC = 1 - cumsum(I)*dt/(3600*c_nom);
SoC = max(min(SoC,1),0);



figure;
plot(t, SoC, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('State of Charge');
title('SoC vs Time');
grid on;



Q_used = trapz(t, I)/3600;   % Ah
SoH = Q_used / c_nom;

figure;
plot(t, SoC, 'b', 'LineWidth', 2);
hold on;
yline(0.8, 'r--', 'EOL Threshold');
xlabel('Time (s)');
ylabel('SoC');
title('SoC with End-of-Life Threshold');
legend('SoC','EOL = 80%');
grid on;



