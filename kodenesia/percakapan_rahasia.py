def reverse_word(word):
    return " ".join([each_word[::-1].lower() for each_word in word.split(" ")])


print(reverse_word("Ibrahim Orang Ganteng"))
