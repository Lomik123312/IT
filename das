#pov:
from ast import While
import random
import secrets
from socketserver import DatagramRequestHandler
HANGMAN_PICS = ['''
*----*
     |
     |
     |
     |
     |
     ==
     ==''','''

*----*
  0  |
     |
     |
     |
     |
     ==
     ==''','''   
    

*----*
  0  |
  |  |
     |
     |
     |
     ==
     ==''','''   

*----*
  0  |
 /|  |
     |
     |
     |
     ==
     ==''','''   
     
 *----*   
  0   |
 /|\  |
      |
      |
      |
      ==
      ==''','''    
 
 *----*
  0   |
 /|\  |
  |   |
      |
      |
      ==
      ==''','''    

 *----* 
  0   |
 /|\  |
  |   |
 /    |
      |
      ==
      ==''','''       

 *----*
  0   |
 /|\  |
  |   |
 / \  |
      |
      ==
      ==''']

world = 'Жаба Жабка Жаворонок Жако Железняк Желна Желтоглазка Желтопузик Желтохвост Желтощёк Желтушка Жерлянка Жираф Жужелица Жук'.split()

def getRandomWorld(worldList):
     worldIndex = random.randint(0, len(worldList) - 1)
     return worldList[worldIndex]

def displayBoard(HANGMANPICS, missedletters, correctLetters,  secretS):
     print(HANGMANPICS[len(missedLetters)])
     print()
     print('Неправильные буквы:', end=' ')
missedLetters = ''


for letter in missedLetters:
     print(letter, end=' ')
     print()


def funk(errorB,yB,sicretS):
     print(HANGMAN_PICS[len (errorB)])
     print()


     print('ОШИБЫЧНЫЕ БУКВЫ:',end=' ')
     for buk in errorB:
          print(buk,end='')

     print()

def getGuess(alreadyGuessed):
     while True:
          print('Введите букву')
          guess = input()
          guess = guess.lower()
          if len(guess) != 1:
               print('Ваша буква:')
          elif guess in alreadyGuessed:
               print ('Вы уже пробовали эту букву. Выберите другую')
          elif guess not in 'ёйцукенгшщзхъфывапролджэячсмитьбю':
               print('Пожалуйста, введите букву кириллицы')
          else: 
               return guess

def  PlayAgian():
     print('продлжить')
     while True:
          otvet = input().lower()
          if (otvet == 'да') or (otvet == 'д') or (otvet == 'yes') or (otvet == 'no'):
               return True
     

alreadyGuessed = ''



def PlayAgian():
     return input('продолжить').lower().startswith('д')
     
print('В И С Е Л И Ц А')


errorB=''
yesB=''
missedLetters = ''
correctLetters = ''
gameOver='ворон'
secretS = getRandomWorld(world)
gameIsDone = False
missedLetters = ''

while True:
     displayBoard(HANGMAN_PICS, missedLetters, correctLetters, secretS)

     Bukva = getGuess(missedLetters, correctLetters, secretS)
     if Bukva  in secretS:
          yesB=yesB+Bukva

          if PlayAgian():
                    print('игра прод.')
