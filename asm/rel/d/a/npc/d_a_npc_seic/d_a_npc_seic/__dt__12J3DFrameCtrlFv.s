lbl_80AC8FA8:
/* 80AC8FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8FAC  7C 08 02 A6 */	mflr r0
/* 80AC8FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8FB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8FBC  41 82 00 1C */	beq lbl_80AC8FD8
/* 80AC8FC0  3C A0 80 AD */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AC8FC4  38 05 94 30 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AC8FC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC8FCC  7C 80 07 35 */	extsh. r0, r4
/* 80AC8FD0  40 81 00 08 */	ble lbl_80AC8FD8
/* 80AC8FD4  4B 80 5D 68 */	b __dl__FPv
lbl_80AC8FD8:
/* 80AC8FD8  7F E3 FB 78 */	mr r3, r31
/* 80AC8FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8FE4  7C 08 03 A6 */	mtlr r0
/* 80AC8FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8FEC  4E 80 00 20 */	blr 
