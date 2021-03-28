lbl_8045E4BC:
/* 8045E4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E4C0  7C 08 02 A6 */	mflr r0
/* 8045E4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E4C8  4B FF FD 25 */	bl execute__12daDbDoor00_cFv
/* 8045E4CC  38 60 00 01 */	li r3, 1
/* 8045E4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E4D4  7C 08 03 A6 */	mtlr r0
/* 8045E4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E4DC  4E 80 00 20 */	blr 
