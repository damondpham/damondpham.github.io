import markovify
#import re
#import spacy
import numpy as np

#nlp = spacy.load('en')

# class POSifiedText(markovify.Text):
#     def word_split(self, sentence):
#         return ['::'.join((word.orth_, word.pos_)) for word in nlp(sentence)]

#     def word_join(self, words):
#         sentence = ' '.join(word.split('::')[0] for word in words)
#         return sentence

# Get raw text as string.
print('reading corpus...')
with open('data/ufo_comments.txt') as f:
    text = f.read()

# Build the model.
print('building the model...')
model = markovify.Text(text, state_size=3)

# Generate sentences.
N_SENT = 2000
sep = ' '
print('generating sentences...')
sentences = [model.make_sentence(max_overlap_ratio=.6, tries=10) for i in range(N_SENT)]

#Sort by length.
sentences = [s for s in sentences if s is not None]
sentence_lengths = [len(s.split()) for s in sentences]
sentences = [sentences[i] for i in np.argsort(sentence_lengths)]

# Save to file.
print('saving to file...')
with open('sightings.txt', 'w') as text_file:
    for s in sentences: text_file.write(s + '\n')