
import sys

f = sys.argv[1]

lines = list(open(f))
for i, l in enumerate(lines):
    l = l.strip()
    if l.endswith('-'):
        words = l.split()
        next_line = lines[i+1]
        next_words = next_line.split()
        last_word = words[-1][:-1]
        if len(next_words) > 0:
            next_words[0] = last_word + next_words[0]
        if len(next_words) > 8:
            next_line = next_words[0] + " " + " ".join(next_words[1:])
        
        lines[i] = " ".join(words[:-1])
        lines[i+1] = next_line

for l in lines:
    print l.strip()
