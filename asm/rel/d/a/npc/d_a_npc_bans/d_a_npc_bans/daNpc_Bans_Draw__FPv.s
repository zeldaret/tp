lbl_80966CE8:
/* 80966CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966CEC  7C 08 02 A6 */	mflr r0
/* 80966CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966CF4  4B FF C7 51 */	bl Draw__12daNpc_Bans_cFv
/* 80966CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966CFC  7C 08 03 A6 */	mtlr r0
/* 80966D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80966D04  4E 80 00 20 */	blr 
