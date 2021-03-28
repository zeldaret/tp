lbl_8054A52C:
/* 8054A52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A530  7C 08 02 A6 */	mflr r0
/* 8054A534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054A53C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054A540  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8054A544  4B AF 7F 24 */	b reset__14dEvt_control_cFv
/* 8054A548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A54C  7C 08 03 A6 */	mtlr r0
/* 8054A550  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A554  4E 80 00 20 */	blr 
