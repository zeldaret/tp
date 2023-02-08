lbl_80D0FC8C:
/* 80D0FC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0FC90  7C 08 02 A6 */	mflr r0
/* 80D0FC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0FC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0FC9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0FCA0  41 82 00 10 */	beq lbl_80D0FCB0
/* 80D0FCA4  7C 80 07 35 */	extsh. r0, r4
/* 80D0FCA8  40 81 00 08 */	ble lbl_80D0FCB0
/* 80D0FCAC  4B 5B F0 91 */	bl __dl__FPv
lbl_80D0FCB0:
/* 80D0FCB0  7F E3 FB 78 */	mr r3, r31
/* 80D0FCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0FCB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0FCBC  7C 08 03 A6 */	mtlr r0
/* 80D0FCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0FCC4  4E 80 00 20 */	blr 
