lbl_80966C88:
/* 80966C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966C8C  7C 08 02 A6 */	mflr r0
/* 80966C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966C94  4B FF BE 0D */	bl create__12daNpc_Bans_cFv
/* 80966C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966C9C  7C 08 03 A6 */	mtlr r0
/* 80966CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80966CA4  4E 80 00 20 */	blr 
