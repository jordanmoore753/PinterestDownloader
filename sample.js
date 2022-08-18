/*

Here are the steps for getting all pictures from a board.

The images are loaded asynchronously based on where you are on the page. Images that are not in view are not in the DOM,
so you need to scroll for each section of images.

Run the first step in the browser console. Do the second step in the pin.rb file.

1. copy(Array.from(document.querySelectorAll('img')).map(image => image.attributes.srcset?.textContent).filter(image => image !== undefined).map(url => url.split(', ')[3].split(' ')[0]))

2. Paste the array into the new_pins method in the pin.rb file. Add a , after where you pasted it.

Repeat this process until you've reached the bottom of the page.

Finally, run the program from the command line (in this directory) with: ruby pin.rb.

*/