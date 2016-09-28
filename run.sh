
echo no | android create avd --force -n $WERCKER_SETUP_ANDROID_EMULATOR64_TARGET_NAME -t $WERCKER_SETUP_ANDROID_EMULATOR64_TARGET --abi $WERCKER_SETUP_ANDROID_EMULATOR64_ABI
echo "hw.keyboard=yes" >> ~/.android/avd/$WERCKER_SETUP_ANDROID_EMULATOR64_TARGET_NAME.avd/config.ini
echo "Enabled hardware keyboard"
cat ~/.android/avd/$WERCKER_SETUP_ANDROID_EMULATOR64_TARGET_NAME.avd/config.ini
emulator64-arm -avd $WERCKER_SETUP_ANDROID_EMULATOR64_TARGET_NAME -no-audio -no-window $WERCKER_SETUP_ANDROID_EMULATOR64_OPTION_TIMEZONE &
$WERCKER_STEP_ROOT/wait_for_emulator.sh
