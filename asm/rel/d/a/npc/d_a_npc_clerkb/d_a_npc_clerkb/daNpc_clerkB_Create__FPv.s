lbl_809988DC:
/* 809988DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809988E0  7C 08 02 A6 */	mflr r0
/* 809988E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809988E8  4B FF D7 A9 */	bl create__14daNpc_clerkB_cFv
/* 809988EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809988F0  7C 08 03 A6 */	mtlr r0
/* 809988F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809988F8  4E 80 00 20 */	blr 
