lbl_80D3BE88:
/* 80D3BE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BE8C  7C 08 02 A6 */	mflr r0
/* 80D3BE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BE94  4B FF FF 5D */	bl draw__13daObjWSword_cFv
/* 80D3BE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BE9C  7C 08 03 A6 */	mtlr r0
/* 80D3BEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BEA4  4E 80 00 20 */	blr 
