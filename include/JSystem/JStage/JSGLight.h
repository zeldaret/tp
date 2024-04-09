#ifndef JSGLIGHT_H
#define JSGLIGHT_H

#include "JSystem/JStage/JSGObject.h"
#include "dolphin/gx/GXStruct.h"

namespace JStage {
    enum TELight {};

    struct TLight : public TObject {
        /* 80280D28 */ virtual ~TLight() = 0;
        /* 80280D88 */ virtual s32 JSGFGetType() const;
        /* 80280D90 */ virtual bool JSGGetLightType() const;
        /* 80280D98 */ virtual void JSGSetLightType(JStage::TELight);
        /* 80280DC4 */ virtual void JSGGetPosition(Vec*) const;
        /* 80280DC8 */ virtual void JSGSetPosition(Vec const&);
        /* 80280D9C */ virtual GXColor JSGGetColor() const;
        /* 80280DB0 */ virtual void JSGSetColor(GXColor);
        /* 80280DB4 */ virtual void JSGGetDistanceAttenuation(f32*, f32*, GXDistAttnFn*) const;
        /* 80280DB8 */ virtual void JSGSetDistanceAttenuation(f32, f32, GXDistAttnFn);
        /* 80280DBC */ virtual void JSGGetAngleAttenuation(f32*, GXSpotFn*) const;
        /* 80280DC0 */ virtual void JSGSetAngleAttenuation(f32, GXSpotFn);
        /* 80280DCC */ virtual void JSGGetDirection(Vec*) const;
        /* 80280DD0 */ virtual void JSGSetDirection(Vec const&);
    };
};

#endif /* JSGLIGHT_H */
