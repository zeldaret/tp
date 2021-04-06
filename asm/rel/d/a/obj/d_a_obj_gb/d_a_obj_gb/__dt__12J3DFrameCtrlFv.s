lbl_80BF6A98:
/* 80BF6A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6A9C  7C 08 02 A6 */	mflr r0
/* 80BF6AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF6AA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF6AAC  41 82 00 1C */	beq lbl_80BF6AC8
/* 80BF6AB0  3C A0 80 BF */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BF6E8C@ha */
/* 80BF6AB4  38 05 6E 8C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BF6E8C@l */
/* 80BF6AB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF6ABC  7C 80 07 35 */	extsh. r0, r4
/* 80BF6AC0  40 81 00 08 */	ble lbl_80BF6AC8
/* 80BF6AC4  4B 6D 82 79 */	bl __dl__FPv
lbl_80BF6AC8:
/* 80BF6AC8  7F E3 FB 78 */	mr r3, r31
/* 80BF6ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF6AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF6AD4  7C 08 03 A6 */	mtlr r0
/* 80BF6AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6ADC  4E 80 00 20 */	blr 
