lbl_80D3F25C:
/* 80D3F25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F260  7C 08 02 A6 */	mflr r0
/* 80D3F264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F268  4B FF FF 45 */	bl execute__13daObjZCloth_cFv
/* 80D3F26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F270  7C 08 03 A6 */	mtlr r0
/* 80D3F274  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F278  4E 80 00 20 */	blr 
