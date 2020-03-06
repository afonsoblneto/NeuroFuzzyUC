%load 'D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\dataMatrixGenerated.dat'
%inputData = dataMatrixGenerated(:,1:6);
%outputData = dataMatrixGenerated(:,7);

inputData = dataMatrix(:,1:6);
outputData = dataMatrix(:,7);

optSub = genfisOptions('SubtractiveClustering');
optSub.Verbose = 0;

myFisSUB = genfis(inputData,outputData,optSub);
showrule(myFisSUB)

% run fuzzyLogicDesigner to save the .fis file
fuzzyLogicDesigner(myFisSUB)