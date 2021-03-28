lbl_80C19450:
/* 80C19450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C19454  7C 08 02 A6 */	mflr r0
/* 80C19458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1945C  4B FF FB 61 */	bl draw__11daObjHata_cFv
/* 80C19460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C19464  7C 08 03 A6 */	mtlr r0
/* 80C19468  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1946C  4E 80 00 20 */	blr 
