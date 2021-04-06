lbl_80B4A26C:
/* 80B4A26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A270  7C 08 02 A6 */	mflr r0
/* 80B4A274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A27C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4A280  41 82 00 10 */	beq lbl_80B4A290
/* 80B4A284  7C 80 07 35 */	extsh. r0, r4
/* 80B4A288  40 81 00 08 */	ble lbl_80B4A290
/* 80B4A28C  4B 78 4A B1 */	bl __dl__FPv
lbl_80B4A290:
/* 80B4A290  7F E3 FB 78 */	mr r3, r31
/* 80B4A294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A29C  7C 08 03 A6 */	mtlr r0
/* 80B4A2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A2A4  4E 80 00 20 */	blr 
