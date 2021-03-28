lbl_80A2C190:
/* 80A2C190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2C194  7C 08 02 A6 */	mflr r0
/* 80A2C198  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2C19C  4B FF FF 61 */	bl setParamTeach05__10daNpc_Kn_cFv
/* 80A2C1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2C1A4  7C 08 03 A6 */	mtlr r0
/* 80A2C1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2C1AC  4E 80 00 20 */	blr 
