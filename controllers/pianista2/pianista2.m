% MATLAB controller for Webots
% File:          pianista.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 64;

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
pl1 = wb_robot_get_device('pl1');
pl2 = wb_robot_get_device('pl2');
pl3 = wb_robot_get_device('pl3');
pl4 = wb_robot_get_device('pl4');


pr1 = wb_robot_get_device('pr1');
pr2 = wb_robot_get_device('pr2');
pr3 = wb_robot_get_device('pr3');
pr4 = wb_robot_get_device('pr4');

on = -1.57;
off = 0;

%wb_motor_set_position(pl1, on);
%wb_motor_set_position(pl2, on);
%wb_motor_set_position(pl3, on);
%wb_motor_set_position(pl4, on);

%wb_motor_set_position(pr1, -on);
%wb_motor_set_position(pr2, -on);
%wb_motor_set_position(pr3, -on);
%wb_motor_set_position(pr4, -on);


noty = string(fileread('koledy_noty.txt'))

lines = splitlines(noty)


%cas = wb_robot_get_time;
%disp(cas);
t = 0.5
while wb_robot_step(TIME_STEP) ~= -1

for i = 1:size(lines,1)
wb_motor_set_position(pl1, off);
wb_motor_set_position(pl2, off);
wb_motor_set_position(pl3, off);
wb_motor_set_position(pl4, off);

wb_motor_set_position(pr1, -off);
wb_motor_set_position(pr2, -off);
wb_motor_set_position(pr3, -off);
wb_motor_set_position(pr4, -off);
pause(0.01,TIME_STEP);

    nota = split(lines(i)," "); %1 = vyska tonu; 2 = delka tonu  
    switch (nota(1))        % podle vysky tonu vyberu co se ma stat
        case "C1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('C1');
            wb_motor_set_position(pl4, on); 
            
        case "D1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('D1');
            wb_motor_set_position(pl3, on);
            
        case "E1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('E1');   
            wb_motor_set_position(pl2, on);

        case "F1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('F1');
            wb_motor_set_position(pl1, on);

        case "G1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('G1');
            wb_motor_set_position(pr1, -on);

        case "A1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('A1');         
            wb_motor_set_position(pr2, -on);

        case "H1"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('H1');   
            wb_motor_set_position(pr3, -on);
    
        case "C2"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
            disp('C2');
            wb_motor_set_position(pr4, -on);
            
        case "P"
            delka_tonu = nota(2);
            k = delkaTonuDoCisla(delka_tonu);
    end
  pause(k,TIME_STEP);

end

  drawnow;
end


