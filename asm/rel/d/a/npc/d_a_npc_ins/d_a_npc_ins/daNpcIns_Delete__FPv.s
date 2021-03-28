lbl_80A12580:
/* 80A12580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A12584  7C 08 02 A6 */	mflr r0
/* 80A12588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1258C  4B FF C9 B1 */	bl Delete__10daNpcIns_cFv
/* 80A12590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A12594  7C 08 03 A6 */	mtlr r0
/* 80A12598  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1259C  4E 80 00 20 */	blr 
