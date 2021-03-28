lbl_80A18F28:
/* 80A18F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A18F2C  7C 08 02 A6 */	mflr r0
/* 80A18F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A18F34  4B FF B9 25 */	bl create__13daNpc_Jagar_cFv
/* 80A18F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A18F3C  7C 08 03 A6 */	mtlr r0
/* 80A18F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80A18F44  4E 80 00 20 */	blr 
