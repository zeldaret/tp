lbl_80D3F23C:
/* 80D3F23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F240  7C 08 02 A6 */	mflr r0
/* 80D3F244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F248  4B FF FF 89 */	bl draw__13daObjZCloth_cFv
/* 80D3F24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F250  7C 08 03 A6 */	mtlr r0
/* 80D3F254  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F258  4E 80 00 20 */	blr 
