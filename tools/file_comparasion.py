import sys
file_1 = open(sys.argv[1],'r')
file_2 = open(sys.argv[2],'r')

import re
print("Comparing files ", " @ " + 'trace.log', " # " + 'spike.log', sep='\n')

file_1_line = file_1.readline()
file_2_line = file_2.readline()

# Use as a COunter
line_no = 1

print()
with open(sys.argv[1]) as file1:
    with open(sys.argv[2]) as file2:
        same = set(file1).intersection(file2)

#print("Common Lines in Both Files")

#for line in same:
#    print(line, end='')

#print('\n')
print("Difference Lines in Both Files")
while file_1_line != '' or file_2_line != '':
    #print("@",  line_no)
    # Removing whitespaces
    file_1_line = re.sub(' +', ' ',file_1_line) 
    file_2_line = re.sub(' +', ' ',file_2_line) 
    #print("@", "Line-%d" % line_no, file_1_line)

    # Compare the lines from both file
    if file_1_line != file_2_line:
        #print("@",  line_no)
        # otherwise output the line on file1 and use @ sign
        if file_1_line == '':
            print("@", "Line-%d" % line_no, file_1_line)
        else:
            print("@-", "Line-%d" % line_no, file_1_line)

        # otherwise output the line on file2 and use # sign
        if file_2_line == '':
            print("#", "Line-%d" % line_no, file_2_line)
        else:
            print("#+", "Line-%d" % line_no, file_2_line)

        # Print a empty line
        print()

    # Read the next line from the file
    file_1_line = file_1.readline()
    file_2_line = file_2.readline()

    line_no += 1

file_1.close()
file_2.close()
