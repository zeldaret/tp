lbl_80B6F77C:
/* 80B6F77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6F780  7C 08 02 A6 */	mflr r0
/* 80B6F784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6F788  4B FF FA 71 */	bl CreateHeap__12daNpc_ZelR_cFv
/* 80B6F78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6F790  7C 08 03 A6 */	mtlr r0
/* 80B6F794  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6F798  4E 80 00 20 */	blr 
