lbl_80CB7824:
/* 80CB7824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB7828  7C 08 02 A6 */	mflr r0
/* 80CB782C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB7830  4B FF E7 59 */	bl CreateHeap__15daObj_Pumpkin_cFv
/* 80CB7834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB7838  7C 08 03 A6 */	mtlr r0
/* 80CB783C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB7840  4E 80 00 20 */	blr 
