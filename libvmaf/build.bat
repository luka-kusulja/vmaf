rmdir /S /Q build
meson setup build --buildtype release -Denable_cuda=true -Denable_tests=false -Dc_args="/experimental:c11atomics"
ninja -C build tools/vmaf.exe