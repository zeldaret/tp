lbl_805875A0:
/* 805875A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805875A4  7C 08 02 A6 */	mflr r0
/* 805875A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805875AC  4B FF F0 59 */	bl CreateHeap__15daObj_KBacket_cFv
/* 805875B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805875B4  7C 08 03 A6 */	mtlr r0
/* 805875B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805875BC  4E 80 00 20 */	blr 
