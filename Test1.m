%a1826780: Vaibhav Aggarwal

clear
clc

%This code is a game basis for a battleship with an imaginary 10x10 grid.
%The goal of the user is to correctly identify where 2 of the
%battleships are hidden before the number of tries (missiles) run out.

%Specifying the battlefield and assigning values to 2 battleships.
matrix1= [10,10];
a=randi([1,10],1);
b=randi([1,10],1);
battleship1=[a,b];
disp (battleship1);
c=randi([1,10],1);
d=randi([1,10],1);
battleship2=[c,d];
disp (battleship2);
coordinate =[];

%Creating a loop for 30 iterations.
for i=1:30
    enter1= input("Please enter row: ");
    enter2= input("Please enter column: ");
    coordinate=[enter1,enter2];
    
    if isequal(coordinate,battleship1)||isequal(coordinate,battleship2)
        disp ("HIT");
    else
        disp ("MISS");
    end
end

%Test 1: Code End