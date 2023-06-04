#include "JSystem/JStage/JSGCamera.h"
#include "MSL_C/float.h"

/* 80280BA0-80280C00 27B4E0 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage7TCameraFv */
JStage::TCamera::~TCamera() {}

/* 80280C00-80280C08 27B540 0008+00 1/0 1/0 0/0 .text            JSGFGetType__Q26JStage7TCameraCFv
 */
s32 JStage::TCamera::JSGFGetType() const {
    return 3;
}

/* 80280C08-80280C10 27B548 0008+00 1/0 1/0 0/0 .text JSGGetProjectionType__Q26JStage7TCameraCFv
 */
bool JStage::TCamera::JSGGetProjectionType() const {
    return true;
}

/* 80280C10-80280C14 27B550 0004+00 1/0 1/0 0/0 .text
 * JSGSetProjectionType__Q26JStage7TCameraFQ26JStage18TECameraProjection */
void JStage::TCamera::JSGSetProjectionType(JStage::TECameraProjection) {}

/* 80280C14-80280C1C 27B554 0008+00 1/0 0/0 0/0 .text JSGGetProjectionNear__Q26JStage7TCameraCFv
 */
f32 JStage::TCamera::JSGGetProjectionNear() const {
    return 0.0f;
}

/* 80280C1C-80280C20 27B55C 0004+00 1/0 0/0 0/0 .text JSGSetProjectionNear__Q26JStage7TCameraFf */
void JStage::TCamera::JSGSetProjectionNear(f32) {}

/* 80280C20-80280C2C 27B560 000C+00 1/0 0/0 0/0 .text JSGGetProjectionFar__Q26JStage7TCameraCFv */
f32 JStage::TCamera::JSGGetProjectionFar() const {
    return FLT_MAX;
}

/* 80280C2C-80280C30 27B56C 0004+00 1/0 0/0 0/0 .text JSGSetProjectionFar__Q26JStage7TCameraFf */
void JStage::TCamera::JSGSetProjectionFar(f32) {}

/* 80280C30-80280C38 27B570 0008+00 1/0 0/0 0/0 .text JSGGetProjectionFovy__Q26JStage7TCameraCFv
 */
f32 JStage::TCamera::JSGGetProjectionFovy() const {
    return 0.0f;
}

/* 80280C38-80280C3C 27B578 0004+00 1/0 0/0 0/0 .text JSGSetProjectionFovy__Q26JStage7TCameraFf */
void JStage::TCamera::JSGSetProjectionFovy(f32) {}

/* 80280C3C-80280C44 27B57C 0008+00 1/0 0/0 0/0 .text JSGGetProjectionAspect__Q26JStage7TCameraCFv
 */
f32 JStage::TCamera::JSGGetProjectionAspect() const {
    return 0.0f;
}

/* 80280C44-80280C48 27B584 0004+00 1/0 0/0 0/0 .text JSGSetProjectionAspect__Q26JStage7TCameraFf
 */
void JStage::TCamera::JSGSetProjectionAspect(f32) {}

/* 80280C48-80280C4C 27B588 0004+00 1/0 1/0 0/0 .text JSGGetProjectionField__Q26JStage7TCameraCFPf
 */
void JStage::TCamera::JSGGetProjectionField(f32*) const {}

/* 80280C4C-80280C50 27B58C 0004+00 1/0 1/0 0/0 .text JSGSetProjectionField__Q26JStage7TCameraFPCf
 */
void JStage::TCamera::JSGSetProjectionField(f32 const*) {}

/* 80280C50-80280C58 27B590 0008+00 1/0 1/0 0/0 .text JSGGetViewType__Q26JStage7TCameraCFv */
bool JStage::TCamera::JSGGetViewType() const {
    return true;
}

/* 80280C58-80280C5C 27B598 0004+00 1/0 1/0 0/0 .text
 * JSGSetViewType__Q26JStage7TCameraFQ26JStage12TECameraView    */
void JStage::TCamera::JSGSetViewType(JStage::TECameraView) {}

/* 80280C5C-80280C60 27B59C 0004+00 1/0 0/0 0/0 .text JSGGetViewPosition__Q26JStage7TCameraCFP3Vec
 */
void JStage::TCamera::JSGGetViewPosition(Vec*) const {}

/* 80280C60-80280C64 27B5A0 0004+00 1/0 0/0 0/0 .text JSGSetViewPosition__Q26JStage7TCameraFRC3Vec
 */
void JStage::TCamera::JSGSetViewPosition(Vec const&) {}

/* 80280C64-80280C68 27B5A4 0004+00 1/0 0/0 0/0 .text JSGGetViewUpVector__Q26JStage7TCameraCFP3Vec
 */
void JStage::TCamera::JSGGetViewUpVector(Vec*) const {}

/* 80280C68-80280C6C 27B5A8 0004+00 1/0 0/0 0/0 .text JSGSetViewUpVector__Q26JStage7TCameraFRC3Vec
 */
void JStage::TCamera::JSGSetViewUpVector(Vec const&) {}

/* 80280C6C-80280C70 27B5AC 0004+00 1/0 0/0 0/0 .text
 * JSGGetViewTargetPosition__Q26JStage7TCameraCFP3Vec           */
void JStage::TCamera::JSGGetViewTargetPosition(Vec*) const {}

/* 80280C70-80280C74 27B5B0 0004+00 1/0 0/0 0/0 .text
 * JSGSetViewTargetPosition__Q26JStage7TCameraFRC3Vec           */
void JStage::TCamera::JSGSetViewTargetPosition(Vec const&) {}

/* 80280C74-80280C7C 27B5B4 0008+00 1/0 0/0 0/0 .text JSGGetViewRoll__Q26JStage7TCameraCFv */
f32 JStage::TCamera::JSGGetViewRoll() const {
    return 0.0f;
}

/* 80280C7C-80280C80 27B5BC 0004+00 1/0 0/0 0/0 .text            JSGSetViewRoll__Q26JStage7TCameraFf
 */
void JStage::TCamera::JSGSetViewRoll(f32) {}
