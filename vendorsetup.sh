# Clone device specific repos
git clone https://github.com/NoCache-69/device_oneplus_sm6375-common.git -b inf device/oneplus/sm6375-common
git clone https://github.com/NoCache-69/vendor_oneplus_oscaro.git -b 16.0 vendor/oneplus/oscaro
git clone https://github.com/NoCache-69/vendor_oneplus_sm6375-common.git -b 16.0 vendor/oneplus/sm6375-common
git clone https://github.com/NoCache-69/android_kernel_oneplus_sm6375.git -b 16.0 kernel/oneplus/sm6375
git clone https://github.com/NoCache-69/android_hardware_oplus.git -b lineage-22.2 hardware/oplus
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby.git -b sony-1.1 hardware/dolby
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX
git clone https://github.com/NoCache-69/packages_apps_prebuilt-camera.git packages/apps/prebuilt

# Initialize KSU-Next
cd kernel/oneplus/sm6375
git submodule init
git submodule update
bash setup*
cd ../../..

# Sign Build
git clone https://github.com/ProjectInfinity-X/vendor_infinity-priv_keys-template vendor/infinity-priv/keys
cd vendor/infinity-priv/keys
./keys.sh
cd ../../..

# replace Ota strings for unofficial build
rm -rf vendor/infinity/overlay/updater/res/values/strings.xml
wget -P ./vendor/infinity/overlay/updater/res/values/ https://raw.githubusercontent.com/NoCache-69/inf_ota/refs/heads/16/strings.xml

# Remove official updater and clone fork
rm -rf packages/apps/Updater
git clone https://github.com/NoCache-69/inf_packages_apps_Updater.git packages/apps/Updater
