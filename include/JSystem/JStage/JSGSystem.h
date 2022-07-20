#ifndef JSGSYSTEM_H
#define JSGSYSTEM_H

#include "dolphin/types.h"
#include "JSystem/JStage/JSGObject.h"

namespace JStage {
    struct TEObject {};

    struct TSystem : public TObject {
        /* 80280E90 */ virtual ~TSystem() = 0;
        /* 80280EF0 */ virtual s32 JSGFGetType() const;
        /* 80280EF8 */ virtual bool JSGFindObject(JStage::TObject**, char const*, JStage::TEObject) const;
        /* 80280F00 */ virtual bool JSGCreateObject(char const*, JStage::TEObject, u32);
        /* 80280F08 */ virtual void JSGDestroyObject(JStage::TObject*);
        /* 80280F0C */ virtual bool JSGGetSystemData(u32);
        /* 80280F14 */ virtual void JSGSetSystemData(u32, u32);
    };
};

#endif /* JSGSYSTEM_H */
