lbl_80966CC8:
/* 80966CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966CCC  7C 08 02 A6 */	mflr r0
/* 80966CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966CD4  4B FF C6 99 */	bl Execute__12daNpc_Bans_cFv
/* 80966CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966CDC  7C 08 03 A6 */	mtlr r0
/* 80966CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80966CE4  4E 80 00 20 */	blr 
