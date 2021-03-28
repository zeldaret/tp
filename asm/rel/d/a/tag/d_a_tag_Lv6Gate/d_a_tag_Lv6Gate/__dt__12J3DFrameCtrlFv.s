lbl_80D4FB70:
/* 80D4FB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4FB74  7C 08 02 A6 */	mflr r0
/* 80D4FB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4FB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4FB80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4FB84  41 82 00 1C */	beq lbl_80D4FBA0
/* 80D4FB88  3C A0 80 D5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D4FB8C  38 05 0A 1C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D4FB90  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4FB94  7C 80 07 35 */	extsh. r0, r4
/* 80D4FB98  40 81 00 08 */	ble lbl_80D4FBA0
/* 80D4FB9C  4B 57 F1 A0 */	b __dl__FPv
lbl_80D4FBA0:
/* 80D4FBA0  7F E3 FB 78 */	mr r3, r31
/* 80D4FBA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4FBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4FBAC  7C 08 03 A6 */	mtlr r0
/* 80D4FBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4FBB4  4E 80 00 20 */	blr 
