#CHEKING IF WORDS ARE ANAGRAMS
#true if they are
#false if not

def problem2(word1, word2):
    w1 = []
    w2 = []
    for character in word1:
        w1.append(character)
    for character in word2:
        w2.append(character)
    print(w1,w2)
    w1.sort()
    w2.sort()
    print(w1,w2)
    if w1 == w2:
        return True
    else:
        return False



print(problem2('hello', 'olleh'))