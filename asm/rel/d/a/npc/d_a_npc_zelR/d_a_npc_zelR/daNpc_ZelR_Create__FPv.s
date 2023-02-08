lbl_80B70814:
/* 80B70814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70818  7C 08 02 A6 */	mflr r0
/* 80B7081C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70820  4B FF E7 45 */	bl create__12daNpc_ZelR_cFv
/* 80B70824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70828  7C 08 03 A6 */	mtlr r0
/* 80B7082C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70830  4E 80 00 20 */	blr 
