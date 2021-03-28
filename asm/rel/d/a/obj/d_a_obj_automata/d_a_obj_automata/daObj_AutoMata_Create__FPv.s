lbl_80BA6A10:
/* 80BA6A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6A14  7C 08 02 A6 */	mflr r0
/* 80BA6A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6A1C  4B FF EF 75 */	bl create__16daObj_AutoMata_cFv
/* 80BA6A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6A24  7C 08 03 A6 */	mtlr r0
/* 80BA6A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6A2C  4E 80 00 20 */	blr 
