lbl_8036F978:
/* 8036F978  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F97C  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F980  80 02 00 8C */	lwz r0, 0x8c(r2)
/* 8036F984  7C 00 04 AC */	sync
/* 8036F988  7C 00 01 24 */	mtmsr r0
/* 8036F98C  7C 00 04 AC */	sync
/* 8036F990  80 02 00 80 */	lwz r0, 0x80(r2)
/* 8036F994  7C 08 03 A6 */	mtlr r0
/* 8036F998  80 02 00 84 */	lwz r0, 0x84(r2)
/* 8036F99C  7C 09 03 A6 */	mtctr r0
/* 8036F9A0  80 02 00 88 */	lwz r0, 0x88(r2)
/* 8036F9A4  7C 01 03 A6 */	mtxer r0
/* 8036F9A8  80 02 00 94 */	lwz r0, 0x94(r2)
/* 8036F9AC  7C 12 03 A6 */	mtdsisr r0
/* 8036F9B0  80 02 00 90 */	lwz r0, 0x90(r2)
/* 8036F9B4  7C 13 03 A6 */	mtdar r0
/* 8036F9B8  B8 62 00 0C */	lmw r3, 0xc(r2)
/* 8036F9BC  80 02 00 00 */	lwz r0, 0(r2)
/* 8036F9C0  80 22 00 04 */	lwz r1, 4(r2)
/* 8036F9C4  80 42 00 08 */	lwz r2, 8(r2)
/* 8036F9C8  48 00 07 6C */	b TRKPostInterruptEvent
