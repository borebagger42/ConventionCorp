# ConventionCorp

ConventionCorp is a gamified educational tool for teaching good coding practices, specifically naming conventions. It is meant to be used as supplemental instruction to increase engagement and understanding of the topic. You play as a manager at the titular company, ConventionCorp, and you are tasked with onboarding Jeb. Jeb comes from a planet where they only use memory addresses instead of variable names so he has never heard or even seen code using naming conventions. Your job is to give him feedback on his code, but be careful! As he will follow your advice to the extreme. 

### Implementation Overview
There are two trees, one representing the dialogue in the dialogue box and the other for the diegetic computer. There is a universal controller that dictates which part of these array-based trees will be output to their respective areas. 
There is additional implementation for dialogue subtrees that do not affect the universal controller, and thus, the game loop remains unaffected. There is also an implementation to read from a variable and determine if that variable is snake case, camel case, or neither. Lastly, there is an implementation for a pause screen with options to resume, restart, or change the pace at which text appears. 

### Future Work
This project is meant to be adaptable to teach concepts outside of naming conventions. It is built in such a way that changing the content of the game does not require a deep understanding of the underlying code. Therefore, creating versions that are for commenting practices or other coding practices is simple. 
The level of interactibility could be increased. There are only a few still images used throughout the game. Some form of animation or visual change as the game progresses would improve the project. 

### Credit
All code and content were written by JoJo Kaler. Guidance and ideation were provided by Dr. Christian Newman. Some images were created by generative AI. This project was created as a capstone for the Software Engineering department within the Golisano College for Computing and Information Sciences at the Rochester Institute of Technology. 
