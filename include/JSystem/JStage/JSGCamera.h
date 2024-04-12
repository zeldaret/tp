#ifndef JSGCAMERA_H
#define JSGCAMERA_H

#include "JSystem/JStage/JSGObject.h"

namespace JStage {

    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TECameraProjection {};

    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TECameraView {};

    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TCamera : public TObject {
        /* 80280BA0 */ virtual ~TCamera() = 0;
        /* 80280C00 */ virtual s32 JSGFGetType() const;
        /* 80280C08 */ virtual bool JSGGetProjectionType() const;
        /* 80280C10 */ virtual void JSGSetProjectionType(JStage::TECameraProjection);
        /* 80280C14 */ virtual f32 JSGGetProjectionNear() const;
        /* 80280C1C */ virtual void JSGSetProjectionNear(f32);
        /* 80280C20 */ virtual f32 JSGGetProjectionFar() const;
        /* 80280C2C */ virtual void JSGSetProjectionFar(f32);
        /* 80280C30 */ virtual f32 JSGGetProjectionFovy() const;
        /* 80280C38 */ virtual void JSGSetProjectionFovy(f32);
        /* 80280C3C */ virtual f32 JSGGetProjectionAspect() const;
        /* 80280C44 */ virtual void JSGSetProjectionAspect(f32);
        /* 80280C48 */ virtual void JSGGetProjectionField(f32*) const;
        /* 80280C4C */ virtual void JSGSetProjectionField(f32 const*);
        /* 80280C50 */ virtual bool JSGGetViewType() const;
        /* 80280C58 */ virtual void JSGSetViewType(JStage::TECameraView);
        /* 80280C5C */ virtual void JSGGetViewPosition(Vec*) const;
        /* 80280C60 */ virtual void JSGSetViewPosition(Vec const&);
        /* 80280C64 */ virtual void JSGGetViewUpVector(Vec*) const;
        /* 80280C68 */ virtual void JSGSetViewUpVector(Vec const&);
        /* 80280C6C */ virtual void JSGGetViewTargetPosition(Vec*) const;
        /* 80280C70 */ virtual void JSGSetViewTargetPosition(Vec const&);
        /* 80280C74 */ virtual f32 JSGGetViewRoll() const;
        /* 80280C7C */ virtual void JSGSetViewRoll(f32);
    };
};

#endif /* JSGCAMERA_H */
