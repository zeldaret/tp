lbl_80637FA0:
/* 80637FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637FA4  7C 08 02 A6 */	mflr r0
/* 80637FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637FAC  4B FF FE 65 */	bl execute__8daB_YO_cFv
/* 80637FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637FB4  7C 08 03 A6 */	mtlr r0
/* 80637FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80637FBC  4E 80 00 20 */	blr 
