lbl_80316668:
/* 80316668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031666C  7C 08 02 A6 */	mflr r0
/* 80316670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316674  80 83 00 48 */	lwz r4, 0x48(r3)
/* 80316678  4B FF FC CD */	bl makeDisplayList_private__11J3DMaterialFP17J3DDisplayListObj
/* 8031667C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316680  7C 08 03 A6 */	mtlr r0
/* 80316684  38 21 00 10 */	addi r1, r1, 0x10
/* 80316688  4E 80 00 20 */	blr 
