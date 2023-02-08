lbl_801CA7E0:
/* 801CA7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA7E4  7C 08 02 A6 */	mflr r0
/* 801CA7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA7EC  38 80 00 00 */	li r4, 0
/* 801CA7F0  38 A0 00 7D */	li r5, 0x7d
/* 801CA7F4  38 C0 00 00 */	li r6, 0
/* 801CA7F8  38 E0 00 00 */	li r7, 0
/* 801CA7FC  38 63 00 C4 */	addi r3, r3, 0xc4
/* 801CA800  48 07 F7 91 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801CA804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA808  7C 08 03 A6 */	mtlr r0
/* 801CA80C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA810  4E 80 00 20 */	blr 
