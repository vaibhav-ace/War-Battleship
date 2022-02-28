%a1826780: Vaibhav Aggarwal

clear
clc

%This code is a game basis for a battleship with an imaginary 10x10 grid.
%The goal of the user is to correctly identify where all 3 of the
%battleships are hidden before the number of tries (missiles) run out.

disp ("Welcome to the game of 'war battleship.' There is a 10x10 grid and 3 alien battleships have been placed randomly in the grid.");
disp ("Your aim is to destroy the invading battleships before you run of missiles.");
disp ("Please select 'easy' for 60 missiles, 'hard' for 40 missiles, 'grandmaster' for 20 missiles and 'free' to choose your own number of missiles!");
Difficulty= input("Please choose between easy, hard, grandmaster and free: " ,"s");


%Using a loop and if statements to identify the number of tries the user
%wants.
for i=1:1

    if Difficulty=="easy"
    n=60;
    end
    
    if Difficulty=="hard"
    n=40;
    end
    
    if Difficulty=="grandmaster"
    n=20;
    end
    
    if Difficulty=="free"
    n= input("Please choose the number of chances you desire: ");
    end
    
    if Difficulty~="free"&&Difficulty~="grandmaster"&&Difficulty~="hard"&&Difficulty~="easy"
    %A secret hack has been added to increase the game immersiveness.
    disp ("Secret Hack: You have gained an infinity number of missiles!");
    n=inf;
    end
    
end


%Creating an imaginay grid and determining the 3 randomly generated
%positions of the invading battleships.
matrix1= [10,10];
a=randi([1,10],1);
b=randi([1,10],1);
battleship1=[a,b];
disp (battleship1);
c=randi([1,10],1);
d=randi([1,10],1);
battleship2=[c,d];
disp (battleship2);
e=randi([1,10],1);
f=randi([1,10],1);
battleship3=[e,f];
disp (battleship3);
%Assigning the value 0 for sum and creating empty vector coordinate for the
%user to guess the positions of the battleships.
coordinate =[];
sum=0;


%Creating a for loop with 'n' iterations.
for i=1:n
    
    %Getting player's input and storing them in a vector
    enter1= input("Please enter row: ");
    enter2= input("Please enter column: ");
    coordinate=[enter1,enter2];
    
    %'If' statement used to see if any of the battleships have been hit.
    if isequal(coordinate,battleship1)||isequal(coordinate,battleship2)||isequal(coordinate,battleship3)
        sum=sum+1; %determining sum of the battleships hit
        fprintf ('Nice work, you have hit battleship %d!\n',sum);
    else
        disp ("You missed...");
    end
    
    
    if sum==3
        disp ("Congratulations, you won against the invading alien battleships!");
        break; %Exiting the code if player accurately finds the position of all the battleships.
    end
    
    
end


%Displaying that the player loses if he cannot find all the battleships.
if sum~=3
    disp ("Unfortunately, you lost...Better luck next time!");
end

%Test 3: Code End