lbl_80731D4C:
/* 80731D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80731D50  7C 08 02 A6 */	mflr r0
/* 80731D54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80731D58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80731D5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80731D60  7C 7E 1B 78 */	mr r30, r3
/* 80731D64  3C 80 80 73 */	lis r4, lit_3911@ha
/* 80731D68  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 80731D6C  38 80 00 01 */	li r4, 1
/* 80731D70  98 83 06 EA */	stb r4, 0x6ea(r3)
/* 80731D74  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80731D78  B0 03 06 D4 */	sth r0, 0x6d4(r3)
/* 80731D7C  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 80731D80  2C 00 00 02 */	cmpwi r0, 2
/* 80731D84  41 82 00 F4 */	beq lbl_80731E78
/* 80731D88  40 80 00 10 */	bge lbl_80731D98
/* 80731D8C  2C 00 00 00 */	cmpwi r0, 0
/* 80731D90  40 80 00 14 */	bge lbl_80731DA4
/* 80731D94  48 00 01 90 */	b lbl_80731F24
lbl_80731D98:
/* 80731D98  2C 00 00 04 */	cmpwi r0, 4
/* 80731D9C  40 80 01 88 */	bge lbl_80731F24
/* 80731DA0  48 00 00 90 */	b lbl_80731E30
lbl_80731DA4:
/* 80731DA4  98 9E 06 E8 */	stb r4, 0x6e8(r30)
/* 80731DA8  4B FF BF E5 */	bl offTgSph__8daE_OC_cFv
/* 80731DAC  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80731DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80731DB4  40 82 00 18 */	bne lbl_80731DCC
/* 80731DB8  38 00 00 02 */	li r0, 2
/* 80731DBC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80731DC0  38 00 00 1E */	li r0, 0x1e
/* 80731DC4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80731DC8  48 00 01 5C */	b lbl_80731F24
lbl_80731DCC:
/* 80731DCC  38 00 00 2D */	li r0, 0x2d
/* 80731DD0  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80731DD4  7F C3 F3 78 */	mr r3, r30
/* 80731DD8  38 80 00 0E */	li r4, 0xe
/* 80731DDC  38 A0 00 00 */	li r5, 0
/* 80731DE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80731DE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731DE8  4B FF C4 8D */	bl setBck__8daE_OC_cFiUcff
/* 80731DEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018C@ha */
/* 80731DF0  38 03 01 8C */	addi r0, r3, 0x018C /* 0x0007018C@l */
/* 80731DF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80731DF8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80731DFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80731E00  38 A0 FF FF */	li r5, -1
/* 80731E04  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80731E08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80731E0C  7D 89 03 A6 */	mtctr r12
/* 80731E10  4E 80 04 21 */	bctrl 
/* 80731E14  38 00 00 03 */	li r0, 3
/* 80731E18  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80731E1C  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 80731E20  38 00 FF E8 */	li r0, -24
/* 80731E24  7C 60 00 38 */	and r0, r3, r0
/* 80731E28  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80731E2C  48 00 00 F8 */	b lbl_80731F24
lbl_80731E30:
/* 80731E30  4B FF C5 4D */	bl setSpitEffect__8daE_OC_cFv
/* 80731E34  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80731E38  38 63 00 0C */	addi r3, r3, 0xc
/* 80731E3C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80731E40  4B BF 65 EC */	b checkPass__12J3DFrameCtrlFf
/* 80731E44  2C 03 00 00 */	cmpwi r3, 0
/* 80731E48  41 82 00 30 */	beq lbl_80731E78
/* 80731E4C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 80731E50  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 80731E54  90 01 00 08 */	stw r0, 8(r1)
/* 80731E58  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80731E5C  38 81 00 08 */	addi r4, r1, 8
/* 80731E60  38 A0 00 00 */	li r5, 0
/* 80731E64  38 C0 FF FF */	li r6, -1
/* 80731E68  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80731E6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80731E70  7D 89 03 A6 */	mtctr r12
/* 80731E74  4E 80 04 21 */	bctrl 
lbl_80731E78:
/* 80731E78  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80731E7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80731E80  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731E84  4B B3 E8 BC */	b cLib_chaseF__FPfff
/* 80731E88  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80731E8C  2C 00 00 00 */	cmpwi r0, 0
/* 80731E90  40 82 00 94 */	bne lbl_80731F24
/* 80731E94  80 9E 06 A4 */	lwz r4, 0x6a4(r30)
/* 80731E98  3C 60 80 73 */	lis r3, stringBase0@ha
/* 80731E9C  38 03 5D 0C */	addi r0, r3, stringBase0@l
/* 80731EA0  7C 04 00 40 */	cmplw r4, r0
/* 80731EA4  40 82 00 20 */	bne lbl_80731EC4
/* 80731EA8  7F C3 F3 78 */	mr r3, r30
/* 80731EAC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80731EB0  38 A0 00 0A */	li r5, 0xa
/* 80731EB4  38 C0 00 00 */	li r6, 0
/* 80731EB8  38 E0 00 04 */	li r7, 4
/* 80731EBC  4B 8E AC 1C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80731EC0  48 00 00 1C */	b lbl_80731EDC
lbl_80731EC4:
/* 80731EC4  7F C3 F3 78 */	mr r3, r30
/* 80731EC8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80731ECC  38 A0 00 0A */	li r5, 0xa
/* 80731ED0  38 C0 00 00 */	li r6, 0
/* 80731ED4  38 E0 00 34 */	li r7, 0x34
/* 80731ED8  4B 8E AC 00 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_80731EDC:
/* 80731EDC  7F C3 F3 78 */	mr r3, r30
/* 80731EE0  4B 8E 7D 9C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80731EE4  88 9E 06 E0 */	lbz r4, 0x6e0(r30)
/* 80731EE8  28 04 00 FF */	cmplwi r4, 0xff
/* 80731EEC  41 82 00 38 */	beq lbl_80731F24
/* 80731EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80731EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80731EF8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80731EFC  7C 05 07 74 */	extsb r5, r0
/* 80731F00  4B 90 34 60 */	b isSwitch__10dSv_info_cCFii
/* 80731F04  2C 03 00 00 */	cmpwi r3, 0
/* 80731F08  40 82 00 1C */	bne lbl_80731F24
/* 80731F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80731F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80731F14  88 9E 06 E0 */	lbz r4, 0x6e0(r30)
/* 80731F18  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80731F1C  7C 05 07 74 */	extsb r5, r0
/* 80731F20  4B 90 32 E0 */	b onSwitch__10dSv_info_cFii
lbl_80731F24:
/* 80731F24  88 1E 06 E8 */	lbz r0, 0x6e8(r30)
/* 80731F28  28 00 00 00 */	cmplwi r0, 0
/* 80731F2C  41 82 00 18 */	beq lbl_80731F44
/* 80731F30  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80731F34  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80731F38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731F3C  C0 7F 01 4C */	lfs f3, 0x14c(r31)
/* 80731F40  4B B3 DA FC */	b cLib_addCalc2__FPffff
lbl_80731F44:
/* 80731F44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80731F48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80731F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80731F50  7C 08 03 A6 */	mtlr r0
/* 80731F54  38 21 00 20 */	addi r1, r1, 0x20
/* 80731F58  4E 80 00 20 */	blr 
