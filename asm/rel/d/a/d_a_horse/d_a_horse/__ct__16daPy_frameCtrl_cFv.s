lbl_808453B0:
/* 808453B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808453B4  7C 08 02 A6 */	mflr r0
/* 808453B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808453BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808453C0  7C 7F 1B 78 */	mr r31, r3
/* 808453C4  3C 80 80 84 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80845B10@ha */
/* 808453C8  38 04 5B 10 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80845B10@l */
/* 808453CC  90 03 00 00 */	stw r0, 0(r3)
/* 808453D0  38 80 00 00 */	li r4, 0
/* 808453D4  4B AE 30 29 */	bl init__12J3DFrameCtrlFs
/* 808453D8  3C 60 80 84 */	lis r3, __vt__16daPy_frameCtrl_c@ha /* 0x80845A84@ha */
/* 808453DC  38 03 5A 84 */	addi r0, r3, __vt__16daPy_frameCtrl_c@l /* 0x80845A84@l */
/* 808453E0  90 1F 00 00 */	stw r0, 0(r31)
/* 808453E4  7F E3 FB 78 */	mr r3, r31
/* 808453E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808453EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808453F0  7C 08 03 A6 */	mtlr r0
/* 808453F4  38 21 00 10 */	addi r1, r1, 0x10
/* 808453F8  4E 80 00 20 */	blr 
