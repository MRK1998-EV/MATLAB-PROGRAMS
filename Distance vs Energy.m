% Data from the table
x=[50,100,150,200,250]; % Distance in Miles
y=[20,25,30,35,40]; % Energy in kWh

% Plotting the graph
grid on
plot(x,y,'bo-','MarkerSize',3,'LineWidth',2)

% Adding grid, labels, and title
xlabel('Distance(Miles)','FontSize',10)
ylabel('Energy(kWh)','FontSize',10)
title('Distance Traveled vs Energy Consumed','FontSize',15)