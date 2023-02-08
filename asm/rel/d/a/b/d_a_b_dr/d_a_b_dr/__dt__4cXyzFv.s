lbl_805BB0E4:
/* 805BB0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB0E8  7C 08 02 A6 */	mflr r0
/* 805BB0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB0F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BB0F8  41 82 00 10 */	beq lbl_805BB108
/* 805BB0FC  7C 80 07 35 */	extsh. r0, r4
/* 805BB100  40 81 00 08 */	ble lbl_805BB108
/* 805BB104  4B D1 3C 39 */	bl __dl__FPv
lbl_805BB108:
/* 805BB108  7F E3 FB 78 */	mr r3, r31
/* 805BB10C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB114  7C 08 03 A6 */	mtlr r0
/* 805BB118  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB11C  4E 80 00 20 */	blr 
