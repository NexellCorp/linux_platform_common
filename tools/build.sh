#!/bin/bash

TOP=`pwd`

# Version information
UBOOT_VER=2014.07
KERNEL_VER=3.4.39
BUILDROOT_VER=2013.11

if [ $# -ge 3 ]; then
    CHIPSET_NAME=$1
    BOARD_NAME=$2
	BOOT_DEV=$3
else
    echo "Please specify your build target information."
    echo "Usage : ./platform/common/tools/build.sh [CHIPSET_NAME] [BOARD_NAME] [BOOT_DEV]"
	echo "Supported chipset : s5p4418/s5p6818"
    echo "Supported board based on s5p4418 : lepus/drone/svt/avn_ref/navi_ref/iA1/iA2"
    echo "Supported board based on s5p6818 : drone/svt/avn_ref"
	echo "Avaliable boot device : sdmmc/spirom"
    exit 0
fi

# Confirm chipset and board
if [ $1 == "s5p4418" ]; then
	if [ $2 == "lepus" ]; then
	    echo ""
	else
		if [ $2 == "drone" ]; then
		    echo ""
		else
	        if [ $2 == "avn_ref" ]; then
	            echo ""
			else
				if [ $2 == "navi_ref" ]; then
					echo ""
		        else
				    if [ $2 == "svt" ]; then
				        echo ""
				    else
						if [ $2 == "iA1" ]; then
							echo ""
				        else
						    if [ $2 == "iA2" ]; then
						        echo ""
						    else
						        echo "Not supported board!"
						        echo "Supported board : lepus/drone/svt/avn_ref/navi_ref/iA1/iA2"
						        exit 0
							fi
					    fi
					fi
			    fi
			fi
		fi
	fi
else
	if [ $1 == "s5p6818" ]; then
		if [ $2 == "drone" ]; then
		    echo ""
		else
		    if [ $2 == "avn_ref" ]; then
		        echo ""
		    else
		        if [ $2 == "svt" ]; then
		            echo ""
		        else
		            echo "Not supported board!"
		            echo "Supported board : drone/svt/avn_ref"
		            exit 0
		        fi
			fi
	    fi
	else
		echo "Not supported chipset!"
		echo "Supported chipset : s5p4418/s5p6818"
		exit 0
	fi
fi

# Confirm boot device
if [ $3 == "sdmmc" ]; then
    echo ""
	if [ $2 == "lepus" ]; then
		DEVNUM=0
	else
		if [ $2 == "navi_ref" ]; then
			DEVNUM=0
		else
			if [ $2 == "iA1" ]; then
				DEVNUM=0
			else
				if [ $2 == "iA2" ]; then
					DEVNUM=0
				else
					DEVNUM=2
				fi
			fi
		fi
	fi
else
	if [ $3 == "spi" ]; then
		if [ $2 == "iA1" ]; then
			DEVNUM=0
		else
			if [ $2 == "iA2" ]; then
				DEVNUM=0
			else
				if [ $2 == "svt" ]; then
					DEVNUM=2
				else
					echo "$3 is not supported in $BOARD_NAME"
					exit 0
				fi
			fi
		fi
	else
		echo "Not supported boot device!"
		echo "Avaliable boot device : sdmmc/spirom"
		exit 0
	fi
fi

UBOOT_CONFIG_NAME=${CHIPSET_NAME}_${BOARD_NAME}_linux
KERNEL_CONFIG_NAME=${CHIPSET_NAME}_${BOARD_NAME}
 
UBOOT_DIR=$TOP/bootloader/u-boot-${UBOOT_VER}
KERNEL_DIR=$TOP/kernel/kernel-${KERNEL_VER}

MODULES_DIR=$TOP/platform/${CHIPSET_NAME}/modules
APPLICATION_4418_DIR=$TOP/platform/s5p4418/apps
APPLICATION_6818_DIR=$TOP/platform/s5p6818/apps
LIBRARY_DIR=$TOP/platform/${CHIPSET_NAME}/library
LIBRARY_4418_DIR=$TOP/platform/s5p4418/library
LIBRARY_6818_DIR=$TOP/platform/s5p6818/library

FILESYSTEM_DIR=$TOP/platform/common/fs
BUILDROOT_DIR=$FILESYSTEM_DIR/buildroot/buildroot-${BUILDROOT_VER}
TOOLS_DIR=$TOP/platform/common/tools
EXTRA_DIR=$TOP/platform/common/fs/buildroot/fs/extra
RESULT_DIR=$TOP/result_${BOARD_NAME}

# Kbyte
RAMDISK_SIZE=12288
RAMDISK_FILE=$FILESYSTEM_DIR/buildroot/out/ramdisk.gz

USERDATA_DIR=$RESULT_DIR/userdata
USERDATA_IMAGE=$RESULT_DIR/userdata.img
# 2GByte
USERDATA_SIZE=2147483648

MAKE_EXT4FS=$TOOLS_DIR/bin/make_ext4fs
NX_BINGEN=$TOOLS_DIR/bin/BOOT_BINGEN
NSIH_FILE=$TOP/platform/${CHIPSET_NAME}/boot/release/nsih/nsih_${BOARD_NAME}_${BOOT_DEV}.txt
SECONDBOOT_FILE=$TOP/platform/${CHIPSET_NAME}/boot/release/2ndboot/2ndboot_${BOARD_NAME}_${BOOT_DEV}.bin
SECONDBOOT_OUT_FILE=$RESULT_DIR/2ndboot_${BOARD_NAME}_${BOOT_DEV}.bin
PARTMAP=$RESULT_DIR/partmap.txt

USE_FFMPEG=yes

CMD_V_BUILD_NUM=

CMD_V_2NDBOOT=no
CMD_V_UBOOT=no
CMD_V_UBOOT_CLEAN=no

CMD_V_KERNEL=no
CMD_V_KERNEL_CLEAN=no
CMD_V_KERNEL_MODULE=no
CMD_V_KERNEL_PROJECT_MENUCONFIG=no
CMD_V_KERNEL_PROJECT_MENUCONFIG_COMPILE=no

CMD_V_APPLICATION=no
CMD_V_APPLICATION_CLEAN=no
CMD_V_BUILDROOT=no
CMD_V_BUILDROOT_CLEAN=no
CMD_V_FILESYSTEM=no
CMD_V_USERDATA=no

CMD_V_SDCARD_PACKAGING=no
CMD_V_SDCARD_SELECT_DEV=
CMD_V_EMMC_PACKAGING=no
CMD_V_EMMC_PACKAGING_2NDBOOT=no
CMD_V_EMMC_PACKAGING_UBOOT=no
CMD_V_EMMC_PACKAGING_BOOT=no

CMD_V_BASE_PORTING=no
CMD_V_NEW_BOARD=

CMD_V_BUILD_ERROR=no
CMD_V_BUILD_SEL=Not

TEMP_UBOOT_TEXT=
TEMP_KERNEL_TEXT=

YEAR=0000
MON=00
DAY=00
HOUR=00
MIN=00
SEC=00

# Optional feature
#LOAD_ADDRESS=0x48000000
#LAUNCH_ADDRESS=0x48000000

function check_result()
{
	if [ $? -ne 0 ]; then
		cd $TOP
		echo "[Error]"
		exit
	fi
}

function currentTime()
{
	YEAR=`date +%Y`
	MON=`date +%m`
	DAY=`date +%d`
	HOUR=`date +%H`
	MIN=`date +%M`
	SEC=`date +%S`
}

function build_2ndboot()
{
    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo "# Make 2ndboot ($BOOT_DEV)"
    echo '#'
    echo '#########################################################'
    echo '#########################################################'

    sleep 1.5
    pushd . > /dev/null
	echo "$NX_BINGEN -c $CHIPSET_NAME -t 2ndboot -n $NSIH_FILE -i $SECONDBOOT_FILE -o $SECONDBOOT_OUT_FILE"
#   $NX_BINGEN -c $CHIPSET_NAME -t 2ndboot -n $NSIH_FILE -i $SECONDBOOT_FILE -o $SECONDBOOT_OUT_FILE -l $LOAD_ADDRESS -e $LAUNCH_ADDRESS
	$NX_BINGEN -c $CHIPSET_NAME -t 2ndboot -n $NSIH_FILE -i $SECONDBOOT_FILE -o $SECONDBOOT_OUT_FILE
    popd > /dev/null
}

function build_uboot_source()
{

	if [ ${CMD_V_UBOOT_CLEAN} == "yes" ]; then
		echo ''
		echo ''
		echo '#########################################################'
		echo '#########################################################'
		echo '#'
		echo '# Clean u-boot '
		echo '#'
		echo '#########################################################'

		sleep 1.5

		pushd . > /dev/null
		cd $UBOOT_DIR
		make distclean
		make ${UBOOT_CONFIG_NAME}_config
		popd > /dev/null
	fi

	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo "# Build u-boot "
	echo '#'
	echo '#########################################################'

	if [ -f $RESULT_DIR/build.${CHIPSET_NAME}.uboot ]; then
		rm -f $RESULT_DIR/build.${CHIPSET_NAME}.uboot
	fi
	echo "${UBOOT_CONFIG_NAME}_config" > $RESULT_DIR/build.${CHIPSET_NAME}.uboot

	sleep 1.5
	pushd . > /dev/null

	cd $UBOOT_DIR
	make ${UBOOT_CONFIG_NAME}_config
	make -j8 -sw CROSS_COMPILE=arm-cortex_a9-linux-gnueabi-
	check_result
	
	cp -av ${UBOOT_DIR}/u-boot.bin ${RESULT_DIR}
	popd > /dev/null
}

function build_kernel_source()
{
	if [ ${CMD_V_KERNEL_CLEAN} == "yes" ]; then
		echo ''
		echo ''
		echo '#########################################################'
		echo '#########################################################'
		echo '#'
		echo '# Clean kernel '
		echo '#'
		echo '#########################################################'

		sleep 1.5

		pushd . > /dev/null
		cd $KERNEL_DIR
		make ARCH=arm clean -j8
		rm -rf .config
		popd > /dev/null
	fi

	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo "# Build kernel "
	echo '#'
	echo '#########################################################'

	sleep 1.5

    if [ -f $RESULT_DIR/build.${CHIPSET_NAME}.kernel ]; then
	    rm -f $RESULT_DIR/build.${CHIPSET_NAME}.kernel
    fi

	pushd . > /dev/null
	cd $KERNEL_DIR
	make ARCH=arm ${KERNEL_CONFIG_NAME}_linux_defconfig
	echo "${KERNEL_CONFIG_NAME}_linux_defconfig" > $RESULT_DIR/build.${CHIPSET_NAME}.kernel

	make ARCH=arm uImage -j8 -sw
	check_result
	popd > /dev/null

	cp -av ${KERNEL_DIR}/arch/arm/boot/uImage ${RESULT_DIR}
}

function build_kernel_module()
{

	echo ''
	echo '#########################################################'
	echo '# Build kernel module'
	echo '#########################################################'

	sleep 1.5

	#pushd . > /dev/null
	#cd $MODULES_DIR/coda960
	#make ARCH=arm -j4 -sw
	#check_result
	#popd > /dev/null

	pushd . > /dev/null
	cd $MODULES_DIR/fc8080_tdmb
	./build.sh
	check_result
	popd > /dev/null

	pushd . > /dev/null
	cd $MODULES_DIR/fc8080_tpeg
	./build.sh
	check_result
	popd > /dev/null


	cp -av $MODULES_DIR/fc8080_tdmb/fc8080_tdmb.ko $FILESYSTEM_DIR/buildroot/out/rootfs/root/
	cp -av $MODULES_DIR/fc8080_tpeg/fc8080_tpeg.ko $FILESYSTEM_DIR/buildroot/out/rootfs/root/
}

function build_kernel_current_menuconfig()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo "# Kernel ${KERNEL_CONFIG_NAME}_linux_defconfig menuconfig "
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	pushd . > /dev/null
	cd $KERNEL_DIR
	make ARCH=arm menuconfig
	check_result
	popd > /dev/null
}

function build_kernel_configuration()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo "# Set kernel ${KERNEL_CONFIG_NAME}_linux_defconfig "
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	if [ -f $RESULT_DIR/build.${CHIPSET_NAME}.kernel ]; then
		rm -f $RESULT_DIR/build.${CHIPSET_NAME}.kernel
	fi

	sleep 1.5
	pushd . > /dev/null
	cd $KERNEL_DIR
	make distclean
	make ARCH=arm ${KERNEL_CONFIG_NAME}_linux_defconfig
	check_result

	echo "${KERNEL_CONFIG_NAME}_linux_defconfig" > $RESULT_DIR/build.${CHIPSET_NAME}.kernel	
	popd > /dev/null
}

# Not used
function build_partial_app()
{
	if [ -d $1 ]; then
		echo ''
		echo '#########################################################'
		echo "# $1 "
		echo '#########################################################'
		cd $1
		if [ ${CMD_V_APPLICATION_CLEAN} == "yes" ]; then
			make clean
		fi	
		make -sw
		check_result
	fi
}

# Not used
function build_partial_lib()
{
	if [ -d $1 ]; then
		echo ''
		echo '#########################################################'
		echo "# $1 "
		echo '#########################################################'
		cd $1
		if [ ${CMD_V_APPLICATION_CLEAN} == "yes" ]; then
			make clean
		fi	
		make -sw
		check_result
		make install -sw
	fi
}

function build_application()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo '# Library & Application '
	echo '#'
	echo '#########################################################'
	echo '#########################################################'
	
	sleep 1.5

	rm $APPLICATION_4418_DIR/fc8080_tdmb/fccon
	rm $APPLICATION_4418_DIR/fc8080_tpeg/fccont 
	rm $FILESYSTEM_DIR/buildroot/out/rootfs/usr/bin/fccon
	rm $FILESYSTEM_DIR/buildroot/out/rootfs/usr/bin/fccont

	pushd . > /dev/null
	cd $APPLICATION_4418_DIR/fc8080_tdmb
	make clean
	make
	check_result
	popd > /dev/null

	pushd . > /dev/null
	cd $APPLICATION_4418_DIR/fc8080_tpeg
	#make clean
	make
	check_result
	popd > /dev/null

	cp -av $APPLICATION_4418_DIR/fc8080_tdmb/fccon $FILESYSTEM_DIR/buildroot/out/rootfs/usr/bin/
	# cp -av $APPLICATION_4418_DIR/fc8080_tpeg/fccont $FILESYSTEM_DIR/buildroot/out/rootfs/usr/bin/
}

function build_buildroot()
{
	cd $BUILDROOT_DIR

	if [ ${CMD_V_BUILDROOT_CLEAN} == "yes" ]; then
        echo '#########################################################'
        echo '#########################################################'
        echo '#'
        echo '# Clean buildroot '
        echo '#'
        echo '#########################################################'
		# make clean
	fi

    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo "# Build buildroot "
	echo '#'
    echo '#########################################################'
    echo '#########################################################'

	if [ -f .config ]; then
		echo ""
	else
		cp -av ../configs/br.2013.11.cortex_a9_glibc_tiny_rfs.config .config
	fi
	# make
    check_result
}

function copy_app()
{
	if [ -d $1 ]; then
		echo "# copy $1 #"
		cp -av $1/$2 $FILESYSTEM_DIR/buildroot/out/rootfs/usr/bin/
		check_result
	fi
}

function build_userdata()
{
    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo "# Make userdata image (EXT4)"
    echo "# Image Size = ${USERDATA_SIZE}"
    echo '#########################################################'
    echo '#########################################################'

	sleep 1.5

	if [ -d $RESULT_DIR/userdata ];
	then echo ''
	else mkdir $USERDATA_DIR
	fi

    if [ -f ${USERDATA_IMAGE} ]; then
        rm -f ${USERDATA_IMAGE}
    fi

	pushd . > /dev/null
	echo "$MAKE_EXT4FS -s -l $USERDATA_SIZE $USERDATA_IMAGE $USERDATA_DIR"
	$MAKE_EXT4FS -s -l $USERDATA_SIZE $USERDATA_IMAGE $USERDATA_DIR
}

function build_filesystem()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo "# Make filesystem (rootfs type : ramdisk)"
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	sleep 1.5

	if [ -f ${RAMDISK_FILE} ]; then
		rm -f ${RAMDISK_FILE}
	fi

	if [ -f ${RESULT_DIR}/ramdisk.gz ]; then
		rm -f ${RESULT_DIR}/ramdisk.gz
	fi

	pushd . > /dev/null

	cd $FILESYSTEM_DIR
	cp buildroot/scripts/mk_ramfs.sh buildroot/out/
	cd buildroot/out/

	if [ -d mnt ]; then
		sudo rm -rf mnt
	fi

	chmod 755 ./*.sh
	./mk_ramfs.sh -r rootfs -s ${RAMDISK_SIZE}

	popd > /dev/null

	echo ''
	echo ''
	echo '#########################################################'
	echo "# Copy built images"
	echo '#########################################################'
	cp -av ${UBOOT_DIR}/u-boot.bin ${RESULT_DIR}
	check_result
	cp -av ${KERNEL_DIR}/arch/arm/boot/uImage ${RESULT_DIR}
	check_result
	cp -av ${RAMDISK_FILE} ${RESULT_DIR}/ramdisk.gz
	check_result
}

function build_fastboot_partmap()
{
	if [ -f ${PARTMAP} ]; then
			echo ""
			rm -rf $PARTMAP
	fi

    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo '# Make partmap'
    echo '#'
    echo '#########################################################'
    echo '#########################################################'

	if [ $BOOT_DEV == "sdmmc" ]; then
		# sdmmc
		echo "flash=mmc,${DEVNUM}:2ndboot:2nd:0x200,0x7E00;" >> ${PARTMAP}
		echo "flash=mmc,${DEVNUM}:bootloader:boot:0x8000,0x77000;" >> ${PARTMAP}
		echo "flash=mmc,${DEVNUM}:kernel:raw:0x100000,0xF00000;" >> ${PARTMAP}
		echo "flash=mmc,${DEVNUM}:ramdisk:raw:0x1000000,0x3200000;" >> ${PARTMAP}
		echo "flash=mmc,${DEVNUM}:userdata:ext4:0x4200000,0x0;" >> ${PARTMAP}
	else
		# spirom
		echo "flash=eeprom,0:2ndboot:2nd:0x0,0x4000;" >> ${PARTMAP}
		echo "flash=eeprom,0:bootloader:boot:0x10000,0x70000;" >> ${PARTMAP}
		echo "flash=eeprom,0:kernel:raw:0x80000,0x280000;" >> ${PARTMAP}
		echo "flash=eeprom,0:ramdisk:raw:0x300000,0x4fffff;" >> ${PARTMAP}
	fi

	sleep 1.5
	pushd . > /dev/null

	cat ${PARTMAP}
	popd > /dev/null		

    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo '# Fastboot partmap'
    echo '#'
    echo '#########################################################'
    echo '#########################################################'

	sleep 1.5
	pushd . > /dev/null

	sudo fastboot flash partmap $PARTMAP
	popd > /dev/null		
}

function build_fastboot_2ndboot()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo '# Fastboot 2ndboot'
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	sleep 1.5
	pushd . > /dev/null
	sudo fastboot flash 2ndboot $SECONDBOOT_OUT_FILE
	popd > /dev/null
}

function build_fastboot_uboot()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo '# Fastboot u-boot'
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	sleep 1.5
	pushd . > /dev/null
	sudo fastboot flash bootloader $RESULT_DIR/u-boot.bin
	popd > /dev/null
}

function build_fastboot_boot()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo '# Fastboot kernel'
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	sleep 1.5
	pushd . > /dev/null
	sudo fastboot flash kernel $RESULT_DIR/uImage
	popd > /dev/null
}

function complete_fastboot_reboot()
{
    echo '#########################################################'
    echo '#'
    echo '# Fastboot reboot'
    echo '#'
    echo '#########################################################'

    sleep 1.5
    pushd . > /dev/null
    sudo fastboot reboot
    popd > /dev/null
}

function build_fastboot_userdata()
{
    echo ''
    echo ''
    echo '#########################################################'
    echo '#########################################################'
    echo '#'
    echo '# Fastboot userdata'
    echo '#'
    echo '#########################################################'
    echo '#########################################################'

    sleep 1.5
    pushd . > /dev/null
    sudo fastboot flash userdata $RESULT_DIR/userdata.img
    popd > /dev/null
}

function build_fastboot_system()
{
	echo ''
	echo ''
	echo '#########################################################'
	echo '#########################################################'
	echo '#'
	echo '# Fastboot system'
	echo '#'
	echo '#########################################################'
	echo '#########################################################'

	sleep 1.5
	pushd . > /dev/null
	sudo fastboot flash ramdisk $RESULT_DIR/ramdisk.gz
	popd > /dev/null
}

function build_function_main()
{

	currentTime
	StartTime="${YEAR}-${MON}-${DAY} ${HOUR}:${MIN}:${SEC}"
	echo '#########################################################'
	echo "#  Build Time : "${StartTime}"                     #"
	echo '#########################################################'
	echo ""

	if [ -d $RESULT_DIR ]; then
		echo 'The result directory has already been created.'
	else
		echo 'Creating the result directory...'
		mkdir $RESULT_DIR
	fi

	if [ ${CMD_V_2NDBOOT} == "yes" ]; then
		CMD_V_BUILD_SEL="Make second boot"
		build_2ndboot
	fi

	if [ ${CMD_V_UBOOT} == "yes" ]; then
		CMD_V_BUILD_SEL="Build u-boot"
		build_uboot_source
	fi

	if [ ${CMD_V_KERNEL} == "yes" ]; then
		CMD_V_BUILD_SEL="Build Kernel"
		build_kernel_source
	fi

	if [ ${CMD_V_KERNEL_MODULE} == "yes" ]; then
		CMD_V_BUILD_SEL="Build Kernel module"
		build_kernel_module
	fi

	if [ ${CMD_V_APPLICATION} == "yes" ]; then
		CMD_V_BUILD_SEL="Build Library and Application"
		build_application
	fi


	if [ ${CMD_V_BUILDROOT} == "yes" ]; then
		CMD_V_BUILD_SEL="Build Buildroot for filesystem"
		build_buildroot
	fi

	if [ ${CMD_V_FILESYSTEM} == "yes" ]; then
		CMD_V_BUILD_SEL="Build Filesystem"
		build_filesystem
	fi

    if [ ${CMD_V_USERDATA} == "yes" ]; then
        CMD_V_BUILD_SEL="Make Userdata Image"
        build_userdata
    fi

	if [ -d ${RESULT_DIR} ]; then
		echo ""
		echo '#########################################################'
		echo "ls -al ${RESULT_DIR}"
		ls -al ${RESULT_DIR}
	fi

	currentTime
	EndTime="${YEAR}-${MON}-${DAY} ${HOUR}:${MIN}:${SEC}"

	echo ""
	echo '#########################################################'
	echo "#                 Complete success!"
	echo '#########################################################'
	echo "# Build Information"
	echo "#     Chipset       : "${CHIPSET_NAME}" "
	echo "#     Board Name    : "${BOARD_NAME}" "
	echo "#     U-boot Config : "${TEMP_UBOOT_TEXT}" "
	echo "#     Kernel Config : "${TEMP_KERNEL_TEXT}" "
	echo "#"
	echo "# Completion Time"
	echo "#     Start Time : "${StartTime}"	"
	echo "#     End Time   : "${EndTime}"	"
	echo '#########################################################'
	sleep 2
}

function command_reset()
{
CMD_V_2NDBOOT=no
CMD_V_UBOOT=no
CMD_V_UBOOT_CLEAN=no

CMD_V_KERNEL=no
CMD_V_KERNEL_CLEAN=no
CMD_V_KERNEL_MODULE=no
CMD_V_KERNEL_PROJECT_MENUCONFIG=no
CMD_V_KERNEL_PROJECT_MENUCONFIG_COMPILE=no

CMD_V_APPLICATION=no
CMD_V_APPLICATION_CLEAN=no
CMD_V_BUILDROOT=no
CMD_V_BUILDROOT_CLEAN=no
CMD_V_FILESYSTEM=no
CMD_V_USERDATA=no

CMD_V_SDCARD_PACKAGING=no
CMD_V_SDCARD_SELECT_DEV=
CMD_V_EMMC_PACKAGING=no
CMD_V_EMMC_PACKAGING_2NDBOOT=no
CMD_V_EMMC_PACKAGING_UBOOT=no
CMD_V_EMMC_PACKAGING_BOOT=no

CMD_V_BASE_PORTING=no
CMD_V_NEW_BOARD=

CMD_V_BUILD_ERROR=no
CMD_V_BUILD_SEL=Not

CMD_V_BUILD_NUM=
}

################################################################
##
## main build start
##
################################################################

if [ -d $RESULT_DIR ]; then
	echo ""
else
	mkdir -p $RESULT_DIR
fi

if [ -f $RESULT_DIR/build.${CHIPSET_NAME}.uboot ]; then
	TEMP_UBOOT_TEXT=`cat $RESULT_DIR/build.${CHIPSET_NAME}.uboot`
fi
if [ -f $RESULT_DIR/build.${CHIPSET_NAME}.kernel ]; then
	TEMP_KERNEL_TEXT=`cat $RESULT_DIR/build.${CHIPSET_NAME}.kernel`
fi

if [ ${BOARD_NAME} != "build_exit" ]; then
	while [ -z $CMD_V_BUILD_NUM ]
	do
		#clear
		echo "******************************************************************** "
		echo "[Build Function Menu]"
		echo "  TOP Directory : $TOP"
		echo "  Before Uboot  : ${TEMP_UBOOT_TEXT}"
		echo "  Before Kernel : ${TEMP_KERNEL_TEXT}"
		echo "  Board Name    : $BOARD_NAME"
		echo "  BOOT Device   : $BOOT_DEV"
		echo "******************************************************************** "
		echo "  1. ALL(+Compile)"
		echo "     1c. Clean Build"       
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  2. 2ndboot+u-boot+kernel(+Build)   2c. Clean Build(All)"
		echo "     21.  u-boot(+Build)		21c. u-boot(+Clean Build)"
		echo "     22.  kernel(+Build)		22c. kernel(+Clean Build)"
		echo "     23.  2ndboot(+Make)"       
		echo " "
		echo "     2m.  kernel menuconfig"
		echo "     2mc. ${KERNEL_CONFIG_NAME}_linux_defconfig -> .config"
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  3. Application+Library(+Build)"
		echo "     3c. App+Lib(+Clean Build)"       
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  4. Buildroot(+Build)"
		echo "     4c. Buildroot(+Clean Build)"       
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  5. Filesystem(All)"
		echo "     51. Ramdisk(Root)(+Make)"
		echo "     52. Userdata(EXT4)(+Make)"
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  6. eMMC Packaging(All)"
		echo "     61. fastboot partmap(partition map)"
		echo "     62. fastboot secondboot(2ndboot)"
		echo "     63. fastboot bootloader(u-boot)"
		echo "     64. fastboot boot(kernel)"
		echo "     65. fastboot system(rootfs)"
		echo "     66. fastboot data(userdata)"
		echo "     67. fastboot reboot"
		echo " "
		echo "--------------------------------------------------------------------"
		echo "  0. Exit"
		echo "--------------------------------------------------------------------"

		echo -n "     Select Menu -> "
		read CMD_V_BUILD_NUM
		case $CMD_V_BUILD_NUM in
			#------------------------------------------------------------------------------------------------
			1) CMD_V_2NDBOOT=yes
				CMD_V_UBOOT=yes	
			    CMD_V_KERNEL=yes 
			    CMD_V_KERNEL_MODULE=yes
			    CMD_V_APPLICATION=yes
				CMD_V_BUILDROOT=yes
			    CMD_V_FILESYSTEM=yes
				CMD_V_USERDATA=yes
			    ;;

				1c) CMD_V_2NDBOOT=yes
					CMD_V_UBOOT_CLEAN=yes
				    CMD_V_UBOOT=yes
				    CMD_V_KERNEL_CLEAN=yes
				    CMD_V_KERNEL=yes 
				    CMD_V_APPLICATION=yes
				    CMD_V_APPLICATION_CLEAN=yes
					CMD_V_BUILDROOT=yes
					CMD_V_BUILDROOT_CLEAN=yes
				    CMD_V_FILESYSTEM=yes
					CMD_V_USERDATA=yes
				    ;;

			#------------------------------------------------------------------------------------------------
			2) CMD_V_KERNEL=yes 
			    CMD_V_KERNEL_MODULE=yes
			    CMD_V_UBOOT=yes 
			    ;;
				2c) CMD_V_UBOOT=yes
					CMD_V_UBOOT_CLEAN=yes				
					CMD_V_KERNEL=yes 
					CMD_V_KERNEL_CLEAN=yes
				    ;;
				21) CMD_V_UBOOT=yes					    ;;
				21c) CMD_V_UBOOT=yes
				     CMD_V_UBOOT_CLEAN=yes				
				     ;;
				22) CMD_V_KERNEL=yes 						
				       CMD_V_KERNEL_MODULE=yes
					 ;;
				22c) CMD_V_KERNEL=yes 
				         CMD_V_KERNEL_MODULE=yes
					 CMD_V_KERNEL_CLEAN=yes
 			       	 ;;
				23) CMD_V_2NDBOOT=yes					;;

				2m)	build_kernel_current_menuconfig		;;
				2mc)build_kernel_configuration			;;

			#------------------------------------------------------------------------------------------------
			3)	CMD_V_APPLICATION=yes					;;
				3c) CMD_V_APPLICATION=yes
					CMD_V_APPLICATION_CLEAN=yes
					;;

			#------------------------------------------------------------------------------------------------
			4)	CMD_V_BUILDROOT=yes						;;
				4c) CMD_V_BUILDROOT=yes
					CMD_V_BUILDROOT_CLEAN=yes
					;;

			#------------------------------------------------------------------------------------------------
			5)	CMD_V_FILESYSTEM=yes
				CMD_V_USERDATA=yes
				;;
				51) CMD_V_FILESYSTEM=yes				;;
				52) CMD_V_USERDATA=yes					;;
				
			#------------------------------------------------------------------------------------------------
			6)	CMD_V_BUILD_NUM=-1
				build_fastboot_partmap
				build_fastboot_2ndboot
				build_fastboot_uboot
				build_fastboot_boot
				build_fastboot_system					
				build_fastboot_userdata				
				complete_fastboot_reboot
				;;
				61)	CMD_V_BUILD_NUM=-1
					build_fastboot_partmap				
					complete_fastboot_reboot	;;
				62)	CMD_V_BUILD_NUM=-1
					build_fastboot_2ndboot		
					complete_fastboot_reboot	;;
				63)	CMD_V_BUILD_NUM=-1
					build_fastboot_uboot		
					complete_fastboot_reboot	;;
				64)	CMD_V_BUILD_NUM=-1
					build_fastboot_boot			
					complete_fastboot_reboot	;;
				65)	CMD_V_BUILD_NUM=-1
					build_fastboot_system		
					complete_fastboot_reboot	;;
				66)	CMD_V_BUILD_NUM=-1
					build_fastboot_userdata		
					complete_fastboot_reboot	;;
				67) CMD_V_BUILD_NUM=-1
                    complete_fastboot_reboot        	;;

			#------------------------------------------------------------------------------------------------
			0)	CMD_V_BUILD_NUM=0
				echo ""
				exit 0									;;
		esac
		    if [ ${CMD_V_BUILD_NUM} == -1 ]; then			
				CMD_V_BUILD_NUM=
			else
		        CMD_V_LOG_FILE=$RESULT_DIR/build.log
		        rm -rf CMD_V_LOG_FILE
		        build_function_main 2>&1 | tee $CMD_V_LOG_FILE
				command_reset
		    fi
	done
fi
echo ""
