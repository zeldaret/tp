lbl_80AEC0DC:
/* 80AEC0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEC0E0  7C 08 02 A6 */	mflr r0
/* 80AEC0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEC0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEC0EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEC0F0  41 82 00 10 */	beq lbl_80AEC100
/* 80AEC0F4  7C 80 07 35 */	extsh. r0, r4
/* 80AEC0F8  40 81 00 08 */	ble lbl_80AEC100
/* 80AEC0FC  4B 7E 2C 41 */	bl __dl__FPv
lbl_80AEC100:
/* 80AEC100  7F E3 FB 78 */	mr r3, r31
/* 80AEC104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEC108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEC10C  7C 08 03 A6 */	mtlr r0
/* 80AEC110  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEC114  4E 80 00 20 */	blr 
