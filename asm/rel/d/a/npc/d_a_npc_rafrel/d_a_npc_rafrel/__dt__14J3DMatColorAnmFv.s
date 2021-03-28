lbl_80ABA32C:
/* 80ABA32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA330  7C 08 02 A6 */	mflr r0
/* 80ABA334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABA33C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABA340  41 82 00 10 */	beq lbl_80ABA350
/* 80ABA344  7C 80 07 35 */	extsh. r0, r4
/* 80ABA348  40 81 00 08 */	ble lbl_80ABA350
/* 80ABA34C  4B 81 49 F0 */	b __dl__FPv
lbl_80ABA350:
/* 80ABA350  7F E3 FB 78 */	mr r3, r31
/* 80ABA354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABA358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA35C  7C 08 03 A6 */	mtlr r0
/* 80ABA360  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA364  4E 80 00 20 */	blr 
