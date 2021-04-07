lbl_80630E70:
/* 80630E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630E74  7C 08 02 A6 */	mflr r0
/* 80630E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630E80  7C 7F 1B 78 */	mr r31, r3
/* 80630E84  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80630E88  7C 83 23 78 */	mr r3, r4
/* 80630E8C  38 80 03 E8 */	li r4, 0x3e8
/* 80630E90  4B 9E EF F5 */	bl fopMsgM_messageSet__FUlUl
/* 80630E94  90 7F 0F DC */	stw r3, 0xfdc(r31)
/* 80630E98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630EA0  7C 08 03 A6 */	mtlr r0
/* 80630EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80630EA8  4E 80 00 20 */	blr 
