# Assignment_1
First Assignment 2016 OOP

My idea is that of a view from the cockpit of a spaceship where you are on a planet (Venus), and are looking out into the open space with a clear view of the planet's Earth and Jupiter with Earth's moon (Luna) and Jupiter's largest moon in sight.
When you enter the UI, a loading screen appears as sif you are booting into the system to check your view.
Once the loading screen exits, you are located in the cockpit.
While in the cockpit you can see an Oxygen level on your bottom left screen and a radar in the bottom center.
You have a few functions while here also. If you press the letter 'i' or 'I', tags of the planets will pop up until you release the key.
If you press the letter 'e' or 'E' you are brought to a new screen that shows a picture of the planet Earth roatating with a few facts on the side of the screen. You must press 'b' or 'B' to exit the screen.
If you press the letter 'j' or 'J' you are brought to a screen with the planet Jupiter rotating and a few facts on the left.
Similarly with the letters 'l','L','g' and 'G' you are brought to your respective pages with an image rotating with facts to the left.

I used the push and pop matrix functions to rotate the images. It took me a while to realise how the function worked but i finally realised that i had to set the translate function to the centre of the image which was half of the dimensions taken away to set the fulcrum of rotation to the centre of the planet.

I made use of beginShape() functions while drawing shapes around the text and drawing the arrows on the oxygen tanks and radar screen.

I loaded in several pictures and two fonts.

I made use of global variables while rotating and while using the loading screen.

I created several classes while changing screens to display the planets/moons on different screens.

[![Video](http://img.youtube.com/vi/tYPVnA3dRNo&feature=youtu.be/0.jpg)](http://www.youtube.com/watch?v=tYPVnA3dRNo&feature=youtu.be)
