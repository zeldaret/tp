lbl_80AA94CC:
/* 80AA94CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA94D0  7C 08 02 A6 */	mflr r0
/* 80AA94D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA94D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA94DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA94E0  41 82 00 10 */	beq lbl_80AA94F0
/* 80AA94E4  7C 80 07 35 */	extsh. r0, r4
/* 80AA94E8  40 81 00 08 */	ble lbl_80AA94F0
/* 80AA94EC  4B 82 58 51 */	bl __dl__FPv
lbl_80AA94F0:
/* 80AA94F0  7F E3 FB 78 */	mr r3, r31
/* 80AA94F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA94F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA94FC  7C 08 03 A6 */	mtlr r0
/* 80AA9500  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9504  4E 80 00 20 */	blr 
