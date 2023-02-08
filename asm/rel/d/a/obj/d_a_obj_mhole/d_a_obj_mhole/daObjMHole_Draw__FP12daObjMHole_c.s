lbl_80C93D00:
/* 80C93D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93D04  7C 08 02 A6 */	mflr r0
/* 80C93D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93D0C  4B FF FD D1 */	bl draw__12daObjMHole_cFv
/* 80C93D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93D14  7C 08 03 A6 */	mtlr r0
/* 80C93D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93D1C  4E 80 00 20 */	blr 
