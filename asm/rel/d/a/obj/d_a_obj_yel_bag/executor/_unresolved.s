lbl_80D3C058:
/* 80D3C058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C05C  7C 08 02 A6 */	mflr r0
/* 80D3C060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C064  4B 52 70 2C */	b ModuleUnresolved
/* 80D3C068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C06C  7C 08 03 A6 */	mtlr r0
/* 80D3C070  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C074  4E 80 00 20 */	blr 
