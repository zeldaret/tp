lbl_800DFC70:
/* 800DFC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DFC74  7C 08 02 A6 */	mflr r0
/* 800DFC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DFC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFC80  7C 7F 1B 78 */	mr r31, r3
/* 800DFC84  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 800DFC88  48 07 EF 09 */	bl checkBowItem__9daPy_py_cFi
/* 800DFC8C  2C 03 00 00 */	cmpwi r3, 0
/* 800DFC90  41 82 00 18 */	beq lbl_800DFCA8
/* 800DFC94  7F E3 FB 78 */	mr r3, r31
/* 800DFC98  38 80 00 59 */	li r4, 0x59
/* 800DFC9C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DFCA0  4B FE 03 E5 */	bl changeItemBck__9daAlink_cFUsf
/* 800DFCA4  48 00 00 20 */	b lbl_800DFCC4
lbl_800DFCA8:
/* 800DFCA8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DFCAC  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DFCB0  40 82 00 14 */	bne lbl_800DFCC4
/* 800DFCB4  7F E3 FB 78 */	mr r3, r31
/* 800DFCB8  38 80 01 F9 */	li r4, 0x1f9
/* 800DFCBC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DFCC0  4B FE 03 C5 */	bl changeItemBck__9daAlink_cFUsf
lbl_800DFCC4:
/* 800DFCC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DFCCC  7C 08 03 A6 */	mtlr r0
/* 800DFCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DFCD4  4E 80 00 20 */	blr 
