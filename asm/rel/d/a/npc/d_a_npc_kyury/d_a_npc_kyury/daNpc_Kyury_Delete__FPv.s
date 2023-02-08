lbl_80A62590:
/* 80A62590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62594  7C 08 02 A6 */	mflr r0
/* 80A62598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6259C  4B FF E4 0D */	bl Delete__13daNpc_Kyury_cFv
/* 80A625A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A625A4  7C 08 03 A6 */	mtlr r0
/* 80A625A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A625AC  4E 80 00 20 */	blr 
