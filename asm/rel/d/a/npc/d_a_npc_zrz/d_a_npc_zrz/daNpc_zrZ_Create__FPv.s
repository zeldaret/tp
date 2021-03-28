lbl_80B9A504:
/* 80B9A504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A508  7C 08 02 A6 */	mflr r0
/* 80B9A50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A510  4B FF 9D 2D */	bl create__11daNpc_zrZ_cFv
/* 80B9A514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A518  7C 08 03 A6 */	mtlr r0
/* 80B9A51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A520  4E 80 00 20 */	blr 
