lbl_80B8ED94:
/* 80B8ED94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8ED98  7C 08 02 A6 */	mflr r0
/* 80B8ED9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8EDA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8EDA4  4B 7D 34 38 */	b _savegpr_29
/* 80B8EDA8  7C 7E 1B 78 */	mr r30, r3
/* 80B8EDAC  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B8EDB0  3B E4 36 E8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80B8EDB4  48 00 1F 95 */	bl doEvent__11daNpc_zrC_cFv
/* 80B8EDB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B8EDBC  40 82 00 10 */	bne lbl_80B8EDCC
/* 80B8EDC0  7F C3 F3 78 */	mr r3, r30
/* 80B8EDC4  38 80 00 01 */	li r4, 1
/* 80B8EDC8  48 00 1E 6D */	bl doNormalAction__11daNpc_zrC_cFi
lbl_80B8EDCC:
/* 80B8EDCC  3B A0 00 00 */	li r29, 0
/* 80B8EDD0  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80B8EDD4  28 00 00 00 */	cmplwi r0, 0
/* 80B8EDD8  40 82 00 1C */	bne lbl_80B8EDF4
/* 80B8EDDC  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B8EDE0  28 00 00 00 */	cmplwi r0, 0
/* 80B8EDE4  41 82 00 14 */	beq lbl_80B8EDF8
/* 80B8EDE8  4B 4A 0C 6C */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B8EDEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8EDF0  40 82 00 08 */	bne lbl_80B8EDF8
lbl_80B8EDF4:
/* 80B8EDF4  3B A0 00 01 */	li r29, 1
lbl_80B8EDF8:
/* 80B8EDF8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80B8EDFC  41 82 00 0C */	beq lbl_80B8EE08
/* 80B8EE00  38 00 00 00 */	li r0, 0
/* 80B8EE04  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B8EE08:
/* 80B8EE08  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha
/* 80B8EE0C  38 63 31 FC */	addi r3, r3, m__17daNpc_zrC_Param_c@l
/* 80B8EE10  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80B8EE14  28 00 00 00 */	cmplwi r0, 0
/* 80B8EE18  40 82 00 C4 */	bne lbl_80B8EEDC
/* 80B8EE1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B8EE20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8EE24  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80B8EE28  28 03 00 00 */	cmplwi r3, 0
/* 80B8EE2C  41 82 00 30 */	beq lbl_80B8EE5C
/* 80B8EE30  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 80B8EE34  28 00 00 00 */	cmplwi r0, 0
/* 80B8EE38  41 82 00 A4 */	beq lbl_80B8EEDC
/* 80B8EE3C  38 00 00 00 */	li r0, 0
/* 80B8EE40  28 03 00 00 */	cmplwi r3, 0
/* 80B8EE44  41 82 00 0C */	beq lbl_80B8EE50
/* 80B8EE48  28 03 00 02 */	cmplwi r3, 2
/* 80B8EE4C  40 82 00 08 */	bne lbl_80B8EE54
lbl_80B8EE50:
/* 80B8EE50  38 00 00 01 */	li r0, 1
lbl_80B8EE54:
/* 80B8EE54  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B8EE58  41 82 00 84 */	beq lbl_80B8EEDC
lbl_80B8EE5C:
/* 80B8EE5C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80B8EE60  28 00 00 00 */	cmplwi r0, 0
/* 80B8EE64  41 82 00 24 */	beq lbl_80B8EE88
/* 80B8EE68  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 80B8EE6C  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80B8EE70  7C 63 02 14 */	add r3, r3, r0
/* 80B8EE74  80 03 00 04 */	lwz r0, 4(r3)
/* 80B8EE78  54 00 10 3A */	slwi r0, r0, 2
/* 80B8EE7C  38 7F 02 60 */	addi r3, r31, 0x260
/* 80B8EE80  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B8EE84  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80B8EE88:
/* 80B8EE88  7F C3 F3 78 */	mr r3, r30
/* 80B8EE8C  88 9E 0E 38 */	lbz r4, 0xe38(r30)
/* 80B8EE90  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80B8EE94  54 00 18 38 */	slwi r0, r0, 3
/* 80B8EE98  38 BF 01 D0 */	addi r5, r31, 0x1d0
/* 80B8EE9C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B8EEA0  54 00 10 3A */	slwi r0, r0, 2
/* 80B8EEA4  38 BF 01 E0 */	addi r5, r31, 0x1e0
/* 80B8EEA8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B8EEAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B8EEB0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B8EEB4  38 E0 00 28 */	li r7, 0x28
/* 80B8EEB8  39 00 00 FF */	li r8, 0xff
/* 80B8EEBC  39 20 00 01 */	li r9, 1
/* 80B8EEC0  4B 5C 49 BC */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
/* 80B8EEC4  88 1E 0E 28 */	lbz r0, 0xe28(r30)
/* 80B8EEC8  28 00 00 02 */	cmplwi r0, 2
/* 80B8EECC  40 82 00 10 */	bne lbl_80B8EEDC
/* 80B8EED0  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80B8EED4  60 00 00 20 */	ori r0, r0, 0x20
/* 80B8EED8  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80B8EEDC:
/* 80B8EEDC  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 80B8EEE0  28 00 00 00 */	cmplwi r0, 0
/* 80B8EEE4  41 82 00 1C */	beq lbl_80B8EF00
/* 80B8EEE8  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B8EEEC  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B8EEF0  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80B8EEF4  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80B8EEF8  38 00 00 00 */	li r0, 0
/* 80B8EEFC  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_80B8EF00:
/* 80B8EF00  7F C3 F3 78 */	mr r3, r30
/* 80B8EF04  48 00 10 11 */	bl playExpression__11daNpc_zrC_cFv
/* 80B8EF08  7F C3 F3 78 */	mr r3, r30
/* 80B8EF0C  48 00 15 D1 */	bl playMotion__11daNpc_zrC_cFv
/* 80B8EF10  38 60 00 01 */	li r3, 1
/* 80B8EF14  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8EF18  4B 7D 33 10 */	b _restgpr_29
/* 80B8EF1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8EF20  7C 08 03 A6 */	mtlr r0
/* 80B8EF24  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8EF28  4E 80 00 20 */	blr 
