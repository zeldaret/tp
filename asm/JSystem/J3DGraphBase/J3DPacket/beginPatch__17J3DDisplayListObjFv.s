lbl_803126F4:
/* 803126F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803126F8  7C 08 02 A6 */	mflr r0
/* 803126FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312700  4B FF FF 45 */	bl beginDL__17J3DDisplayListObjFv
/* 80312704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312708  7C 08 03 A6 */	mtlr r0
/* 8031270C  38 21 00 10 */	addi r1, r1, 0x10
/* 80312710  4E 80 00 20 */	blr 
