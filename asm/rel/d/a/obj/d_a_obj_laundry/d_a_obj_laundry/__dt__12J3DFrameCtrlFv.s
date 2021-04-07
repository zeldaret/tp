lbl_80C51A98:
/* 80C51A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51A9C  7C 08 02 A6 */	mflr r0
/* 80C51AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51AA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51AAC  41 82 00 1C */	beq lbl_80C51AC8
/* 80C51AB0  3C A0 80 C5 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C52174@ha */
/* 80C51AB4  38 05 21 74 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C52174@l */
/* 80C51AB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C51ABC  7C 80 07 35 */	extsh. r0, r4
/* 80C51AC0  40 81 00 08 */	ble lbl_80C51AC8
/* 80C51AC4  4B 67 D2 79 */	bl __dl__FPv
lbl_80C51AC8:
/* 80C51AC8  7F E3 FB 78 */	mr r3, r31
/* 80C51ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51AD4  7C 08 03 A6 */	mtlr r0
/* 80C51AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51ADC  4E 80 00 20 */	blr 
