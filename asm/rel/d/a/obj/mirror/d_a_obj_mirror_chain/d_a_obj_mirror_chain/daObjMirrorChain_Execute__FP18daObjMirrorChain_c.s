lbl_80C97968:
/* 80C97968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9796C  7C 08 02 A6 */	mflr r0
/* 80C97970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97974  48 00 00 15 */	bl execute__18daObjMirrorChain_cFv
/* 80C97978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9797C  7C 08 03 A6 */	mtlr r0
/* 80C97980  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97984  4E 80 00 20 */	blr 
