lbl_80A12560:
/* 80A12560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A12564  7C 08 02 A6 */	mflr r0
/* 80A12568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1256C  4B FF C0 F5 */	bl Create__10daNpcIns_cFv
/* 80A12570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A12574  7C 08 03 A6 */	mtlr r0
/* 80A12578  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1257C  4E 80 00 20 */	blr 
