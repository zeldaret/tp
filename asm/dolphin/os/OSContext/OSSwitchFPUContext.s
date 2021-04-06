lbl_8033C388:
/* 8033C388  7C A0 00 A6 */	mfmsr r5
/* 8033C38C  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8033C390  7C A0 01 24 */	mtmsr r5
/* 8033C394  4C 00 01 2C */	isync 
/* 8033C398  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 8033C39C  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8033C3A0  7C BB 03 A6 */	mtspr 0x1b, r5
/* 8033C3A4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000D8@ha */
/* 8033C3A8  80 A3 00 D8 */	lwz r5, 0x00D8(r3)  /* 0x800000D8@l */
/* 8033C3AC  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 8033C3B0  7C 05 20 00 */	cmpw r5, r4
/* 8033C3B4  41 82 00 14 */	beq lbl_8033C3C8
/* 8033C3B8  2C 05 00 00 */	cmpwi r5, 0
/* 8033C3BC  41 82 00 08 */	beq lbl_8033C3C4
/* 8033C3C0  4B FF F9 49 */	bl __OSSaveFPUContext
lbl_8033C3C4:
/* 8033C3C4  4B FF F8 21 */	bl __OSLoadFPUContext
lbl_8033C3C8:
/* 8033C3C8  80 64 00 80 */	lwz r3, 0x80(r4)
/* 8033C3CC  7C 6F F1 20 */	mtcrf 0xff, r3
/* 8033C3D0  80 64 00 84 */	lwz r3, 0x84(r4)
/* 8033C3D4  7C 68 03 A6 */	mtlr r3
/* 8033C3D8  80 64 01 98 */	lwz r3, 0x198(r4)
/* 8033C3DC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8033C3E0  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8033C3E4  7C 69 03 A6 */	mtctr r3
/* 8033C3E8  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 8033C3EC  7C 61 03 A6 */	mtxer r3
/* 8033C3F0  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8033C3F4  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 8033C3F8  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 8033C3FC  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8033C400  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8033C404  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8033C408  4C 00 00 64 */	rfi 
