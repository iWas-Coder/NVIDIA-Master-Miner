:: NVIDIA Master Miner v2.0.0 Script
:: https://github.com/trexminer/T-Rex

:: Wasym Atieh Alonso
:: https://www.youtube.com/channel/UCjU20xg8Hv3sycHRXH5Kjng
:: https://github.com/iWas-Coder/NVIDIA-Master-Miner


@echo off
clear
:: START of Copyright License
echo NVIDIA Master Miner [Version v2.0.0]
echo (c) iWas-Coder. All rights reserved.
timeout /t 3 /nobreak>nul
:: END of Copyright License



:master_menu
	set M=0
	clear

	bash ascii_titles/0-title.sh

	echo.
	echo ...............................................
	echo PRESS 1, 2, 3, 4 OR 5 to select your miner, or 6 to EXIT.
	echo ...............................................
	echo.
	echo 1 - Nicehash ETH NVIDIA Miner
	echo 2 - ETH NVIDIA Miner
	echo 3 - ETC NVIDIA Miner
	echo 4 - Nicehash RVN NVIDIA Miner
	echo 5 - RVN NVIDIA Miner
	echo 6 - EXIT
	echo.

	set /P M=Type 1,2,3,4 or 5 then press ENTER: 
	if %M%==1 goto nicehash_eth
	if %M%==2 goto pool_eth
	if %M%==3 goto pool_etc
	if %M%==4 goto nicehash_rvn
	if %M%==5 goto pool_rvn
	if %M%==6 goto local_eof
	if %M% lss 1 goto master_menu
	if %M% gtr 6 goto master_menu


:nicehash_eth
	set M=0
	clear

	bash ascii_titles/1-nicehash_eth.sh

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - Nicehash ETH Light Mining (intensity=10, ~70W)
	echo 2 - Nicehash ETH Normal Mining (intensity=16, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_1
	if %M%==2 goto normal_mining_1
	if %M%==3 goto master_menu
	if %M% lss 1 goto nicehash_eth
	if %M% gtr 3 goto nicehash_eth

	:light_mining_1
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum.eu-west.nicehash.com:33353 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_eth

	:normal_mining_1
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum.eu-west.nicehash.com:33353 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_eth

goto master_menu


:pool_eth
	set M=0
	clear

	bash ascii_titles/2-pool_eth.sh

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - ETH Light Mining (intensity=10, ~70W)
	echo 2 - ETH Normal Mining (intensity=18, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_2
	if %M%==2 goto normal_mining_2
	if %M%==3 goto master_menu
	if %M% lss 1 goto pool_eth
	if %M% gtr 3 goto pool_eth

	:light_mining_2
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1.ethermine.org:5555 -u 0xBC9648Af8f9c69b26EDf7a6c5298CF032dF41EA4 -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_eth

	:normal_mining_2
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1.ethermine.org:5555 -u 0xBC9648Af8f9c69b26EDf7a6c5298CF032dF41EA4 -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_eth

goto master_menu


:pool_etc
	set M=0
	clear

	bash ascii_titles/3-pool_etc.sh

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - ETC Light Mining (intensity=10, ~70W)
	echo 2 - ETC Normal Mining (intensity=18, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_3
	if %M%==2 goto normal_mining_3
	if %M%==3 goto master_menu
	if %M% lss 1 goto pool_etc
	if %M% gtr 3 goto pool_etc

	:light_mining_3
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a etchash --coin etc -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1-etc.ethermine.org:5555 -u 0xbAdC082151ecEa6cD27679a8010De00017c9a31C -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_etc

	:normal_mining_3
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a etchash --coin etc -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1-etc.ethermine.org:5555 -u 0xbAdC082151ecEa6cD27679a8010De00017c9a31C -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_etc

goto master_menu


:nicehash_rvn
	set M=0
	clear

	bash ascii_titles/4-nicehash_rvn.sh

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - Nicehash RVN Light Mining (intensity=10, ~50W)
	echo 2 - Nicehash RVN Normal Mining (intensity=18, ~130W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_4
	if %M%==2 goto normal_mining_4
	if %M%==3 goto master_menu
	if %M% lss 1 goto nicehash_rvn
	if %M% gtr 3 goto nicehash_rvn

	:light_mining_4
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+tcp://kawpow.eu-west.nicehash.com:3385 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_rvn

	:normal_mining_4
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+tcp://kawpow.eu-west.nicehash.com:3385 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_rvn


:pool_rvn
	set M=0
	clear

	bash ascii_titles/5-pool_rvn.sh

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - RVN Light Mining (intensity=10, ~50W)
	echo 2 - RVN Normal Mining (intensity=18, ~130W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_5
	if %M%==2 goto normal_mining_5
	if %M%==3 goto master_menu
	if %M% lss 1 goto pool_rvn
	if %M% gtr 3 goto pool_rvn

	:light_mining_5
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u r9S12NQEkdNaCH4BKwJtfuZnHe85kQ21xd -p 0.1 -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_rvn

	:normal_mining_5
	clear
	D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u r9S12NQEkdNaCH4BKwJtfuZnHe85kQ21xd -p 0.1 -w RTX2060_S --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_rvn

goto master_menu

:local_eof
	clear
	bash ascii_titles/6-exit.sh
	sleep 1.5
