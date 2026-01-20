# Clone device specific repos
git clone https://github.com/NoCache-69/device_oneplus_sm6375-common.git -b 16.2 device/oneplus/sm6375-common
git clone https://github.com/NoCache-69/vendor_oneplus_oscaro.git -b 16.0 vendor/oneplus/oscaro
git clone https://github.com/NoCache-69/vendor_oneplus_sm6375-common.git -b 16.0 vendor/oneplus/sm6375-common
git clone https://github.com/NoCache-69/android_kernel_oneplus_sm6375.git -b 16.0 kernel/oneplus/sm6375
git clone https://github.com/NoCache-69/android_hardware_oplus.git -b 16.2 hardware/oplus

export SKIP_ABI_CHECKS=true
