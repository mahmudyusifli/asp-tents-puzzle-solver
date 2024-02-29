# asp-tents-puzzle-solver
This repository has been established for the mini-project within the Introduction to Artificial Intelligence 1 course at the University of Klagenfurt.

# Tents and Trees Puzzle

Tents (sometimes known as "Tents and Trees") is a popular logic puzzle. According to https://wpcunofficial.miraheze.org/wiki/Tents it was first published by Léon Balmaekers with the Dutch name "Alle Ballen Verzamelen" in 1989.

Some webpages with Tent puzzles:

https://www.puzzle-tents.com/

https://www.brainbashers.com/tents.asp

https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/tents.html

# Rules

* Place tents on the grid, so that each tree has a unique horizontally or vertically adjacent tent. This also means that no tent can "serve" more than one tree.
* Tents should not be adjacent to each other (neither horizontally, nor vertically, and also not diagonally).
* The given numbers for rows and columns have be equal to the number of placed tents in the respective row or column.

# Task

Your main task is to implement an automated solver that can solve Tents puzzles, ideally of any size.
