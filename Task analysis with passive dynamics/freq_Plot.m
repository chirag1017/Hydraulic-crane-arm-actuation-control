clc, close all
% 
%plot(actuatorPosition.time, actuatorPosition.Data-30), hold on  
 %plot(positionActual.Time, positionActual.Data, 'm')
%grid on

actAdj = actuatorPosition.Data - 30; 
%des = positionDesired.Data;
Pos = positionActual.Data;

t = positionDesired.Time;
plot(t, actAdj, 'b'), hold on
plot(t, Pos, 'k')
   
grid on
axis([ 0 3 -25 25])
title('Position: \omega = 20 Hz K = 1000 N/m');
xlabel('Time(s)'); ylabel('Position (mm)');
legend('Desired Position', 'Mass Position')


ep = Pos(323:end);
pd = actAdj(323:end);



error = max(ep)/max(pd);


adjError = 1-error

% plot(t, error)

% mode(error(323:end))

 