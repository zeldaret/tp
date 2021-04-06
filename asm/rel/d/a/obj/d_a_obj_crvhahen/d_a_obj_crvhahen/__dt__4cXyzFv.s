lbl_80BD36E4:
/* 80BD36E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD36E8  7C 08 02 A6 */	mflr r0
/* 80BD36EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD36F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD36F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD36F8  41 82 00 10 */	beq lbl_80BD3708
/* 80BD36FC  7C 80 07 35 */	extsh. r0, r4
/* 80BD3700  40 81 00 08 */	ble lbl_80BD3708
/* 80BD3704  4B 6F B6 39 */	bl __dl__FPv
lbl_80BD3708:
/* 80BD3708  7F E3 FB 78 */	mr r3, r31
/* 80BD370C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD3710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3714  7C 08 03 A6 */	mtlr r0
/* 80BD3718  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD371C  4E 80 00 20 */	blr 
