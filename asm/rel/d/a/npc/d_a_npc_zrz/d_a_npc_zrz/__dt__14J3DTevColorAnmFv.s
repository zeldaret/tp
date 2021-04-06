lbl_80B9488C:
/* 80B9488C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B94890  7C 08 02 A6 */	mflr r0
/* 80B94894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B94898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9489C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B948A0  41 82 00 10 */	beq lbl_80B948B0
/* 80B948A4  7C 80 07 35 */	extsh. r0, r4
/* 80B948A8  40 81 00 08 */	ble lbl_80B948B0
/* 80B948AC  4B 73 A4 91 */	bl __dl__FPv
lbl_80B948B0:
/* 80B948B0  7F E3 FB 78 */	mr r3, r31
/* 80B948B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B948B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B948BC  7C 08 03 A6 */	mtlr r0
/* 80B948C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B948C4  4E 80 00 20 */	blr 
