// test.res — mixed-syntax test file
// Purpose: exercise keywords, comments, strings, functions, loops, conditionals, types
/* block comment start */
// Variables and constants
var_a = 123  # placeholder
var_b = 'transylvania'
list_example = [1, 2, 3, 4]
map_example = {'k':'v'}

// Function / method examples
def compute(a, b):
    # multi-line body
    if a > b:
        return a - b
    for i in range(3):
        pass
    return b - a

// Class / structure / type example
class Thing:
    def __init__(self, name):
        self.name = name
    def info(self):
        return f"Thing: {self.name}"

// I/O and template strings / interpolation
print(f"Result: {compute(10, 5)}")

// Edge cases: string with quotes, unicode, long comments
s = "He said: \"Beware the night\" — \u2605"
multiline = '''Line1
Line2
Line3'''

