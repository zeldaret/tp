lbl_80C18008:
/* 80C18008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1800C  7C 08 02 A6 */	mflr r0
/* 80C18010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18014  4B FF FA AD */	bl Delete__11daObjHFtr_cFv
/* 80C18018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1801C  7C 08 03 A6 */	mtlr r0
/* 80C18020  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18024  4E 80 00 20 */	blr 
