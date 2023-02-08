lbl_8029CDC0:
/* 8029CDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029CDC4  7C 08 02 A6 */	mflr r0
/* 8029CDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029CDCC  38 80 00 02 */	li r4, 2
/* 8029CDD0  38 A0 00 01 */	li r5, 1
/* 8029CDD4  38 63 00 30 */	addi r3, r3, 0x30
/* 8029CDD8  48 0A 1D C1 */	bl OSJamMessage
/* 8029CDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029CDE0  7C 08 03 A6 */	mtlr r0
/* 8029CDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029CDE8  4E 80 00 20 */	blr 
