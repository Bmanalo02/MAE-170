%--------------------------------------------------------------------------
%                                LAB 3
%--------------------------------------------------------------------------
%1kHz
%Arduino
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time1A =numData{1,3:1:1000},
signal1A = numData{2,3:1:1000},
figure(1)
tiledlayout(2,2)
nexttile
plot(time1A, signal1A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Arduino) Sample Frequency: 1kHz')
[freq1A, amp1A]=MAE170fft(time1A, signal1A);
nexttile
semilogy(freq1A, amp1A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');

%Oscilliscope
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time1O =numData{3,3:1:596},
signal1O = numData{4,3:1:596},
nexttile
plot(time1O, signal1O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Oscilloscope) Sample Frequency: 1kHz')
[freq1O, amp1O]=MAE170fft(time1O, signal1O);
nexttile
semilogy(freq1O, amp1O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');
%--------------------------------------------------------------------------
%0.25kHz
%Arduino
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time2A =numData{5,3:1:1000},
signal2A = numData{6,3:1:1000},
figure(2)
tiledlayout(2,2)
nexttile
plot(time2A, signal2A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Arduino) Sample Frequency: 1kHz')
[freq2A, amp2A]=MAE170fft(time2A, signal2A);
nexttile
semilogy(freq2A, amp2A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');

%Oscilliscope
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time2O =numData{7,3:1:596},
signal2O = numData{8,3:1:596},
nexttile
plot(time2O, signal2O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Oscilloscope) Sample Frequency: 1kHz')
[freq2O, amp2O]=MAE170fft(time2O, signal2O);
nexttile
semilogy(freq2O, amp2O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');
%--------------------------------------------------------------------------
%0.001kHz
%Arduino
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time3A =numData{9,3:1:1000},
signal3A = numData{10,3:1:1000},
figure(3)
tiledlayout(2,2)
nexttile
plot(time3A, signal3A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Arduino) Sample Frequency: 1kHz')
[freq3A, amp3A]=MAE170fft(time3A, signal3A);
nexttile
semilogy(freq3A, amp3A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');

%Oscilliscope
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time3O =numData{11,3:1:596},
signal3O = numData{12,3:1:596},
nexttile
plot(time3O, signal3O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Oscilloscope) Sample Frequency: 1kHz')
[freq3O, amp3O]=MAE170fft(time3O, signal3O);
nexttile
semilogy(freq3O, amp3O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');
%--------------------------------------------------------------------------
%0.650kHz
%Arduino
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time4A =numData{13,3:1:1000},
signal4A = numData{14,3:1:1000},
figure(4)
tiledlayout(2,2)
nexttile
plot(time4A, signal4A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Arduino) Sample Frequency: 1kHz')
[freq4A, amp4A]=MAE170fft(time4A, signal4A);
nexttile
semilogy(freq4A, amp4A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');

%Oscilliscope
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time4O =numData{15,3:1:596},
signal4O = numData{16,3:1:596},
nexttile
plot(time4O, signal4O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Oscilloscope) Sample Frequency: 1kHz')
[freq4O, amp4O]=MAE170fft(time4O, signal4O);
nexttile
semilogy(freq4O, amp4O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');
%% 
%--------------------------------------------------------------------------
%0.850kHz
%Arduino
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time5A =numData{17,3:1:1000},
signal5A = numData{18,3:1:1000},
figure(5)
tiledlayout(2,2)
nexttile
plot(time5A, signal5A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Arduino) Sample Frequency: 1kHz')
[freq5A, amp5A]=MAE170fft(time5A, signal5A);
nexttile
semilogy(freq5A, amp5A,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');

%Oscilliscope
numData= readtable('MAE170_LAB3','Sheet','Sheet1');
time5O =numData{19,3:1:596},
signal5O = numData{20,3:1:596},
nexttile
plot(time5O, signal5O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('time (s)');
ylabel('Amplitude (a.u.)');
title('(Oscilloscope) Sample Frequency: 1kHz')
[freq5O, amp5O]=MAE170fft(time5O, signal5O);
nexttile
semilogy(freq5O, amp5O,'-ob','LineWidth',2,'MarkerSize',4);
set(gca,'FontSize',22,'LineWidth',2);
xlabel('frequency [Hz]');
ylabel('|FT|');
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function [frequencyVar, amplitudeVar] = MAE170fft(tVar, yVar)
    reps=length(tVar); % obtain number of samples
    fs=1/mean(diff(tVar)); % calculate mean sampling rate
    % calculate oscilloscope signal PSD
    [PSD,f_psd] = periodogram(yVar,...
    rectwin(reps),reps,fs,'onesided');
    frequencyVar = f_psd;
    amplitudeVar = sqrt(PSD);
end