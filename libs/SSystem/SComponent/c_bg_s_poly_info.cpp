/**
 * c_bg_s_poly_info.cpp
 *
 */

#include "SSystem/SComponent/c_bg_s_poly_info.h"

/* 80268074-802680B0 2629B4 003C+00 0/0 7/7 9/9 .text            __ct__13cBgS_PolyInfoFv */
cBgS_PolyInfo::cBgS_PolyInfo() {
    ClearPi();
}

/* 802680B0-802680F8 2629F0 0048+00 1/0 10/10 393/393 .text            __dt__13cBgS_PolyInfoFv */
cBgS_PolyInfo::~cBgS_PolyInfo() {}

/* 802680F8-80268120 262A38 0028+00 0/0 4/4 0/0 .text            ChkSetInfo__13cBgS_PolyInfoCFv */
bool cBgS_PolyInfo::ChkSetInfo() const {
    if (mPolyIndex == 0xFFFF || mBgIndex == 0x100) {
        return false;
    } else {
        return true;
    }
}

/* 80268120-80268148 262A60 0028+00 1/1 11/11 0/0 .text            ClearPi__13cBgS_PolyInfoFv */
void cBgS_PolyInfo::ClearPi() {
    mPolyIndex = -1;
    mBgIndex = 0x100;
    unk_0x04 = 0;
    mActorId = -1;
}

/* 80268148-8026816C 262A88 0024+00 0/0 11/11 1/1 .text
 * SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo               */
void cBgS_PolyInfo::SetPolyInfo(const cBgS_PolyInfo& poly) {
    mPolyIndex = poly.mPolyIndex;
    mBgIndex = poly.mBgIndex;
    unk_0x04 = poly.unk_0x04;
    mActorId = poly.mActorId;
}

/* 8026816C-8026817C 262AAC 0010+00 0/0 6/6 0/0 .text            SetActorInfo__13cBgS_PolyInfoFiPvUi
 */
void cBgS_PolyInfo::SetActorInfo(int bg_index, void* p_data, unsigned int actor_id) {
    mBgIndex = bg_index;
    unk_0x04 = p_data;
    mActorId = actor_id;
}

/* 8026817C-802681A4 262ABC 0028+00 0/0 1/1 0/0 .text            ChkSafe__13cBgS_PolyInfoCFPCvUi */
bool cBgS_PolyInfo::ChkSafe(const void* param_1, unsigned int actor_id) const {
    if (unk_0x04 == param_1 && mActorId == actor_id) {
        return true;
    } else {
        return false;
    }
}

/* 802681A4-802681AC 262AE4 0008+00 0/0 11/11 0/0 .text            SetPolyIndex__13cBgS_PolyInfoFi
 */
void cBgS_PolyInfo::SetPolyIndex(int poly_index) {
    mPolyIndex = poly_index;
}

/* 802681AC-802681C0 262AEC 0014+00 0/0 3/3 0/0 .text            ChkBgIndex__13cBgS_PolyInfoCFv */
bool cBgS_PolyInfo::ChkBgIndex() const {
    return mBgIndex != 0x100;
}
