lbl_80A4768C:
/* 80A4768C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47690  7C 08 02 A6 */	mflr r0
/* 80A47694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47698  4B FF E4 45 */	bl create__14daNpc_Kolinb_cFv
/* 80A4769C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A476A0  7C 08 03 A6 */	mtlr r0
/* 80A476A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A476A8  4E 80 00 20 */	blr 
