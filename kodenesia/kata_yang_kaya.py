def find_most_unique_alphabet(word):
    return max([len(set(each_word)) for each_word in word.split(" ")])
