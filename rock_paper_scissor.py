import random
import sys

print ("ROCK, PAPER, SCISSOR")
wins  = 0
draws = 0
losses = 0

while True:
    print("| %s Wins | %s Losses | %s Draws |" %(wins, losses, draws))
    print("Pilih salah satu : | (r)ock | (p)aper | (s)cissor | (q)uit |")
    while True:
        player_move = input()
        if player_move == 'q':
            sys.exit()
        elif player_move == 'r' or player_move == 'p' or player_move == 's':
            break
        print("Ketik salah satu dari | r | p | s | q |")
    
    if player_move == 'r':
        print("Rock VS ...")
    elif player_move == 's':
        print("Scissor VS ...")
    elif player_move == 'p':
        print("Paper VS ...")
        
    computer_move = random.randint(1,3)
    if computer_move == 1:
        computer_move = 'r'
        print("Rock")
    elif computer_move == 2:
        computer_move = 'p'
        print("Paper")
    elif computer_move == 3:
        computer_move = 's'
        print("Scissor")
    
    if player_move == computer_move:
        print("It is a Tie!")
        draws = draws + 1
    elif player_move == 'r' and computer_move == 's':
        print("You Win!!")
        wins = wins + 1
    elif player_move == 'r' and computer_move == 'p':
        print("You Lose!!")
        losses = losses + 1
    elif player_move == 'p' and computer_move == 'r':
        print("You Win!!")
        wins = wins + 1
    elif player_move == 'p' and computer_move == 's':
        print("You Lose!!")
        losses = losses + 1
    elif player_move == 's' and computer_move == 'p':
        print("You Win!!")
        wins = wins + 1
    elif player_move == 's' and computer_move == 'r':
        print("You Lose!!")
        losses = losses + 1