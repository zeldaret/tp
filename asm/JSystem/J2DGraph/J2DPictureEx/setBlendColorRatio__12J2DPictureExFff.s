lbl_80305ED4:
/* 80305ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305ED8  7C 08 02 A6 */	mflr r0
/* 80305EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305EE0  80 03 01 50 */	lwz r0, 0x150(r3)
/* 80305EE4  28 00 00 00 */	cmplwi r0, 0
/* 80305EE8  41 82 00 3C */	beq lbl_80305F24
/* 80305EEC  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 80305EF0  D0 43 01 20 */	stfs f2, 0x120(r3)
/* 80305EF4  38 80 00 00 */	li r4, 0
/* 80305EF8  C0 02 C8 C0 */	lfs f0, lit_1517(r2)
/* 80305EFC  38 00 00 06 */	li r0, 6
/* 80305F00  7C 09 03 A6 */	mtctr r0
lbl_80305F04:
/* 80305F04  38 04 01 60 */	addi r0, r4, 0x160
/* 80305F08  7C 03 05 2E */	stfsx f0, r3, r0
/* 80305F0C  38 84 00 04 */	addi r4, r4, 4
/* 80305F10  42 00 FF F4 */	bdnz lbl_80305F04
/* 80305F14  80 83 01 50 */	lwz r4, 0x150(r3)
/* 80305F18  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80305F1C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80305F20  4B FF FA 09 */	bl setTevKColor__12J2DPictureExFUc
lbl_80305F24:
/* 80305F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305F28  7C 08 03 A6 */	mtlr r0
/* 80305F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80305F30  4E 80 00 20 */	blr 
