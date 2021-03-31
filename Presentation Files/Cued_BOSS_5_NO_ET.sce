## Cued go/no-go/passive paradigm using BOSS database pictures. 
#use presentation V20.1
#particpants should click for every animal pair
#participant should inhibit response for animal - object pair (active inhibition, since the first one doesn't inform you it will be a inhibition trial)
#participant should never respond for Object - object pair (passive because first stim already tells that you won't have to care about the second)
#participant should never respond for Object - Animal pair (passive because first stim already tells that you won't have to care about the second)
#	port code 101 = S1 go (animal)
#	port code 102 = S2 go (animal)
#	port code 111 = S1 no-go (animal)
#	port code 112 = S2 no-go (object)
#	port code 121 = S1 passive(object)
#	port code 122 = S2 passive (object)
#  port code 131 = S1 Passive (object)
#  port code 132 = S2 Passive (animal) 
#	port code 2   = fixation cross
#  port code 201 = start recording
#  port code 200 = pause recording 
# run 6 scenario files to get enough no/go or Passive trials per participant
# trigger is right on the stimulus - absolutley 0 jitter. 
# always run on the "VP2655WB" screen while making sure that the presentation settings are on 1280X1024X32 (60Hz) and that the screen is duplicated
# tested only in Adult Right where it should be run
# use ana_normal_64channel config file from ActiView so that it saves/pauses automatic

scenario = "Cued_BOSS_5_NO_ET"; 
scenario_type = trials;
active_buttons = 1;
default_background_color = 100,100,100;
pulse_width = 10; #should be >5 so we don't miss triggers by mistake 
response_matching = simple_matching; #so we can have hit/miss/fa resp
write_codes = true; #Send and Register Codes
pcl_file = "CUED_BOSS_1_NO_ET.pcl";
begin;

bitmap { filename = "A_1.png";   width = 400; height = 400; preload = true;} A_1; #pre-loading all the pictures 
bitmap { filename = "A_2.png";   width = 400; height = 400; preload = true;} A_2;
bitmap { filename = "A_3.png";   width = 400; height = 400; preload = true;} A_3;
bitmap { filename = "A_4.png";   width = 400; height = 400; preload = true;} A_4;
bitmap { filename = "A_5.png";   width = 400; height = 400; preload = true;} A_5;
bitmap { filename = "A_6.png";   width = 400; height = 400; preload = true;} A_6;
bitmap { filename = "A_7.png";   width = 400; height = 400; preload = true;} A_7;
bitmap { filename = "A_8.png";   width = 400; height = 400; preload = true;} A_8;
bitmap { filename = "A_9.png";   width = 400; height = 400; preload = true;} A_9;
bitmap { filename = "A_10.png";   width = 400; height = 400; preload = true;} A_10;
bitmap { filename = "A_11.png";   width = 400; height = 400; preload = true;} A_11;
bitmap { filename = "A_12.png";   width = 400; height = 400; preload = true;} A_12;
bitmap { filename = "A_13.png";   width = 400; height = 400; preload = true;} A_13;
bitmap { filename = "A_14.png";   width = 400; height = 400; preload = true;} A_14;
bitmap { filename = "A_15.png";   width = 400; height = 400; preload = true;} A_15;
bitmap { filename = "A_16.png";   width = 400; height = 400; preload = true;} A_16;
bitmap { filename = "A_17.png";   width = 400; height = 400; preload = true;} A_17;
bitmap { filename = "A_18.png";   width = 400; height = 400; preload = true;} A_18;
bitmap { filename = "A_19.png";   width = 400; height = 400; preload = true;} A_19;
bitmap { filename = "A_20.png";   width = 400; height = 400; preload = true;} A_20;
bitmap { filename = "A_21.png";   width = 400; height = 400; preload = true;} A_21;
bitmap { filename = "A_22.png";   width = 400; height = 400; preload = true;} A_22;
bitmap { filename = "A_23.png";   width = 400; height = 400; preload = true;} A_23;
bitmap { filename = "A_24.png";   width = 400; height = 400; preload = true;} A_24;
bitmap { filename = "A_25.png";   width = 400; height = 400; preload = true;} A_25;
bitmap { filename = "A_26.png";   width = 400; height = 400; preload = true;} A_26;
bitmap { filename = "A_27.png";   width = 400; height = 400; preload = true;} A_27;
bitmap { filename = "A_28.png";   width = 400; height = 400; preload = true;} A_28;
bitmap { filename = "A_29.png";   width = 400; height = 400; preload = true;} A_29;
bitmap { filename = "A_30.png";   width = 400; height = 400; preload = true;} A_30;
bitmap { filename = "A_31.png";   width = 400; height = 400; preload = true;} A_31;
bitmap { filename = "A_32.png";   width = 400; height = 400; preload = true;} A_32;
bitmap { filename = "A_33.png";   width = 400; height = 400; preload = true;} A_33;
bitmap { filename = "A_34.png";   width = 400; height = 400; preload = true;} A_34;
bitmap { filename = "A_35.png";   width = 400; height = 400; preload = true;} A_35;
bitmap { filename = "A_36.png";   width = 400; height = 400; preload = true;} A_36;
bitmap { filename = "A_37.png";   width = 400; height = 400; preload = true;} A_37;
bitmap { filename = "A_38.png";   width = 400; height = 400; preload = true;} A_38;
bitmap { filename = "A_39.png";   width = 400; height = 400; preload = true;} A_39;
bitmap { filename = "A_40.png";   width = 400; height = 400; preload = true;} A_40;
bitmap { filename = "A_41.png";   width = 400; height = 400; preload = true;} A_41;
bitmap { filename = "A_42.png";   width = 400; height = 400; preload = true;} A_42;
bitmap { filename = "A_43.png";   width = 400; height = 400; preload = true;} A_43;
bitmap { filename = "A_44.png";   width = 400; height = 400; preload = true;} A_44;
bitmap { filename = "A_45.png";   width = 400; height = 400; preload = true;} A_45;
bitmap { filename = "A_46.png";   width = 400; height = 400; preload = true;} A_46;
bitmap { filename = "A_47.png";   width = 400; height = 400; preload = true;} A_47;
bitmap { filename = "A_48.png";   width = 400; height = 400; preload = true;} A_48;
bitmap { filename = "A_49.png";   width = 400; height = 400; preload = true;} A_49;
bitmap { filename = "A_50.png";   width = 400; height = 400; preload = true;} A_50;
bitmap { filename = "object_1.png";   width = 400; height = 400; preload = true;} object_1;
bitmap { filename = "object_2.png";   width = 400; height = 400; preload = true;} object_2;
bitmap { filename = "object_3.png";   width = 400; height = 400; preload = true;} object_3;
bitmap { filename = "object_4.png";   width = 400; height = 400; preload = true;} object_4;
bitmap { filename = "object_5.png";   width = 400; height = 400; preload = true;} object_5;
bitmap { filename = "object_6.png";   width = 400; height = 400; preload = true;} object_6;
bitmap { filename = "object_7.png";   width = 400; height = 400; preload = true;} object_7;
bitmap { filename = "object_8.png";   width = 400; height = 400; preload = true;} object_8;
bitmap { filename = "object_9.png";   width = 400; height = 400; preload = true;} object_9;
bitmap { filename = "object_10.png";   width = 400; height = 400; preload = true;} object_10;
bitmap { filename = "object_11.png";   width = 400; height = 400; preload = true;} object_11;
bitmap { filename = "object_12.png";   width = 400; height = 400; preload = true;} object_12;
bitmap { filename = "object_13.png";   width = 400; height = 400; preload = true;} object_13;
bitmap { filename = "object_14.png";   width = 400; height = 400; preload = true;} object_14;
bitmap { filename = "object_15.png";   width = 400; height = 400; preload = true;} object_15;
bitmap { filename = "object_16.png";   width = 400; height = 400; preload = true;} object_16;
bitmap { filename = "object_17.png";   width = 400; height = 400; preload = true;} object_17;
bitmap { filename = "object_18.png";   width = 400; height = 400; preload = true;} object_18;
bitmap { filename = "object_19.png";   width = 400; height = 400; preload = true;} object_19;
bitmap { filename = "object_20.png";   width = 400; height = 400; preload = true;} object_20;
bitmap { filename = "object_21.png";   width = 400; height = 400; preload = true;} object_21;
bitmap { filename = "object_22.png";   width = 400; height = 400; preload = true;} object_22;
bitmap { filename = "object_23.png";   width = 400; height = 400; preload = true;} object_23;
bitmap { filename = "object_24.png";   width = 400; height = 400; preload = true;} object_24;
bitmap { filename = "object_25.png";   width = 400; height = 400; preload = true;} object_25;
bitmap { filename = "object_26.png";   width = 400; height = 400; preload = true;} object_26;
bitmap { filename = "object_27.png";   width = 400; height = 400; preload = true;} object_27;
bitmap { filename = "object_28.png";   width = 400; height = 400; preload = true;} object_28;
bitmap { filename = "object_29.png";   width = 400; height = 400; preload = true;} object_29;
bitmap { filename = "object_30.png";   width = 400; height = 400; preload = true;} object_30;
bitmap { filename = "object_31.png";   width = 400; height = 400; preload = true;} object_31;
bitmap { filename = "object_32.png";   width = 400; height = 400; preload = true;} object_32;
bitmap { filename = "object_33.png";   width = 400; height = 400; preload = true;} object_33;
bitmap { filename = "object_34.png";   width = 400; height = 400; preload = true;} object_34;
bitmap { filename = "object_35.png";   width = 400; height = 400; preload = true;} object_35;
bitmap { filename = "object_36.png";   width = 400; height = 400; preload = true;} object_36;
bitmap { filename = "object_37.png";   width = 400; height = 400; preload = true;} object_37;
bitmap { filename = "object_38.png";   width = 400; height = 400; preload = true;} object_38;
bitmap { filename = "object_39.png";   width = 400; height = 400; preload = true;} object_39;
bitmap { filename = "object_40.png";   width = 400; height = 400; preload = true;} object_40;
bitmap { filename = "object_41.png";   width = 400; height = 400; preload = true;} object_41;
bitmap { filename = "object_42.png";   width = 400; height = 400; preload = true;} object_42;
bitmap { filename = "object_43.png";   width = 400; height = 400; preload = true;} object_43;
bitmap { filename = "object_44.png";   width = 400; height = 400; preload = true;} object_44;
bitmap { filename = "object_45.png";   width = 400; height = 400; preload = true;} object_45;
bitmap { filename = "object_46.png";   width = 400; height = 400; preload = true;} object_46;
bitmap { filename = "object_47.png";   width = 400; height = 400; preload = true;} object_47;
bitmap { filename = "object_48.png";   width = 400; height = 400; preload = true;} object_48;
bitmap { filename = "object_49.png";   width = 400; height = 400; preload = true;} object_49;
bitmap { filename = "object_50.png";   width = 400; height = 400; preload = true;} object_50;

text{caption = "PLEASE DOUBLE CLICK THE MOUSE BUTTON TO START"; font_size = 30; font_color = 255,255,255; } mouse_text;
text{caption = "+"; font_size = 100; font_color = 0,0,0; } cross_text;
picture { text mouse_text; x = 0; y = 0; } please_click;
picture { text cross_text; x = 0; y = 0; } cross;
picture { } empty; 
picture { } pic_s1;
picture { } pic_s2;



trial{ #this is the first screen to prepare people 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1;   # left-mouse button
   picture {
		text {font_size=25; font="Arial"; caption ="PLEASE DOUBLE CLICK THE MOUSE BUTTON TO START"; font_color = 200,200,200;};
      x=0;y=0;};
}trial_start_button;

trial{ #this is the first screen to prepare people 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1;   # left-mouse button
   picture {
		text {font_size=25; font="Arial"; caption ="PLEASE DOUBLE CLICK THE MOUSE BUTTON TO START"; font_color = 200,200,200;};
      x=0;y=0;};
	code = "201 start recording";  
	port_code = 201; 
}trial_start_button_2;



trial {          
   stimulus_event
	{
    picture cross;
	 duration = 292; time = 92;  #starts after 100ms, the 8ms are half a frame for preperation. The 100ms is to stop jitter  
	 code = "start_cross";
   port_code = 2;
   } start_trial_1;
   stimulus_event
	{   
      picture pic_s1; 
      deltat = 292; duration = 92; #deltat because this means that it's alway going to be 100ms after the previous stim. If used time instead it would be 100ms after regardelss of any accidental delays. 
   } 	trial_s1;
	stimulus_event	
	{
		nothing{}; deltat = 6; # to move the trigger 6ms later since thats when the stim shows 
		port_code = 10;
      code = "10";
   } trigger_s1; 
	stimulus_event {
	   picture pic_s2; 
	   deltat = 1092; duration = 92; #1092 because this would 1100ms after the start of presentation of first stim (that lasts 100ms) so ISI 1000 (taking half a frame for prep in consideration) 
   } 	trial_s2;
	stimulus_event	
	{
		nothing{}; deltat = 6; # to move the trigger 6ms later since thats when the stim shows 
		port_code = 20;
      code = "20";
   } trigger_s2; 
} trial_stim;

trial { 
    trial_duration = 900;
    picture empty;
    code = "isi_go";
 target_button = 1; #so that a hit shows up if you click during this ISI
} isi_go_trial;

trial { 
    trial_duration = 900;    
    picture empty;
    code = "isi_nogo";
    response_active = true;    # if someone clicks it'll be a False alarm
} isi_nogo_trial;

trial { 
    trial_duration = 900; 
    
    picture empty;
    code = "isi_passive";
    response_active = true;    # if someone clicks it'll be a False alarm
} isi_passive_trial;



trial{ #this is the first screen to prepare people 
  trial_duration = forever;        	   # trial lasts until target
   trial_type = specific_response;   	#   button is pressed
	terminator_button = 1;   # left mouse button 
   picture {
		text {font_size=25; font="Arial"; caption ="PLEASE CLICK TO FINISH THE BLOCK"; font_color = 0,0,0;};
      x=0;y=0;};
	code = "pause recording";  
	port_code = 200; 
}end_block_trial;

trial{ #this is the first screen to prepare people 
  trial_duration = 5000;        	   # trial lasts 5 sec
   picture {
		text {font_size=25; font="Arial"; caption ="You are halfway through this block, time for a tiny break"; font_color = 0,0,0;};
      x=0;y=0;};
	code = "pause recording";  
	port_code = 200;  
}pause_block_trial;

trial{ #this is to make sure it starts saving
   stimulus_event
	{
   picture {
		text {font_size=25; font="Arial"; caption ="PLEASE DOUBLE CLICK THE MOUSE BUTTON TO START"; font_color = 200,200,200;};
      x=0;y=0;};
   duration = 100; time = 100;
	code = "201 start recording";  
	port_code = 201;
	} ;
}trial_start_button_3;