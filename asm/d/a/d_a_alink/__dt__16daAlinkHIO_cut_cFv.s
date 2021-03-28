lbl_80140BD4:
/* 80140BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140BD8  7C 08 02 A6 */	mflr r0
/* 80140BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140BE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80140BE8  41 82 00 10 */	beq lbl_80140BF8
/* 80140BEC  7C 80 07 35 */	extsh. r0, r4
/* 80140BF0  40 81 00 08 */	ble lbl_80140BF8
/* 80140BF4  48 18 E1 49 */	bl __dl__FPv
lbl_80140BF8:
/* 80140BF8  7F E3 FB 78 */	mr r3, r31
/* 80140BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140C04  7C 08 03 A6 */	mtlr r0
/* 80140C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80140C0C  4E 80 00 20 */	blr 
