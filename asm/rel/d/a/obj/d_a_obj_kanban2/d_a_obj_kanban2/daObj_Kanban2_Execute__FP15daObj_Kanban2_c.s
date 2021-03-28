lbl_80584EB0:
/* 80584EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584EB4  7C 08 02 A6 */	mflr r0
/* 80584EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584EBC  4B FF FF 35 */	bl execute__15daObj_Kanban2_cFv
/* 80584EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584EC4  7C 08 03 A6 */	mtlr r0
/* 80584EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80584ECC  4E 80 00 20 */	blr 
