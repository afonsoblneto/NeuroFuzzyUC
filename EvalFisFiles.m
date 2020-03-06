%myFisFCMBP = readfis('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\myFisFCMBP.fis')
%myFisFCMHibrid = readfis('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\myFisFCMHibrid.fis')
%myFisSUBBP = readfis('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\myFisSUBBP.fis')
%myFisSUBHibrid = readfis('D:\GoogleDrive\afonsoblneto\Academia\Doutorado\COIMBRA\Disciplinas\Seminário de Investigação em Computação Adaptativa\Assignment\myFisSUBHibrid.fis')

evalfismyFisFCM = evalfis(FISFCMBack, inputChk)
evalfismyFisFCMBP = evalfis(FISFCMBack, inputChk)
evalfismyFisFCMHibrid = evalfis(FISFCMHyb, inputChk)
evalfismyFisSUB = evalfis(FISSUBBack, inputChk)
evalfismyFisSUBBP = evalfis(FISSUBBack, inputChk)
evalfismyFisSUBHibrid = evalfis(FISSUBHyb, inputChk)

ds = table(outputChk, evalfismyFisFCM, evalfismyFisFCMBP, evalfismyFisFCMHibrid, evalfismyFisSUB, evalfismyFisSUBBP, evalfismyFisSUBHibrid);
ds.Properties.VariableNames = {'Observed', 'FCM', 'FCM_BP', 'FCM_Hibr', 'Sub', 'Sub_BP', 'Sub_Hibr'}

ds.Err_FCM = (ds.Observed - ds.FCM)
ds.Err_FCM_BP = (ds.Observed - ds.FCM_BP)
ds.Err_FCM_Hibr = (ds.Observed - ds.FCM_Hibr)
ds.Err_Sub = (ds.Observed - ds.Sub)
ds.Err_Sub_BP = (ds.Observed - ds.Sub_BP)
ds.Err_Sub_Hibr = (ds.Observed - ds.Sub_Hibr)

ds.SqrErr_FCM = ds.Err_FCM.^2
ds.SqrErr_FCM_BP = ds.Err_FCM_BP.^2
ds.SqrErr_FCM_Hibr = ds.Err_FCM_Hibr.^2
ds.SqrErr_Sub = ds.Err_Sub.^2
ds.SqrErr_Sub_BP = ds.Err_Sub_BP.^2
ds.SqrErr_Sub_Hibr = ds.Err_Sub_Hibr.^2

mseFCM = num2str(sum(ds.SqrErr_FCM)/height(ds),'%.10f')
mseFCM_BP = num2str(sum(ds.SqrErr_FCM_BP)/height(ds),'%.10f')
mseFCM_Hibr = num2str(sum(ds.SqrErr_FCM_Hibr)/height(ds),'%.10f')
mseSub = num2str(sum(ds.SqrErr_Sub)/height(ds),'%.10f')
mseSub_BP = num2str(sum(ds.SqrErr_Sub_BP)/height(ds),'%.10f')
mseSub_Hibr = num2str(sum(ds.SqrErr_Sub_Hibr)/height(ds),'%.10f')