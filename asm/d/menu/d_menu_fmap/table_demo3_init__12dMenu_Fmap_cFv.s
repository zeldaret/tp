lbl_801CAB88:
/* 801CAB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CAB8C  7C 08 02 A6 */	mflr r0
/* 801CAB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CAB98  7C 7F 1B 78 */	mr r31, r3
/* 801CAB9C  80 63 00 08 */	lwz r3, 8(r3)
/* 801CABA0  48 06 CF 41 */	bl setTalkHeap__12dMsgObject_cFPv
/* 801CABA4  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CABA8  38 80 00 00 */	li r4, 0
/* 801CABAC  38 A0 04 41 */	li r5, 0x441
/* 801CABB0  38 C0 00 00 */	li r6, 0
/* 801CABB4  38 E0 00 00 */	li r7, 0
/* 801CABB8  48 07 F3 D9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801CABBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CABC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CABC4  7C 08 03 A6 */	mtlr r0
/* 801CABC8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CABCC  4E 80 00 20 */	blr 
