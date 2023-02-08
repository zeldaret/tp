lbl_80A62570:
/* 80A62570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62574  7C 08 02 A6 */	mflr r0
/* 80A62578  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6257C  4B FF DC 9D */	bl create__13daNpc_Kyury_cFv
/* 80A62580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62584  7C 08 03 A6 */	mtlr r0
/* 80A62588  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6258C  4E 80 00 20 */	blr 
