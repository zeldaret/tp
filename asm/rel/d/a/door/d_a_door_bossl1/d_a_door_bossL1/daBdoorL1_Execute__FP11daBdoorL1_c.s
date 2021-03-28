lbl_804E4978:
/* 804E4978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E497C  7C 08 02 A6 */	mflr r0
/* 804E4980  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4984  4B FF FC C9 */	bl execute__11daBdoorL1_cFv
/* 804E4988  38 60 00 01 */	li r3, 1
/* 804E498C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4990  7C 08 03 A6 */	mtlr r0
/* 804E4994  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4998  4E 80 00 20 */	blr 
