% script used to generate a set of solutions starting from the coefficients
% loaded with the file .txt whose name is saved in the variable q_file. The
% data of the problem are set in C_dati as usual, while the variable
% nRef_vector sets the number of refinement for each one of the solution
% computations. The script saves the results in the file specified in the
% variable uh_file.


addpath DataGeneration\
clc, clear, close all
nRef_vector= 4*ones(500,1);
q_file = '..\test\test_data\q_file.txt';
uh_file = '..\test\test_data\uh.txt';
TestName = 'Test2';
[sol_Matrix] = generate_sol(TestName, q_file, uh_file, nRef_vector);






%Test per vedere se funziona
% uh=sol_Matrix(5,:);
% uh=reshape(uh, 9,9);
% 
% uex= @(x,y) x.*y.*(1-x).*(1-y);
% xx=linspace(0,1,9);
% yy=linspace(0,1,9);
% for ii=1:9
%     for jj=1:9
%         UEX(ii,jj)=uex(xx(ii),yy(jj));
%     end
% end
