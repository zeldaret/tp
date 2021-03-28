lbl_80371BF4:
/* 80371BF4  80 03 00 00 */	lwz r0, 0(r3)
/* 80371BF8  80 23 00 04 */	lwz r1, 4(r3)
/* 80371BFC  80 43 00 08 */	lwz r2, 8(r3)
/* 80371C00  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 80371C04  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 80371C08  41 82 00 14 */	beq lbl_80371C1C
/* 80371C0C  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80371C10  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80371C14  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 80371C18  48 00 00 08 */	b lbl_80371C20
lbl_80371C1C:
/* 80371C1C  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_80371C20:
/* 80371C20  7C 7F 1B 78 */	mr r31, r3
/* 80371C24  7C 83 23 78 */	mr r3, r4
/* 80371C28  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80371C2C  7C 8F F1 20 */	mtcrf 0xff, r4
/* 80371C30  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80371C34  7C 88 03 A6 */	mtlr r4
/* 80371C38  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 80371C3C  7C 89 03 A6 */	mtctr r4
/* 80371C40  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80371C44  7C 81 03 A6 */	mtxer r4
/* 80371C48  7C 80 00 A6 */	mfmsr r4
/* 80371C4C  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80371C50  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80371C54  7C 80 01 24 */	mtmsr r4
/* 80371C58  7C 51 43 A6 */	mtspr 0x111, r2
/* 80371C5C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80371C60  7C 92 43 A6 */	mtspr 0x112, r4
/* 80371C64  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80371C68  7C 93 43 A6 */	mtspr 0x113, r4
/* 80371C6C  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 80371C70  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 80371C74  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 80371C78  4B FF DA 0C */	b TRKInterruptHandler
