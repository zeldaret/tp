//
// object-sound
//

#include "JSystem/JStudio/JStudio_JAudio2/object-sound.h"
#include "JSystem/JStudio/JStudio_JAudio2/control.h"
#include "JSystem/JStudio/JStudio_JStage/control.h"

/* 8028D728-8028D750 288068 0028+00 1/1 0/0 0/0 .text
 * setValue_VOLUME___Q215JStudio_JAudio226@unnamed@object_sound_cpp@FP8JAISoundf */
static void setValue_VOLUME_(JAISound *param_1, float param_2) {
    param_1->getAuxiliary().moveVolume(param_2, 0);
}

/* 8028D750-8028D778 288090 0028+00 1/1 0/0 0/0 .text
 * setValue_PAN___Q215JStudio_JAudio226@unnamed@object_sound_cpp@FP8JAISoundf */
static void setValue_PAN_(JAISound *param_1, float param_2) {
    param_1->getAuxiliary().movePan(param_2, 0);
}

/* 8028D778-8028D7A0 2880B8 0028+00 1/1 0/0 0/0 .text
 * setValue_PITCH___Q215JStudio_JAudio226@unnamed@object_sound_cpp@FP8JAISoundf */
static void setValue_PITCH_(JAISound *param_1, float param_2) {
    param_1->getAuxiliary().movePitch(param_2, 0);
}

/* 8028D7A0-8028D800 2880E0 0060+00 1/1 0/0 0/0 .text
 * setValue_TEMPO___Q215JStudio_JAudio226@unnamed@object_sound_cpp@FP8JAISoundf */
static void setValue_TEMPO_(JAISound *param_1, float param_2) {
    JAITempoMgr* tempoMgr = param_1->getTempoMgr();
    if (tempoMgr != NULL) {
        tempoMgr->setTempo(param_2);
    }
}

/* 8028D800-8028D828 288140 0028+00 1/1 0/0 0/0 .text
 * setValue_ECHO___Q215JStudio_JAudio226@unnamed@object_sound_cpp@FP8JAISoundf */
static void setValue_ECHO_(JAISound *param_1, float param_2) {
    param_1->getAuxiliary().moveFxMix(param_2, 0);
}

/* 8028D828-8028D8F4 288168 00CC+00 0/0 1/1 0/0 .text
 * __ct__Q215JStudio_JAudio214TAdaptor_soundFPQ215JStudio_JAudio213TCreateObject */
JStudio_JAudio2::TAdaptor_sound::TAdaptor_sound(JStudio_JAudio2::TCreateObject* param_1) :
    pCreateObject_(param_1) {
    field_0x11c = 0;
    field_0x11d = 0;
    field_0x11e = 0;
    field_0x11f = 0;
    field_0x120 = 0;
    field_0x124 = 0xffffffff;
    field_0x128 = 0;
    field_0x12c = NULL;
    field_0x13c = NULL;
    field_0x140 = 0xffffffff;
    field_0x144 = 0;
    JUT_ASSERT(112, pCreateObject_!=0);
}

/* 8028D8F4-8028D9A4 288234 00B0+00 1/0 0/0 0/0 .text __dt__Q215JStudio_JAudio214TAdaptor_soundFv
 */
JStudio_JAudio2::TAdaptor_sound::~TAdaptor_sound() {
    if (opJAISoundHandle_) {
        if (field_0x11f == 0) {
            opJAISoundHandle_->stop();
        } else if (field_0x11c != 0) {
            opJAISoundHandle_.releaseSound();
        } else {
            opJAISoundHandle_->stop();
        }
    }
}

/* 8028D9A4-8028DA74 2882E4 00D0+00 1/0 0/0 0/0 .text
 * adaptor_do_prepare__Q215JStudio_JAudio214TAdaptor_soundFv    */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_prepare() {
    static JStudio::TAdaptor::TSetVariableValue_immediate aoData[4] = {
        TSetVariableValue_immediate(0, 0.0f),
        TSetVariableValue_immediate(1, 0.0f),
        TSetVariableValue_immediate(2, 0.0f),
        TSetVariableValue_immediate(-1, NAN),
    };
    adaptor_setVariableValue_immediate(aoData);
    for (TVVOSetValue_* pTVar1 = saoVVOSetValue_; pTVar1->field_0x04 != -1; pTVar1++) {
        adaptor_referVariableValue(pTVar1->field_0x04)->setOutput(pTVar1);
    }
}

/* 804314F8-80431540 05E218 0048+00 1/2 0/0 0/0 .bss
 * saoVVOSetValue___Q215JStudio_JAudio214TAdaptor_sound         */
JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_ JStudio_JAudio2::TAdaptor_sound::saoVVOSetValue_[6] = {
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_7, setValue_VOLUME_ 
    ),
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_8, setValue_PAN_ 
    ),
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_9, setValue_PITCH_ 
    ),
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_10, setValue_TEMPO_ 
    ),
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_11, setValue_ECHO_ 
    ),
    JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_(
        JStudio_JAudio2::TAdaptor_sound::UNK_NONE, NULL 
    ),
};

/* 8028DA74-8028DA78 2883B4 0004+00 1/0 0/0 0/0 .text
 * adaptor_do_end__Q215JStudio_JAudio214TAdaptor_soundFv        */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_end() {
}

/* 8028DA78-8028DC20 2883B8 01A8+00 1/0 0/0 0/0 .text
 * adaptor_do_update__Q215JStudio_JAudio214TAdaptor_soundFUl    */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_update(u32 param_1) {
    const JStudio::TObject* pObject = adaptor_getObject();
    JUT_ASSERT(194, pObject!=0);
    const JStudio::TControl* pControl = pObject->getControl();
    JUT_ASSERT(196, pControl!=0);
    JStudio::TControl::TTransform_position VStack_148;
    JStudio::TControl::TTransform_position VStack_154;
    JStudio::TControl::TTransform_position* pVVar2;
    adaptor_getVariableValue_Vec(&VStack_148,
                                 JStudio::TAdaptor_sound::sauVariableValue_3_POSITION_XYZ);
    if (field_0x144 == 0) {
        pVVar2 = pControl->transformOnSet_transform_ifEnabled(&VStack_148, &VStack_154);
    } else {
        if (!JStudio_JStage::transform_toGlobalFromLocal(&VStack_154, VStack_148, field_0x13c, field_0x140)) {
            return;
        }
        pVVar2 = &VStack_154;
    }
    field_0x130 = *pVVar2;
    if (field_0x11d) {
        switch(field_0x120) {
        case 2:
            JAISoundStarter* soundStarter = pCreateObject_->get_pJAISoundStarter_();
            soundStarter->startLevelSound(field_0x124, &opJAISoundHandle_, field_0x12c);
            break;
        case 1:
            field_0x120 = 2;
            break;
        }
    }

    if (field_0x11e != 0 && field_0x124 != -1 && !opJAISoundHandle_) {
        prepareSound_();
        beginSound_fadeIn_();
    }
    if (field_0x12c != NULL && opJAISoundHandle_)
    {
        opJAISoundHandle_->setPos(*field_0x12c);
    }
}

/* 8028DC20-8028DC54 288560 0034+00 1/0 0/0 0/0 .text
 * adaptor_do_SOUND__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_SOUND(JStudio::data::TEOperationData param_1,
                                                           void const* pContent, u32 uSize) {
    switch(param_1) {
    case JStudio::data::UNK_0x19:
        JUT_ASSERT(283, pContent!=0);
        JUT_ASSERT(284, uSize==4);
        field_0x124 = *(u32*)pContent;
        prepareSound_();
        break;
    }
}

/* 8028DC54-8028DC88 288594 0034+00 1/0 0/0 0/0 .text
 * adaptor_do_BEGIN__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_BEGIN(JStudio::data::TEOperationData param_1,
                                                       void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x1:
        JUT_ASSERT(284, uSize == 0);
        beginSound_();
        break;
    }
}

/* 8028DC88-8028DCD0 2885C8 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_BEGIN_FADE_IN__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_BEGIN_FADE_IN(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(323, pContent!=0);
        JUT_ASSERT(324, uSize==4);
        beginSound_fadeIn_(*(f32*)pContent);
        break;
    }
}

/* 8028DCD0-8028DD00 288610 0030+00 1/0 0/0 0/0 .text
 * adaptor_do_END__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_END(JStudio::data::TEOperationData param_1,
                                                     void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x1:
        JUT_ASSERT(345, uSize == 0);
        endSound_();
        break;
    }
}

/* 8028DD00-8028DD48 288640 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_END_FADE_OUT__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_END_FADE_OUT(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(364, pContent!=0);
        JUT_ASSERT(365, uSize==4);
        endSound_fadeOut_(*(f32*)pContent);
        break;
    }
}

/* 8028DD48-8028DDB4 288688 006C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_PARENT(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(387, pContent!=0);
        JUT_ASSERT(388, uSize!=0);
        field_0x13c = NULL;
        JStage::TSystem* pJSGSystem = (JStage::TSystem*)pCreateObject_->get_pJSGSystem_();
        JUT_ASSERT(396, pJSGSystem != 0);
        JStage::TObject* pJSGObject;
        if (!pJSGSystem->JSGFindObject(&pJSGObject, (const char*)pContent, JStage::OBJECT_UNDEFINED)) {
            JUT_ASSERT(405, pJSGObject != 0);
            field_0x13c = pJSGObject;
        }
        break;
    }
}

/* 8028DDB4-8028DE34 2886F4 0080+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_NODE__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_PARENT_NODE(JStudio::data::TEOperationData param_1,
                                                             const void* pContent, u32 uSize) {
    switch (param_1) {
	case JStudio::data::UNK_0x18:
		if (field_0x13c != NULL) {
            JUT_ASSERT(431, pContent!=0);
            JUT_ASSERT(432, uSize==0);
			field_0x140 = field_0x13c->JSGFindNodeID((char*)pContent);
			if (field_0x140 == -1) {
				return;
			}
		}
		break;
	case JStudio::data::UNK_0x19:
        JUT_ASSERT(447, uSize==4);
        JUT_ASSERT(448, pContent!=0);
		field_0x140 = *(u32*)pContent;
        break;
	}
}

/* 8028DE34-8028DE50 288774 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_ENABLE__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_PARENT_ENABLE(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(468, uSize == 4);
        JUT_ASSERT(469, pContent != 0);
        field_0x144 = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028DE50-8028DE6C 288790 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_REPEAT__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_REPEAT(JStudio::data::TEOperationData param_1,
                                                        const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(490, uSize == 4);
        JUT_ASSERT(491, pContent != 0);
        field_0x11e = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028DE6C-8028DE88 2887AC 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_CONTINUOUS__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_CONTINUOUS(JStudio::data::TEOperationData param_1,
                                                            const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(512, uSize == 4);
        JUT_ASSERT(513, pContent != 0);
        field_0x11d = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028DE88-8028DEB0 2887C8 0028+00 1/0 0/0 0/0 .text
 * adaptor_do_LOCATED__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_LOCATED(JStudio::data::TEOperationData param_1,
                                                         const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(534, pContent != 0);
        JUT_ASSERT(535, uSize == 4);
        u32 val = *(u32*)pContent;
        field_0x12c = NULL;
        if (val != 0) {
            field_0x12c = &field_0x130;
        }
    }
}

/* 8028DEB0-8028DECC 2887F0 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_ON_EXIT_NOT_END__Q215JStudio_JAudio214TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JAudio2::TAdaptor_sound::adaptor_do_ON_EXIT_NOT_END(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(512, uSize == 4);
        JUT_ASSERT(513, pContent != 0);
        field_0x11f = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028DECC-8028DF04 28880C 0038+00 1/0 0/0 0/0 .text
 * __cl__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_CFfPQ27JStudio8TAdaptor */
void JStudio_JAudio2::TAdaptor_sound::TVVOSetValue_::operator()(f32 param_1,
                                                                JStudio::TAdaptor* param_2) const {
    JUT_ASSERT(596, param_2 != 0);
    if (((JStudio_JAudio2::TAdaptor_sound*)param_2)->opJAISoundHandle_) {
        JAISound* sound = ((JStudio_JAudio2::TAdaptor_sound*)param_2)->opJAISoundHandle_.sound_;
        field_0x08(sound, param_1);
    }
}

/* 8028DF04-8028DFA4 288844 00A0+00 2/2 0/0 0/0 .text
 * prepareSound___Q215JStudio_JAudio214TAdaptor_soundFv         */
void JStudio_JAudio2::TAdaptor_sound::prepareSound_() {
    if (opJAISoundHandle_) {
        opJAISoundHandle_stop_();
    }
    JAISoundStarter* soundStarter = pCreateObject_->get_pJAISoundStarter_();
    if (field_0x11d == 0) {
        soundStarter->startSound(field_0x124, &opJAISoundHandle_, field_0x12c);
    } else {
        soundStarter->startLevelSound(field_0x124, &opJAISoundHandle_, field_0x12c);
    }
    if (opJAISoundHandle_) {
        opJAISoundHandle_->lockWhenPrepared();
    }
}

/* 8028DFA4-8028E054 2888E4 00B0+00 3/3 0/0 0/0 .text
 * beginSound_fadeIn___Q215JStudio_JAudio214TAdaptor_soundFv    */
void JStudio_JAudio2::TAdaptor_sound::beginSound_fadeIn_() {
    if (opJAISoundHandle_) {
        opJAISoundHandle_->fadeIn(field_0x128);
        opJAISoundHandle_->unlockIfLocked();
        field_0x120 = 1;
    }
}

/* 8028E054-8028E094 288994 0040+00 2/2 0/0 0/0 .text
 * endSound_fadeOut___Q215JStudio_JAudio214TAdaptor_soundFUl    */
void JStudio_JAudio2::TAdaptor_sound::endSound_fadeOut_(u32 u32FadeTime) {
	if (opJAISoundHandle_) {
		opJAISoundHandle_->stop(u32FadeTime);
        JUT_ASSERT(654, (u32FadeTime>0)||!opJAISoundHandle_);
        field_0x120 = 0;
	}
}
