lbl_80D51D80:
/* 80D51D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D51D84  7C 08 02 A6 */	mflr r0
/* 80D51D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D51D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D51D90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D51D94  41 82 00 1C */	beq lbl_80D51DB0
/* 80D51D98  3C A0 80 D5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D51D9C  38 05 25 64 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D51DA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D51DA4  7C 80 07 35 */	extsh. r0, r4
/* 80D51DA8  40 81 00 08 */	ble lbl_80D51DB0
/* 80D51DAC  4B 57 CF 90 */	b __dl__FPv
lbl_80D51DB0:
/* 80D51DB0  7F E3 FB 78 */	mr r3, r31
/* 80D51DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D51DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51DBC  7C 08 03 A6 */	mtlr r0
/* 80D51DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51DC4  4E 80 00 20 */	blr 
