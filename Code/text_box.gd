"""
Author: JoJo Kaler
Credits: This was developed as a capstone project under the supervision of Dr. Christian Newman at the Rochester Institute of Technology. Generative AI was not used in the writing of this code, however it was used to generate some of the visuals. 

"""

extends CanvasLayer

#Initilization of variables representing on screen elements
@onready var textBoxLabel = $Correctsizedoffice/TextBoxContainor/MarginContainer/HBoxContainer/Label
@onready var codeBoxLabel = $JustScreen/HBoxContainer/Label


#Initializing variables that go into the dialogue tree. d0 represents the root node, d1,d2,d3 are it's children, etc.
##d0 is an example of how to create a subtree that doesn't affect the game loop. The subtree must be it's own array and each element of the subtree must be it's own array. Two items in the same node of the subtree represent multiple dialogue screens.
@onready var d0 = "Awesome! I am not having such a good day because I was told you guys use something called variable names here rather than memorizing every storage address like we do on Asblamflabacor? And apparently there's rules around what I am supposed to name these variables??? I sent the code I'm working on to your computer, could you give me an example of a variable name that's at least two words?"
@onready var d1 = "Thanks! I see that you have capitalized some letters. How often should I be capitalizing these letters?\n1. Anytime you want to emphasize a particular letter \n2. When you start a new word or abbreviation after the first \n3. Only when you want to emphasize a particular word in a variable name"
@onready var d2 = "Thanks! I see that you are using underscores. How often should I put underscores in my variable name?\n1. Anytime you want to emphasize a particular letter \n2. When you start a new word or abbreviation after the first \n3. Only when you want to emphasize a particular word in a variable name"
@onready var d3 = "Thanks! Not having any capitol letters or underscores to make things readable to humans makes me feel like im back on Asblamflabacor! "
@onready var d4 = "That sounds like fun! Going to take some getting used to. Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d5 = "Ugh, sounds like a lot of work but I see the benefits. Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d6 = "Awesome! Just like back on Asblamflabacor. Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d7 = d4
@onready var d8 = d5
@onready var d9 = "That makes sense! I love the letter C you have in this language. Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d10 = "Another question for you: How specific should my names be? \n1. Longer than you have. Keep it consise but use full words unless it's a commonly known abbreviation. \n2. What you have is great! No changes needed, abbreviate everything. \n3. You should be as specific as possible. Anyone reading should know exactly what it is"
@onready var d11 = d10
@onready var d12 = d10
@onready var d13 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d14 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d15 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d16 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d17 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d18 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d19 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d20 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d21 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d22 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d23 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d24 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d25 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d26 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d27 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d28 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d29 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d30 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d31 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d32 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d33 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d34 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d35 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d36 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d37 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d38 = "Thanks so much for your help! Take a look at my final beautiful code!"
@onready var d39 = "Thanks so much for your help! Take a look at my final beautiful code!"

#Variables that represent the diagetic code represented on the computer. Subtrees are not compaitble here, each variable must be it's own string. 
@onready var c0 = "def func HowManyAtendees? \n    0x7ffe5367e044 = FetchAtendeeData()\n     __________ = 0x7ffe5367e044.GetAtendees() \n    return(_______)"
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
@onready var c13 = "def class ConventionVenue: \n     NuMtOtAlCaPaCiTy = 200 \n     NuMrOoMs = 10\n     aDaCoMpLiAnCe = True \n     lOcAtIoN = (44.2231,99.1111)"
@onready var c14 = "def class ConventionVenue: \n     NtTlCCPt = 200 \n     nrMS = 10\n     aDaC = True \n     l = (44.2231,99.1111)"
@onready var c15 = "def class ConventionVenue: \n     tHeMaXiMuMnUmBeRoFpEoPlEtHeVeNuEcAnAcCoMmOdAtEiNtErMsOfGuEsTsNoTiNcLuDiNgStAfFoRpReSeNtErS = 200 \n     tHeNuMbErOfRoOmStHaTwEcAnUsEiNtHeVeNuEfOrPrEsEnTaTiOnSnOtInClUdInGbAtHrOoMsAnDbAcKoFhOuSeStUfFjUsTcOnFrEnCeRoOmSaNdBaLlRoOmS = 10\n     wHeThErOrNoTtHeVeNuEhAsRaMpSeLeVaToRsAnDoThErAdAcOmPlIaNtFeAtUrEs = True \n     tHeExAcTcOoRdInAtEsOfThEvEnUe = (44.2231,99.1111)"
@onready var c16 = "def class ConventionVenue: \n     numTotalCapacity = 200 \n     numRooms = 10\n     adaCompliance = True \n     location = (44.2231,99.1111)"
@onready var c17 = "def class ConventionVenue: \n     nTtlCpt = 200 \n     nRms = 10\n     adaC = True \n     l = (44.2231,99.1111)"
@onready var c18 = "def class ConventionVenue: \n     theMaximumNumberOfPeopleTheVenueCanAccommodateInTermsOfGuestsNotIncludingStaffOrPresenters = 200 \n     theNumberOfRoomsThatWeCanUseInTheVenueForPresentationsNotIncludingBathroomsAndBackOfHouseStuffJustConfrenceRoomsAndBallRooms = 10\n     whetherOrNotTheVenueHasRampsElevatorsAndOtherADACompliantFeatures = True \n     theExactCoordinatesOfTheVenue = (44.2231,99.1111)"
@onready var c19 = "def class ConventionVenue: \n     numtotalCapacity = 200 \n     Numrooms = 10\n     adaCompliance = True \n     Location = (44.2231,99.1111)"
@onready var c20 = "def class ConventionVenue: \n     Nttlcpt = 200 \n     nrMS = 10\n     Adac = True \n     l = (44.2231,99.1111)"
@onready var c21 = "def class ConventionVenue: \n     ThemaximumnumberofpeoplethevenueCanaccommodateintermsofguestsnotincludingstafforpresenters = 200 \n     ThenumberofroomsthatweCanuseinthevenueforpresentationsnotincludingBathroomsAndbackofhousestuffjustConferenceroomsandballrooms = 10\n     Whetherornotthevenuehasrampselevatorsandotheradacompliantfeatures = True \n     Theexactcoordinatesofthevenue = (44.2231,99.1111)"
@onready var c22 = "def class Convention_Venue: \n     n_u_m_t_o_t_al_c_ap_a_c_i_ty = 200 \n     n_u_m_r_o_o_ms = 10\n     a_d_a_c_o_m_p_l_i_a_n_ce = True \n     l_o_c_a_t_i_o_n = (44.2231,99.1111)"
@onready var c23 = "def class Convention_Venue: \n     n_t_t_l_c_p_t = 200 \n     nr_ms = 10\n     a_da_c = True \n     l = (44.2231,99.1111)"
@onready var c24 = "def class Convention_Venue: \n     t_h_e_m_ax_i_m_u_m_n_u_mb_er_o_f_p_e_o_pl_e_t_h_e_v_en_u_e_c_an_ac_c_o_m_mo_d_at_e_in_t_er_ms_o_f_gu_es_ts_n_ot_in_c_lu_d_in_g_st_af_f_or_p_re_s_en_t_er_s = 200 \n     t_he_n_um_b_er_o_f_ro_o_ms_t_ha_t_w_e_c_an_us_e_in_th_e_v_en_ue_f_or_p_re_s_en_t_at_io_ns_n_ot_in_c_lu_di_n_g_ba_th_ro_o_ms_a_nd_b_ac_k_of_h_ou_se_s_tu_ff_j_us_t_co_nf_re_nc_e_r_oo_ms_an_d_b_al_l_r_oo_m_s = 10\n     w_he_th_er_o_r_no_t_t_he_v_en_ue_h_as_r_am_ps_e_le_va_to_rs_a_nd_o_th_e_r_ad_a_c_om_pl_ia_n_t_f_ea_tu_re_s = True \n     t_h_e_ex_ac_t_c_oo_rd_in_at_es_o_f_th_e_v_en_u_e = (44.2231,99.1111)"
@onready var c25 = "def class Convention_Venue: \n     num_total_capacity = 200 \n     num_rooms = 10\n     ada_compliance = True \n     location = (44.2231,99.1111)"
@onready var c26 = "def class Convention_Venue: \n     n_ttl_cpt = 200 \n     n_rms = 10\n     ada_c = True \n     l = (44.2231,99.1111)"
@onready var c27 = "def class Convention_Venue: \n     the_maximum_number_of_people_the_venue_can_accommodate_in_terms_of_guests_not_including_staff_or_presenters = 200 \n     the_number_of_rooms_that_we_can_use_in_the_venue_for_presentations_not_including_bathrooms_and_back_of_house_stuff_just_confrence_rooms_and_ball_rooms = 10\n     whether_or_not_the_venue_has_ramps_elevators_and_other_ada_compliant_features = True \n     the_exact_coordinates_of_the_venue = (44.2231,99.1111)"
@onready var c28 = "def class Convention_Venue: \n     numtotal_c_apa_c_ity = 200 \n     numrooms_c_ = 10\n     ada_c_omplian_c_e = True \n     lo_c_ation = (44.2231,99.1111)"
@onready var c29 = "def class Convention_Venue: \n     nttl_c_pt = 200 \n     nr_ms_c_ = 10\n     ada_c_ = True \n     l = (44.2231,99.1111)"
@onready var c30 = "def class Convention_Venue: \n     themaximumnumberofpeoplethevenue_c_ana_c__c_ommodateintermsofguestsnotin_c_ludingstafforpresenters = 200 \n     thenumberofroomsthatwe_c_anuseinthevenueforpresentationsnotin_c_ludingbathroomsandba_c_kofhousestuffjust_c_onfren_c_eroomsandballrooms = 10\n     whetherornotthevenuehasrampselevatorsandotherada_c_ompliantfeatures = True \n     theexa_c_t_c_oordinatesofthevenue = (44.2231,99.1111)"
@onready var c31 = "def class ConventionVenue: \n     numtotalcapacity = 200 \n     numrooms = 10\n     adacompliance = True \n     location = (44.2231,99.1111)"
@onready var c32 = "def class ConventionVenue: \n     nttlcpt = 200 \n     nrms = 10\n     adac = True \n     l = (44.2231,99.1111)"
@onready var c33 = "def class ConventionVenue: \n     themaximumnumberofpeoplethevenuecanaccommodateintermsofguestsnotincludingstafforpresenters = 200 \n     thenumberofroomsthatwecanuseinthevenueforpresentationsnotincludingbathroomsandbackofhousestuffjustconfrenceroomsandballrooms = 10\n     whetherornotthevenuehasrampselevatorsandotheradacompliantfeatures = True \n     theexactcoordinatesofthevenue = (44.2231,99.1111)"
@onready var c34 = c31
@onready var c35 = c32
@onready var c36 = c33
@onready var c37 = c34
@onready var c38 = c35
@onready var c39 = c36

#Initialization of the arrays that store the variables for both the dialogue box and computer code that will be iterated over. 
@onready var dialogueArray = [
	d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, 
	d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, 
	d20, d21, d22, d23, d24, d25, d26, d27, d28, d29,
	d30, d31, d32, d33, d34, d35, d36, d37, d38, d39
]

@onready var codeArray = [
	c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, 
	c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, 
	c20, c21, c22, c23, c24, c25, c26, c27, c28, c29,
	c30, c31, c32, c33, c34, c35, c36, c37, c38, c39
]

#Initialization of variables that control the dialogue box. 
@onready var universalController = 0 #Controls overall game loop
@onready var localController = 0 #Controls dialogue subtrees
@onready var scroller = 0 #Controls multi screen text

@onready var paused = false #Variable that controls the pause screen

# Called when the node enters the scene tree for the first time.
func _ready():
	#Default text displayed on computer and in textbox
	textBoxLabel.text = "                                                    Controls Menu \n1,2,3,4,5: Dialogue Responses                                                  Esc:pause\nTab: Continue dialogue (only if ... at end)                                     Enter: Submit your written code\nRight Arrow Key: Next dialogue (press now)"
	codeBoxLabel.text = "Welcome to your official ConventionCorp computer! You will use this to view code written by your staff or sometimes directly give them code in a box like the one below."
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("next")):
		if universalController != 0:
			universalController = (universalController*3)+1
		updateBoxes(universalController)
	if Input.is_action_just_pressed("OneKey"):
		universalController = (universalController*3)+1
		updateBoxes(universalController)
	if Input.is_action_just_pressed("TwoKey"):
		universalController = (universalController*3)+2
		updateBoxes(universalController)
	if Input.is_action_just_pressed("ThreeKey"):
		universalController = (universalController*3)+3
		updateBoxes(universalController)
	if Input.is_action_just_pressed("FourKey"):
		scroller = 0
		localController = (localController*2)+1
		addText(universalController)
	if Input.is_action_just_pressed("FiveKey"):
		scroller = 0
		localController = (localController*2)+2
		addText(universalController)
	if Input.is_action_just_pressed("tabKey"):
		scroller+=1
		addText(universalController)
	if Input.is_action_just_pressed("esc"):
		pauseScreen()
	if Input.is_action_just_pressed("enter"):
		checkInput()
		universalController = (universalController*3)+detectCase(checkInput())
		updateBoxes(universalController)

func pauseScreen():
	if paused == false:
		$Correctsizedoffice.hide()
		$JustScreen.hide()
		$Pause.show()
		paused = true
	else:
		$Correctsizedoffice.show()
		$JustScreen.hide()
		$Pause.hide()
		paused = false
		

@onready var c1p1 = "def func HowManyAtendees? \n    0x7ffe5367e044 = FetchAtendeeData()\n     "
	
@onready var c1p2 = " = 0x7ffe5367e044.GetAtendees() \n     return("
@onready var c1input = ""
func checkInput():
	c1input = $JustScreen/MarginContainer2/TextEdit.text
	if universalController == 0:
		var finalc1 = c1p1 + c1input + c1p2 +c1input + ")"
		codeArray[universalController*3+1] = finalc1
		codeArray[universalController*3+2] = finalc1
		codeArray[universalController*3+3] = finalc1
	return(c1input)
		
func detectCase(text): #snakeCase = 1 camel_case = 2 neither = 3
	for item in text:
		if item == "_":
			return 2
		elif item.unicode_at(0) >= 65 and item.unicode_at(0) <= 90:
			return 1
	return 3


func addText(dialogueArrNum):
	if dialogueArrNum >=len (dialogueArray):
		textBoxLabel.text = ("It seems the god in charge of what I say has ran out of words for me so I guess we're done here!")
		textBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-$Pause/Panel/HSlider.value)
	else:
		var dialogue = dialogueArray[dialogueArrNum]
		if typeof(dialogue) == TYPE_STRING:
			textBoxLabel.text = dialogue
		else:
			addSecondLevelText(localController,dialogue)
		textBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-$Pause/Panel/HSlider.value)
		
func addSecondLevelText(controllerNum,array):
	var da = array[controllerNum]
	var dialogue = da[scroller]
	textBoxLabel.text = dialogue
	textBoxLabel.visible_ratio = 0
	var tween = create_tween()
	tween.tween_property(textBoxLabel, "visible_ratio", 1, 10-$Pause/Panel/HSlider.value)
	


func updateBoxes(num):
	addText(num)
	addCode(num)
	
func addCode(codeArrNum):
	if codeArrNum >=len (codeArray):
		codeBoxLabel.text = ("Oh no! It looks like our overlords ran out of things for us to say. I guess I'll see you whenever they write more!")
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-$Pause/Panel/HSlider.value)
	else:
		codeBoxLabel.text = codeArray[codeArrNum]
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-$Pause/Panel/HSlider.value)

func _on_button_pressed() -> void:
	var userInput = $JustScreen/MarginContainer2/TextEdit
	if $Correctsizedoffice.visible == true:
		$Correctsizedoffice.hide()
		$JustScreen.show()
		if (universalController == 0):
			$JustScreen/MarginContainer2.show()
			userInput.show()
			
		else:
			userInput.hide()
			$JustScreen/MarginContainer2.hide()
			
		
	else:
		$Correctsizedoffice.show()
		$JustScreen.hide()
	
	


func _on_start_over_pressed() -> void:
	pauseScreen()
	_ready()
	


func _on_resume_pressed() -> void:
	pauseScreen()
