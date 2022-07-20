#include "JSystem/JStage/JSGActor.h"

/* 80280A48-80280AA8 27B388 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage6TActorFv */
JStage::TActor::~TActor() {}

/* 80280AA8-80280AB0 27B3E8 0008+00 1/0 1/0 0/0 .text            JSGFGetType__Q26JStage6TActorCFv */
s32 JStage::TActor::JSGFGetType() const {
    return 2;
}

/* 80280AB0-80280AB4 27B3F0 0004+00 1/0 0/0 0/0 .text JSGGetTranslation__Q26JStage6TActorCFP3Vec
 */
void JStage::TActor::JSGGetTranslation(Vec*) const {}

/* 80280AB4-80280AB8 27B3F4 0004+00 1/0 0/0 0/0 .text JSGSetTranslation__Q26JStage6TActorFRC3Vec
 */
void JStage::TActor::JSGSetTranslation(Vec const&) {}

/* 80280AB8-80280ABC 27B3F8 0004+00 1/0 0/0 0/0 .text JSGGetScaling__Q26JStage6TActorCFP3Vec */
void JStage::TActor::JSGGetScaling(Vec*) const {}

/* 80280ABC-80280AC0 27B3FC 0004+00 1/0 0/0 0/0 .text JSGSetScaling__Q26JStage6TActorFRC3Vec */
void JStage::TActor::JSGSetScaling(Vec const&) {}

/* 80280AC0-80280AC4 27B400 0004+00 1/0 0/0 0/0 .text JSGGetRotation__Q26JStage6TActorCFP3Vec */
void JStage::TActor::JSGGetRotation(Vec*) const {}

/* 80280AC4-80280AC8 27B404 0004+00 1/0 0/0 0/0 .text JSGSetRotation__Q26JStage6TActorFRC3Vec */
void JStage::TActor::JSGSetRotation(Vec const&) {}

/* 80280AC8-80280AD0 27B408 0008+00 1/0 1/0 0/0 .text            JSGGetShape__Q26JStage6TActorCFv */
s32 JStage::TActor::JSGGetShape() const {
    return -1;
}

/* 80280AD0-80280AD4 27B410 0004+00 1/0 0/0 0/0 .text            JSGSetShape__Q26JStage6TActorFUl */
void JStage::TActor::JSGSetShape(u32) {}

/* 80280AD4-80280ADC 27B414 0008+00 1/0 1/0 0/0 .text JSGGetAnimation__Q26JStage6TActorCFv */
s32 JStage::TActor::JSGGetAnimation() const {
    return -1;
}

/* 80280ADC-80280AE0 27B41C 0004+00 1/0 0/0 0/0 .text JSGSetAnimation__Q26JStage6TActorFUl */
void JStage::TActor::JSGSetAnimation(u32) {}

/* 80280AE0-80280AE8 27B420 0008+00 1/0 1/0 0/0 .text JSGGetAnimationFrame__Q26JStage6TActorCFv */
f32 JStage::TActor::JSGGetAnimationFrame() const {
    return 0.0f;
}

/* 80280AE8-80280AEC 27B428 0004+00 1/0 0/0 0/0 .text JSGSetAnimationFrame__Q26JStage6TActorFf */
void JStage::TActor::JSGSetAnimationFrame(f32) {}

/* 80280AEC-80280AF4 27B42C 0008+00 1/0 0/0 0/0 .text JSGGetAnimationFrameMax__Q26JStage6TActorCFv
 */
f32 JStage::TActor::JSGGetAnimationFrameMax() const {
    return 0.0f;
}

/* 80280AF4-80280AFC 27B434 0008+00 1/0 1/0 0/0 .text
 * JSGGetAnimationTransition__Q26JStage6TActorCFv               */
f32 JStage::TActor::JSGGetAnimationTransition() const {
    return 0.0f;
}

/* 80280AFC-80280B00 27B43C 0004+00 1/0 0/0 0/0 .text
 * JSGSetAnimationTransition__Q26JStage6TActorFf                */
void JStage::TActor::JSGSetAnimationTransition(f32) {}

/* 80280B00-80280B08 27B440 0008+00 1/0 1/0 0/0 .text JSGGetTextureAnimation__Q26JStage6TActorCFv
 */
s32 JStage::TActor::JSGGetTextureAnimation() const {
    return -1;
}

/* 80280B08-80280B0C 27B448 0004+00 1/0 0/0 0/0 .text JSGSetTextureAnimation__Q26JStage6TActorFUl
 */
void JStage::TActor::JSGSetTextureAnimation(u32) {}

/* 80280B0C-80280B14 27B44C 0008+00 1/0 1/0 0/0 .text
 * JSGGetTextureAnimationFrame__Q26JStage6TActorCFv             */
f32 JStage::TActor::JSGGetTextureAnimationFrame() const {
    return 0.0f;
}

/* 80280B14-80280B18 27B454 0004+00 1/0 0/0 0/0 .text
 * JSGSetTextureAnimationFrame__Q26JStage6TActorFf              */
void JStage::TActor::JSGSetTextureAnimationFrame(f32) {}

/* 80280B18-80280B20 27B458 0008+00 1/0 0/0 0/0 .text
 * JSGGetTextureAnimationFrameMax__Q26JStage6TActorCFv          */
f32 JStage::TActor::JSGGetTextureAnimationFrameMax() const {
    return 0.0f;
}
