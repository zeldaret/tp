lbl_80D0C318:
/* 80D0C318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C31C  7C 08 02 A6 */	mflr r0
/* 80D0C320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0C328  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0C32C  41 82 00 10 */	beq lbl_80D0C33C
/* 80D0C330  7C 80 07 35 */	extsh. r0, r4
/* 80D0C334  40 81 00 08 */	ble lbl_80D0C33C
/* 80D0C338  4B 5C 2A 05 */	bl __dl__FPv
lbl_80D0C33C:
/* 80D0C33C  7F E3 FB 78 */	mr r3, r31
/* 80D0C340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0C344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C348  7C 08 03 A6 */	mtlr r0
/* 80D0C34C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C350  4E 80 00 20 */	blr 
