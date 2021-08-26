#ifndef J2DMATERIAL_H
#define J2DMATERIAL_H

#include "JSystem/J2DGraph/J2DAnimation.h"
#include "dolphin/types.h"

struct J2DMaterial {
    struct J2DMaterialAnmPointer {
        /* 802EA79C */ J2DMaterialAnmPointer();
    };

    /* 802EA1AC */ J2DMaterial();
    /* 802EA2CC */ ~J2DMaterial();
    /* 802EA38C */ void setGX();
    /* 802EA410 */ void createTevBlock(int, bool);
    /* 802EA5C4 */ void createIndBlock(int, bool);
    /* 802EA84C */ void makeAnmPointer();
    /* 802EA94C */ void setAnimation(J2DAnmTextureSRTKey*);
    /* 802EAA2C */ void setAnimation(J2DAnmTexPattern*);
    /* 802EAB0C */ void setAnimation(J2DAnmTevRegKey*);
    /* 802EA89C */ void setAnimation(J2DAnmColor*);
    /* 802EAC78 */ void animation();
};

#endif /* J2DMATERIAL_H */
