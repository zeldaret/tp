lbl_80A18F48:
/* 80A18F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A18F4C  7C 08 02 A6 */	mflr r0
/* 80A18F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A18F54  4B FF BF F9 */	bl Delete__13daNpc_Jagar_cFv
/* 80A18F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A18F5C  7C 08 03 A6 */	mtlr r0
/* 80A18F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80A18F64  4E 80 00 20 */	blr 
