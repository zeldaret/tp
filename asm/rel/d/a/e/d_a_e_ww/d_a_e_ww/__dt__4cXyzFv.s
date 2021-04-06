lbl_807EF708:
/* 807EF708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EF70C  7C 08 02 A6 */	mflr r0
/* 807EF710  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EF714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EF718  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EF71C  41 82 00 10 */	beq lbl_807EF72C
/* 807EF720  7C 80 07 35 */	extsh. r0, r4
/* 807EF724  40 81 00 08 */	ble lbl_807EF72C
/* 807EF728  4B AD F6 15 */	bl __dl__FPv
lbl_807EF72C:
/* 807EF72C  7F E3 FB 78 */	mr r3, r31
/* 807EF730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EF734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EF738  7C 08 03 A6 */	mtlr r0
/* 807EF73C  38 21 00 10 */	addi r1, r1, 0x10
/* 807EF740  4E 80 00 20 */	blr 
