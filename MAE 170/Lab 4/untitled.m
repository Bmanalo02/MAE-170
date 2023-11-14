%% Q3
figure(1)
tiledlayout(2,1)
nexttile
plot(t,wave_ref)
title('Average Reference Signal')
ylabel('Amplitude (V)')
xlabel('Time (ms)')
nexttile
plot(t,wave_sig)
title('Average Signal')
ylabel('Amplitude (V)')
xlabel('Time (ms)')
%% Q4
clear all
% Setting Parameters ------------------------------------------------------
y_erP = 0.00005
y_erN = 0.00005
x_erP = 0.00195
x_erN = 0.00195
% Calculating Distance ----------------------------------
d = 0.01*sqrt((15-(0))^2 + (30-(4.5))^2);
d_delta = (linspace(d, 0.01*sqrt(30^2 + 15^2),30));
t_delta = transpose(flip([0.00106122
0.00108163
0.00106122
0.00106122
0.00107143
0.00106122
0.00105102
0.00106122
0.00104081
0.00107143
0.00105102
0.00106122
0.00104081
0.00105102
0.00103061
0.00104081
0.00102041
0.00103061
0.0010102
0.0010102
0.001
0.0010102
0.00097959
0.00097959
0.00097959
0.00098979
0.00095918
0.00098979
0.00098979
0.00097959]));
polyfit = polyfit(d_delta,t_delta,1)
slope = polyfit(1);
intercept = polyfit(2);
% Plotting Data ----------------------------------
figure(1)
hold on;
errorbar(d_delta,t_delta,y_erP,y_erN,x_erP,x_erN,'b', 'HandleVisibility','off')
plot(d_delta,t_delta,'.b')
hold on
plot(d_delta,slope*d_delta+intercept,'-r')
hold on
plot(d_delta,(1/343)*d_delta,'--r')
title('Experimental and Analytically Predicted Propagation of Sound')
legend({'Measured Data', 'Fit Line (y=0.0027x+1.667*10^-4)','Speed of Sound'})
xlabel('Distance (m)')
ylabel('Time delay (ms)')
%% Q5
% no code needed see assignment
%% Q6
pcolor(max(abs(recMatrix_sig)))