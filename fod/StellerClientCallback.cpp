/*
 * Copyright (C) by me :)
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 */

#define LOG_TAG "StellerClientCallback"

#include "StellerClientCallback.h"

#include <android-base/logging.h>

namespace vendor {
namespace lineage {
namespace biometrics {
namespace fingerprint {
namespace inscreen {
namespace V1_1 {
namespace implementation {

StellerClientCallback::StellerClientCallback() {
}

Return<void> StellerClientCallback::atuStatus(int32_t ret) {
    LOG(INFO) << "atuStatus: " << ret;
    return Void();
}

Return<void> StellerClientCallback::hbmCtrl(int32_t ret) {
    LOG(INFO) << "hbmCtrl: " << ret;
    return Void();
}

}  // namespace implementation
}  // namespace V1_1
}  // namespace inscreen
}  // namespace fingerprint
}  // namespace biometrics
}  // namespace lineage
}  // namespace vendor
