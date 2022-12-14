# Pinterest Board Image Downloader

Here are the steps for getting all pictures from a Pinterest board.

The images are loaded asynchronously based on where you are on the page. Images that are not in view are not in the DOM,
so you need to scroll for each section of images.

Run the first step in the browser console. Do the second step in the pin.rb file.

1. `copy(Array.from(document.querySelectorAll('img')).map(image => image.attributes.srcset?.textContent).filter(image => image !== undefined).map(url => url.split(', ')[3].split(' ')[0]))`

2. Paste the array into the `pins` method in the `pin.rb` file. Add a comma after where you pasted it. Remove the array entries if you are starting over on a new board, otherwise you will re-download all of the previous ones.

3. Go back to the Pinterest board and scroll down until you have a full page of new pictures. Repeat steps 1 and 2.

Repeat these steps until you've reached the bottom of the page.

Finally, run the program from the command line (in this directory) with: ruby pin.rb.