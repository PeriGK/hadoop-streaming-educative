import random
colors = ['red', 'green', 'blue', 'yellow', 'pink']

for i in range(1,101):
    filename = f'/home/periklis/myhadoop/src/input_files/input_{i}.txt'
    with open(filename, 'w') as file_handler:
        lines_in_current_file = random.randint(20, 1001)
        for j in range(lines_in_current_file):
            file_handler.write(random.choice(colors))
            file_handler.write('\n')