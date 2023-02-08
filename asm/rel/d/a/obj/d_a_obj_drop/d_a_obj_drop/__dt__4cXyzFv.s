lbl_80BE0318:
/* 80BE0318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE031C  7C 08 02 A6 */	mflr r0
/* 80BE0320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE0324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE0328  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE032C  41 82 00 10 */	beq lbl_80BE033C
/* 80BE0330  7C 80 07 35 */	extsh. r0, r4
/* 80BE0334  40 81 00 08 */	ble lbl_80BE033C
/* 80BE0338  4B 6E EA 05 */	bl __dl__FPv
lbl_80BE033C:
/* 80BE033C  7F E3 FB 78 */	mr r3, r31
/* 80BE0340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE0348  7C 08 03 A6 */	mtlr r0
/* 80BE034C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0350  4E 80 00 20 */	blr 
