lbl_8035CAFC:
/* 8035CAFC  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035CB00  38 00 00 00 */	li r0, 0
/* 8035CB04  90 04 01 E8 */	stw r0, 0x1e8(r4)
/* 8035CB08  54 60 0C 3C */	rlwinm r0, r3, 1, 0x10, 0x1e
/* 8035CB0C  7C 00 2E 70 */	srawi r0, r0, 5
/* 8035CB10  80 64 01 E8 */	lwz r3, 0x1e8(r4)
/* 8035CB14  50 03 05 BE */	rlwimi r3, r0, 0, 0x16, 0x1f
/* 8035CB18  38 00 00 4D */	li r0, 0x4d
/* 8035CB1C  90 64 01 E8 */	stw r3, 0x1e8(r4)
/* 8035CB20  80 64 01 E8 */	lwz r3, 0x1e8(r4)
/* 8035CB24  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 8035CB28  90 64 01 E8 */	stw r3, 0x1e8(r4)
/* 8035CB2C  4E 80 00 20 */	blr 
