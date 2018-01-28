DEFCONFIG=new_mokee_markw_defconfig
TOOL_CHAIN_52=/home/majiaming/arm-linux-androideabi-5.2-master/bin/aarch64-linux-androideabi-
TOOL_CHAIN_51=/home/majiaming/arm-linux-androideabi-5.1-master/bin/aarch64-linux-androideabi-
TOOL_CHAIN_49=/home/majiaming/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make -j4 ARCH=arm64 CROSS_COMPILE=$TOOL_CHAIN_49 $DEFCONFIG
make -j4 ARCH=arm64 CROSS_COMPILE=$TOOL_CHAIN_49
for i in `find -name *.ko`; do cp $i ../anykernel/modules/; done
#./dtbToolCM -s 2048 -d "qcom,msm-id = <" -2 -o arch/arm/boot/dt.img -p /usr/bin/ arch/arm/boot/
cat arch/arm64/boot/Image.gz arch/arm64/boot/dts/qcom/*.dtb > arch/arm64/boot/Image.gz-dtb
cp arch/arm64/boot/Image.gz-dtb ../anykernel/zImage
find $objdir -name '*.ko' -exec cp -av {} ../anykernel/modules/ \;
#cd ~/anykernel/AnyKernel2
#DATE=$(date +"%m-%d-%y")
#rm *.zip
#zip -r9 ZeurionX-$DATE.zip * -x README ZeurionX-$DATE.zip
#cp Z* public_html/
