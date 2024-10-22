#ifndef JSGACTOR_H
#define JSGACTOR_H

#include "JSystem/JStage/JSGObject.h"

namespace JStage {
    
    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TActor : public TObject {
        /* 80280A48 */ virtual ~TActor() = 0;
        /* 80280AA8 */ virtual s32 JSGFGetType() const;
        /* 80280AB0 */ virtual void JSGGetTranslation(Vec*) const;
        /* 80280AB4 */ virtual void JSGSetTranslation(Vec const&);
        /* 80280AB8 */ virtual void JSGGetScaling(Vec*) const;
        /* 80280ABC */ virtual void JSGSetScaling(Vec const&);
        /* 80280AC0 */ virtual void JSGGetRotation(Vec*) const;
        /* 80280AC4 */ virtual void JSGSetRotation(Vec const&);
        /* 80280AC8 */ virtual s32 JSGGetShape() const;
        /* 80280AD0 */ virtual void JSGSetShape(u32);
        /* 80280AD4 */ virtual s32 JSGGetAnimation() const;
        /* 80280ADC */ virtual void JSGSetAnimation(u32);
        /* 80280AE0 */ virtual f32 JSGGetAnimationFrame() const;
        /* 80280AE8 */ virtual void JSGSetAnimationFrame(f32);
        /* 80280AEC */ virtual f32 JSGGetAnimationFrameMax() const;
        /* 80280AF4 */ virtual f32 JSGGetAnimationTransition() const;
        /* 80280AFC */ virtual void JSGSetAnimationTransition(f32);
        /* 80280B00 */ virtual s32 JSGGetTextureAnimation() const;
        /* 80280B08 */ virtual void JSGSetTextureAnimation(u32);
        /* 80280B0C */ virtual f32 JSGGetTextureAnimationFrame() const;
        /* 80280B14 */ virtual void JSGSetTextureAnimationFrame(f32);
        /* 80280B18 */ virtual f32 JSGGetTextureAnimationFrameMax() const;
    };
};

#endif /* JSGACTOR_H */
