lbl_8095D4D8:
/* 8095D4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095D4DC  7C 08 02 A6 */	mflr r0
/* 8095D4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095D4E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095D4E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095D4EC  41 82 00 1C */	beq lbl_8095D508
/* 8095D4F0  3C A0 80 96 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8095D4F4  38 05 DC A8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8095D4F8  90 1F 00 00 */	stw r0, 0(r31)
/* 8095D4FC  7C 80 07 35 */	extsh. r0, r4
/* 8095D500  40 81 00 08 */	ble lbl_8095D508
/* 8095D504  4B 97 18 38 */	b __dl__FPv
lbl_8095D508:
/* 8095D508  7F E3 FB 78 */	mr r3, r31
/* 8095D50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D514  7C 08 03 A6 */	mtlr r0
/* 8095D518  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D51C  4E 80 00 20 */	blr 
