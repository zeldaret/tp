lbl_802662D8:
/* 802662D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802662DC  7C 08 02 A6 */	mflr r0
/* 802662E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802662E4  38 80 00 00 */	li r4, 0
/* 802662E8  4B FF FF C9 */	bl cNd_SetObject__FP10node_classPv
/* 802662EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802662F0  7C 08 03 A6 */	mtlr r0
/* 802662F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802662F8  4E 80 00 20 */	blr 
