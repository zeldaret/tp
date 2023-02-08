lbl_80BC3418:
/* 80BC3418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC341C  7C 08 02 A6 */	mflr r0
/* 80BC3420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3428  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC342C  41 82 00 1C */	beq lbl_80BC3448
/* 80BC3430  3C A0 80 BC */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80BC4204@ha */
/* 80BC3434  38 05 42 04 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80BC4204@l */
/* 80BC3438  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC343C  7C 80 07 35 */	extsh. r0, r4
/* 80BC3440  40 81 00 08 */	ble lbl_80BC3448
/* 80BC3444  4B 70 B8 F9 */	bl __dl__FPv
lbl_80BC3448:
/* 80BC3448  7F E3 FB 78 */	mr r3, r31
/* 80BC344C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3454  7C 08 03 A6 */	mtlr r0
/* 80BC3458  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC345C  4E 80 00 20 */	blr 
