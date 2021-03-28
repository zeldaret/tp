lbl_80C1F7D4:
/* 80C1F7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F7D8  7C 08 02 A6 */	mflr r0
/* 80C1F7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F7E0  4B FF FD B9 */	bl create__12daHsTarget_cFv
/* 80C1F7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F7E8  7C 08 03 A6 */	mtlr r0
/* 80C1F7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F7F0  4E 80 00 20 */	blr 
