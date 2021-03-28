lbl_80C18028:
/* 80C18028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1802C  7C 08 02 A6 */	mflr r0
/* 80C18030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18034  4B FF FB A1 */	bl execute__11daObjHFtr_cFv
/* 80C18038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1803C  7C 08 03 A6 */	mtlr r0
/* 80C18040  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18044  4E 80 00 20 */	blr 
