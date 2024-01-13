#ifndef METROTRK_PORTABLE_MSGBUF_H
#define METROTRK_PORTABLE_MSGBUF_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef int MessageBufferID;

#define TRKMSGBUF_SIZE (0x800 + 0x80)

typedef struct TRKBuffer {
	/* 0x00 */ u32 _00;
	/* 0x04 */ BOOL isInUse;
	/* 0x08 */ u32 length;
	/* 0x0C */ u32 position;
	/* 0x10 */ u8 data[TRKMSGBUF_SIZE];
} TRKBuffer;

/* typedef struct TRKBuffer {
	u32 _00;
	u32 _04;
	s32 _08;
	u32 _0C;
	u32 _10;
	u8 m_buffer[0x87C];
} TRKBuffer; */

s32 TRKSetBufferPosition(TRKBuffer*, u32);
void* TRKGetBuffer(int);

#ifdef __cplusplus
}
#endif

#endif /* METROTRK_PORTABLE_MSGBUF_H */
