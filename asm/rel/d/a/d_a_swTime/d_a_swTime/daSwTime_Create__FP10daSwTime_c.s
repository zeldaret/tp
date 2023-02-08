lbl_80D4F7A0:
/* 80D4F7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F7A4  7C 08 02 A6 */	mflr r0
/* 80D4F7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F7AC  4B FF FE B5 */	bl create__10daSwTime_cFv
/* 80D4F7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F7B4  7C 08 03 A6 */	mtlr r0
/* 80D4F7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F7BC  4E 80 00 20 */	blr 
