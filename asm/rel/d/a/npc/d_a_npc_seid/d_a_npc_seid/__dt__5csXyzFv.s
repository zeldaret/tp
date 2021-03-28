lbl_80ACA9D8:
/* 80ACA9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA9DC  7C 08 02 A6 */	mflr r0
/* 80ACA9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA9E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACA9EC  41 82 00 10 */	beq lbl_80ACA9FC
/* 80ACA9F0  7C 80 07 35 */	extsh. r0, r4
/* 80ACA9F4  40 81 00 08 */	ble lbl_80ACA9FC
/* 80ACA9F8  4B 80 43 44 */	b __dl__FPv
lbl_80ACA9FC:
/* 80ACA9FC  7F E3 FB 78 */	mr r3, r31
/* 80ACAA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACAA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACAA08  7C 08 03 A6 */	mtlr r0
/* 80ACAA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACAA10  4E 80 00 20 */	blr 
