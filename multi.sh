mkdir -p multi
# 

for wifi in 00 01 02 03 04 05 06 07 08 09 10 11 12 13 114 15 16 17 18 19
do
	sed -e "s/WLED_AP_NN/WLED_AP_${wifi}/" < my_config_multi.h > wled00/my_config.h
	pio run
	mv .pio/build/d1_mini/firmware.bin multi/WLED_AP_${wifi}.bin
done
