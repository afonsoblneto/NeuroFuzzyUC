%load 'D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Semin�rio de Investiga��o em Computa��o Adaptativa\Assignment\dataMatrixGenerated.dat';
%size=length(dataMatrixGenerated);

size=length(dataMatrix);
trainSize=round((size*0.7));
trainData=dataMatrix(1:trainSize,:);
testData=dataMatrix(trainSize+1:size,:);

save('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Semin�rio de Investiga��o em Computa��o Adaptativa\Assignment\trainData.dat','trainData','-ascii');
save('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Semin�rio de Investiga��o em Computa��o Adaptativa\Assignment\testData.dat','testData','-ascii')

anfisedit