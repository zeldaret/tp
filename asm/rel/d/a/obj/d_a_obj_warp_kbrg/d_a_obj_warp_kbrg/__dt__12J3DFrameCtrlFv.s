lbl_80D2766C:
/* 80D2766C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D27670  7C 08 02 A6 */	mflr r0
/* 80D27674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D27678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2767C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D27680  41 82 00 1C */	beq lbl_80D2769C
/* 80D27684  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D27688  38 05 98 F4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D2768C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D27690  7C 80 07 35 */	extsh. r0, r4
/* 80D27694  40 81 00 08 */	ble lbl_80D2769C
/* 80D27698  4B 5A 76 A4 */	b __dl__FPv
lbl_80D2769C:
/* 80D2769C  7F E3 FB 78 */	mr r3, r31
/* 80D276A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D276A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D276A8  7C 08 03 A6 */	mtlr r0
/* 80D276AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D276B0  4E 80 00 20 */	blr 
