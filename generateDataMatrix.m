%dataDF=open('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\randomGeneratedData.mat')
%dataOut=dataDF.out.DiscreteOut.Data
%dataIn=dataDF.out.inputRandom.Data
dataOut=out.DiscreteOut.Data
dataIn=out.InputRandom.Data

clear dataMatrix 
for i=3:length(dataOut)-100 % (601-100 = 501)
    dataMatrix(i-2,1)=dataOut(i)
    dataMatrix(i-2,2)=dataOut(i-1)
    dataMatrix(i-2,3)=dataOut(i-2)
    dataMatrix(i-2,4)=dataIn(i)
    dataMatrix(i-2,5)=dataIn(i-1)
    dataMatrix(i-2,6)=dataIn(i-2)
    dataMatrix(i-2,7)=dataOut(i+1)    
end

save('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\dataMatrixGenerated.dat','dataMatrix','-ascii')
%findcluster('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\dataMatrixGenerated.dat','dataMatrix')
