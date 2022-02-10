from random import randint
from os import system
from time import time

lower = 16**99999
upper = 16**100000 - 1

wrong_answers = 0

def generateRandom():
    r = randint(lower, upper)
    # r = randint(16, 255)

    input_file = open("input.txt", "w")
    input_file.write(("%#X" % r).replace('0X', ''))
    input_file.close()

    return r

def runtest():
    correct = generateRandom()

    start = time()
    system("./a") 
    end = time()

    t = end - start

    output_file = open("output.txt", "r")

    result = int(output_file.read(), 2)

    if correct != result:
        wrong_answers += 1
        print('WA ', end='')
    else:
        print('OK ', end='')

    t_str= "{:.4f}".format(t)
    print(f"time: {t_str}")

    return t

def runTests():
    numberOfTests = 100
    total =  0

    for i in range(0, numberOfTests):
        total += runtest()
    

    average = "{:.4f}".format(total/numberOfTests)
    total = "{:.4f}".format(total)

    print(f"""
tests passed: {numberOfTests - wrong_answers}/{numberOfTests}
total time: {total}
average: {average}
""")

def main():
    runTests()


if __name__ == '__main__':
    main()