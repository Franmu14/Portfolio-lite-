# -*- coding: utf-8 -*-
"""Goles Kun Aguero.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1LBrQqDr_G3iSYdPmtpQ8zB6r_dcESndC

Proyecto: Clasificar los goles de Aguero

0) Pasar lo de Excel a GoogleCollab
"""

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

"""El video: https://www.youtube.com/watch?v=8P29ZQIJRSU&ab_channel=Wouva

min 9.18 al 9.25 muy bueno
"""

# Commented out IPython magic to ensure Python compatibility.
# %%html
# <iframe width="560" height="315" src="https://www.youtube.com/embed/8P29ZQIJRSU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

"""La info procesada:"""

from matplotlib.pyplot import pie, show
import numpy as np

clasif = ["penal","cabeza","normal-media distancia","normal-recibe al medio","normal-mano a mano-cruzando","normal-mano a mano-picando","normal-mano a mano-pasando","Otra Clasificación"]
cantidad = [42,23,12,67,5,3,4,92]

plt.pie(cantidad, labels = clasif)
plt.show()

"""Para agregar cosas lo que podría hacer es subclasificar, no se me ocurren otras..."""
