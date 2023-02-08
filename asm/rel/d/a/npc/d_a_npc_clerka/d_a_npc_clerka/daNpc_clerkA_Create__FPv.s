lbl_809947E4:
/* 809947E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809947E8  7C 08 02 A6 */	mflr r0
/* 809947EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809947F0  4B FF DE 7D */	bl create__14daNpc_clerkA_cFv
/* 809947F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809947F8  7C 08 03 A6 */	mtlr r0
/* 809947FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80994800  4E 80 00 20 */	blr 
