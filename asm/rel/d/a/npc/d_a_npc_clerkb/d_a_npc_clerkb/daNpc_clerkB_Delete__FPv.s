lbl_809988FC:
/* 809988FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998900  7C 08 02 A6 */	mflr r0
/* 80998904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998908  4B FF DE BD */	bl Delete__14daNpc_clerkB_cFv
/* 8099890C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998910  7C 08 03 A6 */	mtlr r0
/* 80998914  38 21 00 10 */	addi r1, r1, 0x10
/* 80998918  4E 80 00 20 */	blr 
