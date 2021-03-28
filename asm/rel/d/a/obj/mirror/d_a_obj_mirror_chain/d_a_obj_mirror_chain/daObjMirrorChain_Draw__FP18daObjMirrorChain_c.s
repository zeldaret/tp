lbl_80C97698:
/* 80C97698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9769C  7C 08 02 A6 */	mflr r0
/* 80C976A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C976A4  48 00 00 15 */	bl draw__18daObjMirrorChain_cFv
/* 80C976A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C976AC  7C 08 03 A6 */	mtlr r0
/* 80C976B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C976B4  4E 80 00 20 */	blr 
