lbl_809BD268:
/* 809BD268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD26C  7C 08 02 A6 */	mflr r0
/* 809BD270  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD274  4B FF EB B9 */	bl Delete__11daNpc_Gnd_cFv
/* 809BD278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD27C  7C 08 03 A6 */	mtlr r0
/* 809BD280  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD284  4E 80 00 20 */	blr 
