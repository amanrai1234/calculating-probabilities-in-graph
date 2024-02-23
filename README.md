#Probability Calculator 

This Python script calculates a probability based on certain conditions using a JSON data file as input.

Instructions:

1. Place the 'lockv0.json' file in the same directory as this script.

2. Make sure you have Python installed on your system.

3. Install the required Python libraries:

   - numpy
   - pickle
   - json
   - networkx

4. Run the script:


The script will calculate the probability based on the specified conditions and print the result.

Customization:

- You can modify the 'compute' function parameters in this(micron_final.ipynb or .py) file to calculate probabilities for different conditions.

value: Set to True for analyzing input variables (IN) or False for output variables (OUT).
variable: The name of the variable you want to analyze.(ex-"code")
file_name: The name of the JSON file containing the code graph data in this case it will be("lockv0")
dicts: The adjacency list of the code graph.(this is already computed in the graph)

- Ensure that the 'lockv0.json' file contains the necessary data in the expected format.
