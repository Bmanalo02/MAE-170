%% Lab 4
%% Q1
RCconstant_measured=(9.98*10^3)*(1.12*10^-6);
Part1=readtable('MAE170_lab4_part1.xlsx'); % Retrieves Data from excel sheet
Part1Freq=Part1{1:30,"Var1"}; % Retrieves Experimental Frequency
Part1TF=Part1{1:30,"Var2"}; % Retrieves Transfer Function Data from experiment
RCconstant_wrtOmega=sqrt((1./(Part1TF.^2))-1); % Mathematically determined RC functions w.r.t Omega
RCconstant_wrtOmega_fit=polyval(polyfit(Part1Freq,RCconstant_wrtOmega,1),Part1Freq); % Line of best fit
RCconstant_wrtOmega_Theoretical=RCconstant_measured.*2*pi*Part1Freq;
% ---------------------------- Plotting graph -----------------------------
figure(1)
plot(Part1Freq,RCconstant_wrtOmega,'-*r');
hold on;
grid on
plot(Part1Freq,RCconstant_wrtOmega_fit,'--o','Color',"#4DBEEE");
plot(Part1Freq,RCconstant_wrtOmega_Theoretical,':','Color',"#D95319");
legend('Experimental','Line of best fit','Predicted Gain');
xlabel('Frequency (rad/s)');
ylabel('Normalized Gain');
title('Normalized Gain w.r.t. Frequency')
% ------------------------- Answering Questions ---------------------------
FitLine=(polyfit(Part1Freq,RCconstant_wrtOmega,1)); % Retrieves best-fit line slope and intercept
RCconstant_experimental=FitLine(1)/(2*pi) % Returns RC of best-fit in terms of Hz
%% Q2
Gain_bB=20*log10(Part1TF);
CutoffFrequency_Hz=(1/(2*pi*RCconstant_experimental))
CutoffFrequency_Rad=CutoffFrequency_Hz*2*pi
GraphicallydeterminedCutoffFrequency_Hz=17.707863
HalfPowerGain_Linear=1/sqrt(1+(CutoffFrequency_Rad*RCconstant_experimental)^2)
HalfPowerGain_dB=20*log10(HalfPowerGain_Linear);
% ---------------------------- Plotting graph -----------------------------
figure(2)
tiledlayout(2,1)
nexttile
plot(Part1Freq,Part1TF_ExperimentalGain,'--o','Color',"#4DBEEE");
hold on 
grid on
set(gca,'XScale','log')
yline(0.707,'--k')
xline(CutoffFrequency_Hz,'--k')
xline(GraphicallydeterminedCutoffFrequency_Hz,'-k')
plot(Part1Freq,Part1TF_TheoreticalGain,'-','Color',"#D95319");
legend('Experimental Gain','','Calculated Cutoff Frequency','True Cutoff Frequency','Predicted Gain');
xlabel('Frequency (Hz)');
ylabel('Gain (linear)');
nexttile
plot(Part1Freq,Gain_bB,'--o','Color',"#4DBEEE");
hold on 
grid on
yline(-3,'--k')
xline(CutoffFrequency_Hz,'--k')
xline(GraphicallydeterminedCutoffFrequency_Hz,'-k')
plot(Part1Freq,20*log10(Part1TF_TheoreticalGain),'-','Color',"#D95319");
legend('Experimental Gain','','Calculated Cutoff Frequency','True Cutoff Frequency','Predicted Gain');
xlabel('Frequency (Hz)');
ylabel('Gain (Db)');
%% Q3
part2=readtable('MAE170_lab4part2and3data.xlsx'); % Retrieves Data from excel sheet
part2Freq=part2{1:30,"Var1"}; % Retrieves Experimental Frequency
part2TF=part2{1:30,"Var2"}; % Retrieves Transfer Function Data from experiment
RCconstant_wrtOmega=sqrt((1./(part2TF.^2))-1); % Mathematically determined RC functions w.r.t Omega
RCconstant_wrtOmega_fit=polyval(polyfit(part2Freq,RCconstant_wrtOmega,1),part2Freq); % Line of best fit
RCconstant_wrtOmega_Theoretical=RCconstant_measured.*2*pi*part2Freq;
% ---------------------------- Plotting graph -----------------------------
figure(3)
plot(part2Freq,part2TF,'-*r');
hold on;
grid on
yline(2,'--','Color',"#D95319")
legend('Experimental Gain','Expected Gain');
xlabel('Frequency (rad/s)');
ylabel('Gain');
title('Q3: Experimental Gain VS. Expected Gain')
%% Q4
R1_Ohms=1000;
R2_Ohms=1000;
Opampgain=(1+(R2_Ohms/R1_Ohms));
part3=readtable('MAE170_lab4part2and3data.xlsx'); % Retrieves Data from excel sheet
part3Freq=part3{1:30,"Var1"}; % Retrieves Experimental Frequency
part3TF=part3{1:30,"Var3"}; % Retrieves Transfer Function Data from experiment
Part3TF_TheoreticalGain=Opampgain*Part1TF_TheoreticalGain;
% ---------------------------- Plotting graph -----------------------------
figure(4)
plot(part3Freq,part3TF,'--o','Color',"#4DBEEE");
hold on 
grid on
plot(part3Freq,Part3TF_TheoreticalGain,'-','Color',"#D95319");
yline(Opampgain,':','Color',"#D95319")
legend('Experimental Gain','','Op-Amp Gain','','Predicted Gain');
xlabel('Frequency (Hz)');
ylabel('Gain (Db)');