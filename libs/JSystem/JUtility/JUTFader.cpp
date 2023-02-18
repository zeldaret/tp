/**
 * JUTFader.cpp
 * JUtility - Color Fader
 */

#include "JSystem/JUtility/JUTFader.h"
#include "JSystem/J2DGraph/J2DOrthoGraph.h"

/* 802E5530-802E55DC 2DFE70 00AC+00 0/0 1/1 0/0 .text __ct__8JUTFaderFiiiiQ28JUtility6TColor */
JUTFader::JUTFader(int x, int y, int width, int height, JUtility::TColor pColor)
    : mColor(pColor), mBox(x, y, x + width, y + height) {
    mStatus = 0;
    field_0x8 = 0;
    field_0xa = 0;
    field_0x24 = 0;
    mEStatus = UNKSTATUS_M1;
}

/* 802E55DC-802E56DC 2DFF1C 0100+00 0/0 1/1 0/0 .text            control__8JUTFaderFv */
void JUTFader::control() {
    if (0 <= mEStatus && mEStatus-- == 0) {
		mStatus = field_0x24;
	}

	if (mStatus == 1) {
		return;
	}
    
	switch (mStatus) {
    case 0:
        mColor.a = 0xFF;
        break;
    case 2:
        mColor.a = 0xFF - ((++field_0xa * 0xFF) / field_0x8);

        if (field_0xa >= field_0x8) {
            mStatus = 1;
        }

        break;
    case 3:
        mColor.a = ((++field_0xa * 0xFF) / field_0x8);

        if (field_0xa >= field_0x8) {
            mStatus = 0;
        }

        break;
	}
	draw();
}

/* 802E56DC-802E576C 2E001C 0090+00 1/0 0/0 0/0 .text            draw__8JUTFaderFv */
void JUTFader::draw() {
    if (mColor.a == 0) {
		return;
	}

	J2DOrthoGraph orthograph;
	orthograph.setColor(mColor);
	orthograph.fillBox(mBox);
}

/* 802E576C-802E579C 2E00AC 0030+00 1/0 0/0 0/0 .text            startFadeIn__8JUTFaderFi */
bool JUTFader::startFadeIn(int param_0) {
    bool statusCheck = mStatus == 0;

    if (statusCheck) {
        mStatus = 2;
        field_0xa = 0;
        field_0x8 = param_0;
    }

    return statusCheck;
}

/* 802E579C-802E57D0 2E00DC 0034+00 1/0 0/0 0/0 .text            startFadeOut__8JUTFaderFi */
bool JUTFader::startFadeOut(int param_0) {
    bool statusCheck = mStatus == 1;

    if (statusCheck) {
        mStatus = 3;
        field_0xa = 0;
        field_0x8 = param_0;
    }

    return statusCheck;
}

/* 802E57D0-802E5840 2E0110 0070+00 0/0 1/1 0/0 .text setStatus__8JUTFaderFQ28JUTFader7EStatusi */
void JUTFader::setStatus(JUTFader::EStatus i_status, int param_1) {
    switch (i_status) {
    case 0: 
        if (param_1 != 0) {
            field_0x24 = 0;
            mEStatus = param_1;
            break;
        }

        mStatus = 0;
        field_0x24 = 0;
        mEStatus = 0;
        break;
    case 1: 
        if (param_1 != 0) {
            field_0x24 = 1;
            mEStatus = param_1;
            break;
        }

        mStatus = 1;
        field_0x24 = 1;
        mEStatus = 0;
        break;
    }
}

/* 802E5840-802E5888 2E0180 0048+00 1/0 0/0 0/0 .text            __dt__8JUTFaderFv */
JUTFader::~JUTFader() {}
