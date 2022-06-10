
import sys

string_to_delete = ['core   0: 3 ']
def start():
 with open(sys.argv[1], "r") as input:
    with open(sys.argv[2], "w") as output:
        lines = input.readlines()
        skip = 11
        for line_no, line in enumerate(lines):
            if line_no < skip or line_no%2 == 0:
                pass
            else:
                for word in string_to_delete:
                    line = line.replace(word, "")
                    x = line.split()
                    if len(x) > 2 and x[2] == 'c773_mtvec': 
                        line = x[0] + ' ' + x[1] + '\n'
                    elif len(x) == 5 and len(x[4]) == 3 and x[2] == 'mem':
                        slice = x[4].split('x')
                        line = x[0] + ' ' + x[1] + ' ' + x[2] + ' ' + x[3] + ' ' + slice[0] + 'x0' + slice[1] + '\n'
                    output.write(line)


start()
