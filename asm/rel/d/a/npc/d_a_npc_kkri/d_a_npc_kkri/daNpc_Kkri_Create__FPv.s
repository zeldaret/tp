lbl_805520A0:
/* 805520A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805520A4  7C 08 02 A6 */	mflr r0
/* 805520A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805520AC  4B FF D4 4D */	bl create__12daNpc_Kkri_cFv
/* 805520B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805520B4  7C 08 03 A6 */	mtlr r0
/* 805520B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805520BC  4E 80 00 20 */	blr 
