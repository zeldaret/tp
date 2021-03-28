lbl_80CB1748:
/* 80CB1748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB174C  7C 08 02 A6 */	mflr r0
/* 80CB1750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1754  4B FF FD 81 */	bl Draw__13daObj_Pleaf_cFv
/* 80CB1758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB175C  7C 08 03 A6 */	mtlr r0
/* 80CB1760  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1764  4E 80 00 20 */	blr 
