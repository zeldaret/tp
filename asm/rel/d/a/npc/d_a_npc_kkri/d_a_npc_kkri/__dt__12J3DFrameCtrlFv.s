lbl_80552D88:
/* 80552D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552D8C  7C 08 02 A6 */	mflr r0
/* 80552D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552D98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80552D9C  41 82 00 1C */	beq lbl_80552DB8
/* 80552DA0  3C A0 80 55 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80552DA4  38 05 3D 6C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80552DA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80552DAC  7C 80 07 35 */	extsh. r0, r4
/* 80552DB0  40 81 00 08 */	ble lbl_80552DB8
/* 80552DB4  4B D7 BF 88 */	b __dl__FPv
lbl_80552DB8:
/* 80552DB8  7F E3 FB 78 */	mr r3, r31
/* 80552DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552DC4  7C 08 03 A6 */	mtlr r0
/* 80552DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80552DCC  4E 80 00 20 */	blr 
