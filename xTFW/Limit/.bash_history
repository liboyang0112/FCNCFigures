root -l plot_var.cxx 
#1618541406
root -l plot.cxx 
#1618542584
root -l dataminusDPS.root 
#1618542839
root -l plot.cxx 
#1618546914
cd 4muAnalysis/
#1618546916
. ~/xiam 
#1618547053
ls
#1618547071
cp plot_var.cxx 0415plot_var.cxx
#1618547084
cp plot.cxx 0415plot.cxx
#1618547085
ls
#1618547105
rm -rf *extract*
#1618547130
rm -rf no_DPS*
#1618547131
ls
#1618547188
mkdir bin0.1result
#1618547196
mv DPS_subtract bin0.1result/
#1618547203
mv DPS_subtract*  bin0.1result/
#1618547205
ls
#1618547222
mv newbin_c* bin0.1result/
#1618547223
ls
#1618547307
mv dataminusDPS.root bin0.1result/
#1618547318
mkdir bin0.25result/
#1618547325
root -l plot_var.cxx 
#1618547519
root -l plot.cxx 
#1618551817
mv DPS_subtract* bin0.25result/
#1618551830
cp plot*.cxx bin0.25result/
#1618551831
ls
#1618551846
cp newbin_c* bin0.25result/
#1618551847
ls
#1618551880
mv dataminusDPS.root bin0.25result/
#1618551895
mkdir bin0.5result/
#1618551900
root -l plot_var.cxx 
#1618551921
root -l plot.cxx 
#1618552574
mv DPS_subtract* bin0.5result/
#1618552582
mv dataminusDPS.root  bin0.5result/
#1618552591
cp plot*.cxx bin0.5result/
#1618552593
ls
#1618562883
cdxia 
#1618562885
cd ../4m
#1618562888
cd ../xiammfcnc/
#1618562890
cd ../
#1618562893
cd xmm4mu/
#1618562894
ls
#1618562895
cd 4muAnalysis/
#1618562896
ls
#1618562936
scp -r -P 48571  mmxia@166.111.120.221:~/SPS_pT0timesMPI{35,45,55,58,62,64,66,68,69,71,72,74,76,78}* ./
#1618563181
cd 4muAnalysis/
#1618563182
ls
#1618563196
cp plot.cxx plot_newSPS.cxx
#1618563269
ls
#1618563960
lsls
#1618563963
ls
#1618563970
root -l plot_var.cxx 
#1618563998
root -l plot_newSPS.cxx 
#1618564788
root -l dataminusDPS.root 
#1618564816
mkdir refinedMPI
#1618564825
mv DPS_subtract* refinedMPI/
#1618564834
mv dataminusDPS.root refinedMPI/
#1618564845
cp plot_* refinedMPI/
#1618564846
ls
#1618565047
root -l plot.cxx 
#1618565168
root -l plot_var.cxx 
#1618565180
root -l plot.cxx 
#1618677503
cern
#1618669941
cd FCNCAnalysis/
#1618669942
ls
#1618669950
cd run/reduce3/NOMINAL/
#1618669954
ls
#1618669983
root -l mc16e_ttbarsys_aMCPy_NOMINAL.root 
#1618671034
root -l mc16e_ttbar_PDFset\=260060.root 
#1618672705
root  mc16e_ttbarsys_aMCPy_NOMINAL.root 
#1618672943
. ~/xiam 
#1618673002
cd ../../../
#1618673004
. env.sh 
#1618673006
tthmake 
#1618673044
cd run/reduce3
#1618673048
ls PDF_trexinputs/
#1618673064
root -l PDF_trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/Fake.root 
#1618673139
make_plots_run xTFW 439 441 trex >>plot4.txt
#1618673229
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ztautau.root 
#1618673258
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618673311
make_plots_run xTFW 439 441 plot >>plot4.txt
#1618673410
tthmake 
#1618673602
make_plots_run xTFW 420 420 plot >>plot4.txt
#1618673786
tthmake 
#1618673796
make_plots_run xTFW 420 420 plot >>plot4.txt
#1618674015
make_plots_run xTFW 440 440 plot >>plot4.txt
#1618674327
tthmake 
#1618674337
make_plots_run xTFW 440 440 plot >>plot4.txt
#1618674412
ls NOMINAL/mc16e_ttbarsys_PHHW_NOMINAL.root 
#1618674418
root -l NOMINAL/mc16e_ttbarsys_PHHW_NOMINAL.root 
#1618674744
root -l NOMINAL/mc16e_ttbar_NOMINAL.root 
#1618674807
root -l NOMINAL/mc16e_ttbarsys_aMCPy_NOMINAL.root 
#1618675073
tthmake 
#1618675089
make_plots_run xTFW 440 440 plot >>plot4.txt
#1618675261
tthmake 
#1618675275
cd ../../
#1618675279
cd test/
#1618675280
ls
#1618675505
reduce_run xTFW 1 mc16a_ttbarsys_PHPyStar.txt NOMINAL >log_mc16a_ttbarsys_PHPyStar.txt 
#1618675637
reduce_run xTFW 2 mc16a_ttbarsys_PHPyStar.txt NOMINAL >>log_mc16a_ttbarsys_PHPyStar.txt 
#1618675717
reduce_run xTFW 3 mc16a_ttbarsys_PHPyStar.txt NOMINAL >>log_mc16a_ttbarsys_PHPyStar.txt 
#1618675867
root -l mc16a_ttbarsys_PHPyStar_NOMINAL.root 
#1618676795
lsetup pyami
#1618676823
voms-proxy-init -voms atlas
#1618676858
lsetup rucio
#1618676933
rucio ls mc16*411288*4D3*
#1618676995
rucio ls mc16_13TeV.344772*4D3*
#1618677012
rucio ls mc16_13TeV.411288*4D3*
#1618677052
ami show dataset info mc16_13TeV.411288.PhPy8EG_A14_ttbar_hdamp258p75_MECoff_nonallhad.deriv.DAOD_HIGG4D3.e7948_a875_r9364_p3978
#1618677124
ami show dataset info mc16_13TeV.411288.PhPy8EG_A14_ttbar_hdamp258p75_MECoff_nonallhad.deriv.DAOD_HIGG4D3.e7948_a875_r10201_p3978
#1618677837
reduce_run xTFW 1 mc16a_ttbarsys_PHPyStar.txt NOMINAL >log_mc16a_ttbarsys_PHPyStar.txt 
#1618677899
reduce_run xTFW 2 mc16a_ttbarsys_PHPyStar.txt NOMINAL >>log_mc16a_ttbarsys_PHPyStar.txt 
#1618677945
rm *.root
#1618677956
reduce_run xTFW 3 mc16a_ttbarsys_PHPyStar.txt NOMINAL >>log_mc16a_ttbarsys_PHPyStar.txt 
#1618677997
root -l mc16a_ttbarsys_PHPyStar_NOMINAL.root 
#1618678056
touch localrun.sh
#1618678113
ls
#1618678322
. localrun.sh 
#1618681294
rm -rf cutflow_mc16*
#1618681304
rm -rf *FFNP*
#1618681314
root -l mc16e_ttbarsys_aMCPy_NOMINAL.root 
#1618681368
ls
#1618681421
rm ../run/reduce3/NOMINAL/*ttbarsys*.root
#1618681444
cp mc16*.root ../run/reduce3/NOMINAL/
#1618681455
cd ../run/reduce3/NOMINAL/
#1618681467
make_plots_run xTFW 440 440 plot >>plot4.txt
#1618681479
cd ../
#1618681481
make_plots_run xTFW 440 440 plot >>plot4.txt
#1618681620
root -l NOMINAL/mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618682640
root -l NOMINAL/mc16a_ttbarsys_aMCPy_NOMINAL.root 
#1618682690
make_plots_run xTFW 439 439 plot >>plot4.txt
#1618682871
root -l NOMINAL/mc16a_ttbarsys_aMCPy_NOMINAL.root 
#1618682920
root -l NOMINAL/mc16a_ttbar_NOMINAL.root 
#1618683347
tthmake 
#1618683396
make_plots_run xTFW 439 439 plot >>plot4.txt
#1618683965
tthmake 
#1618683984
make_plots_run xTFW 439 439 plot >>plot4.txt
#1618685027
tthmake 
#1618685043
make_plots_run xTFW 439 439 plot >plot4.txt
#1618685340
cd FCNCAnalysis/
#1618685344
. ~/xiam 
#1618685716
. env.sh 
#1618685721
tthmake 
#1618685730
cd run/reduce3/
#1618685757
make_plots_run xTFW 420 420 plot >plot5.log 
#1618687095
cd ../../../
#1618687100
. env.sh 
#1618687103
. setup.sh 
#1618687203
cd FCNCAnalysis/run/reduce3
#1618687222
make_plots_run xTFW 439 439 plot >plot5.log 
#1618687428
tthmake 
#1618687444
make_plots_run xTFW 439 439 plot >plot5.log 
#1618687545
make_plots_run xTFW 441 441 plot >plot5.log 
#1618687655
make_plots_run xTFW 440 440 plot >plot5.log 
#1618687980
cd ../../
#1618687983
cd test/
#1618687992
cat localrun.sh 
#1618688017
reduce_run xTFW 3 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618688060
ls
#1618688073
root -l mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618688258
root -l  /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/data/v3/xTFWreduce2/NOMINAL/mc16a_ttbarsys_PHHW_tree.root
#1618688331
root -l  /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/data/v3/xTFWreduce2/NOMINAL/mc16a_ttbarsys_aMCPy_tree.root 
#1618688362
root -l  /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/data/v3/xTFWreduce1/NOMINAL/mc16a_ttbarsys_aMCPy_tree.root 
#1618688389
root -l  /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/data/v3/xTFWreduce1/NOMINAL/mc16a_ttbarsys_PHHW_tree.root 
#1618688456
root -l /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410559.PoHerwig7_H7UE_tt_allh.D3.e6567_a875_r9364_p3978.bkg_HS/user.mxia.24637770._000005.HSM_common.root 
#1618688785
root /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.411288.PhPy8_A14_ttb_MECoff_nonallh.D3.e7948_a875_r10724_p3978.retry.bkg_HS/user.mxia.24857003._000001.HSM_common.root
#1618688825
root /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410559.PoHerwig7_H7UE_tt_allh.D3.e6567_a875_r10724_p3978.bkg_HS/user.mxia.24637767._000014.HSM_common.root
#1618688862
root /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410559.PoHerwig7_H7UE_tt_allh.D3.e6567_a875_r10724_p3978.bkg_HS/user.mxia.24637767._000010.HSM_common.root 
#1618705929
exit
#1618741529
root -l /workfs2/atlas/xiamm/topsys//user.boyang.fcnc__v6.mc16_13TeV.410471.PhPy8_A14_ttb_allh.D3.e6337_s3126_r10201_p3978.mc_HS/user.boyang.24258111._000001.HSM_common.root
#1618742606
root -l /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/test/mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618742620
exit
#1618740517
root -l /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410557.PoHerwig7_H7UE_tt_704_SLep.D3.e6366_a875_r9364_p3978.bkg_HS/user.mxia.24637762._000001.HSM_common.root
#1618741521
.q
#1618742646
root -l /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/test/mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618743180
root -l /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/test/mc16d_ttbarsys_PHHW_NOMINAL.root 
#1618743745
root -l /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/test/mc16e_ttbarsys_PHHW_NOMINAL.root 
#1618744235
root -l /workfs2/atlas/xiamm/topsys//user.boyang.fcnc__v6.mc16_13TeV.410471.PhPy8_A14_ttb_allh.D3.e6337_s3126_r9364_p3978.mc_HS/user.boyang.24258121._000001.HSM_common.root
#1618747262
cdxia 
#1618747796
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW
#1618747801
cd ../../../../
#1618747820
. env.sh 
#1618747822
cd -
#1618747824
ls
#1618747828
. submit_job_tuH.sh 
#1618747912
hep_q -u xiamm
#1618748837
root -l /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410557.PoHerwig7_H7UE_tt_704_SLep.D3.e6366_a875_r9364_p3978.bkg_HS/user.mxia.24637762._000001.HSM_common.root
#1618749214
. submit_job_tuH.sh 
#1618749299
hep_q -u xiamm
#1618741370
. ~/xiam 
#1618741452
cd FCNCAnalysis/
#1618741453
. env.sh 
#1618741455
tthmake 
#1618741481
cd test/
#1618741486
reduce_run xTFW 1 mc16a_ttbarsys_PHHW.txt NOMINAL >log_mc16a_ttbarsys_PHHW.txt
#1618741676
reduce_run xTFW 2 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618741806
reduce_run xTFW 3 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618741911
root -l mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618742037
root -l /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/data/v3/xTFWreduce2/NOMINAL/mc16a_ttbarsys_PHHW_tree.root
#1618742091
rm -rf *.root
#1618742092
ls
#1618742098
reduce_run xTFW 3 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618742290
tthmake 
#1618742303
reduce_run xTFW 1 mc16a_ttbarsys_PHHW.txt NOMINAL >log_mc16a_ttbarsys_PHHW.txt
#1618742408
reduce_run xTFW 2 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618742470
reduce_run xTFW 3 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618742508
rm -rf *.root
#1618742509
reduce_run xTFW 3 mc16a_ttbarsys_PHHW.txt NOMINAL >>log_mc16a_ttbarsys_PHHW.txt
#1618742555
root -l mc16a_ttbarsys_PHHW_NOMINAL.root 
#1618742682
reduce_run xTFW 1 mc16d_ttbarsys_PHHW.txt NOMINAL >log_mc16d_ttbarsys_PHHW.txt
#1618742850
reduce_run xTFW 2 mc16d_ttbarsys_PHHW.txt NOMINAL >>log_mc16d_ttbarsys_PHHW.txt
#1618742931
reduce_run xTFW 3 mc16d_ttbarsys_PHHW.txt NOMINAL >>log_mc16d_ttbarsys_PHHW.txt
#1618743203
reduce_run xTFW 1 mc16e_ttbarsys_PHHW.txt NOMINAL >log_mc16e_ttbarsys_PHHW.txt
#1618743555
reduce_run xTFW 2 mc16e_ttbarsys_PHHW.txt NOMINAL >>log_mc16e_ttbarsys_PHHW.txt
#1618743682
reduce_run xTFW 3 mc16e_ttbarsys_PHHW.txt NOMINAL >>log_mc16e_ttbarsys_PHHW.txt
#1618743785
ls
#1618743810
m mc16*PHHW* ../run/reduce3/NOMINAL/
#1618743818
mv mc16*PHHW* ../run/reduce3/NOMINAL/
#1618743819
ls
#1618743825
cd ../run/reduce3
#1618743839
make_plots_run xTFW 440 440 plot >>plot4.txt 
#1618744571
make_plots_run xTFW 439 441 trex >>plot4.txt 
#1618744600
ls
#1618744608
ls ttbar_trexinputs/BDTG_test/
#1618744617
ls ttbar_trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/
#1618744634
root -l ttbar_trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618744719
cd ../../
#1618744739
git commit -am "modify for all ttbarsys"
#1618744759
git pull origin newNaming
#1618744886
tthmake 
#1618745093
cd run/
#1618745094
ls
#1618745099
cd reduce3
#1618745100
ls
#1618745121
root -l ttbar_trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ztautau.root 
#1618745138
root -l ttbar_trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/Fake.root 
#1618745217
tthmake 
#1618745237
make_plots_run xTFW 439 441 trex >>plot4.txt 
#1618745345
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ztautau.root 
#1618745393
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618745445
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1618745538
cd ../../
#1618745546
cd config/
#1618745547
ls
#1618745553
cd trexfitter/
#1618745554
ls
#1618745557
cd xTFW/
#1618745558
ls
#1618745600
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618745628
ld
#1618745630
ls
#1618745633
cd ../../
#1618745641
cd ../run/reduce3/
#1618745646
rm -rf trexinputs/
#1618745668
cp -r ../../config/trexfitter/xTFW/trexinputs/ ./
#1618745851
make_plots_run xTFW 439 441 trex >>plot4.txt 
#1618745910
cd ../../config/trexfitter/xTFW/
#1618745911
ls
#1618745918
mv trexinputs/ trexinputs_backup
#1618745935
cp -r ../../../run/reduce3/trexinputs/ ./
#1618746041
ls
#1618746092
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ztautau.root 
#1618746187
tthmake 
#1618746197
process_ttbarsys_run 
#1618746222
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618746307
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1618746338
ls
#1618746600
cd ../../../
#1618746603
cd ../
#1618746605
. env.sh 
#1618746612
cd -
#1618746618
cd config/trexfitter/xTFW/
#1618746619
ls
#1618746626
trex-fitter h config/combined/BDTG_test.config
#1618746661
cp useful_scripts/trexplot.sh ./
#1618746662
ls
#1618746696
./trexplot.sh 
#1618747776
cp useful_scripts/submit_job_tuH.sh ./
#1618747814
tthmake 
#1618748001
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1618749172
ls
#1618749187
cd tuH/combined_BDTG_test/Fits/
#1618749197
ls
#1618749204
rm -rf NPRanking_*.txt
#1618749470
cd ../../
#1618749472
cd ../
#1618749478
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1618761021
cdxia 
#1618761037
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/run
#1618761041
. ../env.sh 
#1618761043
tthmake 
#1618761057
ls
#1618761071
. submit_nom_reduce1.sh 
#1618761249
hep_q -u xiamm
#1618761256
ls
#1618761272
ls -ll
#1618761384
hep_q -u xiamm
#1618761426
ls -ll
#1618761441
cat mc16e_ztautau.err
#1618761446
hep_q -u xiamm
#1618760636
ls
#1618760657
cd FCNCAnalysis/
#1618760660
cd run/
#1618760660
ls
#1618760681
mv reduce3 reduce3_pdgid/
#1618760683
ls
#1618760904
. ~/xiam 
#1618760935
. ../env.sh 
#1618760937
tthmake 
#1618796001
. env.sh 
#1618796005
cd FCNCAnalysis/
#1618796008
. env.sh 
#1618796010
tthmake 
#1618796016
. ~/xiam 
#1618796055
ls
#1618796064
cd run/reduce3
#1618796065
ls
#1618796085
make_plots_run xTFW 0 0 plot >>plot.log
#1618796420
cd ../
#1618796422
ls
#1618796438
mv reduce3 reduce3_ishadtau/
#1618796452
cp reduce3_pdgid/ reduce3
#1618796458
cp -r reduce3_pdgid/ reduce3
#1618797117
ls
#1618797126
rm -rf reduce3/
#1618797150
mkdir reduce3
#1618797163
mkdir -p reduce3/NOMINAL
#1618797188
cp -r reduce3_pdgid/NOMINAL/ reduce3/
#1618797573
cd reduce3
#1618797574
ls
#1618797588
make_plots_run xTFW 0 0 plot >>plot.log
#1618795206
screen -ls
#1618795212
hep_q -u xiamm
#1618795232
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/run
#1618795234
ls
#1618795247
. ../env.sh 
#1618795249
tthmake 
#1618795254
. submit_nom_reduce2.sh 
#1618795317
hep_q -u xiamm
#1618795513
ls -ll
#1618795523
vim mc16e_ztautau.out
#1618795530
cd ../../
#1618795532
ls
#1618795556
. submit_nom_reduce3.sh 
#1618795696
hep_q -u xiamm
#1618795702
ls
#1618795995
hep_q -u xiamm
#1618799718
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/run/
#1618799720
. ../env.sh 
#1618799721
tthmake 
#1618799724
ls
#1618799740
. submit_nom_reduce1.sh 
#1618799939
hep_q -u xiamm
#1618799975
ls -ll
#1618799984
vim mc16e_ttbarsys_PHPyStar.out
#1618800125
hep_q -u xiamm
#1618800133
ls -ll
#1618800141
vim mc16e_ttbarsys_PHPyStar.err
#1618800156
head mc16e_ttbar_aMCPy.err
#1618800174
cd ../
#1618800181
. submit_nom_reduce2.sh 
#1618800370
hep_q -u xiamm
#1618800374
ls -ll
#1618800383
cat mc16e_ztautau.err
#1618800406
vim mc16e_ztautau.out 
#1618800413
cd ../../
#1618800421
ls reduced3
#1618800423
ls reduce3
#1618800430
. submit_nom_reduce3.sh 
#1618798308
. env.sh 
#1618798313
. ~/xiam 
#1618798441
cd FCNCAnalysis/
#1618798442
. env.sh 
#1618798444
tthmake 
#1618798462
cd run/reduce3
#1618798465
cd ../
#1618798477
cd reduce3
#1618798478
ls
#1618798485
rm -rf *
#1618798517
ls
#1618798586
cp -r ../reduce3_ishadtau/NOMINAL/ ./
#1618798618
ls
#1618798637
make_plots_run xTFW 0 0 plot >>plot.log
#1618799395
make_plots_run xTFW 440 440 plot >>plot.log
#1618799457
ls NOMINAL/
#1618799486
ccd
#1618799488
cd ../
#1618799494
cd reduce1
#1618799496
cd NOMINAL/
#1618799497
ls
#1618799501
ls -ll
#1618799510
vim mc16e_ttbar_PHHW.err
#1618799524
cd ../
#1618799639
ls
#1618799642
cd reduce3
#1618799643
ls
#1618799665
rm -rf NOMINAL/
#1618812881
cdxia 
#1618812884
cd FCNCA
#1618812891
hep_q -u xiamm
#1618812905
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject
#1618812906
ls
#1618812909
cd FCNCAnalysis/
#1618812914
cd run/reduce3
#1618812921
ls NOMINAL/
#1618813043
exit
#1618813048
cern
#1618813067
exit
#1618807543
cern
#1618813082
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject
#1618813114
cd FCNCAnalysis/run/
#1618813114
ls
#1618813117
cd reduce1
#1618813118
ls
#1618813121
rm -rf NOMINAL/
#1618813123
cd ../
#1618813125
ls
#1618813132
cd reduce2
#1618813133
ls
#1618813137
rm -rf NOMINAL/
#1618813142
cd ../
#1618813143
ls
#1618813148
cd reduce3
#1618813149
ls
#1618813152
rm -rf NOMINAL/
#1618813156
cd ../../
#1618813157
ls
#1618813198
cd run/
#1618813199
ls
#1618813203
. submit_nom_reduce1.sh 
#1618813216
. ../../env.sh 
#1618813218
tthmake 
#1618813223
. submit_nom_reduce1.sh 
#1618813325
hep_q -u xiamm
#1618813569
ls -ll
#1618813580
cd ../../
#1618813587
. submit_nom_reduce2.sh 
#1618814120
hep_q -u xiamm
#1618814123
ls -ll
#1618814129
cd ../../
#1618814133
. submit_nom_reduce3.sh 
#1618814388
hep_q -u xiamm
#1618814392
ls
#1618827507
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/run/reduce3/
#1618827508
ls
#1618827512
cd ../../
#1618827514
cd run/
#1618827522
cd reduce1
#1618827530
cd NOMINAL/
#1618827531
ls
#1618827533
ls -ll
#1618827537
rm -rf *
#1618827544
cd ../../reduce2/NOMINAL/
#1618827549
rm -rf *
#1618827551
ls
#1618827553
cd ../../
#1618827556
ls
#1618827562
. submit_nom_reduce1.sh 
#1618827566
. ../env.sh 
#1618827569
tthmake 
#1618827574
. submit_nom_reduce1.sh 
#1618827613
hep_q -u xiamm
#1618827676
exit
#1618824458
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/run/reduce3
#1618824459
cd ../
#1618824462
. ../env.sh 
#1618824464
tthmake 
#1618824471
cd reduce3
#1618824472
ls
#1618824491
mv NOMINAL/ NOMINAL_isHadTau
#1618824493
cd ../
#1618824499
. submit_nom_reduce1.sh 
#1618824741
hep_q -u xiamm
#1618824926
ls -ll
#1618824935
cd ../../
#1618824939
. submit_nom_reduce2.sh 
#1618825058
hep_q -u xiamm
#1618825064
ls -ll
#1618825069
cd ../../
#1618825074
. submit_nom_reduce3.sh 
#1618825137
hep_q -u xiamm
#1618825141
ls
#1618825145
ls -ll
#1618825335
hep_q -u xiamm
#1618836376
screen -ls
#1618836383
screen -r trex
#1618836386
screen -S trex
#1618836699
exit
#1618812863
. ~/xiam 
#1618813093
cd FCNCAnalysis/
#1618813095
. env.sh 
#1618813105
. ~/xiam 
#1618813170
. env.sh 
#1618813173
tthmake 
#1618814407
cd run/reduce3
#1618814408
ls
#1618814419
make_plots_run xTFW 0 0 plot >>plot.log 
#1618815032
make_plots_run xTFW 440 440 plot >>plot.log 
#1618823565
make_plots_run xTFW 439 441 plot >>plot.log 
#1618824323
tthmake 
#1618825368
make_plots_run xTFW 0 0 plot >>plot.log 
#1618825506
ls
#1618825640
make_plots_run xTFW 440 440 plot >>plot.log 
#1618825947
ls
#1618826037
make_plots_run xTFW 439 441 plot >>plot.log 
#1618827394
ls
#1618827402
mv NOMINAL NOMINAL_pdgid
#1618827466
tthmake 
#1618833853
screen -ls
#1618833867
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/
#1618833874
. env.sh 
#1618833898
hep_q -u xiamm
#1618833901
cd run/
#1618833906
. submit_nom_reduce2.sh 
#1618833999
hep_q -u xiamm
#1618834095
cd ../../
#1618834101
. submit_nom_reduce3.sh 
#1618834292
hep_q -u xiamm
#1618834295
ls
#1618839217
screen -ls
#1618839221
screen -r trex
#1618839267
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW
#1618839268
ls
#1618839287
cd ../../../../
#1618839289
. env.sh 
#1618839300
cd -
#1618839305
ls
#1618839326
. submit_job_tuH.sh 
#1618839717
hep_q -u xiamm
#1618840012
ls
#1618840027
cat useful_scripts/command.txt 
#1618840043
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1618840050
screen -ls
#1618840057
screen -r trex
#1618840089
ls
#1618840094
rm -rf *.err
#1618840099
rm -rf *.out
#1618840104
rm -rf *.sh
#1618840105
ls
#1618840117
cp useful_scripts/submit_job_tcH.sh ./
#1618840120
. submit_job_tcH.sh 
#1618834305
cd FCNCAnalysis/
#1618834307
. env.sh 
#1618834309
. ~/xiam 
#1618834333
ls
#1618834347
cd run/reduce3
#1618834347
ls
#1618834364
make_plots_run xTFW 0 0 plot >>plot.log 
#1618834579
make_plots_run xTFW 339 341 plot >>plot.log 
#1618834600
make_plots_run xTFW 439 441 plot >>plot.log 
#1618835020
ls
#1618835033
rm -rf NOMINAL_isHadTau/
#1618835045
mv NOMINAL/ NOMINAL_isHadTau/
#1618835046
ls
#1618835049
ls -ll
#1618835060
mv NOMINAL_pdgid/ NOMINAL/
#1618835067
ls
#1618835095
make_plots_run xTFW 439 441 plot >>plot.log 
#1618836062
ls
#1618836097
cp -r ../../config/trexfitter/xTFW/trexinputs/ ./
#1618836126
rm -rf trexinputs/
#1618836142
cp -r ../../config/trexfitter/xTFW/trexinputs_backup/ ./
#1618836240
ls
#1618836248
mv trexinputs_backup/ trexinputs/
#1618836257
make_plots_run xTFW 439 441 trex >>plot.log 
#1618836301
cd ../../config/trexfitter/xTFW/
#1618836303
ls
#1618836313
rm -rf trexinputs/
#1618836335
cp -r ../../../run/reduce3/trexinputs/ ./
#1618836394
ls
#1618836402
rm -rf *.err
#1618836403
l
#1618836408
rm -rf *.sh
#1618836411
ls
#1618836415
rm -rf *.out
#1618836417
ls
#1618836424
process_ttbarsys_run 
#1618840373
cd FCNCAnalysis/
#1618840374
ls
#1618840375
cd config/
#1618840376
ls
#1618840384
cd trexfitter/
#1618840385
ls
#1618840387
cd xTFW/
#1618840387
ls
#1618840411
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618840857
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1618840999
ls
#1618841039
root -l trexinputs_backup/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618841228
ls
#1618841238
rm -rf trexinputs/
#1618841260
cd ../../../run/reduce3
#1618841261
ls
#1618841290
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618841299
. ~/xiam 
#1618844801
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW
#1618844805
cd ../../../
#1618844808
cd -
#1618844813
cd ../../../../
#1618844814
. env.sh 
#1618844818
cd -
#1618844820
. submit_job_tuH.sh 
#1618846177
hep_q -u xiamm
#1618846357
. submit_job_tcH.sh 
#1618846455
hep_q -u xiamm
#1618847493
ls
#1618847681
cp useful_scripts/mvLimitPlots.sh ./
#1618847687
./mvLimitPlots.sh 
#1618847728
ls tcH/combined_BDTG_test/Plots/reg2mtau1b3jos_vetobtagwp70_highmet.pdf
#1618847738
ls
#1618847742
vim mvLimitPlots.sh 
#1618847794
./mvLimitPlots.sh 
#1618847803
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCFigures/xTFW/Limit/
#1618847804
ls
#1618842065
cd FCNCAnalysis/
#1618842067
. env.sh 
#1618842069
tthmake 
#1618842074
cd ../
#1618842076
. env.sh 
#1618842079
. ~/xiam 
#1618842127
cd FCNCAnalysis/
#1618842130
ls
#1618842140
cd run/reduce3
#1618842141
ls
#1618842162
make_plots_run xTFW 0 0 trex >>plot.log 
#1618842397
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618842434
make_plots_run xTFW 439 441 trex >>plot.log 
#1618842544
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618842625
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1618842689
cd ../../
#1618842696
cd config/trexfitter/xTFW/
#1618842715
cp -r ../../../run/reduce3/trexinputs/ ./
#1618842959
process_ttbarsys_run 
#1618842989
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1618843028
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1618843049
ls
#1618843060
rm -rf *.sh *.err *.out
#1618843063
ls
#1618843092
rm -rf fcnc_*
#1618843099
rm -rf t*H
#1618843104
trex-fitter h config/combined/BDTG_test.config
#1618843144
cp useful_scripts/trexplot.sh ./
#1618843150
./trexplot.sh 
#1618844758
cp useful_scripts/submit_job_tuH.sh ./
#1618844759
ls
#1618844769
ls tuH/
#1618844772
ls tuH/combined_BDTG_test/
#1618844778
ls tuH/combined_BDTG_test/Fits/
#1618846203
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1618846320
rm -rf *.sh
#1618846323
rm -rf *.err
#1618846327
rm -rf *.out
#1618846341
cp useful_scripts/submit_job_tcH.sh ./
#1618847518
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tcH:Job=tcH/combined_BDTG_test
#1618847546
ls
#1618847553
cd ../
#1618847554
ls
#1618847565
cp -r xTFW/ xTFW_PSME/
#1618848006
ls
#1618848017
cd xTFW_PSME/
#1618848018
ls
#1618848029
rm -rf *.err
#1618848044
rm -rf *.sh
#1618848048
rm -rf *.out
#1618848055
cd ../
#1618848057
cd xTFW
#1618848058
ls
#1618848063
cd bonly/
#1618848064
ls
#1618848105
rm -rf fcnc_*
#1618848112
rm -rf t*H
#1618848121
rm -rf combined_BDTG_test/
#1618848124
ls
#1618848170
mv trexinputs/ trexinputs_backup
#1618848177
cp -r ../trexinputs/ ./
#1618848271
ls
#1618848286
trex-fitter h config/combined/BDTG_test.config
#1618848311
ls
#1618848365
cp useful_scripts/trexplot.sh ./
#1618848371
./trexplot.sh 
#1618880840
cd /workfs2/atlas/xiamm/
#1618880841
ls
#1618880843
cd topsys/
#1618880844
ls
#1618880876
ls user.mxia.fcnc__v6.mc16_13TeV.410466.aMcNloPy8_MEN30NLO_ttb_noShWe_AllH.D3.e6762_a875_r10201_p3978.bkg_HS
#1618881066
ls user.mxia.fcnc__v6.mc16_13TeV.410466.aMcNloPy8_MEN30NLO_ttb_noShWe_AllH.D3.e6762_a875_r9364_p3978.bkg_HS/
#1618881306
ls user.mxia.fcnc__v6.mc16_13TeV.410466.aMcNloPy8_MEN30NLO_ttb_noShWe_AllH.D3.e6762_a875_r10724_p3978.bkg_HS/
#1618881558
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis
#1618881559
. env.sh 
#1618881561
tthmake 
#1618881565
cd run/
#1618881565
ls
#1618881568
cd reduce1
#1618881572
cd NOMINAL/
#1618881575
rm -rf *
#1618881581
cd ../../reduce2/NOMINAL/
#1618881583
ls
#1618881587
rm -rf *
#1618881589
cd ../../
#1618881591
ls
#1618881595
cd reduce3
#1618881595
ls
#1618881614
mv NOMINAL NOMINAL_pdgid
#1618881616
cd ../
#1618881617
ls
#1618881622
. submit_nom_reduce1.sh 
#1618881707
hep_q -u xiamm
#1618881826
vim mc16a_ttbarsys_aMCPy.out 
#1618881848
hep_q -u xiamm
#1618881939
ls -ll
#1618881944
cd ../../
#1618881948
. submit_nom_reduce2.sh 
#1618882010
hep_q -u xiamm
#1618882076
ls -ll
#1618882089
vim mc16e_ttbarsys_aMCPy.out
#1618882099
cd ../../
#1618882103
cd reduce1/NOMINAL/
#1618882110
vim mc16e_ttbarsys_aMCPy.out 
#1618882125
vim mc16e_ttbarsys_aMCPy.err 
#1618882133
vim mc16d_ttbarsys_aMCPy.err 
#1618882140
vim mc16a_ttbarsys_aMCPy.err 
#1618882145
vim mc16a_ttbarsys_aMCPy.out 
#1618882157
vim mc16d_ttbarsys_aMCPy.out 
#1618882163
cd ../../
#1618882169
. submit_nom_reduce3.sh 
#1618882187
ls -ll
#1618882194
hep_q -u xiamm
#1618882901
vim mc16e_ttbarsys_aMCPy.out 
#1618883516
cd ../../
#1618883520
. submit_nom_reduce1.sh 
#1618883636
hep_q -u xiamm
#1618883738
vim mc16a_ttbarsys_aMCPy.out 
#1618883765
vim mc16a_ttbarsys_aMCPy.err 
#1618883773
vim mc16d_ttbarsys_aMCPy.err 
#1618883784
vim mc16d_ttbarsys_aMCPy.out 
#1618883795
hep_q -u xiamm
#1618883969
vim mc16e_ttbarsys_PHHW.out 
#1618884042
hep_q -u xiamm
#1618884047
vim mc16e_ttbarsys_PHHW.out 
#1618884138
hep_q -u xiamm
#1618884142
cd ../../
#1618884146
. submit_nom_reduce2.sh 
#1618884213
hep_q -u xiamm
#1618884316
cd ../../
#1618884321
. submit_nom_reduce3.sh 
#1618884390
hep_rm -a
#1618884396
rm -rf *
#1618884404
cd ../../
#1618884409
. submit_nom_reduce3.sh 
#1618884498
hep_q -u xiamm
#1618884752
ls
#1618884775
root -l  mc16e_ttbarsys_aMCPy_NOMINAL.root
#1618884829
cd ../../
#1618884835
cd reduce2
#1618884835
ls
#1618884838
cd NOMINAL/
#1618884843
cd ../
#1618884848
cd ../reduce1/NOMINAL/
#1618884858
vim  mc16e_ttbarsys_aMCPy.out 
#1618885435
cd ../
#1618885447
mv NOMINAL/ NOMINAL_lhhh
#1618885448
cd ../
#1618885452
. submit_nom_reduce1.sh 
#1618885729
hep_q -u xiamm
#1618886092
ls
#1618886238
hep_q -u xiamm
#1618886787
cd ../../
#1618886806
cd reduce2/NOMINAL/
#1618886808
rm -rf *
#1618886814
cd ../../
#1618886818
. submit_nom_reduce2.sh 
#1618886953
hep_q -u xiamm
#1618887118
cd ../
#1618887125
cd reduce3/NOMINAL
#1618887126
ls
#1618887131
cd ../
#1618887132
ls
#1618887141
mv NOMINAL NOMINAL_lhhh
#1618887144
cd ../../
#1618887149
cd run/
#1618887153
. submit_nom_reduce3.sh 
#1618887203
hep_q -u xiamm
#1618887680
ls /workfs2/atlas/xiamm/topsys//user.mxia.fcnc__v6.mc16_13TeV.410465.aMcNloPy8_MEN30NLO_ttb_noShWe_dil.D3.e6762_a875_r10724_p3978.retry_dilep.bkg_HS/user.mxia.24796623._000001.HSM_common.root
#1618880351
. env.sh 
#1618880354
. ~/xiam 
#1618881441
cd FCNCAnalysis/
#1618881443
. env.sh 
#1618881447
tthmake 
#1618882867
cd run/reduce3/
#1618882868
ls
#1618882882
make_plots_run xTFW 439 439 plot >>plot.log 
#1618883161
ls
#1618883509
tthmake 
#1618884592
make_plots_run xTFW 439 439 plot >>plot.log 
#1618899286
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW_PSME
#1618899292
cd ../../../../
#1618899294
. env.sh 
#1618899295
cd -
#1618899302
. submit_job_tuH.sh 
#1618900523
hep_q -u xiamm
#1618905696
cdxia 
#1618905700
cd ../xmm4mu/
#1618905700
ls
#1618905702
cd 4muAnalysis/
#1618905702
ls
#1618905710
root -l dataminusDPS.root 
#1618906057
.q
#1618896733
. env.sh 
#1618896739
cd FCNCA
#1618896742
cd FCNCAnalysis/
#1618896748
. ~/xiam 
#1618896815
cd config/trexfitter/xTFW
#1618896816
ls
#1618896820
cd bonly/
#1618896821
ls
#1618896844
trex-fitter pd config/combined/BDTG_test.config "Signal=tcH:Job=tcH/combined_BDTG_test"
#1618896891
trex-fitter pd config/combined/BDTG_test.config "Signal=tuH:Job=tuH/combined_BDTG_test"
#1618896972
cp useful_scripts/mvLimitPlots.sh  ./
#1618896975
./mvLimitPlots.sh 
#1618896988
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCFigures/xTFW/Limit/tcH_reg2mtau1b2jos_vetobtagwp70_highmet_postFit.pdf
#1618896998
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCFigures/xTFW/Limit/
#1618897000
ls
#1618897780
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/
#1618897781
ls
#1618897788
cd xTFW_PSME/
#1618897789
ls
#1618897971
rm -rf t*H/
#1618897977
rm -rf fcnc_*
#1618897981
ls
#1618897988
rm -rf combined_BDTG_test/
#1618897995
ls
#1618898021
trex-fitter h config/combined/BDTG_test.config
#1618898090
cp -r useful_scripts/trexplot.sh ./
#1618898096
./trexplot.sh 
#1618899258
ls
#1618899270
cp useful_scripts/submit_job_tuH.sh ./
#1618900551
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1618915489
cdxia 
#1618915498
cd final/final_0228/FCNCProject
#1618915501
. env.sh 
#1618915505
cd FCNCAnalysis/
#1618915506
. env.sh 
#1618915508
tthmake 
#1618915512
cd run/
#1618915513
ls
#1618915517
cd reduce1
#1618915518
ls
#1618915520
cd NOMINAL
#1618915525
rm -rf *
#1618915527
cd ../../
#1618915533
. submit_nom_reduce1.sh 
#1618915565
hep_q -u xiamm
#1618915760
vim mc16a_ttbarsys_aMCPy.out 
#1618915987
hep_q -u xiamm
#1618915991
cd ../../
#1618915995
cd reduce2/NOMINAL/
#1618915999
rm -rf *
#1618916001
cd ../../
#1618916005
. submit_nom_reduce2.sh 
#1618916444
hep_q -u xiamm
#1618916447
cd ../../
#1618916458
ls
#1618916468
cd reduce1/NOMINAL
#1618916469
ls
#1618916485
vim mc16a_ttbarsys_aMCPy.out 
#1618916512
vim mc16a_ttbar.out 
#1618916531
vim mc16a_ttbarsys_PHPyStar.out 
#1618916548
vim mc16a_ttbarsys_PHHW.out 
#1618916563
vim mc16d_ttbarsys_PHHW.out 
#1618916616
vim mc16d_ttbarsys_PHPyStar.out 
#1618916666
vim mc16d_ttbar.out 
#1618916693
vim mc16d_ttbarsys_aMCPy.out 
#1618916730
vim mc16e_ttbarsys_aMCPy.out 
#1618916765
vim mc16e_ttbar.out 
#1618916812
vim mc16e_ttbarsys_PHHW.out 
#1618916844
vim mc16a_ttbarsys_PHPyStar.out 
#1618916850
vim mc16e_ttbarsys_PHPyStar.out 
#1618916934
cd ../../../config/trexfitter/xTFW/
#1618916935
ls
#1618916941
. submit_job_tuH.sh 
#1618917920
hep_q -u xiamm
#1618918022
. submit_job_tcH.sh 
#1618918172
hep_q -u xiamm
#1618926625
/publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW/bonly
#1618926627
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW/bonly
#1618926628
ls
#1618926633
cat mvLimitPlots.sh 
#1618926651
./mvLimitPlots.sh 
#1618926670
cd ../../../
#1618926673
cd ../../
#1618926675
. env.sh 
#1618926677
cd -
#1618926684
cd trexfitter/xTFW/bonly/
#1618926689
./mvLimitPlots.sh 
#1618926708
exit
#1618905256
ls
#1618905257
cd 4muAnalysis/
#1618905258
ls
#1618905274
root -l ana.mc16d.800382.SPS_BPHY13.root
#1618905680
ls
#1618923637
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW
#1618923639
ls
#1618923644
cd ../../../../
#1618923646
. env.sh 
#1618923649
cd -
#1618923653
. submit_job_tuH.sh
#1618923789
hep_q -u xiamm
#1618924007
./submit_job_tcH.sh 
#1618924229
hep_q -u xiamm
#1618924574
ls
#1618924581
./mvLimitPlots.sh 
#1618924596
vim mvLimitPlots.sh 
#1618926716
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject
#1618926718
. env.sh 
#1618926723
cd /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW/bonly
#1618926731
. ../../../../env.sh 
#1618926733
./mvLimitPlots.sh 
#1618926789
ls /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCFigures/xTFW/Limit/
#1618992742
ls
#1618992745
cd 4muAnalysis/
#1618992746
ls
#1618992767
ls overlapremoval_old_data/
#1619072907
cd 4muAnalysis/
#1619072909
pwd
#1619072933
ls
#1619241763
. env.sh 
#1619241768
. ~/xiam 
#1619241921
cd FCNCAnalysis/
#1619241925
git status
#1619241951
git commit -am "modify some scripts"
#1619241967
git pull origin newNaming
#1619243897
. ~/xiam 
#1619243933
. env.sh 
#1619243937
cd FCNCAnalysis/
#1619243939
. env.sh 
#1619243944
tthmake 
#1619243967
cd config/trexfitter/xTFW
#1619243968
ls
#1619248006
cd  /publicfs/atlas/atlasnew/higgs/tautau/xiammfcnc/final/final_0228/FCNCProject/FCNCAnalysis/config/trexfitter/xTFW
#1619248008
ls
#1619248011
cd ../../../../
#1619248013
. env.sh 
#1619248015
cd -
#1619248017
. submit_job_tuH.sh 
#1619248418
hep_q -u xiamm
#1619248483
ls
#1619248486
./submit_job_tcH.sh 
#1619249629
hep_q -u xiamm
#1619246472
. ~/xiam 
#1619246501
. env.sh 
#1619246502
tthmake 
#1619246507
cd x
#1619246511
cd FCNCAnalysis/
#1619246512
ls
#1619246513
. env.sh 
#1619246515
tthmake 
#1619246523
cd config/trexfitter/xTFW
#1619246526
ls
#1619246557
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/fake1truth.root 
#1619246613
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1619246635
process_ttbarsys_run 
#1619246644
root -l trexinputs/BDTG_test/reg2mtau1b2jos_vetobtagwp70_highmet/ttbar.root 
#1619246687
root -l trexinputs/BDTG_test/reg2mtau1b3jos_vetobtagwp70_highmet/ttbar.root 
#1619246707
ls
#1619246717
rm -rf fcnc_*
#1619246723
rm -rf t*H
#1619246725
ls
#1619246757
rm combined_BDTG_test/
#1619246763
rm -rf combined_BDTG_test/
#1619246768
ls
#1619246773
trex-fitter h config/combined/BDTG_test.config
#1619246852
ls
#1619246867
cp useful_scripts/trexplot.sh ./
#1619246868
ls
#1619246872
./trexplot.sh 
#1619247992
cp useful_scripts/submit_job_tuH.sh ./
#1619248432
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tuH:Job=tuH/combined_BDTG_test
#1619248467
rm -rf *.sh *.err *.out
#1619248475
cp useful_scripts/submit_job_tcH.sh ./
#1619248476
ls
#1619249632
trex-fitter r config/combined/BDTG_test.config Ranking=plot:Signal=tcH:Job=tcH/combined_BDTG_test
#1619249643
rm -rf *.sh *.err *.out
#1619249712
cd bonly/
#1619249713
ls
#1619249721
rm -rf trexinputs
#1619249733
cp -r ../trexinputs ./
#1619249840
ls
#1619249844
rm -rf fcnc_*
#1619249849
rm -rf t*H
#1619249852
ls
#1619249877
rm -rf combined_BDTG_test/
#1619249885
trex-fitter h config/combined/BDTG_test.config
#1619250048
cp useful_scripts/trexplot.sh ./
#1619250052
./trexplot
#1619250055
./trexplot.sh 
#1619252612
. ~/xiam 
#1619252636
. env.sh 
#1619252646
cd FCNCAnalysis/config/trexfitter/xTFW/bonly/
#1619252648
ls
#1619252656
./trexplot.sh 
