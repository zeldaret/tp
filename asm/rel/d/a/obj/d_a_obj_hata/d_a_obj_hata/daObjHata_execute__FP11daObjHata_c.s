lbl_80C19430:
/* 80C19430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C19434  7C 08 02 A6 */	mflr r0
/* 80C19438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1943C  4B FF FC 25 */	bl execute__11daObjHata_cFv
/* 80C19440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C19444  7C 08 03 A6 */	mtlr r0
/* 80C19448  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1944C  4E 80 00 20 */	blr 
