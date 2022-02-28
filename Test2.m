clear
clc

%This code is a game basis for a battleship with an imaginary 10x10 grid.
%The goal of the user is to correctly identify where all 3 of the
%battleships are hidden before the number of tries (missiles) run out.

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

end

%Creating an imaginary grid and determining the 3 randomly generated
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
coordinate =[];

%Creating a for loop with 'n' iterations.
for i=1:n
    
    enter1= input("Please enter row: ");
    enter2= input("Please enter column: ");
    coordinate=[enter1,enter2];
    
    if isequal(coordinate,battleship1)||isequal(coordinate,battleship2)||isequal(coordinate,battleship3)
        disp ("HIT");
    else
        disp ("MISS");
    end
    
end

%Test 2: Code End
