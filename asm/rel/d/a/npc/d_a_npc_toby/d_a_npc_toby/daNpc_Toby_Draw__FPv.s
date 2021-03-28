lbl_80B23688:
/* 80B23688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2368C  7C 08 02 A6 */	mflr r0
/* 80B23690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23694  4B FF B8 E9 */	bl Draw__12daNpc_Toby_cFv
/* 80B23698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2369C  7C 08 03 A6 */	mtlr r0
/* 80B236A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B236A4  4E 80 00 20 */	blr 
