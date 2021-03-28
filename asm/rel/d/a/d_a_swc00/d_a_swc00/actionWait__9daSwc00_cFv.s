lbl_805A19A4:
/* 805A19A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A19A8  7C 08 02 A6 */	mflr r0
/* 805A19AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A19B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A19B4  7C 7F 1B 78 */	mr r31, r3
/* 805A19B8  88 03 05 84 */	lbz r0, 0x584(r3)
/* 805A19BC  28 00 00 00 */	cmplwi r0, 0
/* 805A19C0  41 82 00 54 */	beq lbl_805A1A14
/* 805A19C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A19C8  54 00 46 3E */	srwi r0, r0, 0x18
/* 805A19CC  28 00 00 FF */	cmplwi r0, 0xff
/* 805A19D0  41 82 00 3C */	beq lbl_805A1A0C
/* 805A19D4  38 00 00 01 */	li r0, 1
/* 805A19D8  98 1F 05 82 */	stb r0, 0x582(r31)
/* 805A19DC  A8 9F 05 80 */	lha r4, 0x580(r31)
/* 805A19E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A19E4  54 05 46 3E */	srwi r5, r0, 0x18
/* 805A19E8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 805A19EC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 805A19F0  38 E0 00 00 */	li r7, 0
/* 805A19F4  39 00 00 01 */	li r8, 1
/* 805A19F8  4B A7 9C 84 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 805A19FC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A1A00  60 00 00 02 */	ori r0, r0, 2
/* 805A1A04  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805A1A08  48 00 00 0C */	b lbl_805A1A14
lbl_805A1A0C:
/* 805A1A0C  38 00 00 03 */	li r0, 3
/* 805A1A10  98 1F 05 82 */	stb r0, 0x582(r31)
lbl_805A1A14:
/* 805A1A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1A1C  7C 08 03 A6 */	mtlr r0
/* 805A1A20  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1A24  4E 80 00 20 */	blr 
