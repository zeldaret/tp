lbl_80C56950:
/* 80C56950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56954  7C 08 02 A6 */	mflr r0
/* 80C56958  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5695C  4B FF F5 19 */	bl create__12daLv1Cdl00_cFv
/* 80C56960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56964  7C 08 03 A6 */	mtlr r0
/* 80C56968  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5696C  4E 80 00 20 */	blr 
