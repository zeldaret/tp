lbl_80048A70:
/* 80048A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048A74  7C 08 02 A6 */	mflr r0
/* 80048A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80048A80  7C 7F 1B 78 */	mr r31, r3
/* 80048A84  80 C3 00 04 */	lwz r6, 4(r3)
/* 80048A88  A0 06 00 F8 */	lhz r0, 0xf8(r6)
/* 80048A8C  28 00 00 02 */	cmplwi r0, 2
/* 80048A90  41 82 00 6C */	beq lbl_80048AFC
/* 80048A94  88 06 00 FE */	lbz r0, 0xfe(r6)
/* 80048A98  28 00 00 FF */	cmplwi r0, 0xff
/* 80048A9C  41 82 00 28 */	beq lbl_80048AC4
/* 80048AA0  A8 A6 00 FC */	lha r5, 0xfc(r6)
/* 80048AA4  7C C3 33 78 */	mr r3, r6
/* 80048AA8  7C 04 03 78 */	mr r4, r0
/* 80048AAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80048AB0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80048AB4  A0 FF 00 0C */	lhz r7, 0xc(r31)
/* 80048AB8  39 00 00 00 */	li r8, 0
/* 80048ABC  4B FD 2C F9 */	bl fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80048AC0  48 00 00 24 */	b lbl_80048AE4
lbl_80048AC4:
/* 80048AC4  A8 86 00 FC */	lha r4, 0xfc(r6)
/* 80048AC8  7C C3 33 78 */	mr r3, r6
/* 80048ACC  7C 05 03 78 */	mr r5, r0
/* 80048AD0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80048AD4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80048AD8  38 E0 00 00 */	li r7, 0
/* 80048ADC  A1 1F 00 0C */	lhz r8, 0xc(r31)
/* 80048AE0  4B FD 2B 9D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80048AE4:
/* 80048AE4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80048AE8  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80048AEC  60 00 00 02 */	ori r0, r0, 2
/* 80048AF0  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 80048AF4  38 60 00 01 */	li r3, 1
/* 80048AF8  48 00 00 10 */	b lbl_80048B08
lbl_80048AFC:
/* 80048AFC  3C 80 80 42 */	lis r4, l_runAction@ha
/* 80048B00  38 84 46 F8 */	addi r4, r4, l_runAction@l
/* 80048B04  4B FF FE 6D */	bl func_80048970
lbl_80048B08:
/* 80048B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048B10  7C 08 03 A6 */	mtlr r0
/* 80048B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80048B18  4E 80 00 20 */	blr 
