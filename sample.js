/*

Here are the steps for getting all pictures from a board.

The images are loaded asynchronously based on where you are on the page. Images that are not in view are not in the DOM,
so you need to scroll for each section.

Do these steps in the console in your browser ON the page with the board you want to get pictures for:

e = []

document.querySelectorAll('img').forEach(d => e.push(d.attributes.srcset?.textContent))

e = e.filter(ff => ff !== undefined)

e = e.map(ff => ff.split(', ')[3].split(' ')[0])

copy(e)

(After this, you can press the up arrow button to navigate through past commands in the console (so you don't need to keep pasting them)).

Then, paste the array into the new_pins method in the pin.rb file. Add a , after where you pasted it.

Keep repeating all of these steps until you reach the bottom of the board.

Run the program from the command line (in this directory) with: ruby pin.rb.

*/