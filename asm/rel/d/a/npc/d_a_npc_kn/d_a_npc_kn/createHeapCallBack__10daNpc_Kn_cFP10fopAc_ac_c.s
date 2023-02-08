lbl_80A2B764:
/* 80A2B764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2B768  7C 08 02 A6 */	mflr r0
/* 80A2B76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2B770  4B FF FB 09 */	bl CreateHeap__10daNpc_Kn_cFv
/* 80A2B774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2B778  7C 08 03 A6 */	mtlr r0
/* 80A2B77C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2B780  4E 80 00 20 */	blr 
