lbl_80BC30D4:
/* 80BC30D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC30D8  7C 08 02 A6 */	mflr r0
/* 80BC30DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC30E0  4B FF F9 39 */	bl create__10daBsGate_cFv
/* 80BC30E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC30E8  7C 08 03 A6 */	mtlr r0
/* 80BC30EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC30F0  4E 80 00 20 */	blr 
