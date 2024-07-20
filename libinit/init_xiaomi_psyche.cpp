/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t psyche_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .name = "psyche_global",
    .brand = "Xiaomi",
    .device = "psyche",
    .marketname = "Xiaomi 12X",
    .model = "2112123AG",
    .build_fingerprint = "Xiaomi/psyche_global/psyche:13/TKQ1.221114.001/V816.0.3.0.TLDMIXM:user/release-keys",
    .hwsku = "psyche",
    .nfc = true,
};

static const variant_info_t psyche_info = {
    .hwc_value = "",
    .sku_value = "",

    .name = "psyche",
    .brand = "Xiaomi",
    .device = "psyche",
    .marketname = "Xiaomi 12X",
    .model = "2112123AC",
    .build_fingerprint = "Xiaomi/psyche/psyche:13/TKQ1.221114.001/V816.0.6.0.TLDCNXM:user/release-keys",
    .hwsku = "psyche",
    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    psyche_global_info,
    psyche_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
