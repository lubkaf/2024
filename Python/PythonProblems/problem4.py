# GROUPING ANAGRAMS
# returns tow-dimensional list of every word which is anagram


def group_anagrams(strs):
    word_dict = dict()
    for word in strs:
        sorted_word = ''.join(sorted(word))
        if sorted_word in word_dict:
            word_dict[sorted_word].append(word)
        else:
            word_dict[sorted_word] = [word]
    return list(word_dict.values())


strs = ['tea', 'eat', 'tan', 'ate', 'nat', 'bat']
print(group_anagrams(strs))

