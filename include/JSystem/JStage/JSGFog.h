#ifndef JSGFOG_H
#define JSGFOG_H

#include "JSystem/JStage/JSGObject.h"
#include "dolphin/gx/GX.h"

namespace JStage {
    struct TFog : public TObject {
        /* 80280C80 */ virtual ~TFog() = 0;
        /* 80280CE0 */ virtual s32 JSGFGetType() const;
        /* 80280CE8 */ virtual bool JSGGetFogFunction() const;
        /* 80280CF0 */ virtual void JSGSetFogFunction(GXFogType);
        /* 80280CF4 */ virtual f32 JSGGetStartZ() const;
        /* 80280CFC */ virtual void JSGSetStartZ(f32);
        /* 80280D00 */ virtual f32 JSGGetEndZ() const;
        /* 80280D0C */ virtual void JSGSetEndZ(f32);
        /* 80280D10 */ virtual GXColor JSGGetColor() const;
        /* 80280D24 */ virtual void JSGSetColor(GXColor);
    };
};

#endif /* JSGFOG_H */
