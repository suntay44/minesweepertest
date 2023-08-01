APP REQUIREMENTS & GUIDELINES!

We would like you to create a simple app that generates a minesweeper board using Ruby on Rails
Guidelines:
  ● You should push up the code to a public repo
  ● Feel free to use any gems or libraries for everything except for the code used to generate a Minesweeper board.
  ● Feel free to use a CSS library like bootstrap to structure the views.

The app specs are as follows:
We are building a simple rails application that allows users to generate minesweeper boards as well as to view previously generated
minesweeper boards.

When I visit the app’s root url, it should take me to a page that’s clearly labeled, where I am prompted to enter my email address, a
board width, a board height, the number of mines, and a board name.

There should be a button labeled “Generate Board”, that when pressed, it should:
● send a request to the server that generates the minesweeper board
● the generated minesweeper board should be stored in the database, along with the name of the board and the email of whomever generated the board
● once saved, it should redirect the user to a page where the name of the board, the email of the creator, and a visual of the
generated minesweeper board is displayed (i.e. show action for the generated board).
○ The visual can be a simple xy plane that uses for empty cells and for cells that contain a mine

Note regarding the generator algorithm: The board generator algorithm is the main component of this coding challenge so make
sure it works as expected. It should work in a performant manner for boards of any dimension so make sure to test boards of all sizes
while you fine tune your algorithm. Lastly, the algorithm itself should return a two-dimensional array of objects that represent the state of a minesweeper board before the game starts.

Now, back at the home page, we should:
● add a labeled list for ten most recently generated boards
● Each list item should at the very least include the name of the board, the email of the user that generated the board, and the
created at date (nicely formatted).
● The title of each board should be a link that when clicked, should direct the user to a page that shows said generated board
● Lastly, at the bottom of the list, we should have a link that reads “view all generated boards” that when clicked takes the user
to a page that lists all of the boards generated by the app

Now that the core feature is complete, feel free to add additional features that will complete/enrich the user experience (i.e. add
pagination, search, filter, etc.). These aren’t necessarily required by the coding challenge, but if you wish to showcase any skills or add
your own ideas to the app, here’s the place to do it!
