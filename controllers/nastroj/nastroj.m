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
dsl1 = wb_robot_get_device('dsl1');
dsl2 = wb_robot_get_device('dsl2');
dsl3 = wb_robot_get_device('dsl3');
dsl4 = wb_robot_get_device('dsl4');

dsr1 = wb_robot_get_device('dsr1');
dsr2 = wb_robot_get_device('dsr2');
dsr3 = wb_robot_get_device('dsr3');
dsr4 = wb_robot_get_device('dsr4');

wb_distance_sensor_enable(dsl1,TIME_STEP);
wb_distance_sensor_enable(dsl2,TIME_STEP);
wb_distance_sensor_enable(dsl3,TIME_STEP);
wb_distance_sensor_enable(dsl4,TIME_STEP);

wb_distance_sensor_enable(dsr1,TIME_STEP);
wb_distance_sensor_enable(dsr2,TIME_STEP);
wb_distance_sensor_enable(dsr3,TIME_STEP);
wb_distance_sensor_enable(dsr4,TIME_STEP);


speaker = wb_robot_get_device('speaker');
left = speaker;
right = speaker;
volume = 1;
pitch = 1;
balance = 0;
loop = 1;
%wb_speaker_play_sound(speaker, speaker, sound, volume, pitch, balance, loop);

sound_C = 'C1.wav';
sound_D = 'D1.wav';
sound_E = 'E1.wav';
sound_F = 'F1.wav';
sound_G = 'G1.wav';
sound_A = 'A1.wav';
sound_H = 'H1.wav';
sound_C2 = 'C2.wav';

dist_conts = 10;


while wb_robot_step(TIME_STEP) ~= -1

c = wb_distance_sensor_get_value(dsl4);
d = wb_distance_sensor_get_value(dsl3);
e = wb_distance_sensor_get_value(dsl2);
f = wb_distance_sensor_get_value(dsl1);
g = wb_distance_sensor_get_value(dsr1);
a = wb_distance_sensor_get_value(dsr2);
h = wb_distance_sensor_get_value(dsr3);
C2 = wb_distance_sensor_get_value(dsr4);

disp([c,d,e,f,g,a,h,C2]);

if c <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_C, volume, pitch, balance, 0);
end

if d <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_D, volume, pitch, balance, 0);
end

if e <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_E, volume, pitch, balance, 0);
end

if f <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_F, volume, pitch, balance, 0);
end

if g <= dist_conts
  wb_speaker_play_sound(speaker, speaker, sound_G, volume, pitch, balance, 0);
end

if a <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_A, volume, pitch, balance, 0);
end

if h <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_H, volume, pitch, balance, 0);
end

if C2 <= dist_conts 
  wb_speaker_play_sound(speaker, speaker, sound_C2, volume, pitch, balance, 0);
end
%vse je ztlumene pokud zadny senzor nezaznamena prekazku
if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_C)
end

if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_D)
end

if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_E)
end
if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_F)
end
if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_G)
end

if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_A)
end

if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_H)
end

if (c > dist_conts) & (d > dist_conts) & (e > dist_conts)...
 & (f > dist_conts) & (g > dist_conts) & (a > dist_conts)...
  & (h > dist_conts) & (C2 > dist_conts)
  wb_speaker_stop(speaker, sound_C2)
end
  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.