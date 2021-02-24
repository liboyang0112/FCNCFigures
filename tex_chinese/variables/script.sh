#!/bin/bash
leptonicChannels=("reg1l1tau1b2j_os_vetobtagwp70_highmet" "reg1l1tau1b3j_os_vetobtagwp70_highmet" "reg1l1tau1b2j_ss_vetobtagwp70_highmet" "reg1l1tau1b1j_ss_vetobtagwp70_highmet" "reg1l2tau1bnj_os")
leptonicChannelsTitle=("STH \$\\tlhad\$" "TTH \$\\tlhad\$" "\$l\\thad\$ 2j" "\$l\\thad\$ 1j" "\$l\\thadhad\$")
hadronicChannels=("reg2mtau1b2jos_vetobtagwp70_highmet" "reg2mtau1b3jos_vetobtagwp70_highmet")
hadronicChannelsTitle=("STH \$\\thadhad\$" "TTH \$\\thadhad\$")

leptonicDir="$FCNC_DIR/FCNCFigures/tthML/showFake/faketau/postfit/NOMINAL/"
hadronicDir="$FCNC_DIR/FCNCFigures/xTFW/showFake/NOMINAL/"

char=({a..z})

ichannel=0
for channels in ${leptonicChannels[@]}
do
	ivar=0
	echo '\begin{figure}[H]
\centering' > $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
	for file in `ls $leptonicDir$channels`
	do
		if [[ $file =~ "train" ]] ; then continue ; fi
		if ([[ $file =~ "t1vismass" ]] || [[ $file =~ "t2mass" ]] || [[ $file =~ "chi2" ]] || [[ $file =~ "t2vismass" ]] || [[ $file =~ "t2mass" ]]) &&
			([[ $channels =~ "reg1l1tau1b1j_ss_vetobtagwp70_highmet" ]] || [[ $channels =~ "reg1l1tau1b2j_ss_vetobtagwp70_highmet" ]]) ; then continue ; fi

		if ((ivar%6==0 && ivar!=0)) ; then
			echo "\caption{${leptonicChannelsTitle[$ichannel]}信号区中各变量的分布图，图中信号为tuH耦合。}
\label{fig:var_${leptonicChannels[$ichannel]}_$((ivar/12))}
\end{figure}
\begin{figure}[H]
\centering" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
		fi
		echo '\includegraphics[page=6,width=0.47\textwidth]{'\\FCNCFigures/tthML/showFake/faketau/postfit/NOMINAL/$channels/$file"}" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
#\\put(-40, 90){\\textbf{(${char[$((ivar%6))]})}}
		((ivar++))
		if ((ivar%2==0)) ; then
			echo "\\\\" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
		fi

	done
	echo "\caption{${leptonicChannelsTitle[$ichannel]}信号区中各变量的分布图，图中信号为tuH耦合。}
\label{fig:var_${leptonicChannels[$ichannel]}}
\end{figure}" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
	((ichannel++))
done

ichannel=0
for channels in ${hadronicChannels[@]}
do
	ivar=0
	echo '\begin{figure}[H]
\centering' > $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
	for file in `ls $hadronicDir$channels`
	do
		if [[ $file =~ "train" ]] ; then continue ; fi
		if ((ivar%6==0 && ivar!=0)) ; then
			echo "\caption{${hadronicChannelsTitle[$ichannel]}信号区中各变量的分布图，图中信号为tuH耦合。}
\label{fig:var_${hadronicChannels[$ichannel]}_$((ivar/12))}
\end{figure}
\begin{figure}[H]
\centering" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
		fi

		echo '\includegraphics[page=6,width=0.47\textwidth]{'\\FCNCFigures/xTFW/showFake/NOMINAL/$channels/$file"}" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
#\\put(-40, 90){\\textbf{(${char[$((ivar%6))]})}}
		((ivar++))
		if ((ivar%2==0)) ; then
			echo "\\\\" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
		fi

	done
	echo "\caption{${hadronicChannelsTitle[$ichannel]}信号区中各变量的分布图，图中信号为tuH耦合。}
\label{fig:var_${hadronicChannels[$ichannel]}}
\end{figure}" >> $FCNC_DIR/FCNCFigures/tex/variables/$channels.tex
	((ichannel++))
done