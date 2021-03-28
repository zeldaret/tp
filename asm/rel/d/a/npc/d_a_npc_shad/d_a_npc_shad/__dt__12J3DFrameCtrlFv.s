lbl_80AE1E74:
/* 80AE1E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1E78  7C 08 02 A6 */	mflr r0
/* 80AE1E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1E84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE1E88  41 82 00 1C */	beq lbl_80AE1EA4
/* 80AE1E8C  3C A0 80 AE */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AE1E90  38 05 2C 20 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AE1E94  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE1E98  7C 80 07 35 */	extsh. r0, r4
/* 80AE1E9C  40 81 00 08 */	ble lbl_80AE1EA4
/* 80AE1EA0  4B 7E CE 9C */	b __dl__FPv
lbl_80AE1EA4:
/* 80AE1EA4  7F E3 FB 78 */	mr r3, r31
/* 80AE1EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1EB0  7C 08 03 A6 */	mtlr r0
/* 80AE1EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1EB8  4E 80 00 20 */	blr 
