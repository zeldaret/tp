lbl_80B70854:
/* 80B70854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70858  7C 08 02 A6 */	mflr r0
/* 80B7085C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70860  4B FF EE 39 */	bl Execute__12daNpc_ZelR_cFv
/* 80B70864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70868  7C 08 03 A6 */	mtlr r0
/* 80B7086C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70870  4E 80 00 20 */	blr 
