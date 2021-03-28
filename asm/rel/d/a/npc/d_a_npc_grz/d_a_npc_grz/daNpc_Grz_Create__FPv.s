lbl_809EE724:
/* 809EE724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE728  7C 08 02 A6 */	mflr r0
/* 809EE72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE730  4B FF A4 71 */	bl create__11daNpc_Grz_cFv
/* 809EE734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE738  7C 08 03 A6 */	mtlr r0
/* 809EE73C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE740  4E 80 00 20 */	blr 
