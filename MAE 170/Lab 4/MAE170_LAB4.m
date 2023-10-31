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
Part1TF_ExperimentalGain=(1./sqrt(RCconstant_wrtOmega.^2+1));
Part1TF_TheoreticalGain=(1./sqrt(RCconstant_wrtOmega_fit.^2+1));
GaindbB=20*log10(Part1TF);
CutoffFrequency=sqrt((1/((0.293)^2))-1)/(2*pi*RCconstant_experimental) % Returns expected cutoff frequency
% ---------------------------- Plotting graph -----------------------------
figure(2)
tiledlayout(2,1)
nexttile
plot(Part1Freq,GaindbB,'--o','Color',"#4DBEEE")
yline(-3,'--k')
legend('Experimental Gain','Expected Gain');
xlabel('Frequency');
ylabel('Gain');
nexttile
plot(Part1Freq,Part1TF_ExperimentalGain,'--o','Color',"#4DBEEE");
hold on 
grid on
plot(Part1Freq,Part1TF_TheoreticalGain,':','Color',"#D95319");
legend('Experimental Gain','Expected Gain');
xlabel('Frequency');
ylabel('Gain');

% ------------------------- Answering Questions ---------------------------
%% Q2
Gain_bB=20*log10(Part1TF);
CutoffFrequency_Hz=(1/(2*pi*RCconstant_experimental))
CutoffFrequency_Rad=CutoffFrequencyHz*2*pi
HalfPowerGain_Linear=1/sqrt(1+(CutoffFrequency_Rad*RCconstant_experimental)^2);
HalfPowerGain_dB=20*log10(HalfPowerGain_Linear);
% ---------------------------- Plotting graph -----------------------------
figure(2)
tiledlayout(2,1)
nexttile
plot(Part1Freq,Part1TF_ExperimentalGain,'--o','Color',"#4DBEEE");
hold on 
grid on
plot(Part1Freq,Part1TF_TheoreticalGain,':','Color',"#D95319");
legend('Experimental Gain','Expected Gain');
xlabel('Frequency');
ylabel('Gain');
nexttile
plot(Part1Freq,Gain_bB,'--o','Color',"#4DBEEE");
xline(CutoffFrequency_Hz,'--k')
hold on 
grid on
set(gca,'XScale','log')
legend('Experimental Gain','Cutoff Frequency');
xlabel('Frequency');
ylabel('Gain');
