lbl_80C18048:
/* 80C18048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1804C  7C 08 02 A6 */	mflr r0
/* 80C18050  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18054  4B FF FA DD */	bl draw__11daObjHFtr_cFv
/* 80C18058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1805C  7C 08 03 A6 */	mtlr r0
/* 80C18060  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18064  4E 80 00 20 */	blr 
