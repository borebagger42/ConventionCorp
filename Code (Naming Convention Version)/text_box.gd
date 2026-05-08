"""
Author: JoJo Kaler
Credits: This was developed as a capstone project under the supervision of Dr. Christian Newman at the Rochester Institute of Technology. Generative AI was not used in the writing of this code, however it was used to generate some of the visuals. 

"""

extends CanvasLayer

#Initilization of variables representing on screen elements
@onready var textBoxLabel = $OfficeScene/TextBoxContainor/MarginContainer/HBoxContainer/Label
@onready var codeBoxLabel = $ComputerScreen/HBoxContainer/Label
@onready var textSpeedSlider = $Pause/Panel/HSlider


#Initializing variables that go into the dialogue tree. d0 represents the root node, d1,d2,d3 are it's children, etc.
#d0 is an example of how to create a subtree that doesn't affect the game loop. The subtree must be it's own array and each element of the subtree must be it's own array. Two items in the same node of the subtree represent multiple dialogue screens.
@onready var d0 = [["This is part one of a two part text box. Press tab to go to part 2...", "This is part to of a two part text box. It is contained in a subtree. \n\nPress 4 to go to the left child of this node in the subtree \npress 5 to go to the right child of this node in the subtree."],["This is the left child of the subarray. \nTo go to the left child of the node in the main tree, press 1\nTo go to the middle child of the main tree, press 2 \n To go to the right child of the main tree press 3"]]

@onready var d1 = "This is the left child of the parent node. \nTo go to the left child of this node in the main tree, press 1\nTo go to the middle child of this node in the main tree, press 2 \n To go to the right child of this node in the main tree press 3"
@onready var d2 = "This is the middle child of the parent node \nTo go to the left child of this node in the main tree, press 1\nTo go to the middle child of this node in the main tree, press 2 \n To go to the right child of this node in the main tree press 3"
@onready var d3 = "This is the right child of the parent node \nTo go to the left child of this node in the main tree, press 1\nTo go to the middle child of this node in the main tree, press 2 \n To go to the right child of this node in the main tree press 3"

@onready var d4 = "Placeholder text"
@onready var d5 = "Placeholder text"
@onready var d6 = "Placeholder text"
@onready var d7 = "Placeholder text"
@onready var d8 = "Placeholder text"
@onready var d9 = "Placeholder text"
@onready var d10 = "Placeholder text"
@onready var d11 = "Placeholder text"
@onready var d12 = "Placeholder text"

@onready var d13 = "Placeholder text"
@onready var d14 = "Placeholder text"
@onready var d15 = "Placeholder text"
@onready var d16 = "Placeholder text"
@onready var d17 = "Placeholder text"
@onready var d18 = "Placeholder text"
@onready var d19 = "Placeholder text"
@onready var d20 = "Placeholder text"
@onready var d21 = "Placeholder text"
@onready var d22 = "Placeholder text"
@onready var d23 = "Placeholder text"
@onready var d24 = "Placeholder text"
@onready var d25 = "Placeholder text"
@onready var d26 = "Placeholder text"
@onready var d27 = "Placeholder text"
@onready var d28 = "Placeholder text"
@onready var d29 = "Placeholder text"
@onready var d30 = "Placeholder text"
@onready var d31 = "Placeholder text"
@onready var d32 = "Placeholder text"
@onready var d33 = "Placeholder text"
@onready var d34 = "Placeholder text"
@onready var d35 = "Placeholder text"
@onready var d36 = "Placeholder text"
@onready var d37 = "Placeholder text"
@onready var d38 = "Placeholder text"
@onready var d39 = "Placeholder text"

#Variables that represent the diagetic code represented on the computer. Subtrees are not compaitble here, each variable must be it's own string. 
@onready var c0 = "Placeholder text"

@onready var c1 = "Placeholder text"
@onready var c2 = "Placeholder text"
@onready var c3 = "Placeholder text"

@onready var c4 = "Placeholder text"
@onready var c5 = "Placeholder text"
@onready var c6 = "Placeholder text"
@onready var c7 = "Placeholder text"
@onready var c8 = "Placeholder text"
@onready var c9 = "Placeholder text"
@onready var c10 = "Placeholder text"
@onready var c11 = "Placeholder text"
@onready var c12 = "Placeholder text"

@onready var c13 = "Placeholder text"
@onready var c14 = "Placeholder text"
@onready var c15 = "Placeholder text"
@onready var c16 = "Placeholder text"
@onready var c17 = "Placeholder text"
@onready var c18 = "Placeholder text"
@onready var c19 = "Placeholder text"
@onready var c20 = "Placeholder text"
@onready var c21 = "Placeholder text"
@onready var c22 = "Placeholder text"
@onready var c23 = "Placeholder text"
@onready var c24 = "Placeholder text"
@onready var c25 = "Placeholder text"
@onready var c26 = "Placeholder text"
@onready var c27 = "Placeholder text"
@onready var c28 = "Placeholder text"
@onready var c29 = "Placeholder text"
@onready var c30 = "Placeholder text"
@onready var c31 = "Placeholder text"
@onready var c32 = "Placeholder text"
@onready var c33 = "Placeholder text"
@onready var c34 = "Placeholder text"
@onready var c35 = "Placeholder text"
@onready var c36 = "Placeholder text"
@onready var c37 = "Placeholder text"
@onready var c38 = "Placeholder text"
@onready var c39 = "Placeholder text"

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
	textBoxLabel.text = "                                                    Controls Menu \n1,2,3,4,5: Dialogue Responses                                          Esc:pause\nTab: Continue dialogue (only if ... at end)                             Right Arrow Key: Next dialogue\n\n                                         PRESS RIGHT ARROW KEY TO BEGIN"
	codeBoxLabel.text = "This is the computer screen!"
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
		

func addText(dialogueArrNum): #Function that adds text to the dialogue box
	if dialogueArrNum >=len (dialogueArray):#Default for if they press enter beyond the planned demo
		textBoxLabel.text = ("You have ran out of defined elements in the dialogue tree") 
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
		codeBoxLabel.text = ("You have ran out of defined variables in the computer tree")
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)
	else: #For if the universal controller is within the range of defined text, display text to computer screen
		codeBoxLabel.text = codeArray[codeArrNum]
		codeBoxLabel.visible_ratio = 0
		var tween = create_tween()
		tween.tween_property(codeBoxLabel, "visible_ratio", 1, 10-textSpeedSlider.value)


func _on_button_pressed() -> void: #If the button to open the computer is pressed
	if $OfficeScene.visible == true: #If the office scene is currently displayed
		$OfficeScene.hide()
		$ComputerScreen.show() #Hide the office and open the computer screen
				
	else:
		$OfficeScene.show()
		$ComputerScreen.hide() #Return to main office scene
	
func _on_start_over_pressed() -> void: #Unpauses the screen then calls ready, which resets the game
	pauseScreen()
	_ready()
	
func _on_resume_pressed() -> void: #Resumes game by hiding pause screen
	pauseScreen()
