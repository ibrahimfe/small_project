def is_bracket_balanced(string):
    stack = []
    brackets = {"(": ")", "[": "]", "{": "}"}
    for char in string:
        if char in brackets:
            stack.append(char)
        elif stack and char == brackets[stack[-1]]:
            stack.pop()
        elif not char.isalpha() and not char.isdigit():
            return "TIDAK"
    return "YA" if not stack else "TIDAK"
