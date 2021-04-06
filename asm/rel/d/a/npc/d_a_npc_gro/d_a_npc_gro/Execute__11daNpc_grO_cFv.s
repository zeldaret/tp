lbl_809DB164:
/* 809DB164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB168  7C 08 02 A6 */	mflr r0
/* 809DB16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB170  4B 77 6E A5 */	bl execute__8daNpcF_cFv
/* 809DB174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB178  7C 08 03 A6 */	mtlr r0
/* 809DB17C  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB180  4E 80 00 20 */	blr 
