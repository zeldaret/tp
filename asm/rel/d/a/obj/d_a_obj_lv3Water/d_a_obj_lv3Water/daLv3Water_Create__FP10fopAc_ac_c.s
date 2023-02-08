lbl_80C59C14:
/* 80C59C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59C18  7C 08 02 A6 */	mflr r0
/* 80C59C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59C20  4B FF EE 9D */	bl create__12daLv3Water_cFv
/* 80C59C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59C28  7C 08 03 A6 */	mtlr r0
/* 80C59C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59C30  4E 80 00 20 */	blr 
