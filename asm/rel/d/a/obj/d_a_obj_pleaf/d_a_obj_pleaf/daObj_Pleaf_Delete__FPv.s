lbl_80CB1708:
/* 80CB1708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB170C  7C 08 02 A6 */	mflr r0
/* 80CB1710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1714  4B FF FC B1 */	bl Delete__13daObj_Pleaf_cFv
/* 80CB1718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB171C  7C 08 03 A6 */	mtlr r0
/* 80CB1720  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1724  4E 80 00 20 */	blr 
