lbl_80B70874:
/* 80B70874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70878  7C 08 02 A6 */	mflr r0
/* 80B7087C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70880  4B FF EE 39 */	bl Draw__12daNpc_ZelR_cFv
/* 80B70884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70888  7C 08 03 A6 */	mtlr r0
/* 80B7088C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70890  4E 80 00 20 */	blr 
