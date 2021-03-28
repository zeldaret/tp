lbl_8062CD10:
/* 8062CD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062CD14  7C 08 02 A6 */	mflr r0
/* 8062CD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062CD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062CD20  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062CD24  41 82 00 1C */	beq lbl_8062CD40
/* 8062CD28  3C A0 80 63 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8062CD2C  38 05 EF A8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8062CD30  90 1F 00 00 */	stw r0, 0(r31)
/* 8062CD34  7C 80 07 35 */	extsh. r0, r4
/* 8062CD38  40 81 00 08 */	ble lbl_8062CD40
/* 8062CD3C  4B CA 20 00 */	b __dl__FPv
lbl_8062CD40:
/* 8062CD40  7F E3 FB 78 */	mr r3, r31
/* 8062CD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062CD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062CD4C  7C 08 03 A6 */	mtlr r0
/* 8062CD50  38 21 00 10 */	addi r1, r1, 0x10
/* 8062CD54  4E 80 00 20 */	blr 
