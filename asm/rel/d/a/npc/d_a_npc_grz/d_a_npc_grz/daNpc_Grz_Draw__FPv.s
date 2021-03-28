lbl_809EE784:
/* 809EE784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE788  7C 08 02 A6 */	mflr r0
/* 809EE78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE790  4B FF AB 95 */	bl Draw__11daNpc_Grz_cFv
/* 809EE794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE798  7C 08 03 A6 */	mtlr r0
/* 809EE79C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE7A0  4E 80 00 20 */	blr 
