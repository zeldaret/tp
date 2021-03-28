lbl_80559D9C:
/* 80559D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559DA0  7C 08 02 A6 */	mflr r0
/* 80559DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559DAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80559DB0  41 82 00 1C */	beq lbl_80559DCC
/* 80559DB4  3C A0 80 56 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80559DB8  38 05 B2 58 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80559DBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80559DC0  7C 80 07 35 */	extsh. r0, r4
/* 80559DC4  40 81 00 08 */	ble lbl_80559DCC
/* 80559DC8  4B D7 4F 74 */	b __dl__FPv
lbl_80559DCC:
/* 80559DCC  7F E3 FB 78 */	mr r3, r31
/* 80559DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559DD8  7C 08 03 A6 */	mtlr r0
/* 80559DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80559DE0  4E 80 00 20 */	blr 
