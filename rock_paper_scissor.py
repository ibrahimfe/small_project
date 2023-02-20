import random
import os

def pilihan_user():
    user_choice = input("Pilih antara kertas, gunting, atau batu   : ").lower()
    while user_choice not in ["kertas", "gunting", "batu"]:
        print("Pilihan mu tidak ada di dalam list, silahkan pilih kembali")
        user_choice = input("Pilih antara kertas, gunting, atau batu    : ").lower()
    return user_choice

def pilihan_computer():
    computer_choice = random.choice(["kertas", "gunting", "batu"])
    return computer_choice

def tentukan_pemenang(user_choice, computer_choice):
    if user_choice == computer_choice:
        return "draws"
    elif user_choice == "kertas":
        if computer_choice == "gunting":
            return "loss"
        else:
            return "wins"
    elif user_choice == "gunting":
        if computer_choice == "kertas":
            return "wins"
        else:
            return "loss"
    elif user_choice == "batu":
        if computer_choice == "gunting":
            return "wins"
        else:
            return "loss"

def play_game():
    wins = 0
    draws = 0
    losses = 0
    
    while True:
        os.system("clear")        
        user_choice = pilihan_user()
        computer_choice = pilihan_computer()
        
        print(f"Kamu memilih {user_choice} dan Komputer memilih {computer_choice}")
        hasil = tentukan_pemenang(user_choice, computer_choice)
        if hasil == "wins":
            print("Kamu Menang!")
            wins += 1
        elif hasil == "draws":
            print("Hasilnya adalah seri!")
            draws += 1
        else:
            print("Kamu kalah!")
            losses += 1
        print(f"| Wins {wins} | Draws {draws} | Losses {losses}")
        play_again = input("Kamu mau main lagi? (y/n)   : ")
        if play_again != "y":
            break

play_game()
