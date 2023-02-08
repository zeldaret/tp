lbl_80A476CC:
/* 80A476CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A476D0  7C 08 02 A6 */	mflr r0
/* 80A476D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A476D8  4B FF E9 99 */	bl Execute__14daNpc_Kolinb_cFv
/* 80A476DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A476E0  7C 08 03 A6 */	mtlr r0
/* 80A476E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A476E8  4E 80 00 20 */	blr 
