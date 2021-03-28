lbl_8045EE14:
/* 8045EE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045EE18  7C 08 02 A6 */	mflr r0
/* 8045EE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045EE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045EE24  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045EE28  41 82 00 1C */	beq lbl_8045EE44
/* 8045EE2C  3C A0 80 46 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8045EE30  38 05 0A 88 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8045EE34  90 1F 00 00 */	stw r0, 0(r31)
/* 8045EE38  7C 80 07 35 */	extsh. r0, r4
/* 8045EE3C  40 81 00 08 */	ble lbl_8045EE44
/* 8045EE40  4B E6 FE FC */	b __dl__FPv
lbl_8045EE44:
/* 8045EE44  7F E3 FB 78 */	mr r3, r31
/* 8045EE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045EE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045EE50  7C 08 03 A6 */	mtlr r0
/* 8045EE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8045EE58  4E 80 00 20 */	blr 
