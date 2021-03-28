lbl_80B2BA08:
/* 80B2BA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BA0C  7C 08 02 A6 */	mflr r0
/* 80B2BA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BA14  4B FF AE E5 */	bl create__11daNpc_Uri_cFv
/* 80B2BA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BA1C  7C 08 03 A6 */	mtlr r0
/* 80B2BA20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BA24  4E 80 00 20 */	blr 
