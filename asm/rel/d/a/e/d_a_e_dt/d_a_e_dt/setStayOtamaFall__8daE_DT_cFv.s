lbl_806AFE24:
/* 806AFE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AFE28  7C 08 02 A6 */	mflr r0
/* 806AFE2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AFE30  39 61 00 20 */	addi r11, r1, 0x20
/* 806AFE34  4B CB 23 A0 */	b _savegpr_27
/* 806AFE38  7C 7B 1B 78 */	mr r27, r3
/* 806AFE3C  80 03 07 04 */	lwz r0, 0x704(r3)
/* 806AFE40  54 1C 08 3C */	slwi r28, r0, 1
/* 806AFE44  3C 60 80 6B */	lis r3, m_fall_no__6E_DT_n@ha
/* 806AFE48  3B A3 63 30 */	addi r29, r3, m_fall_no__6E_DT_n@l
/* 806AFE4C  3C 60 80 6B */	lis r3, s_fall_otama__FPvPv@ha
/* 806AFE50  3B C3 FD 94 */	addi r30, r3, s_fall_otama__FPvPv@l
/* 806AFE54  3B E0 00 04 */	li r31, 4
/* 806AFE58  48 00 00 28 */	b lbl_806AFE80
lbl_806AFE5C:
/* 806AFE5C  20 1C 00 13 */	subfic r0, r28, 0x13
/* 806AFE60  90 1D 00 00 */	stw r0, 0(r29)
/* 806AFE64  7F C3 F3 78 */	mr r3, r30
/* 806AFE68  7F 64 DB 78 */	mr r4, r27
/* 806AFE6C  4B 97 14 CC */	b fpcEx_Search__FPFPvPv_PvPv
/* 806AFE70  28 03 00 00 */	cmplwi r3, 0
/* 806AFE74  41 82 00 08 */	beq lbl_806AFE7C
/* 806AFE78  93 E3 06 78 */	stw r31, 0x678(r3)
lbl_806AFE7C:
/* 806AFE7C  3B 9C 00 01 */	addi r28, r28, 1
lbl_806AFE80:
/* 806AFE80  80 7B 07 04 */	lwz r3, 0x704(r27)
/* 806AFE84  38 03 00 01 */	addi r0, r3, 1
/* 806AFE88  54 00 08 3C */	slwi r0, r0, 1
/* 806AFE8C  7C 1C 00 00 */	cmpw r28, r0
/* 806AFE90  41 80 FF CC */	blt lbl_806AFE5C
/* 806AFE94  39 61 00 20 */	addi r11, r1, 0x20
/* 806AFE98  4B CB 23 88 */	b _restgpr_27
/* 806AFE9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AFEA0  7C 08 03 A6 */	mtlr r0
/* 806AFEA4  38 21 00 20 */	addi r1, r1, 0x20
/* 806AFEA8  4E 80 00 20 */	blr 
