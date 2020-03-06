%load 'D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Semin�rio de Investiga��o em Computa��o Adaptativa\Assignment\dataMatrixGenerated.dat'
%inputData = dataMatrixGenerated(:,1:6);
%outputData = dataMatrixGenerated(:,7);

inputData = dataMatrix(:,1:6);
outputData = dataMatrix(:,7);

optFCM = genfisOptions('FCMClustering','FISType','sugeno');
optFCM.NumClusters = 5;
optFCM.Verbose = 0;

myFisFCM = genfis(inputData,outputData,optFCM);
showrule(myFisFCM)

% run fuzzyLogicDesigner to save in a .fis file
fuzzyLogicDesigner(myFisFCM)