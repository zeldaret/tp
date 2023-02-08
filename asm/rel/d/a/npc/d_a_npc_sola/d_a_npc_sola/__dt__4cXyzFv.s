lbl_80AEE328:
/* 80AEE328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE32C  7C 08 02 A6 */	mflr r0
/* 80AEE330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE338  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEE33C  41 82 00 10 */	beq lbl_80AEE34C
/* 80AEE340  7C 80 07 35 */	extsh. r0, r4
/* 80AEE344  40 81 00 08 */	ble lbl_80AEE34C
/* 80AEE348  4B 7E 09 F5 */	bl __dl__FPv
lbl_80AEE34C:
/* 80AEE34C  7F E3 FB 78 */	mr r3, r31
/* 80AEE350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE358  7C 08 03 A6 */	mtlr r0
/* 80AEE35C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE360  4E 80 00 20 */	blr 
