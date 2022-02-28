%a1826780: Vaibhav Aggarwal

clear
clc

%This code is a game basis for a battleship with an imaginary 10x10 grid.
%The goal of the user is to correctly identify where all 5 of the
%battleships are hidden before the number of tries (missiles) run out.

disp ("Welcome to the game of 'war battleship.' There is a 10x10 grid and 5 alien battleships have been placed randomly in the grid.");
disp ("Your aim is to destroy the invading battleships before you run of missiles.");
disp ("Please select 'easy' for 60 missiles, 'hard' for 40 missiles, 'grandmaster' for 20 missiles and 'free' to choose your own number of missiles!");
y=0; %Assigned value of y for a while loop.


while y~=2 %while loop to repeat code, if user wants to play the game again.
    
Difficulty= input("Please choose between easy, hard, grandmaster and free: " ,"s");


%Using a for loop to collapse/hide the if statement if necessary and using
%if statements to identify the number of tries the user wants.
for j=1:1

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
        disp ("Secret Hack 1: You have gained an infinity number of missiles!");
        n=inf; 
    end
    
end


%An if statement to give the user another chance to allocate the number of
%tries.
if n<5
    %Warning display
    disp ("Warning: There are five battleships and the number of missiles allocated are less than the required number.");
    Consideration= input ("Do you want to reallocate the number of missiles (yes/no): ","s");
    
    if Consideration=="yes"
        n=input ("Please choose the number of chances you desire: ");
    end
    
    if n<5
        disp ("Warning: You have chosen a number that is less than the number of existing battleships. The game begins!");
    end
    
end

disp ("Good Luck! The game begins!") %Message displaying that the game begins.

%Creating an imaginay grid and determining the 5 randomly generated
%positions of the invading battleships.
matrix1= [10,10];
a=randi([1,10],1);
b=randi([1,10],1);
battleship1=[a,b];
c=randi([1,10],1);
d=randi([1,10],1);
battleship2=[c,d];
e=randi([1,10],1);
f=randi([1,10],1);
battleship3=[e,f];
g=randi([1,10],1);
h=randi([1,10],1);
battleship4=[g,h];
i=randi([1,10],1);
j=randi([1,10],1);
battleship5=[i,j];
%Assigning the value 0 for sum and creating empty vector coordinate for the
%user to guess the positions of the battleships.
coordinate =[];
sum=0;


% A for loop to hide information if necessary. The loop consists of several
% if statements used to appoint or ask the user for the number of desired
% hints.
for j=1:1

    if Difficulty=="easy"
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
        fprintf ('Hint 4: General, a battleship is hiding in column %d.\n',h);
        fprintf ('Hint 5: General, a battleship is hiding in row %d.\n',i);
    end
    
    if Difficulty=="hard"
        fprintf ('Hint 1: General, a battleship is hiding in column %d.\n',b);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',g);
        fprintf ('Hint 4: General, a battleship is hiding in row %d.\n',e);
    end
    
    if Difficulty=="grandmaster"
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',j);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
    end
    
    if Difficulty=="free"
        Choice1= input("How many hints would you like: ");
    
    if Choice1<1
        disp ("Very Well, General! Good luck!");
    end
    
    if Choice1==1
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
    end
    
    if Choice1==2
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',j);
    end
    
    if Choice1==3
        fprintf ('Hint 1: General, a battleship is hiding in column %d.\n',b);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',g);
    end
    
    if Choice1==4
        fprintf ('Hint 1: General, a battleship is hiding in column %d.\n',b);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',g);
        fprintf ('Hint 4: General, a battleship is hiding in row %d.\n',i);
    end
    
    if Choice1==5
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
        fprintf ('Hint 4: General, a battleship is hiding in column %d.\n',h);
        fprintf ('Hint 5: General, a battleship is hiding in row %d.\n',i);
    end
    
    if Choice1>5&&Choice1~=9000
        disp ("General, unfortunately we only have limited information as mentioned below:");
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
        fprintf ('Hint 4: General, a battleship is hiding in column %d.\n',h);
        fprintf ('Hint 5: General, a battleship is hiding in row %d.\n',i);
    end
    
    % Secret hack 2 has been added to increase the game immersiveness.
    if Choice1==9000
        % Secret hack 2 (as mentioned at the end of the game).
        disp ("General, after decrypting enemy transmissions we have decoded their locations, as listed below:");
        disp(battleship1);
        disp(battleship2);
        disp(battleship3);
        disp(battleship4);
        disp(battleship5);
    end
    
    end
    
    
    if Difficulty~="free"&&Difficulty~="grandmaster"&&Difficulty~="hard"&&Difficulty~="easy"
        Choice2= input("How many hints would you like: ");
    
    if Choice2<1
        disp ("Very Well, General! Good luck!");
    end
    
    if Choice2==1
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
    end
    
    if Choice2==2
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',j);
    end
    
    if Choice2==3
        fprintf ('Hint 1: General, a battleship is hiding in column %d.\n',b);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',g);
    end
    
    if Choice2==4
        fprintf ('Hint 1: General, a battleship is hiding in column %d.\n',b);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',g);
        fprintf ('Hint 4: General, a battleship is hiding in row %d.\n',i);
    end
    
    if Choice2==5
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
        fprintf ('Hint 4: General, a battleship is hiding in column %d.\n',h);
        fprintf ('Hint 5: General, a battleship is hiding in row %d.\n',i);
    end
    
    if Choice2>5
        disp ("General, unfortunately we only have limited information as mentioned below:");
        fprintf ('Hint 1: General, a battleship is hiding in row %d.\n',a);
        fprintf ('Hint 2: General, a battleship is hiding in column %d.\n',d);
        fprintf ('Hint 3: General, a battleship is hiding in row %d.\n',e);
        fprintf ('Hint 4: General, a battleship is hiding in column %d.\n',h);
        fprintf ('Hint 5: General, a battleship is hiding in row %d.\n',i);
    end
    
    end
    
end


%Creating a for loop with 'n' iterations.
for j=1:n
    
    %Getting player's input and storing them in a vector
    enter1= input("Please enter row: ");
    enter2= input("Please enter column: ");
    coordinate=[enter1,enter2];
    
    %'If' statement used to see if any of the battleships have been hit.
    if isequal(coordinate,battleship1)||isequal(coordinate,battleship2)||isequal(coordinate,battleship3)||isequal(coordinate,battleship4)||isequal(coordinate,battleship5)
        sum=sum+1; %determining sum of the battleships hit
        fprintf ('Nice work, you have hit battleship %d!\n',sum);
    else
        disp ("You missed...");
    end
    
    
    if sum==5
        disp ("Congratulations, you won against the invading alien battleships!");
        disp ("Game End");
        break; %Exiting the code if player accurately finds the position of all the battleships.
    end
    
    
end


%Displaying that the player loses if he cannot find all the battleships.
if sum~=5
    disp ("Unfortunately, you lost...Better luck next time!");
    disp ("Game End");
end


%A secret hack is revealed to the user at the end of the game if the user wishes for it.
for j=1:1
    Choice3= input("Would you like to learn a special code general? (yes/no): ","s");
    if Choice3=="yes"
        % Secret hack 2
        disp ("Secret Hack 2: General, in free mode try to type the number '9000' when prompted for number of hints");
    end
    if Choice3~="yes"
        disp ("Good luck for your future endeavours, General!");
    end
end


% Asking the user for the final input to determine whether the user wants to
% play the game again.
z=input ("Do you want to start over? (yes/no): " ,"s");
    if z=="yes"
        y=5;
    else
        y=2;
    end
    
end

%Game Ends!