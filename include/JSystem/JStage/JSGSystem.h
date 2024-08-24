#ifndef JSGSYSTEM_H
#define JSGSYSTEM_H

#include "JSystem/JStage/JSGObject.h"

namespace JStage {
    enum TEObject {
        /* 0x0 */ OBJECT_UNDEFINED,
        /* 0x1 */ OBJECT_UNK1,
        /* 0x2 */ OBJECT_ACTOR,
        /* 0x3 */ OBJECT_CAMERA,
        /* 0x4 */ OBJECT_AMBIENT,
        /* 0x5 */ OBJECT_LIGHT,
        /* 0x6 */ OBJECT_FOG,
    };

    /**
    * @ingroup jsystem-jstage
    * 
    */
    struct TSystem : public TObject {
        /* 80280E90 */ virtual ~TSystem() = 0;
        /* 80280EF0 */ virtual s32 JSGFGetType() const;
        /* 80280EF8 */ virtual int JSGFindObject(JStage::TObject**, char const*, JStage::TEObject) const;
        /* 80280F00 */ virtual bool JSGCreateObject(char const*, JStage::TEObject, u32);
        /* 80280F08 */ virtual void JSGDestroyObject(JStage::TObject*);
        /* 80280F0C */ virtual bool JSGGetSystemData(u32);
        /* 80280F14 */ virtual void JSGSetSystemData(u32, u32);
    };
};

#endif /* JSGSYSTEM_H */
