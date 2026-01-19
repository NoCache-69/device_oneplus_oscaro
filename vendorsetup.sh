# Clone device specific repos
git clone https://github.com/NoCache-69/device_oneplus_sm6375-common.git -b 16.0 device/oneplus/sm6375-common
git clone https://github.com/NoCache-69/vendor_oneplus_oscaro.git -b 16.0 vendor/oneplus/oscaro
git clone https://github.com/NoCache-69/vendor_oneplus_sm6375-common.git -b 16.0 vendor/oneplus/sm6375-common
git clone https://github.com/NoCache-69/android_kernel_oneplus_sm6375.git -b 16-ksun kernel/oneplus/sm6375
git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-23.2 hardware/oplus
git clone https://github.com/NoCache-69/hardware_dolby.git -b master hardware/dolby
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX

# Initialize KSU-Next
cd kernel/oneplus/sm6375
git submodule init
git submodule update
bash setup*
cd ../../..

export SKIP_ABI_CHECKS=true
