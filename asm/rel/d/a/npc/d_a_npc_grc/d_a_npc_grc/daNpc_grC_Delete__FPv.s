lbl_809CEBFC:
/* 809CEBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEC00  7C 08 02 A6 */	mflr r0
/* 809CEC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEC08  4B FF D1 BD */	bl Delete__11daNpc_grC_cFv
/* 809CEC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEC10  7C 08 03 A6 */	mtlr r0
/* 809CEC14  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEC18  4E 80 00 20 */	blr 
