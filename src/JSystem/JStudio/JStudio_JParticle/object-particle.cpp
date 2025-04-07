//
// object-particle
//

#include "JSystem/JStudio/JStudio_JParticle/object-particle.h"
#include "JSystem/JStudio/JStudio_JStage/control.h"

/* 8028E60C-8028E700 288F4C 00F4+00 0/0 1/1 0/0 .text
 * __ct__Q217JStudio_JParticle17TAdaptor_particleFPQ217JStudio_JParticle13TCreateObject */
JStudio_JParticle::TAdaptor_particle::TAdaptor_particle(
    JStudio_JParticle::TCreateObject* param_1) :
    pCreateObject_(param_1),
    pJPAEmitter_(NULL),
    field_0x1a8(this) {
    field_0x1b4 = 0;
    field_0x1b5 = 0;
    field_0x1b6 = 0;
    field_0x1b7 = 0;
    field_0x1b8 = 0;
    field_0x1bc = -1;
    u32FadeTime_end = 0;
    field_0x1c4 = 0;
    field_0x1c8 = 0;
    field_0x1cc = 0;
    field_0x1d0 = NULL;
    field_0x1d4 = -1;
    field_0x1d8 = 0;
    JUT_ASSERT(90, pCreateObject_!=0);
}

/* 8028E760-8028E850 2890A0 00F0+00 1/0 0/0 0/0 .text
 * __dt__Q217JStudio_JParticle17TAdaptor_particleFv             */
JStudio_JParticle::TAdaptor_particle::~TAdaptor_particle() {
    if (pJPAEmitter_ != NULL) {
        if (field_0x1b6 == 0) {
            pCreateObject_->emitter_destroy(pJPAEmitter_);
        } else if (field_0x1b4 != 0) {
            pJPAEmitter_->setEmitterCallBackPtr(field_0x1a8.getOld());
            pJPAEmitter_->quitImmortalEmitter();
        } else {
            pCreateObject_->emitter_destroy(pJPAEmitter_);
        }
    }
}

/* 8028E850-8028E97C 289190 012C+00 1/0 0/0 0/0 .text
 * adaptor_do_prepare__Q217JStudio_JParticle17TAdaptor_particleFv */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_prepare() {
    static JStudio::TAdaptor::TSetVariableValue_immediate aoData[18] = {
        JStudio::TAdaptor::TSetVariableValue_immediate(0, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(1, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(2, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(3, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(4, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(5, 0.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(6, 1.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(7, 1.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(8, 1.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(9, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(10, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(11, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(12, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(13, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(14, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(15, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(16, 255.0f),
        JStudio::TAdaptor::TSetVariableValue_immediate(),
    };
    adaptor_setVariableValue_immediate(aoData);
}

/* 8028E97C-8028E980 2892BC 0004+00 1/0 0/0 0/0 .text
 * adaptor_do_end__Q217JStudio_JParticle17TAdaptor_particleFv   */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_end() {
}

/* 8028E980-8028EA68 2892C0 00E8+00 1/0 0/0 0/0 .text
 * adaptor_do_update__Q217JStudio_JParticle17TAdaptor_particleFUl */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_update(u32 param_1) {
    const JStudio::TObject* pObject = adaptor_getObject();
    JUT_ASSERT(179, pObject != 0);
    const JStudio::TControl* pControl = pObject->getControl();
    JUT_ASSERT(181, pControl != 0);
    if (u32FadeTime_end != 0 && field_0x1c4 < u32FadeTime_end) {
        JUT_ASSERT(187, state_isFade_());
        JUT_ASSERT(188, pJPAEmitter_ != 0);
        field_0x1c4 += param_1;
        if (field_0x1c4 >= u32FadeTime_end) {
            switch (field_0x1b8) {
            case 1:
                field_0x1b8 = 2;
                break;
            case 3:
                pCreateObject_->emitter_destroy(pJPAEmitter_);
                pJPAEmitter_ = NULL;
                field_0x1b8 = 0;
                break;
            }
            u32FadeTime_end = 0;
            field_0x1c4 = 0;
        }
    } else {
        JUT_ASSERT(210, !state_isFade_());
    }
    if (field_0x1b5 != 0 && field_0x1b7 != 0 && pJPAEmitter_ == NULL) {
        beginParticle_fadeIn_();
    }
}

/* 8028EA68-8028EA7C 2893A8 0014+00 1/0 0/0 0/0 .text
 * adaptor_do_PARTICLE__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_PARTICLE(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x19) {
        JUT_ASSERT(232, uSize==4);
        JUT_ASSERT(233, pContent!=0);
        field_0x1bc = *(u32*)pContent;
    }
}

/* 8028EA7C-8028EAB0 2893BC 0034+00 1/0 0/0 0/0 .text
 * adaptor_do_BEGIN__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_BEGIN(JStudio::data::TEOperationData param_1,
                                                            const void* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x1:
        JUT_ASSERT(253, uSize==0);
        beginParticle_();
        break;
    }
}

/* 8028EAB0-8028EAF8 2893F0 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_BEGIN_FADE_IN__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_BEGIN_FADE_IN(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(272, pContent!=0);
        JUT_ASSERT(273, uSize==4);
        beginParticle_fadeIn_(*(f32*)pContent);
        break;
    }
}

/* 8028EAF8-8028EB24 289438 002C+00 1/0 0/0 0/0 .text
 * adaptor_do_END__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_END(JStudio::data::TEOperationData param_1,
                                                          const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x1) {
        JUT_ASSERT(294, uSize==0);
        endParticle_();
    }
}

/* 8028EB24-8028EB6C 289464 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_END_FADE_OUT__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_END_FADE_OUT(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(336, pContent!=0);
        JUT_ASSERT(337, uSize==4);
        endParticle_fadeOut_(*(f32*)pContent);
        break;
    }
}

/* 8028EB6C-8028EBD8 2894AC 006C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_PARENT(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(313, pContent!=0);
        JUT_ASSERT(314, uSize==4);
        field_0x1d0 = NULL;
        const JStage::TSystem* pJSGSystem = pCreateObject_->get_pJSGSystem_();
        JUT_ASSERT(345, pJSGSystem!=0);
        JStage::TObject* pJSGObject;
        if (pJSGSystem->JSGFindObject(&pJSGObject, (const char*)pContent, JStage::OBJECT_UNDEFINED) == 0) {
            JUT_ASSERT(354, pJSGObject!=0);
            field_0x1d0 = pJSGObject;
        }
        break;
    }
}

/* 8028EBD8-8028EC58 289518 0080+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_NODE__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_PARENT_NODE(
    JStudio::data::TEOperationData param_1, const void* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x18:
        if (field_0x1d0 != NULL) {
            JUT_ASSERT(380, pContent!=0);
            JUT_ASSERT(381, uSize==4);
            field_0x1d4 = field_0x1d0->JSGFindNodeID((const char*)pContent);
            if (field_0x1d4 == -1) {
                return;
            }
        }
        break;
    case JStudio::data::UNK_0x19:
        JUT_ASSERT(397, uSize==4);
        JUT_ASSERT(396, pContent!=0);
        field_0x1d4 = *(u32*)pContent;
        break;
    }
}

/* 8028EC58-8028EC74 289598 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_ENABLE__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData param_1,
                                                          const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(417, uSize==4);
        JUT_ASSERT(418, pContent!=0);
        field_0x1d8 = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028EC74-8028EC88 2895B4 0014+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_FUNCTION__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData param_1,
                                                          const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(439, uSize==4);
        JUT_ASSERT(439, pContent!=0);
        field_0x1cc = *(u32*)pContent;
    }
}

/* 8028EC88-8028ECA4 2895C8 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_REPEAT__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_REPEAT(JStudio::data::TEOperationData param_1,
                                                          const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(460, uSize==4);
        JUT_ASSERT(461, pContent!=0);
        field_0x1b5 = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028ECA4-8028ECC0 2895E4 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_ON_EXIT_NOT_END__Q217JStudio_JParticle17TAdaptor_particleFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JParticle::TAdaptor_particle::adaptor_do_ON_EXIT_NOT_END(JStudio::data::TEOperationData param_1,
                                                          const void* pContent, u32 uSize) {
    if (param_1 == JStudio::data::UNK_0x2) {
        JUT_ASSERT(460, uSize==4);
        JUT_ASSERT(461, pContent!=0);
        field_0x1b6 = *(u32*)pContent ? 1 : 0;
    }
}

/* 8028ECC0-8028F060 289600 03A0+00 1/0 0/0 0/0 .text
 * execute__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_FP14JPABaseEmitter */
void
JStudio_JParticle::TAdaptor_particle::TJPACallback_emitter_::execute(JPABaseEmitter* pJPAEmitter) {
    JUT_ASSERT(518, pJPAEmitter==pThis_->pJPAEmitter_);
    if (pJPAEmitter->isEnableDeleteEmitter()) {
        pThis_->pCreateObject_->emitter_destroy(pJPAEmitter);
        pThis_->pJPAEmitter_ = NULL;
        pThis_->field_0x1b8 = 0;
        pThis_->u32FadeTime_end = 0;
        pThis_->field_0x1c4 = 0;
        return;
    }
    const JStudio::TObject* pObject = pThis_->adaptor_getObject();
    JUT_ASSERT(534, pObject!=0);
    const JStudio::TControl* pControl = pObject->getControl();
    JUT_ASSERT(536, pControl!=0);
    TJPAEmitter_stopDrawParticle_ aTStack_21c(pJPAEmitter);
    JStudio::TControl::TTransform_translation_rotation_scaling VStack_19c;
    JStudio::TControl::TTransform_translation_rotation_scaling aTStack_1c0;
    pThis_->adaptor_getVariableValue_Vec(
        &VStack_19c.translation,
        sauVariableValue_3_TRANSLATION_XYZ);
    pThis_->adaptor_getVariableValue_Vec(
        &VStack_19c.rotation,
        sauVariableValue_3_ROTATION_XYZ);
    pThis_->adaptor_getVariableValue_Vec(
        &VStack_19c.scaling,
        sauVariableValue_3_SCALING_XYZ);
    if (pThis_->field_0x1d8 == 0) {
        JStudio::TControl::TTransform_translation_rotation_scaling* pVVar9 = &VStack_19c;
        switch(pThis_->field_0x1cc) {
        case 0:
            pVVar9 = pControl->transformOnSet_transform_ifEnabled(&VStack_19c, &aTStack_1c0);
            break;
        case 1:
            break;
        }
        pJPAEmitter->setGlobalTranslation(pVVar9->translation);
        int rotx = 65536.0 * (pVVar9->rotation.x / 360.0);
        int roty = 65536.0 * (pVVar9->rotation.y / 360.0);
        int rotz = 65536.0 * (pVVar9->rotation.z / 360.0);
        pJPAEmitter->setGlobalRotation(JGeometry::TVec3<s16>(rotx, roty, rotz));
        pJPAEmitter->setGlobalScale(pVVar9->scaling);
    } else {
        Mtx afStack_1f0;
        if (JStudio_JStage::transform_toGlobalFromLocal(afStack_1f0, VStack_19c, pThis_->field_0x1d0,
                                                        pThis_->field_0x1d4) == 0)
        {
            return;
        }
        pJPAEmitter->setGlobalSRTMatrix(afStack_1f0);
    }
    f64 alpha = 1.0;
    u32 u32FadeTime_end = pThis_->u32FadeTime_end;
    f64 dVar16 = u32FadeTime_end;
    f64 dVar15 = pThis_->field_0x1c4;
    switch(pThis_->field_0x1b8) {
    case 1:
        JUT_ASSERT(606, u32FadeTime_end>0);
        alpha = dVar15 / dVar16;
        break;
    case 3:
        JUT_ASSERT(611, u32FadeTime_end>0);
        alpha = (dVar16 - dVar15) / dVar16;
    }

    u8 globalAlpha = 255;
    GXColor a_Stack_224;
    pThis_->adaptor_getVariableValue_GXColor(&a_Stack_224, sauVariableValue_4_COLOR_RGBA);
    alpha *= a_Stack_224.a;
    if (alpha < 255.0) {
        globalAlpha = alpha;
    }
    pJPAEmitter->setGlobalAlpha(globalAlpha);
    aTStack_21c.set(NULL);
    if (pOld != NULL) {
        pOld->execute(pJPAEmitter);
    }
}

/* 8028F060-8028F098 2899A0 0038+00 1/0 0/0 0/0 .text
 * executeAfter__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_FP14JPABaseEmitter
 */
void
JStudio_JParticle::TAdaptor_particle::TJPACallback_emitter_::executeAfter(JPABaseEmitter* pJPAEmitter) {
    if (pOld != NULL) {
        pOld->executeAfter(pJPAEmitter);
    }
}

/* 8028F098-8028F0D0 2899D8 0038+00 1/0 0/0 0/0 .text
 * draw__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_FP14JPABaseEmitter */
void
JStudio_JParticle::TAdaptor_particle::TJPACallback_emitter_::draw(JPABaseEmitter* pJPAEmitter) {
    if (pOld != NULL) {
        pOld->draw(pJPAEmitter);
    }
}

/* 8028F0D0-8028F108 289A10 0038+00 1/0 0/0 0/0 .text
 * drawAfter__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_FP14JPABaseEmitter */
void
JStudio_JParticle::TAdaptor_particle::TJPACallback_emitter_::drawAfter(JPABaseEmitter* pJPAEmitter) {
    if (pOld != NULL) {
        pOld->drawAfter(pJPAEmitter);
    }
}

/* 8028F108-8028F1C0 289A48 00B8+00 3/3 0/0 0/0 .text
 * beginParticle_fadeIn___Q217JStudio_JParticle17TAdaptor_particleFv */
void JStudio_JParticle::TAdaptor_particle::beginParticle_fadeIn_() {
    if (pJPAEmitter_ != NULL) {
        pCreateObject_->emitter_destroy(pJPAEmitter_);
    }
    JPABaseEmitter* pEmitter = pCreateObject_->emitter_create(field_0x1bc);
    pJPAEmitter_ = pEmitter;
    if (pEmitter != NULL) {
        field_0x1a8.setOld(pEmitter->getEmitterCallBackPtr());
        pEmitter->setEmitterCallBackPtr(&field_0x1a8);
        pEmitter->becomeImmortalEmitter();
        field_0x1b7 = 1;
        field_0x1b8 = 1;
        if (field_0x1c8 == 0) {
            field_0x1b8 = 2;
        }
        u32FadeTime_end = field_0x1c8;
        field_0x1c4 = 0;
    }
}

/* 8028F1C0-8028F2E8 289B00 0128+00 1/1 0/0 0/0 .text
 * endParticle_fadeOut___Q217JStudio_JParticle17TAdaptor_particleFUl */
void JStudio_JParticle::TAdaptor_particle::endParticle_fadeOut_(u32 param_1) {
    if (pJPAEmitter_ == NULL) {
        return;
    }
    if (param_1 == 0) {
        pCreateObject_->emitter_destroy(pJPAEmitter_);
        pJPAEmitter_ = NULL;
        field_0x1b8 = 0;
        u32FadeTime_end = 0;
        field_0x1c4 = 0;
        return;
    }
    u8 eState_old = field_0x1b8 & 0xff;
    field_0x1b8 = 3;
    if (field_0x1c4 == 0) {
        u32FadeTime_end = param_1;
        return;
    }
    JUT_ASSERT(735, state_isFade_(eState_old));
    u32 u32Denominator = 0;

    switch(eState_old) {
    case 1:
        u32Denominator = field_0x1c4;
        break;
    case 3:
        u32Denominator = u32FadeTime_end - field_0x1c4;
        break;
    }
    JUT_ASSERT(793, u32Denominator!=0);
    u32FadeTime_end = ((f64)param_1 * (f64)u32FadeTime_end) / u32Denominator;
    field_0x1c4 = u32FadeTime_end - param_1;
}
