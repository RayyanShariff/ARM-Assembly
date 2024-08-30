# Array Running Sum in Assembly

## Overview
This project implements an array running sum calculation in ARM assembly language. It is part of the F27CS Intro to Computer Sytems course at Heriot-Watt University. This programming assignment (Program 4) builds upon a previous program to demonstrate array manipulation and running sum calculation in low-level assembly code.

## Purpose
The main objectives of this program are:
1. To fill an array with a sequence of numbers from 1 to 20.
2. To calculate a running sum of the array elements.
3. To store the running sum in a separate array.

## Features
- Initializes an array with values from 1 to 20.
- Calculates the running sum of the array elements.
- Stores the running sum in a separate array.
- The last element of the sums array (sums[19]) contains the total sum of all elements in the original array.

## Implementation Details
- The program uses two arrays: `array` and `sums`, each with 20 elements (80 bytes each).
- It utilizes registers and memory operations to manipulate array elements.
- The main logic is implemented in a loop that populates the original array and calculates the running sum simultaneously.

## Code Structure
- `.text` section: Contains the main program logic.
- `.data` section: Defines the memory space for the arrays.
- Main loop: Implements the array population and running sum calculation.

## Expected Output
- The `array` will be filled with values 1, 2, 3, ..., 20.
- The `sums` array will contain the running sum at each step.
- The last element of `sums` (sums[19]) should be 210, which is the sum of numbers from 1 to 20.

## How to Run
1. Load the program into an ARM assembly emulator or simulator (e.g., CPUlator).
2. Run the program.
3. Inspect the memory locations for `array` and `sums` to verify the results.

## Notes
- This program is designed for educational purposes to demonstrate low-level array manipulation and arithmetic operations in assembly language.
- The code assumes a specific ARM assembly environment and may need adjustments for different platforms or assemblers.

## License
This project is submitted as coursework and is subject to university guidelines on academic integrity and code sharing.
