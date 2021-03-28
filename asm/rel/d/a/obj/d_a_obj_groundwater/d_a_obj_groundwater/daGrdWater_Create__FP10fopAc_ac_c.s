lbl_80C14888:
/* 80C14888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1488C  7C 08 02 A6 */	mflr r0
/* 80C14890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14894  4B FF F1 51 */	bl create__12daGrdWater_cFv
/* 80C14898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1489C  7C 08 03 A6 */	mtlr r0
/* 80C148A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C148A4  4E 80 00 20 */	blr 
