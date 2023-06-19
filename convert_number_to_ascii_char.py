# Convert a list ascii number into ascii character
with open("number.txt", "r") as file:
    numbers = file.readlines()

ascii_char = "".join(chr(int(number.strip())) for number in numbers)

print(ascii_char)
