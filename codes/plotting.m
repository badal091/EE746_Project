%WhiteNoise = [-50, -40, -30, -20, -1];
%y1=[98.5,96.5,93,91,53.5];
%y2=[97, 94.5, 89, 87.5, 82];

%figure();
%plot(White_noise,y1,'linewidth',2);
%hold on;
%plot(White_noise,y2,'linewidth',2);
%xlabel('White_noise');
%ylabel('Test Accuracy(%)');
%legend('Both Train and Test data are noisy', 'Only Test data are noisy')
%title('Noise Effect on Accuracy');

%whiteNoise = [-50, -40, -30, -20, -1];
%y1 = [98.5, 95.5, 90, 92, 55.5];
%y2 = [98.5, 95.5, 93.5, 93, 59.5];
%y3 = [98.5,96.5,93,91,53.5];


%figure();
%plot(whiteNoise, y1, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y2, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y3, 'linewidth', 2);

%xlabel('WhiteNoise(dB)');
%ylabel('Test Accuracy(%)');
%legend('3x3x3', '4x4x4', '5x5x5')
%title('Reservior Shape Variation');


%whiteNoise = [-50, -40, -30, -20, -1];
%y1 = [98.5, 95.5, 90, 92, 55.5];
%y2 = [98, 94.5, 89, 88.5, 55];
%y3 = [98.5, 95.5, 93.5, 93, 59.5];
%y4 = [97, 95, 92.5, 88, 56.5];
%y5 = [98.5,96.5,93,91,53.5];
%y6 = [97, 95, 92, 90.5, 50.5];

%figure();
%plot(whiteNoise, y1, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y2, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y3, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y4, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y5, 'linewidth', 2);
%hold on;
%plot(whiteNoise, y6, 'linewidth', 2);

%xlabel('WhiteNoise(dB)');
%ylabel('Test Accuracy(%)');
%legend('3x3x3(125 neurons)','3x3x3(250 neurons)', '4x4x4(125 neurons)','4x4x4(250 neurons)', '5x5x5(125 neurons)', '5x5x5(250 neurons)')
%title('Reservior Size Variation');


%whiteNoise=[-10, -5, -2, -1];
%y1=[59.3, 44.2 , 38.2 ,33.7];
%y2=[52.2 ,41.3, 32.2, 31.3];

%figure();
%plot(whiteNoise,y1,'linewidth',2);
%hold on;
%plot(whiteNoise,y2,'linewidth',2);
%xlabel('WhiteNoise(dB)');
%ylabel('Test Accuracy(%)');
%legend('5x5x5x2','5x5x5')
%title('Parallel Network Reservior');

whiteNoise=[-50, -10, -1];
y1=[98, 83, 50];
y2=[98.5, 76, 53.5];
y3 =[96.5, 74, 49.5];

figure();
plot(whiteNoise,y1,'linewidth',2);
hold on;
plot(whiteNoise,y2,'linewidth',2);
hold on;
plot(whiteNoise,y3,'linewidth',2);
xlabel('WhiteNoise(dB)');
ylabel('Test Accuracy(%)');
legend('value 2','value 5', 'value 10')
title('Ear sharpness parameter in LyonPassive ear');