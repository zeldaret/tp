lbl_809E979C:
/* 809E979C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E97A0  7C 08 02 A6 */	mflr r0
/* 809E97A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E97A8  4B FF F6 C1 */	bl CreateHeap__11daNpc_Grz_cFv
/* 809E97AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E97B0  7C 08 03 A6 */	mtlr r0
/* 809E97B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809E97B8  4E 80 00 20 */	blr 
