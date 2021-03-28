lbl_80CDA48C:
/* 80CDA48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA490  7C 08 02 A6 */	mflr r0
/* 80CDA494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA498  38 80 00 00 */	li r4, 0
/* 80CDA49C  38 A0 00 00 */	li r5, 0
/* 80CDA4A0  4B 36 F0 E0 */	b __ct__19dPa_followEcallBackFUcUc
/* 80CDA4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA4A8  7C 08 03 A6 */	mtlr r0
/* 80CDA4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA4B0  4E 80 00 20 */	blr 
