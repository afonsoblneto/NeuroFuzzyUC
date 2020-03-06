dataOut2=out.DiscreteOut.Data
dataIn2=out.InputRandom.Data
clear dataMatrixChecking 
for i=3:length(dataOut2)-1
    dataMatrixChecking(i-2,1)=dataOut2(i)
    dataMatrixChecking(i-2,2)=dataOut2(i-1)
    dataMatrixChecking(i-2,3)=dataOut2(i-2)
    dataMatrixChecking(i-2,4)=dataIn2(i)
    dataMatrixChecking(i-2,5)=dataIn2(i-1)
    dataMatrixChecking(i-2,6)=dataIn2(i-2)
    dataMatrixChecking(i-2,7)=dataOut2(i+1)    
end

inputChk = dataMatrixChecking(510:end,1:6)
outputChk = dataMatrixChecking(510:end,7)