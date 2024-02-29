import argparse
import os
import subprocess


asp_program_file = "tentsolve.lp"  # Path to tentsolve.lp

parser = argparse.ArgumentParser(prog="Tents", description="Parse Tents & Trees puzzle data from a txt file")
parser.add_argument("filename", help="Path to the input file containing puzzle data")

# Parse command-line arguments
args = parser.parse_args()

# Check if the input file exists
if not os.path.exists(args.filename):
    print("Error: The specified input file does not exist.")
    exit(1)

try:
    command = ["clingo", asp_program_file, args.filename]
 
    print("Running command:", " ".join(command))
    

    clingo_output = subprocess.check_output(command, stderr=subprocess.STDOUT, universal_newlines=True)
    
  
    print(clingo_output)

except subprocess.CalledProcessError as e:
    # Handle errors raised by Clingo
    #print(f"Error running Clingo: {e}")
    print("Output:")
    print(e.output)

except Exception as e:
    # Handle unexpected errors
    print(f"An unexpected error occurred: {e}")

# Inform user of successful parsing
print(f"Successfully solved the puzzle using '{args.filename}' and '{asp_program_file}'.")
