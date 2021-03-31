# Cued-boss
Active and passive go-no-go Presentation® NeuroBehavioral Systems' experiment

This experiment looks at the the passive and active inhibition during a go-no-go task. This paradigm was developed as a follow up study after 
Ana A. Francisco, Douwe J. Horsthuis, Maryann Popiel, John J. Foxe and Sophie Molholm (2020) Atypical response inhibition and error processing in 22q11.2 Deletion Syndrome and schizophrenia: Towards neuromarkers of disease progression and risk

Instead of a more traditional Go-No_go paradigm, this paradigm has both active and pasive inhibition. Normally the participant would be asked to click for a reocorring stimulus and not click for a different type of stimulus that occures significantly less frequent. In this case the participant has a Cue that gives them info if they have to potentially inhibit (active inhibition) or if they need to inhibit for sure (passive inhibition). During the experiment participants will see stimulus pairs. If the pair is a animal, followed by an animal, they click (go trail, happens most of the time), for a small amount of the time there might be one of the no-go trials, that never follow eachother, so there is always a go-trail before them. The no-go trials are passive (object - animal or object - object) or active (animal- object). 


This experiment needs the software Presentation® from NeuroBehavioral Systems. https://www.neurobs.com/menu_presentation/presentation_faq
There are 2 ways of running the experiment
1) by opening the experiment in the Presentation Files folder
  this is the normal way we run the paradigm - all the rest of this readme file will focus on this 
2) by opening the For timing testing folder
  this is if you want to test the timing, the stimuli are changed so the photodiode can pick it up easier, plus the trigger codes are different so that it's more likely they get picked up by the oscilloscope.
In the stimuli folder you find all the individual animal and object pictures that are taken from the Bank of Standardized stimuli (BOSS) https://sites.google.com/site/bosstimuli/. 
Logfiles, with experiment reaction times and other information automatically are placed in the logfile folder
In the Presenation Files folder you'll find the experiment and the sequences that are semi-randomized, so we are sure that there are no 2 no-go trials in a row and how many no-go trials there are.

  
 Cued go/no-go/passive paradigm using BOSS database pictures. 
use presentation V20.1
particpants should click for every animal pair
participant should inhibit response for animal - object pair (active inhibition, since the first one doesn't inform you it will be a inhibition trial)
participant should never respond for Object - object pair (passive because first stim already tells that you won't have to care about the second)
participant should never respond for Object - Animal pair (passive because first stim already tells that you won't have to care about the second)
	port code 101 = S1 go (animal)
	port code 102 = S2 go (animal)
	port code 111 = S1 no-go (animal)
	port code 112 = S2 no-go (object)
	port code 121 = S1 passive(object)
	port code 122 = S2 passive (object)
  port code 131 = S1 Passive (object)
  port code 132 = S2 Passive (animal) 
	port code 2   = fixation cross
  port code 201 = start recording
  port code 200 = pause recording 
 run 6 scenario files to get enough no/go or Passive trials per participant
 trigger is right on the stimulus - absolutley 0 jitter.
 always run on a 60hz screen while making sure that the presentation settings are on 1280X1024X32 (60Hz) and that the screen is duplicated
 use cued_boss_64_ConfigFile_512hz.cfg config file from ActiView so that it saves/pauses automatic
