#ifndef JPARESOURCEMANAGER_H
#define JPARESOURCEMANAGER_H

#include "JSystem/JParticle/JPATexture.h"
#include "dolphin/types.h"

class JKRHeap;
class ResTIMG;
class JPAResource;

class JPAResourceManager {
public:
    /* 80273E10 */ JPAResourceManager(void const*, JKRHeap*);
    /* 80273E68 */ JPAResource* getResource(u16) const;
    /* 80273EA8 */ bool checkUserIndexDuplication(u16) const;
    /* 80273EEC */ const ResTIMG* swapTexture(ResTIMG const*, char const*);
    /* 80273F8C */ void registRes(JPAResource*);
    /* 80273FAC */ void registTex(JPATexture*);
    /* 80273FCC */ u32 getResUserWork(u16) const;

    void load(u16 idx, GXTexMapID texMapID) { mpTexArr[idx]->load(texMapID); }

public:
    /* 0x00 */ JKRHeap* mpHeap;
    /* 0x04 */ JPAResource** mpResArr;
    /* 0x08 */ JPATexture** mpTexArr;
    /* 0x0C */ u16 mResMax;
    /* 0x0E */ u16 mResNum;
    /* 0x10 */ u16 mTexMax;
    /* 0x12 */ u16 mTexNum;
};

#endif /* JPARESOURCEMANAGER_H */
