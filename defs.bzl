load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def btusb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules:btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules:Makefile.btusb"],
        outs = ["btusb.ko"],
        kernel_build = kernel_build,
    )
