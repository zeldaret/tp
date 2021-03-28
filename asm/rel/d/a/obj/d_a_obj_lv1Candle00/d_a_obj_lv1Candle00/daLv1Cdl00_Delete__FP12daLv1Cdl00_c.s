lbl_80C56930:
/* 80C56930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56934  7C 08 02 A6 */	mflr r0
/* 80C56938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5693C  4B FF FF 55 */	bl Delete__12daLv1Cdl00_cFv
/* 80C56940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56944  7C 08 03 A6 */	mtlr r0
/* 80C56948  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5694C  4E 80 00 20 */	blr 
