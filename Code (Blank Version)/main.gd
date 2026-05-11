"""
Author: JoJo Kaler
Credits: This was developed as a capstone project under the supervision of Dr. Christian Newman at the Rochester Institute of Technology. Generative AI was not used in the writing of this code, however it was used to generate some of the visuals. 

"""

extends CanvasLayer

#Initilization of variables representing on screen elements
@onready var textBoxLabel = $OfficeScene/TextBoxContainor/MarginContainer/HBoxContainer/Label
@onready var codeBoxLabel = $ComputerScreen/HBoxContainer/Label
@onready var inputBox = $ComputerScreen/MarginContainer2
@onready var inputText = $ComputerScreen/MarginContainer2/TextEdit
@onready var textSpeedSlider = $Pause/Panel/HSlider


#Initializing variables that go into the dialogue tree. d0 represents the root node, d1,d2,d3 are it's children, etc.
#d0 is an example of how to create a subtree that doesn't affect the game loop. The subtree must be it's own array and each element of the subtree must be it's own array. Two items in the same node of the subtree represent multiple dialogue screens.
@onready var d0 = [["Hello! My name is Jeb and I am your new hire from planet Asblamflabakor! How was the intergalactic dentists conference? \n4. It was great! Got a whole new set of teeth. How is your project coming? \n5. It was terrible, lost all my teeth! How is your project coming?"] ,["Awesome! I am not having such a good day because I was told you guys use something called variable names here rather than memorizing every storage address like we do on Asblamflabakor? And apparently there's rules around what I am supposed to name these variables??? I sent the code I'm working on to your computer, could you give me an example of a variable name that uses two words?"],["I too am having a bad day I was told you guys use something called variable names here rather than memorizing every storage address like we do on Asblamflabakor? And apparently there's rules around what I am supposed to name these variables??? I sent the code I'm working on to your computer, could you give me an example of a variable name that uses at least two words?"]]

@onready var d1 = "Thanks! I see that you have capitalized some letters. How often should I be doing that?\n1. Anytime you want to emphasize something \n2. When you start a new word or abbreviation after the first \n3. Only when you want to emphasize a particular word in a variable name"
@onready var d2 = "Thanks! I see that you are using underscores. How often should I use those?\n1. Anytime you want to emphasize something \n2. When you start a new word or abbreviation after the first \n3. Only when you want to emphasize a particular word in a variable name"
@onready var d3 = "Thanks! Not having any capitol letters or underscores to make things readable to humans makes me feel like im back on Asblamflabakor!"

@onready var d4 = "Great! We don't have the letter C on Asblamflabakor and I really like it's shape. I think I'll emphasize those. Another question for you: How specific should my names be?\n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d5 = "Ugh, sounds like a lot of work but I see the benefits. Another question for you: How specific should my names be?\n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d6 = "Awesome! Just like back on Asblamflabakor. Another question for you: How specific should my names be?\n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d7 = d4
@onready var d8 = d5
@onready var d9 = "That makes sense! We don't have the letter C in Asblamflabakorian so I think I'll emphasize those. Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d10 = "Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d11 = d10
@onready var d12 = d10

@onready var d13 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them anytime I want to emphasize a letter(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d14 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them anytime I want to emphasize a letter(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d15 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them anytime I want to emphasize a letter(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d16 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them when I start a new word(✓), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d17 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them when I start a new word(✓), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d18 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them when I start a new word(✓), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d19 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them to emphasize a particular word(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d20 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them to emphasize a particular word(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d21 = "Thanks for your help! Just to recap I should be using capital letters(✓), I should use them to emphasize a particular word(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d22 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them anytime I want to emphasize a letter(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d23 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them anytime I want to emphasize a letter(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d24 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them anytime I want to emphasize a letter(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d25 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them when I start a new word(✓), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d26 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them when I start a new word(✓), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d27 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them when I start a new word(✓), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d28 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them to emphasize a particular word(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d29 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them to emphasize a particular word(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d30 = "Thanks for your help! Just to recap I should be using underscores(✓), I should use them to emphasize a particular word(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d31 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them anytime I want to emphasize a letter(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d32 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them anytime I want to emphasize a letter(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d33 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them anytime I want to emphasize a letter(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d34 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them when I start a new word(✓), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d35 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them when I start a new word(✓), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d36 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them when I start a new word(✓), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"
@onready var d37 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them to emphasize a particular word(✗), and I should have clear and consice variable names(✓)? Take a look at my code and see how well you can read it!"
@onready var d38 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them to emphasize a particular word(✗), and I should abbreviate everything(✗)? Take a look at my code and see how well you can read it!"
@onready var d39 = "Thanks for your help! Just to recap I should be using no capital letters or underscores(✗), I should use them to emphasize a particular word(✗), and I should be as specific as possible(✗)? Take a look at my code and see how well you can read it!"

#Variables that represent the diagetic code represented on the computer. Subtrees are not compaitble here, each variable must be it's own string. 
@onready var c0 = "def func HowManyAtendees? \n    0x7ffe5367e044 = FetchAtendeeData()\n     __________ = 0x7ffe5367e044.GetAtendees() \n    return(_______) \n\n\n\n\n\n\nPress enter to send example code back to Jeb"

@onready var c1 = "placeholder"
@onready var c2 = "placeholder"
@onready var c3 = "placeholder"

@onready var c4 = "def class ConventionVenue: \n     NtTlCCPt = 200 \n     nrMS = 10\n     aDaC = True \n     l = (44.2231,99.1111)"
@onready var c5 = "def class ConventionVenue: \n     nTtlCpt = 200 \n     nRms = 10\n     adaC = True \n     l = (44.2231,99.1111)"
@onready var c6 = "def class ConventionVenue: \n     Nttlcpt = 200 \n     nrMS = 10\n     Adac = True \n     l = (44.2231,99.1111)"
@onready var c7 = "def class Convention_Venue: \n     n_t_t_l_c_p_t = 200 \n     nr_ms = 10\n     a_da_c = True \n     l = (44.2231,99.1111)"
@onready var c8 = "def class Convention_Venue: \n     n_ttl_cpt = 200 \n     n_rms = 10\n     ada_c = True \n     l = (44.2231,99.1111)"
@onready var c9 = "def class Convention_Venue: \n     nttl_c_pt = 200 \n     nr_ms_c_ = 10\n     ada_c_ = True \n     l = (44.2231,99.1111)"
@onready var c10 = "def class ConventionVenue: \n     nttlccpt = 200 \n     nrms = 10\n     adac = True \n     l = (44.2231,99.1111)"
@onready var c11 = c10
@onready var c12 = c10

@onready var c13 = "def class ConventionVenue:\n     NuMtOtAlCaPaCiTy = 200 \n     NuMrOoMs = 10\n     aDaCoMpLiAnCe = True \n     lOcAtIoN = (44.2231,99.1111)"
@onready var c14 = "def class ConventionVenue:\n     NtTlCCPt = 200 \n     nrMS = 10\n     aDaC = True \n     l = (44.2231,99.1111)"
@onready var c15 = "def class ConventionVenue:\n     tHeMaXiMuMnUmBeRoFpEoPlEtHeVeNuEcAnAcCoMmOdAtEiNtErMsOfGuEsTsNoTiNcLuDiNgStAfFoRpReSeNtErS = 200 \n     tHeNuMbErOfRoOmStHaTwEcAnUsEiNtHeVeNuEfOrPrEsEnTaTiOnSnOtInClUdInGbAtHrOoMsAnDbAcKoFhOuSeStUfFjUsTcOnFrEnCeRoOmSaNdBaLlRoOmS = 10\n     wHeThErOrNoTtHeVeNuEhAsRaMpSeLeVaToRsAnDoThErAdAcOmPlIaNtFeAtUrEs = True \n     tHeExAcTcOoRdInAtEsOfThEvEnUe = (44.2231,99.1111)"
@onready var c16 = "def class ConventionVenue:\n     numTotalCapacity = 200 \n     numRooms = 10\n     adaCompliance = True \n     location = (44.2231,99.1111)"
@onready var c17 = "def class ConventionVenue:\n     nTtlCpt = 200 \n     nRms = 10\n     adaC = True \n     l = (44.2231,99.1111)"
@onready var c18 = "def class ConventionVenue:\n     theMaximumNumberOfPeopleTheVenueCanAccommodateInTermsOfGuestsNotIncludingStaffOrPresenters = 200 \n     theNumberOfRoomsThatWeCanUseInTheVenueForPresentationsNotIncludingBathroomsAndBackOfHouseStuffJustConfrenceRoomsAndBallRooms = 10\n     whetherOrNotTheVenueHasRampsElevatorsAndOtherADACompliantFeatures = True \n     theExactCoordinatesOfTheVenue = (44.2231,99.1111)"
@onready var c19 = "def class ConventionVenue:\n     numtotalCapacity = 200 \n     Numrooms = 10\n     adaCompliance = True \n     Location = (44.2231,99.1111)"
@onready var c20 = "def class ConventionVenue:\n     Nttlcpt = 200 \n     nrMS = 10\n     Adac = True \n     l = (44.2231,99.1111)"
@onready var c21 = "def class ConventionVenue:\n     ThemaximumnumberofpeoplethevenueCanaccommodateintermsofguestsnotincludingstafforpresenters = 200 \n     ThenumberofroomsthatweCanuseinthevenueforpresentationsnotincludingBathroomsAndbackofhousestuffjustConferenceroomsandballrooms = 10\n     Whetherornotthevenuehasrampselevatorsandotheradacompliantfeatures = True \n     Theexactcoordinatesofthevenue = (44.2231,99.1111)"
@onready var c22 = "def class Convention_Venue:\n     numtotal_c_apa_c_ity = 200 \n     n_u_m_r_o_o_ms = 10\n     ada_c_omplian_c_e = True \n     lo_c_ation = (44.2231,99.1111)"
@onready var c23 = "def class Convention_Venue:\n     nttl_c_pt = 200 \n     n_r_m_s = 10\n     a_da_c_ = True \n     l = (44.2231,99.1111)"
@onready var c24 = "def class Convention_Venue:\n     themaximumnumberofpeoplethevenue_c_ana_c_c_om_modateintermsofguestsnotin_c_ludingstafforpresenters = 200 \n     thenumberofroomsthatwe_c_anuseinthevenueforpresentationsnotin_c_ludingbathroomsandba_c_kofhousestuffjust_c_onfren_c_eroomsandballrooms = 10\n     whetherornotthevenuehasrampselevatorsandotherada_c_ompliantfeatures = True \n     theexact_c_oordinatesofthevenue = (44.2231,99.1111)"
@onready var c25 = "def class Convention_Venue:\n     num_total_capacity = 200 \n     num_rooms = 10\n     ada_compliance = True \n     location = (44.2231,99.1111)"
@onready var c26 = "def class Convention_Venue:\n     n_ttl_cpt = 200 \n     n_rms = 10\n     ada_c = True \n     l = (44.2231,99.1111)"
@onready var c27 = "def class Convention_Venue:\n     the_maximum_number_of_people_the_venue_can_accommodate_in_terms_of_guests_not_including_staff_or_presenters = 200 \n     the_number_of_rooms_that_we_can_use_in_the_venue_for_presentations_not_including_bathrooms_and_back_of_house_stuff_just_confrence_rooms_and_ball_rooms = 10\n     whether_or_not_the_venue_has_ramps_elevators_and_other_ada_compliant_features = True \n     the_exact_coordinates_of_the_venue = (44.2231,99.1111)"
@onready var c28 = "def class Convention_Venue:\n     numtotal_c_apa_c_ity = 200 \n     numrooms_c_ = 10\n     ada_c_omplian_c_e = True \n     lo_c_ation = (44.2231,99.1111)"
@onready var c29 = "def class Convention_Venue:\n     nttl_c_pt = 200 \n     nr_ms_c_ = 10\n     ada_c_ = True \n     l = (44.2231,99.1111)"
@onready var c30 = "def class Convention_Venue:\n     themaximumnumberofpeoplethevenue_c_ana_c__c_ommodateintermsofguestsnotin_c_ludingstafforpresenters = 200 \n     thenumberofroomsthatwe_c_anuseinthevenueforpresentationsnotin_c_ludingbathroomsandba_c_kofhousestuffjust_c_onfren_c_eroomsandballrooms = 10\n     whetherornotthevenuehasrampselevatorsandotherada_c_ompliantfeatures = True \n     theexa_c_t_c_oordinatesofthevenue = (44.2231,99.1111)"
@onready var c31 = "def class ConventionVenue:\n     numtotalcapacity = 200 \n     numrooms = 10\n     adacompliance = True \n     location = (44.2231,99.1111)"
@onready var c32 = "def class ConventionVenue:\n     nttlcpt = 200 \n     nrms = 10\n     adac = True \n     l = (44.2231,99.1111)"
@onready var c33 = "def class ConventionVenue:\n     themaximumnumberofpeoplethevenuecanaccommodateintermsofguestsnotincludingstafforpresenters = 200 \n     thenumberofroomsthatwecanuseinthevenueforpresentationsnotincludingbathroomsandbackofhousestuffjustconfrenceroomsandballrooms = 10\n     whetherornotthevenuehasrampselevatorsandotheradacompliantfeatures = True \n     theexactcoordinatesofthevenue = (44.2231,99.1111)"
@onready var c34 = c31
@onready var c35 = c32
@onready var c36 = c33
@onready var c37 = c34
@onready var c38 = c35
@onready var c39 = c36

#Initialization of the arrays that store the variables for both the dialogue box and computer code that will be iterated over. 
@onready var dialogueArray = [
						d0, 
					d1, d2, d3, 
		d4, d5, d6, d7, d8, d9, d10, d11, d12, 
	d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, d33, d34, d35, d36, d37, d38, d39
]

@onready var codeArray = [
						c0, 
					c1, c2, c3, 
		c4, c5, c6, c7, c8, c9, c10, c11, c12, 
	c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39
]

#Initialization of variables that control the dialogue box. 
@onready var universalController = 0 #Controls overall game loop
@onready var localController = 0 #Controls dialogue subtrees
@onready var scroller = 0 #Controls multi screen text

@onready var paused = false #Variable that controls the pause screen

# Called when the node enters the scene tree for the first time.
func _ready():
	#Default text displayed on computer and in textbox
	textBoxLabel.text = "                                                    Controls Menu \n1,2,3,4,5: Dialogue Responses                                                  Esc:pause\nTab: Next panel of dialogue (only if ... at end)                               Enter: Submit your written code\nRight Arrow Key: Continue \n                                      PRESS RIGHT ARROW KEY TO CONTINUE"
	codeBoxLabel.text = "Welcome to your official ConventionCorp computer! You will use this to view code written by your staff or sometimes directly give them code in a box like the one below."
	inputText.text = ""
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("next")): #Handles clicking the right arrow key
		if universalController != 0:
			universalController = (universalController*3)+1
		updateBoxes(universalController)
	
	if Input.is_action_just_pressed("OneKey"): # 1-3 Handles selecting dialogue options for main game loop
		universalController = (universalController*3)+1
		updateBoxes(universalController)
	
	if Input.is_action_just_pressed("TwoKey"):
		universalController = (universalController*3)+2
		updateBoxes(universalController)
	
	if Input.is_action_just_pressed("ThreeKey"):
		universalController = (universalController*3)+3
		updateBoxes(universalController)
	
	if Input.is_action_just_pressed("FourKey"): #4-5 handles selecting dialogue options for subtrees
		scroller = 0
		localController = (localController*2)+1
		addText(universalController)
	
	if Input.is_action_just_pressed("FiveKey"):
		scroller = 0
		localController = (localController*2)+2
		addText(universalController)
	
	if Input.is_action_just_pressed("tabKey"): #Handles multi screen scrolling
		scroller+=1
		addText(universalController)
	
	if Input.is_action_just_pressed("esc"): #Pause button
		pauseScreen()
	
	if Input.is_action_just_pressed("enter"): #Handles taking in computer input
		checkInput()
		universalController = (universalController*3)+detectCase(checkInput())
		updateBoxes(universalController)


#Function that handles how to pause and unpause the game
func pauseScreen():
	if paused == false: #When the game isn't paused, pause the game
		$OfficeScene.hide()
		$ComputerScreen.hide()
		$Pause.show()
		paused = true
	else: #Functionality for hitting resume or escape on pause screen
		$OfficeScene.show()
		$ComputerScreen.hide()
		$Pause.hide()
		paused = false
		
		
#Variables defining what comes before and after the input for the computer text of c1
@onready var c1p1 = "def func HowManyAtendees? \n    0x7ffe5367e044 = FetchAtendeeData()\n     "
@onready var c1p2 = " = 0x7ffe5367e044.GetAtendees() \n     return("
@onready var c1input = ""

func checkInput(): #Function that inserts the text that was input into the code
	c1input = inputText.text
	if universalController == 0:
		var finalc1 = c1p1 + c1input + c1p2 +c1input + ")"
		codeArray[universalController*3+1] = finalc1
		codeArray[universalController*3+2] = finalc1
		codeArray[universalController*3+3] = finalc1
	return(c1input)
		
		
func detectCase(text): #Detects if it is snake case, camel case, or neither and sents the universal controller down the appropriate tree path
	for item in text: #Detects camel case by looking for underscores
		if item == "_":
			return 2
		elif item.unicode_at(0) >= 65 and item.unicode_at(0) <= 90: #Detects snake case by looking for upper case letters
			return 1
	return 3 #Neither camel or snake case


func addText(dialogueArrNum): #Function that adds text to the dialogue box
	if dialogueArrNum >=len (dialogueArray):#Default for if they press enter beyond the planned demo
		textBoxLabel.text = ("It seems the god in charge of what I say has ran out of words for me so I guess we're done here!") 
		textBoxLabel.visible_ratio = 0 #201-203 Reveals text in text box according to setting in pause menu
		var tween = create_tween()
		tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value) 
	
	else: #Logic for outputting dialogue from dialogue tree
		var dialogue = dialogueArray[dialogueArrNum]
		if typeof(dialogue) == TYPE_STRING: #If it's just a string, output it
			textBoxLabel.text = dialogue
		else: #If it is an array (meaning subtree), move to subtree functionality
			addSecondLevelText(localController,dialogue)
		textBoxLabel.visible_ratio = 0 #Same code as 201-203 to reveal text according to setting in pause menu
		var tween = create_tween()
		tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)
		
		
func addSecondLevelText(controllerNum,array): # Logic for displaying subtree text
	var subArray = array[controllerNum]
	var dialogue = subArray[scroller]
	textBoxLabel.text = dialogue
	textBoxLabel.visible_ratio = 0
	var tween = create_tween()
	tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)
	

func updateBoxes(num): #Function that is called when universal controller is changed, calls functions to change dialogue box and diagetic computer box
	addText(num)
	addCode(num)
	
	
func addCode(codeArrNum): #Logic for displaying text to diagetic computer
	if codeArrNum >=len (codeArray): #For if the universal controller goes out of the range of defined text
		codeBoxLabel.text = ("This is your ConventionCorp Computer")
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)
	else: #For if the universal controller is within the range of defined text, display text to computer screen
		codeBoxLabel.text = codeArray[codeArrNum]
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)


func _on_button_pressed() -> void: #If the button to open the computer is pressed
	var userInput = inputText #Box that user's can put input into
	if $OfficeScene.visible == true: #If the office scene is currently displayed
		$OfficeScene.hide()
		$ComputerScreen.show() #Hide the office and open the computer screen
		if (universalController == 0):
			inputBox.show()
			userInput.show() #Show the input box for certian level of dialogue tree
			
		else: #Hide the input box for others
			userInput.hide()
			inputBox.hide()
			
		
	else:
		$OfficeScene.show()
		$ComputerScreen.hide() #Return to main office scene
	
func _on_start_over_pressed() -> void: #Unpauses the screen then calls ready, which resets the game
	pauseScreen()
	_ready()
	
func _on_resume_pressed() -> void: #Resumes game by hiding pause screen
	pauseScreen()
