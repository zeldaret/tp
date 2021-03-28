lbl_802EA044:
/* 802EA044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA048  7C 08 02 A6 */	mflr r0
/* 802EA04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA050  81 43 00 00 */	lwz r10, 0(r3)
/* 802EA054  55 40 5F FE */	rlwinm r0, r10, 0xb, 0x1f, 0x1f
/* 802EA058  90 01 00 08 */	stw r0, 8(r1)
/* 802EA05C  55 40 57 BE */	rlwinm r0, r10, 0xa, 0x1e, 0x1f
/* 802EA060  90 01 00 0C */	stw r0, 0xc(r1)
/* 802EA064  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802EA068  55 44 07 BE */	clrlwi r4, r10, 0x1e
/* 802EA06C  55 45 F7 BE */	rlwinm r5, r10, 0x1e, 0x1e, 0x1f
/* 802EA070  55 46 E7 7E */	rlwinm r6, r10, 0x1c, 0x1d, 0x1f
/* 802EA074  55 47 87 3E */	rlwinm r7, r10, 0x10, 0x1c, 0x1f
/* 802EA078  55 48 C7 7E */	rlwinm r8, r10, 0x18, 0x1d, 0x1f
/* 802EA07C  55 49 AF 7E */	rlwinm r9, r10, 0x15, 0x1d, 0x1f
/* 802EA080  55 4A 67 FE */	rlwinm r10, r10, 0xc, 0x1f, 0x1f
/* 802EA084  48 07 4C 3D */	bl GXSetTevIndirect
/* 802EA088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA08C  7C 08 03 A6 */	mtlr r0
/* 802EA090  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA094  4E 80 00 20 */	blr 
