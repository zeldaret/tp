lbl_80CB1598:
/* 80CB1598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB159C  7C 08 02 A6 */	mflr r0
/* 80CB15A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB15A4  4B FF FD A9 */	bl CreateHeap__13daObj_Pleaf_cFv
/* 80CB15A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB15AC  7C 08 03 A6 */	mtlr r0
/* 80CB15B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB15B4  4E 80 00 20 */	blr 
