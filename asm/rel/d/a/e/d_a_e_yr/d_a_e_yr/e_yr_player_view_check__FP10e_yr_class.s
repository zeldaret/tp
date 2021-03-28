lbl_80822954:
/* 80822954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80822958  7C 08 02 A6 */	mflr r0
/* 8082295C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80822960  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80822964  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80822968  7C 7E 1B 78 */	mr r30, r3
/* 8082296C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80822970  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80822974  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80822978  3C 80 80 83 */	lis r4, l_e_yrHIO@ha
/* 8082297C  38 84 8D BC */	addi r4, r4, l_e_yrHIO@l
/* 80822980  88 04 00 06 */	lbz r0, 6(r4)
/* 80822984  28 00 00 00 */	cmplwi r0, 0
/* 80822988  41 82 00 0C */	beq lbl_80822994
/* 8082298C  38 60 00 01 */	li r3, 1
/* 80822990  48 00 01 54 */	b lbl_80822AE4
lbl_80822994:
/* 80822994  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 80822998  28 00 00 FF */	cmplwi r0, 0xff
/* 8082299C  41 82 00 4C */	beq lbl_808229E8
/* 808229A0  C0 7E 06 CC */	lfs f3, 0x6cc(r30)
/* 808229A4  3C 80 80 83 */	lis r4, lit_3902@ha
/* 808229A8  C0 44 88 50 */	lfs f2, lit_3902@l(r4)
/* 808229AC  3C 80 80 83 */	lis r4, lit_4221@ha
/* 808229B0  C8 24 88 90 */	lfd f1, lit_4221@l(r4)
/* 808229B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 808229B8  3C 00 43 30 */	lis r0, 0x4330
/* 808229BC  90 01 00 08 */	stw r0, 8(r1)
/* 808229C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 808229C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 808229C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 808229CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 808229D0  41 81 00 10 */	bgt lbl_808229E0
/* 808229D4  4B FF FE A1 */	bl e_yr_player_bg_check__FP10e_yr_class
/* 808229D8  2C 03 00 00 */	cmpwi r3, 0
/* 808229DC  41 82 00 74 */	beq lbl_80822A50
lbl_808229E0:
/* 808229E0  38 60 00 00 */	li r3, 0
/* 808229E4  48 00 01 00 */	b lbl_80822AE4
lbl_808229E8:
/* 808229E8  88 1E 06 69 */	lbz r0, 0x669(r30)
/* 808229EC  28 00 00 04 */	cmplwi r0, 4
/* 808229F0  41 82 00 0C */	beq lbl_808229FC
/* 808229F4  28 00 00 07 */	cmplwi r0, 7
/* 808229F8  40 82 00 34 */	bne lbl_80822A2C
lbl_808229FC:
/* 808229FC  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 80822A00  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80822A04  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80822A08  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 80822A0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80822A10  41 81 00 14 */	bgt lbl_80822A24
/* 80822A14  7F C3 F3 78 */	mr r3, r30
/* 80822A18  4B FF FE 5D */	bl e_yr_player_bg_check__FP10e_yr_class
/* 80822A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80822A20  41 82 00 30 */	beq lbl_80822A50
lbl_80822A24:
/* 80822A24  38 60 00 00 */	li r3, 0
/* 80822A28  48 00 00 BC */	b lbl_80822AE4
lbl_80822A2C:
/* 80822A2C  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 80822A30  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 80822A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80822A38  41 81 00 10 */	bgt lbl_80822A48
/* 80822A3C  4B FF FE 39 */	bl e_yr_player_bg_check__FP10e_yr_class
/* 80822A40  2C 03 00 00 */	cmpwi r3, 0
/* 80822A44  41 82 00 0C */	beq lbl_80822A50
lbl_80822A48:
/* 80822A48  38 60 00 00 */	li r3, 0
/* 80822A4C  48 00 00 98 */	b lbl_80822AE4
lbl_80822A50:
/* 80822A50  88 1E 06 69 */	lbz r0, 0x669(r30)
/* 80822A54  28 00 00 04 */	cmplwi r0, 4
/* 80822A58  41 82 00 0C */	beq lbl_80822A64
/* 80822A5C  28 00 00 07 */	cmplwi r0, 7
/* 80822A60  40 82 00 18 */	bne lbl_80822A78
lbl_80822A64:
/* 80822A64  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80822A68  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80822A6C  A8 A3 00 6E */	lha r5, 0x6e(r3)
/* 80822A70  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 80822A74  48 00 00 14 */	b lbl_80822A88
lbl_80822A78:
/* 80822A78  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80822A7C  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80822A80  A8 A3 00 6C */	lha r5, 0x6c(r3)
/* 80822A84  C0 43 00 70 */	lfs f2, 0x70(r3)
lbl_80822A88:
/* 80822A88  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80822A8C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80822A90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80822A94  FC 00 02 10 */	fabs f0, f0
/* 80822A98  FC 00 00 18 */	frsp f0, f0
/* 80822A9C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80822AA0  40 80 00 40 */	bge lbl_80822AE0
/* 80822AA4  A8 9E 06 C8 */	lha r4, 0x6c8(r30)
/* 80822AA8  A8 7E 0E 84 */	lha r3, 0xe84(r30)
/* 80822AAC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80822AB0  7C 03 00 50 */	subf r0, r3, r0
/* 80822AB4  7C 04 00 50 */	subf r0, r4, r0
/* 80822AB8  7C 00 07 35 */	extsh. r0, r0
/* 80822ABC  40 80 00 0C */	bge lbl_80822AC8
/* 80822AC0  7C 00 00 D0 */	neg r0, r0
/* 80822AC4  7C 00 07 34 */	extsh r0, r0
lbl_80822AC8:
/* 80822AC8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80822ACC  7C A0 07 34 */	extsh r0, r5
/* 80822AD0  7C 03 00 00 */	cmpw r3, r0
/* 80822AD4  40 80 00 0C */	bge lbl_80822AE0
/* 80822AD8  38 60 00 01 */	li r3, 1
/* 80822ADC  48 00 00 08 */	b lbl_80822AE4
lbl_80822AE0:
/* 80822AE0  38 60 00 00 */	li r3, 0
lbl_80822AE4:
/* 80822AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80822AE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80822AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80822AF0  7C 08 03 A6 */	mtlr r0
/* 80822AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80822AF8  4E 80 00 20 */	blr 
