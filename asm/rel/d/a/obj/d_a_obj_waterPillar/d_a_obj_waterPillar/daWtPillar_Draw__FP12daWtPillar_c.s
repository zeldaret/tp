lbl_80D2DEB4:
/* 80D2DEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DEB8  7C 08 02 A6 */	mflr r0
/* 80D2DEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DEC0  4B FF FE F9 */	bl draw__12daWtPillar_cFv
/* 80D2DEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DEC8  7C 08 03 A6 */	mtlr r0
/* 80D2DECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DED0  4E 80 00 20 */	blr 
