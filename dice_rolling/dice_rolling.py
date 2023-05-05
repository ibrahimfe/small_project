# Import Module Section
import random

# Constant
DICE = {1, 2, 3, 4, 5, 6}


# Main Program
def main():
    num_dice_count = input("How much dice you want to roll? : ")
    num_dice = parse_input(num_dice_count)

    print(roll_dice(num_dice))


# Determine The input
def parse_input(input_string):
    if int(input_string) in DICE:
        return int(input_string)
    else:
        print("Please enter a number between 1 and 6")
        raise SystemExit(1)


# Rolling the dice with random module
def roll_dice(num_dice):
    roll_result = []
    for i in range(num_dice):
        a = random.randint(1, 6)
        roll_result.append(a)
    return roll_result


# Generating Ascii Letters for Text-based user Interface
def generate_face_dices_diagram():
    pass


main()
