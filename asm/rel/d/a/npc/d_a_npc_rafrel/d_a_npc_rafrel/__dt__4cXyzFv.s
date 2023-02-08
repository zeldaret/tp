lbl_80ABF320:
/* 80ABF320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF324  7C 08 02 A6 */	mflr r0
/* 80ABF328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF330  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABF334  41 82 00 10 */	beq lbl_80ABF344
/* 80ABF338  7C 80 07 35 */	extsh. r0, r4
/* 80ABF33C  40 81 00 08 */	ble lbl_80ABF344
/* 80ABF340  4B 80 F9 FD */	bl __dl__FPv
lbl_80ABF344:
/* 80ABF344  7F E3 FB 78 */	mr r3, r31
/* 80ABF348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF350  7C 08 03 A6 */	mtlr r0
/* 80ABF354  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF358  4E 80 00 20 */	blr 
