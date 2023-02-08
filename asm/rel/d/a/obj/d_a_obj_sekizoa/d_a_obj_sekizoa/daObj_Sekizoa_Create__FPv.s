lbl_80CD4778:
/* 80CD4778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD477C  7C 08 02 A6 */	mflr r0
/* 80CD4780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4784  4B FF 9D ED */	bl create__15daObj_Sekizoa_cFv
/* 80CD4788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD478C  7C 08 03 A6 */	mtlr r0
/* 80CD4790  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4794  4E 80 00 20 */	blr 
