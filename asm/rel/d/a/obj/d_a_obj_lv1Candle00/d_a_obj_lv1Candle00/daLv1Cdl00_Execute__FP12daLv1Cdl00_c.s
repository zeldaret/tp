lbl_80C56910:
/* 80C56910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56914  7C 08 02 A6 */	mflr r0
/* 80C56918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5691C  4B FF FA 6D */	bl Execute__12daLv1Cdl00_cFv
/* 80C56920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56924  7C 08 03 A6 */	mtlr r0
/* 80C56928  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5692C  4E 80 00 20 */	blr 
