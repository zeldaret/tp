#ifndef JSGOBJECT_H
#define JSGOBJECT_H

#include "dolphin/types.h"
#include "dolphin/mtx/mtxvec.h"

namespace JStage {
    struct TObject {
        /* 80280DD4 */ virtual ~TObject() = 0;
        virtual s32 JSGFGetType() const = 0;
        /* 80280E1C */ virtual bool JSGGetName() const;
        /* 80280E24 */ virtual void JSGUpdate();
        /* 80280E28 */ virtual bool JSGGetFlag() const;
        /* 80280E30 */ virtual void JSGSetFlag(u32);
        /* 80280E34 */ virtual bool JSGGetData(u32, void*, u32) const;
        /* 80280E3C */ virtual void JSGSetData(u32, void const*, u32);
        /* 80280E40 */ virtual void JSGGetParent(JStage::TObject**, u32*) const;
        /* 80280E44 */ virtual void JSGSetParent(JStage::TObject*, u32);
        /* 80280E48 */ virtual void JSGSetRelation(bool, JStage::TObject*, u32);
        /* 80280E4C */ virtual s32 JSGFindNodeID(char const*) const;
        /* 80280E54 */ virtual int JSGGetNodeTransformation(u32, f32 (*)[4]) const;
    };
};

#endif /* JSGOBJECT_H */
