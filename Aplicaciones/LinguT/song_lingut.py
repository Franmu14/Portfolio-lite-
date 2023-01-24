# -*- coding: utf-8 -*-
"""Song-LinguT.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1fRl_X4z1mpMGknPs_4JZus-6GUNbFwBW

Voy a prepararlo para una canción:
-5 palabras más usadas
-cantidad de palabras?
-Traducción IPA? 

*extra podría ser algún sentimiento
"""

import nltk
nltk.download('punkt')
nltk.download('averaged_perceptron_tagger')
nltk.download('stopwords')

"""Agregamos la canción:"""

song= """There is a hero
If you look inside your heart
You don't have to be afraid
Of what you are
There's an answer
If you reach into your soul
And the sorrow that you know
Will melt away
And then a hero comes along
With the strength to carry on
And you cast your fears aside
And you know you can survive
So when you feel like hope is gone
Look inside you and be strong
And you'll finally see the truth
That a hero lies in you
It's a long road
When you face the world alone
No one reaches out a hand
For you to hold
You can find love
If you search within yourself
And that emptiness you felt
Will disappear
And then a hero comes along
With the strength to carry on
And you cast your fears aside
And you know you can survive
So when you feel like hope is gone
Look inside you and be strong
And you'll finally see the truth
That a hero lies in you, oh, oh
Lord knows
Dreams are hard to follow
But don't let anyone
Tear them away, hey yeah
Hold on
There will be tomorrow
In time you'll find the way
And then a hero comes along
With the strength to carry on
And you cast your fears aside
And you know you can survive
So when you feel like hope is gone
Look inside you and be strong
And you'll finally see the truth
That a hero lies in you
That a hero lies in you
Mmm, that a hero lies in you"""

"""Confirmo el typo:"""

type(song)

"""Tokenizamos:"""

tokens = nltk.word_tokenize(song)
tokens

"""Break Down the Song:

1) la pasamos al IPA
"""

!pip install eng_to_ipa
import eng_to_ipa as ipa



ipa_song= ipa.convert(song)

print(ipa_song)

"""Palabras más frecuentes:

Paso 0: cargamos las StopWords
"""

stopwords = nltk.corpus.stopwords.words('english')

allWordDist = nltk.FreqDist(w.lower() for w in tokens)


allWordExceptStopDist = nltk.FreqDist(w.lower() for w in tokens if w not in stopwords)

mostCommon= allWordDist.most_common(10)

print(mostCommon)

"""Podría hasta hacer un grafico de torta con eso"""

import matplotlib.pyplot as plt

cantidad = [34,17,11,9,9,7,6,6,5,5]
palabras = ["you","and","a","hero","the","that","to","in","your","be"]
plt.plot(cantidad, palabras)
plt.show()

"""3) cantidad de palabras"""

len(tokens)

"""*EXTRA: la etyomología de "Hero"
"""

pip install ety

import ety

ety.origins("Hero")