//
// JASBasicInst
//

#include "JSystem/JAudio2/JASBasicInst.h"
#include "JSystem/JAudio2/JASCalc.h"
#include "JSystem/JKernel/JKRHeap.h"

/* 80298014-8029807C 292954 0068+00 0/0 2/2 0/0 .text            __ct__12JASBasicInstFv */
JASBasicInst::JASBasicInst() {
    mVolume = 1.0;
    mPitch = 1.0;
    mKeymapCount = 0;
    mKeymap = NULL;
    JASCalc::bzero(field_0xc, sizeof(field_0xc));
}

/* 8029807C-802980F8 2929BC 007C+00 1/0 0/0 0/0 .text            __dt__12JASBasicInstFv */
JASBasicInst::~JASBasicInst() {
    delete[] mKeymap;
}

/* 802980F8-8029819C 292A38 00A4+00 1/0 0/0 0/0 .text getParam__12JASBasicInstCFiiP12JASInstParam
 */
bool JASBasicInst::getParam(int param_0, int param_1, JASInstParam* param_2) const {
    param_2->field_0x1c = 0;
    param_2->field_0x1e = 0;
    param_2->field_0x14 = (JASOscillator::Data**)&field_0xc;
    param_2->field_0x1d = 2;
    param_2->mVolume = mVolume;
    param_2->mPitch = mPitch;

    TKeymap* keyMap = NULL;
    for (int i = 0; i < mKeymapCount; i++) {
        if (param_0 <= mKeymap[i].field_0x0) {
            keyMap = &mKeymap[i];
            break;
        }
    }

    if (keyMap == NULL) {
        return false;
    }

    param_2->mVolume *= keyMap->field_0x8;
    param_2->mPitch *= keyMap->field_0xc;
    param_2->field_0x1a = keyMap->field_0x4;
    return true;
}

/* 8029819C-8029821C 292ADC 0080+00 0/0 2/2 0/0 .text
 * setKeyRegionCount__12JASBasicInstFUlP7JKRHeap                */
void JASBasicInst::setKeyRegionCount(u32 count, JKRHeap* param_1) {
    delete [] mKeymap;
    mKeymap      = new (param_1, 0) TKeymap[count];
	mKeymapCount = count;
}

/* 8029821C-8029822C 292B5C 0010+00 0/0 2/2 0/0 .text
 * setOsc__12JASBasicInstFiPCQ213JASOscillator4Data             */
void JASBasicInst::setOsc(int param_0, JASOscillator::Data const* param_1) {
    field_0xc[param_0] = param_1;
}

/* 8029822C-80298250 292B6C 0024+00 0/0 2/2 0/0 .text            getKeyRegion__12JASBasicInstFi */
JASBasicInst::TKeymap* JASBasicInst::getKeyRegion(int param_0) {
    if (param_0 >= mKeymapCount) {
        return NULL;
    }

    return mKeymap + param_0;
}

/* 80298250-8029828C 292B90 003C+00 2/2 0/0 0/0 .text            __dt__Q212JASBasicInst7TKeymapFv */
JASBasicInst::TKeymap::~TKeymap() {
}
