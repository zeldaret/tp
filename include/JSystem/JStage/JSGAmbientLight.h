#ifndef JSGAMBIENTLIGHT_H
#define JSGAMBIENTLIGHT_H

#include "JSystem/JStage/JSGObject.h"
#include <dolphin/gx.h>

namespace JStage {
    
    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TAmbientLight : public TObject {
        /* 80280B20 */ virtual ~TAmbientLight() = 0;
        /* 80280B80 */ virtual s32 JSGFGetType() const;
        /* 80280B88 */ virtual GXColor JSGGetColor() const;
        /* 80280B9C */ virtual void JSGSetColor(GXColor);
    };
};

#endif /* JSGAMBIENTLIGHT_H */
