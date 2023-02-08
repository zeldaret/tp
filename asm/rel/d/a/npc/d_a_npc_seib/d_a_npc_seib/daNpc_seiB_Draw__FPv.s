lbl_80AC626C:
/* 80AC626C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6270  7C 08 02 A6 */	mflr r0
/* 80AC6274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6278  4B FF F2 FD */	bl Draw__12daNpc_seiB_cFv
/* 80AC627C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6280  7C 08 03 A6 */	mtlr r0
/* 80AC6284  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6288  4E 80 00 20 */	blr 
