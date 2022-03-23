:: NVIDIA Master Miner v2.5.5 Script
:: https://github.com/trexminer/T-Rex

:: Wasym Atieh Alonso
:: https://www.youtube.com/channel/UCjU20xg8Hv3sycHRXH5Kjng
:: https://github.com/iWas-Coder/NVIDIA-Master-Miner


@echo off
cls
:: START of Copyright License
echo NVIDIA Master Miner [Version v2.5.5]
echo (c) iWas-Coder. All rights reserved.
timeout /t 3 /nobreak>nul
:: END of Copyright License


wmic process where name="t-rex.exe" | find "t-rex.exe" /c > tmp/n_instances.out
set /p O=<tmp/n_instances.out
if %O% geq 2 goto multiple_instances_error

wmic process where name="TON-Stratum-Miner.exe" | find "TON-Stratum-Miner.exe" /c > tmp/n_instances.out
set /p O=<tmp/n_instances.out
if %O% geq 2 goto multiple_instances_error


:master_menu
	set M=0
	cls
	
	type ascii_titles\0-title.txt
	
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
	echo 6 - Nicehash ERGO NVIDIA Miner
	echo 7 - TON NVIDIA Miner
	echo 8 - EXIT
	echo.

	set /P M=Type 1,2,3,4 or 5 then press ENTER: 
	if %M%==1 goto nicehash_eth
	if %M%==2 goto pool_eth
	if %M%==3 goto pool_etc
	if %M%==4 goto nicehash_rvn
	if %M%==5 goto pool_rvn
	if %M%==6 goto nicehash_ergo
	if %M%==7 goto pool_ton
	if %M%==8 goto local_eof
	if %M% lss 1 goto master_menu
	if %M% gtr 8 goto master_menu


:nicehash_eth
	cls
	type ascii_titles\1-nicehash_eth.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+ssl://stratum.eu-west.nicehash.com:33353 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_SUPER
	goto master_menu


:pool_eth
	cls
	type ascii_titles\2-pool_eth.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a ethash --coin eth -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+ssl://eu1.ethermine.org:5555 -u 0xBC9648Af8f9c69b26EDf7a6c5298CF032dF41EA4 -p x -w RTX2060_SUPER
	goto master_menu


:pool_etc
	cls
	type ascii_titles\3-pool_etc.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a etchash --coin etc -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+ssl://eu1-etc.ethermine.org:5555 -u 0xbAdC082151ecEa6cD27679a8010De00017c9a31C -p x -w RTX2060_SUPER
	goto master_menu


:nicehash_rvn
	cls
	type ascii_titles\4-nicehash_rvn.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+tcp://kawpow.eu-west.nicehash.com:3385 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_SUPER
	goto master_menu


:pool_rvn
	cls
	type ascii_titles\5-pool_rvn.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a kawpow --coin rvn -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u r9S12NQEkdNaCH4BKwJtfuZnHe85kQ21xd -p 0.1 -w RTX2060_SUPER
	goto master_menu


:nicehash_ergo
	cls
	type ascii_titles\6-nicehash_ergo.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\t-rex.exe -a autolykos2 --coin ergo -i 18 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 --validate-shares -o stratum+tcp://autolykos.eu-west.nicehash.com:3390 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w RTX2060_SUPER
	goto master_menu


:pool_ton
	cls
	type ascii_titles\7-pool_ton.txt
	echo.
	echo.
	call D:\"CUSTOM SCRIPTS"\"NVIDIA Master Miner"\TON-Stratum-Miner\TON-Stratum-Miner.exe -w EQDRUBPkfSjgRTlbd9Jz7ysYMfrcCVWB90nxFEmupjLbaidI -b cuda.exe -F 1024 -r RTX2060_SUPER
	goto master_menu


:multiple_instances_error
	cls
	echo Another instance of the program is alredy running, multiple instances are not allowed!!
	echo.
	echo Closing...
	echo ^|^|#####                   ^|^|   (33%%)
	timeout /t 2 /nobreak>nul

	cls
	echo Another instance of the program is alredy running, multiple instances are not allowed!!
	echo.
	echo Closing...
	echo ^|^|#############           ^|^|   (66%%)
	timeout /t 2 /nobreak>nul

	cls
	echo Another instance of the program is alredy running, multiple instances are not allowed!!
	echo.
	echo Closing...
	echo ^|^|####################### ^|^|   (99%%)
	timeout /t 2 /nobreak>nul

	cls
	echo Another instance of the program is alredy running, multiple instances are not allowed!!
	echo.
	echo Closing...
	echo ^|^|########################^|^|   (100%%)
	timeout /t 1 /nobreak>nul

	echo.
	goto local_eof


:local_eof
	cls
	type ascii_titles\8-exit.txt
	timeout /t 2 /nobreak>nul
