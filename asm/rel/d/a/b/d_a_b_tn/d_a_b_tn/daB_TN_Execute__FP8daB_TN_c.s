lbl_8062C7A0:
/* 8062C7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C7A4  7C 08 02 A6 */	mflr r0
/* 8062C7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C7AC  4B FF FE 09 */	bl execute__8daB_TN_cFv
/* 8062C7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C7B4  7C 08 03 A6 */	mtlr r0
/* 8062C7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C7BC  4E 80 00 20 */	blr 
