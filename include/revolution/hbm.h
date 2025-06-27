#ifndef _REVOLUTION_HBM_H_
#define _REVOLUTION_HBM_H_

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

// TODO: properly setup later

typedef struct Vec2 {
	f32	x;	// size 0x04, offset 0x00
	f32	y;	// size 0x04, offset 0x04
} Vec2; // size 0x08

typedef struct MEMAllocator MEMAllocator;

typedef int HBMSoundCallback(int evt, int num);

typedef struct HBMDataInfo {
	void				*layoutBuf;			// size 0x04, offset 0x00
	void				*spkSeBuf;			// size 0x04, offset 0x04
	void				*msgBuf;			// size 0x04, offset 0x08
	void				*configBuf;			// size 0x04, offset 0x0c
	void				*mem;				// size 0x04, offset 0x10
	HBMSoundCallback	*sound_callback;	// size 0x04, offset 0x14
	int					backFlag;			// size 0x04, offset 0x18
	int					region;				// size 0x04, offset 0x1c
	int					cursor;				// size 0x04, offset 0x20
	u32					memSize;			// size 0x04, offset 0x24
	f32					frameDelta;			// size 0x04, offset 0x28
	Vec2				adjust;				// size 0x08, offset 0x2c
	MEMAllocator		*pAllocator;		// size 0x04, offset 0x34
} HBMDataInfo; // size 0x40

void HBMCreate(const HBMDataInfo *pHBInfo);

#ifdef __cplusplus
}
#endif

#endif // _REVOLUTION_HBM_H_
