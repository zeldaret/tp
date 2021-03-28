lbl_809EE764:
/* 809EE764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE768  7C 08 02 A6 */	mflr r0
/* 809EE76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE770  4B FF AB 71 */	bl Execute__11daNpc_Grz_cFv
/* 809EE774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE778  7C 08 03 A6 */	mtlr r0
/* 809EE77C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE780  4E 80 00 20 */	blr 
