lbl_80CD7EBC:
/* 80CD7EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7EC0  7C 08 02 A6 */	mflr r0
/* 80CD7EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7ECC  7C 7F 1B 78 */	mr r31, r3
/* 80CD7ED0  88 03 09 37 */	lbz r0, 0x937(r3)
/* 80CD7ED4  28 00 00 00 */	cmplwi r0, 0
/* 80CD7ED8  41 82 00 34 */	beq lbl_80CD7F0C
/* 80CD7EDC  38 00 00 01 */	li r0, 1
/* 80CD7EE0  98 1F 09 4B */	stb r0, 0x94b(r31)
/* 80CD7EE4  A8 9F 09 4E */	lha r4, 0x94e(r31)
/* 80CD7EE8  88 BF 09 4D */	lbz r5, 0x94d(r31)
/* 80CD7EEC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CD7EF0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CD7EF4  38 E0 00 00 */	li r7, 0
/* 80CD7EF8  39 00 00 01 */	li r8, 1
/* 80CD7EFC  4B 34 37 81 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CD7F00  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CD7F04  60 00 00 02 */	ori r0, r0, 2
/* 80CD7F08  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CD7F0C:
/* 80CD7F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7F14  7C 08 03 A6 */	mtlr r0
/* 80CD7F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7F1C  4E 80 00 20 */	blr 
