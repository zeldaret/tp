lbl_80AE5E70:
/* 80AE5E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5E74  7C 08 02 A6 */	mflr r0
/* 80AE5E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5E80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE5E84  41 82 00 1C */	beq lbl_80AE5EA0
/* 80AE5E88  3C A0 80 AE */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AE5E8C  38 05 77 24 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AE5E90  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AE5E94  7C 80 07 35 */	extsh. r0, r4
/* 80AE5E98  40 81 00 08 */	ble lbl_80AE5EA0
/* 80AE5E9C  4B 7E 8E A0 */	b __dl__FPv
lbl_80AE5EA0:
/* 80AE5EA0  7F E3 FB 78 */	mr r3, r31
/* 80AE5EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5EAC  7C 08 03 A6 */	mtlr r0
/* 80AE5EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5EB4  4E 80 00 20 */	blr 
