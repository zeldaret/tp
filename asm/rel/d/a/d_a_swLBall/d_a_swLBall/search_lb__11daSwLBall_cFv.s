lbl_80D4ED80:
/* 80D4ED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4ED84  7C 08 02 A6 */	mflr r0
/* 80D4ED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4ED8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4ED90  7C 7F 1B 78 */	mr r31, r3
/* 80D4ED94  38 A0 00 00 */	li r5, 0
/* 80D4ED98  3C 60 80 D5 */	lis r3, l_target_info_count@ha
/* 80D4ED9C  90 A3 F5 A8 */	stw r5, l_target_info_count@l(r3)
/* 80D4EDA0  7C A3 2B 78 */	mr r3, r5
/* 80D4EDA4  3C 80 80 D5 */	lis r4, l_target_info@ha
/* 80D4EDA8  38 84 F5 A0 */	addi r4, r4, l_target_info@l
/* 80D4EDAC  38 00 00 02 */	li r0, 2
/* 80D4EDB0  7C 09 03 A6 */	mtctr r0
lbl_80D4EDB4:
/* 80D4EDB4  7C A4 19 2E */	stwx r5, r4, r3
/* 80D4EDB8  38 63 00 04 */	addi r3, r3, 4
/* 80D4EDBC  42 00 FF F8 */	bdnz lbl_80D4EDB4
/* 80D4EDC0  3C 60 80 D5 */	lis r3, s_lb_sub__FPvPv@ha
/* 80D4EDC4  38 63 EA F8 */	addi r3, r3, s_lb_sub__FPvPv@l
/* 80D4EDC8  7F E4 FB 78 */	mr r4, r31
/* 80D4EDCC  4B 2D 25 6C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D4EDD0  39 40 00 00 */	li r10, 0
/* 80D4EDD4  38 60 00 00 */	li r3, 0
/* 80D4EDD8  3C 80 80 D5 */	lis r4, l_target_info@ha
/* 80D4EDDC  38 E4 F5 A0 */	addi r7, r4, l_target_info@l
/* 80D4EDE0  3C 80 80 D5 */	lis r4, l_target_info_count@ha
/* 80D4EDE4  38 A4 F5 A8 */	addi r5, r4, l_target_info_count@l
/* 80D4EDE8  48 00 00 A4 */	b lbl_80D4EE8C
lbl_80D4EDEC:
/* 80D4EDEC  7C 87 18 2E */	lwzx r4, r7, r3
/* 80D4EDF0  28 04 00 00 */	cmplwi r4, 0
/* 80D4EDF4  41 82 00 90 */	beq lbl_80D4EE84
/* 80D4EDF8  41 82 00 0C */	beq lbl_80D4EE04
/* 80D4EDFC  81 04 00 04 */	lwz r8, 4(r4)
/* 80D4EE00  48 00 00 08 */	b lbl_80D4EE08
lbl_80D4EE04:
/* 80D4EE04  39 00 FF FF */	li r8, -1
lbl_80D4EE08:
/* 80D4EE08  3C 08 00 01 */	addis r0, r8, 1
/* 80D4EE0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4EE10  41 82 00 74 */	beq lbl_80D4EE84
/* 80D4EE14  38 C0 FF FF */	li r6, -1
/* 80D4EE18  39 20 00 00 */	li r9, 0
/* 80D4EE1C  38 80 00 00 */	li r4, 0
/* 80D4EE20  38 00 00 02 */	li r0, 2
/* 80D4EE24  7C 09 03 A6 */	mtctr r0
lbl_80D4EE28:
/* 80D4EE28  38 04 05 68 */	addi r0, r4, 0x568
/* 80D4EE2C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80D4EE30  7C 08 00 40 */	cmplw r8, r0
/* 80D4EE34  40 82 00 0C */	bne lbl_80D4EE40
/* 80D4EE38  7D 26 4B 78 */	mr r6, r9
/* 80D4EE3C  48 00 00 10 */	b lbl_80D4EE4C
lbl_80D4EE40:
/* 80D4EE40  39 29 00 01 */	addi r9, r9, 1
/* 80D4EE44  38 84 00 04 */	addi r4, r4, 4
/* 80D4EE48  42 00 FF E0 */	bdnz lbl_80D4EE28
lbl_80D4EE4C:
/* 80D4EE4C  2C 06 00 00 */	cmpwi r6, 0
/* 80D4EE50  40 80 00 34 */	bge lbl_80D4EE84
/* 80D4EE54  38 80 00 00 */	li r4, 0
/* 80D4EE58  38 00 00 02 */	li r0, 2
/* 80D4EE5C  7C 09 03 A6 */	mtctr r0
lbl_80D4EE60:
/* 80D4EE60  39 24 05 68 */	addi r9, r4, 0x568
/* 80D4EE64  7C DF 48 2E */	lwzx r6, r31, r9
/* 80D4EE68  3C 06 00 01 */	addis r0, r6, 1
/* 80D4EE6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4EE70  40 82 00 0C */	bne lbl_80D4EE7C
/* 80D4EE74  7D 1F 49 2E */	stwx r8, r31, r9
/* 80D4EE78  48 00 00 0C */	b lbl_80D4EE84
lbl_80D4EE7C:
/* 80D4EE7C  38 84 00 04 */	addi r4, r4, 4
/* 80D4EE80  42 00 FF E0 */	bdnz lbl_80D4EE60
lbl_80D4EE84:
/* 80D4EE84  39 4A 00 01 */	addi r10, r10, 1
/* 80D4EE88  38 63 00 04 */	addi r3, r3, 4
lbl_80D4EE8C:
/* 80D4EE8C  80 05 00 00 */	lwz r0, 0(r5)
/* 80D4EE90  7C 0A 00 00 */	cmpw r10, r0
/* 80D4EE94  41 80 FF 58 */	blt lbl_80D4EDEC
/* 80D4EE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4EE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EEA0  7C 08 03 A6 */	mtlr r0
/* 80D4EEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EEA8  4E 80 00 20 */	blr 
