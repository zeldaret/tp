lbl_80CD7F20:
/* 80CD7F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7F24  7C 08 02 A6 */	mflr r0
/* 80CD7F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7F30  7C 7F 1B 78 */	mr r31, r3
/* 80CD7F34  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CD7F38  28 00 00 02 */	cmplwi r0, 2
/* 80CD7F3C  40 82 00 10 */	bne lbl_80CD7F4C
/* 80CD7F40  38 00 00 02 */	li r0, 2
/* 80CD7F44  98 1F 09 4B */	stb r0, 0x94b(r31)
/* 80CD7F48  48 00 00 2C */	b lbl_80CD7F74
lbl_80CD7F4C:
/* 80CD7F4C  A8 9F 09 4E */	lha r4, 0x94e(r31)
/* 80CD7F50  88 BF 09 4D */	lbz r5, 0x94d(r31)
/* 80CD7F54  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CD7F58  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CD7F5C  38 E0 00 00 */	li r7, 0
/* 80CD7F60  39 00 00 01 */	li r8, 1
/* 80CD7F64  4B 34 37 18 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CD7F68  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CD7F6C  60 00 00 02 */	ori r0, r0, 2
/* 80CD7F70  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CD7F74:
/* 80CD7F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7F7C  7C 08 03 A6 */	mtlr r0
/* 80CD7F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7F84  4E 80 00 20 */	blr 
