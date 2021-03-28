lbl_801BF8A0:
/* 801BF8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF8A4  7C 08 02 A6 */	mflr r0
/* 801BF8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF8AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF8B0  7C 7F 1B 78 */	mr r31, r3
/* 801BF8B4  38 00 00 01 */	li r0, 1
/* 801BF8B8  98 03 01 85 */	stb r0, 0x185(r3)
/* 801BF8BC  80 63 00 08 */	lwz r3, 8(r3)
/* 801BF8C0  80 63 0C 9C */	lwz r3, 0xc9c(r3)
/* 801BF8C4  48 07 82 1D */	bl setTalkHeap__12dMsgObject_cFPv
/* 801BF8C8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF8CC  38 63 0D 34 */	addi r3, r3, 0xd34
/* 801BF8D0  38 80 00 00 */	li r4, 0
/* 801BF8D4  38 A0 02 02 */	li r5, 0x202
/* 801BF8D8  38 C0 00 00 */	li r6, 0
/* 801BF8DC  38 E0 00 00 */	li r7, 0
/* 801BF8E0  48 08 A6 B1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801BF8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF8EC  7C 08 03 A6 */	mtlr r0
/* 801BF8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF8F4  4E 80 00 20 */	blr 
