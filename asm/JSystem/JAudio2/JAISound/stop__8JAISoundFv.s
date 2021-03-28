lbl_802A2598:
/* 802A2598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A259C  7C 08 02 A6 */	mflr r0
/* 802A25A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A25A4  38 80 00 00 */	li r4, 0
/* 802A25A8  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802A25AC  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 802A25B0  98 03 00 1F */	stb r0, 0x1f(r3)
/* 802A25B4  38 80 00 01 */	li r4, 1
/* 802A25B8  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802A25BC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802A25C0  98 03 00 1F */	stb r0, 0x1f(r3)
/* 802A25C4  4B FF FB DD */	bl releaseHandle__8JAISoundFv
/* 802A25C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A25CC  7C 08 03 A6 */	mtlr r0
/* 802A25D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A25D4  4E 80 00 20 */	blr 
