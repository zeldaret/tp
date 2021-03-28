lbl_80AEDEF0:
/* 80AEDEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDEF4  7C 08 02 A6 */	mflr r0
/* 80AEDEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDEFC  4B FF F1 FD */	bl Delete__12daNpc_solA_cFv
/* 80AEDF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDF04  7C 08 03 A6 */	mtlr r0
/* 80AEDF08  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDF0C  4E 80 00 20 */	blr 
