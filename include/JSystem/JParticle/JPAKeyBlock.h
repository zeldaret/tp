#ifndef JPAKEYBLOCK_H
#define JPAKEYBLOCK_H

#include "dolphin/types.h"

/**
 * @ingroup jsystem-jparticle
 * 
 */
struct JPAKeyBlock {
    /* 8027D730 */ JPAKeyBlock(u8 const*);
    /* 8027D740 */ void calc(f32);

    const u8* mDataStart;
	const f32* field_0x4;
};


#endif /* JPAKEYBLOCK_H */
