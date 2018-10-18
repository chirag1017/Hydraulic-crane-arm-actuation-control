close all; clc

t = tout;
subplot(2,1,1)
plot(positionActual.Time, positionActual.Data, 'k', ...
    positionDesired.Time, positionDesired.Data, 'm')
% grid on, axis tight
title( 'Actuator Position' )
xlabel( 'Time (s)' ), ylabel( 'Position (m)' )
legend( 'Actual', 'Desired' )
grid on 


ratio =  positionActual.Data ./ positionDesired.Data;

% figure()
subplot(2,1,2)
plot( positionActual.Time, ratio )
axis ([0 5 -5 5 ])
grid on 

figure() % Plot applied force

plot(forceApplied.Time, forceApplied.Data)
grid on, axis tight
title( 'Actuator Force' )
xlabel( 'Time (s) '), ylabel( 'Force (N)' )


