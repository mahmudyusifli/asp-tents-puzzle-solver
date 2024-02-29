# asp-tents-puzzle-solver
This repository has been established for the mini-project within the Introduction to Artificial Intelligence 1 course at the University of Klagenfurt.

## Tents and Trees Puzzle

Tents (sometimes known as "Tents and Trees") is a popular logic puzzle. According to https://wpcunofficial.miraheze.org/wiki/Tents it was first published by Léon Balmaekers with the Dutch name "Alle Ballen Verzamelen" in 1989.

Some webpages with Tent puzzles:

https://www.puzzle-tents.com/

https://www.brainbashers.com/tents.asp

https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/tents.html

## Rules

* Place tents on the grid, so that each tree has a unique horizontally or vertically adjacent tent. This also means that no tent can "serve" more than one tree.
* Tents should not be adjacent to each other (neither horizontally, nor vertically, and also not diagonally).
* The given numbers for rows and columns have be equal to the number of placed tents in the respective row or column.

## Task

Main task is to implement an automated solver that can solve Tents puzzles, ideally of any size.

## Usage 

Requirements: Clingo, Python.

1.1. Copy and paste the following into your local machine _(edit input)_.
```bash
clingo tentsolve.lp input-?-?.txt
```
1.2. Alternatively:
```bash
python tent.py input-6-6.txt
```
Your output should look like this:
<br> <!-- Add a line break -->
<img src="https://github.com/mahmudyusifli/asp-tents-puzzle-solver/assets/60064090/0688dda1-c2a2-4ef4-b587-1e74dfcc1f4d" alt="solution" width="700">

## License

You can use the code for educational purposes starting from 01.03.2024.
