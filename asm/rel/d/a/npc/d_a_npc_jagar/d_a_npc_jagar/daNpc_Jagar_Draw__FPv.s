lbl_80A18F88:
/* 80A18F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A18F8C  7C 08 02 A6 */	mflr r0
/* 80A18F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A18F94  4B FF C0 0D */	bl Draw__13daNpc_Jagar_cFv
/* 80A18F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A18F9C  7C 08 03 A6 */	mtlr r0
/* 80A18FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A18FA4  4E 80 00 20 */	blr 
