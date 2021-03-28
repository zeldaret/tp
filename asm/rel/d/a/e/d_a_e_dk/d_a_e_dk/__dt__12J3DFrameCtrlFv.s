lbl_806ACDAC:
/* 806ACDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ACDB0  7C 08 02 A6 */	mflr r0
/* 806ACDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ACDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806ACDBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806ACDC0  41 82 00 1C */	beq lbl_806ACDDC
/* 806ACDC4  3C A0 80 6B */	lis r5, __vt__12J3DFrameCtrl@ha
/* 806ACDC8  38 05 D7 D4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 806ACDCC  90 1F 00 00 */	stw r0, 0(r31)
/* 806ACDD0  7C 80 07 35 */	extsh. r0, r4
/* 806ACDD4  40 81 00 08 */	ble lbl_806ACDDC
/* 806ACDD8  4B C2 1F 64 */	b __dl__FPv
lbl_806ACDDC:
/* 806ACDDC  7F E3 FB 78 */	mr r3, r31
/* 806ACDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806ACDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ACDE8  7C 08 03 A6 */	mtlr r0
/* 806ACDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 806ACDF0  4E 80 00 20 */	blr 
