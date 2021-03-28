lbl_80C958E0:
/* 80C958E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C958E4  7C 08 02 A6 */	mflr r0
/* 80C958E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C958EC  4B FF E8 DD */	bl create__11daObj_Mie_cFv
/* 80C958F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C958F4  7C 08 03 A6 */	mtlr r0
/* 80C958F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C958FC  4E 80 00 20 */	blr 
