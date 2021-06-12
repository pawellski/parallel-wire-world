import sys
import random

f = open(sys.argv[1], "w")

for i in range(int(sys.argv[2])):
    for j in range(int(sys.argv[2])):
        f.write(str(random.randint(0, 3)))
    f.write('\n')
f.close()
