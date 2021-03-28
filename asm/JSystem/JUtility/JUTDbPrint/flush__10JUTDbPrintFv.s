lbl_802E02A4:
/* 802E02A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E02A8  7C 08 02 A6 */	mflr r0
/* 802E02AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E02B0  80 8D 8F B8 */	lwz r4, sManager__8JUTVideo(r13)
/* 802E02B4  80 84 00 04 */	lwz r4, 4(r4)
/* 802E02B8  A0 E4 00 06 */	lhz r7, 6(r4)
/* 802E02BC  A0 C4 00 04 */	lhz r6, 4(r4)
/* 802E02C0  38 80 00 00 */	li r4, 0
/* 802E02C4  38 A0 00 00 */	li r5, 0
/* 802E02C8  48 00 00 15 */	bl flush__10JUTDbPrintFiiii
/* 802E02CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E02D0  7C 08 03 A6 */	mtlr r0
/* 802E02D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E02D8  4E 80 00 20 */	blr 
