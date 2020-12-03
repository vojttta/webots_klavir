% MATLAB controller for Webots
% File:          nastroj.m
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

%% distance sensors....
dsl_1 = wb_robot_get_device('dsl1');
dsl_2 = wb_robot_get_device('dsl2');
dsl_3 = wb_robot_get_device('dsl3');
dsl_4 = wb_robot_get_device('dsl4');
dsr_1 = wb_robot_get_device('dsr1');
dsr_2 = wb_robot_get_device('dsr2');
dsr_3 = wb_robot_get_device('dsr3');
dsr_4 = wb_robot_get_device('dsr4');
wb_distance_sensor_enable(dsl_1,TIME_STEP);
wb_distance_sensor_enable(dsl_2,TIME_STEP);
wb_distance_sensor_enable(dsl_3,TIME_STEP);
wb_distance_sensor_enable(dsl_4,TIME_STEP);
wb_distance_sensor_enable(dsr_1,TIME_STEP);
wb_distance_sensor_enable(dsr_2,TIME_STEP);
wb_distance_sensor_enable(dsr_3,TIME_STEP);
wb_distance_sensor_enable(dsr_4,TIME_STEP);


%% speaker
speaker = wb_robot_get_device('speaker');
%sound = 
volume = 1;
pitch = 1;
balance = 0;
loop = 1;
%wb_speaker_play_sound(speaker, speaker, sound, volume, pitch, balance, loop);




while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
