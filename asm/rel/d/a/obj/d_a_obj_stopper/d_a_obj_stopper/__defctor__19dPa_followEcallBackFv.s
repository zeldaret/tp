lbl_80CED4C8:
/* 80CED4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED4CC  7C 08 02 A6 */	mflr r0
/* 80CED4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED4D4  38 80 00 00 */	li r4, 0
/* 80CED4D8  38 A0 00 00 */	li r5, 0
/* 80CED4DC  4B 35 C0 A5 */	bl __ct__19dPa_followEcallBackFUcUc
/* 80CED4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED4E4  7C 08 03 A6 */	mtlr r0
/* 80CED4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED4EC  4E 80 00 20 */	blr 
