lbl_80833D30:
/* 80833D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80833D34  7C 08 02 A6 */	mflr r0
/* 80833D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80833D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80833D40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80833D44  7C 7F 1B 78 */	mr r31, r3
/* 80833D48  3C 80 80 83 */	lis r4, lit_3909@ha
/* 80833D4C  3B C4 52 D0 */	addi r30, r4, lit_3909@l
/* 80833D50  80 03 06 64 */	lwz r0, 0x664(r3)
/* 80833D54  2C 00 00 01 */	cmpwi r0, 1
/* 80833D58  41 82 00 84 */	beq lbl_80833DDC
/* 80833D5C  40 80 01 40 */	bge lbl_80833E9C
/* 80833D60  2C 00 00 00 */	cmpwi r0, 0
/* 80833D64  40 80 00 08 */	bge lbl_80833D6C
/* 80833D68  48 00 01 34 */	b lbl_80833E9C
lbl_80833D6C:
/* 80833D6C  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 80833D70  28 00 00 02 */	cmplwi r0, 2
/* 80833D74  40 82 00 1C */	bne lbl_80833D90
/* 80833D78  38 80 00 09 */	li r4, 9
/* 80833D7C  38 A0 00 02 */	li r5, 2
/* 80833D80  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80833D84  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80833D88  4B FF F4 5D */	bl setBck__8daE_ZS_cFiUcff
/* 80833D8C  48 00 00 48 */	b lbl_80833DD4
lbl_80833D90:
/* 80833D90  4B A3 3A DC */	b cM_rnd__Fv
/* 80833D94  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80833D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80833D9C  40 80 00 20 */	bge lbl_80833DBC
/* 80833DA0  7F E3 FB 78 */	mr r3, r31
/* 80833DA4  38 80 00 07 */	li r4, 7
/* 80833DA8  38 A0 00 02 */	li r5, 2
/* 80833DAC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80833DB0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80833DB4  4B FF F4 31 */	bl setBck__8daE_ZS_cFiUcff
/* 80833DB8  48 00 00 1C */	b lbl_80833DD4
lbl_80833DBC:
/* 80833DBC  7F E3 FB 78 */	mr r3, r31
/* 80833DC0  38 80 00 08 */	li r4, 8
/* 80833DC4  38 A0 00 02 */	li r5, 2
/* 80833DC8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80833DCC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80833DD0  4B FF F4 15 */	bl setBck__8daE_ZS_cFiUcff
lbl_80833DD4:
/* 80833DD4  38 00 00 01 */	li r0, 1
/* 80833DD8  90 1F 06 64 */	stw r0, 0x664(r31)
lbl_80833DDC:
/* 80833DDC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80833DE0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80833DE4  FC 00 00 1E */	fctiwz f0, f0
/* 80833DE8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80833DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80833DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80833DF4  40 82 00 2C */	bne lbl_80833E20
/* 80833DF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BA@ha */
/* 80833DFC  38 03 04 BA */	addi r0, r3, 0x04BA /* 0x000704BA@l */
/* 80833E00  90 01 00 08 */	stw r0, 8(r1)
/* 80833E04  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80833E08  38 81 00 08 */	addi r4, r1, 8
/* 80833E0C  38 A0 FF FF */	li r5, -1
/* 80833E10  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 80833E14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80833E18  7D 89 03 A6 */	mtctr r12
/* 80833E1C  4E 80 04 21 */	bctrl 
lbl_80833E20:
/* 80833E20  3C 60 80 83 */	lis r3, s_BossSearch__FPvPv@ha
/* 80833E24  38 63 36 4C */	addi r3, r3, s_BossSearch__FPvPv@l
/* 80833E28  7F E4 FB 78 */	mr r4, r31
/* 80833E2C  4B 7E D5 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80833E30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80833E34  40 82 00 10 */	bne lbl_80833E44
/* 80833E38  7F E3 FB 78 */	mr r3, r31
/* 80833E3C  4B 7E 5E 40 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80833E40  48 00 00 C4 */	b lbl_80833F04
lbl_80833E44:
/* 80833E44  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 80833E48  28 00 00 00 */	cmplwi r0, 0
/* 80833E4C  40 82 00 14 */	bne lbl_80833E60
/* 80833E50  7F E3 FB 78 */	mr r3, r31
/* 80833E54  4B FF F8 45 */	bl mBossHandCheck__8daE_ZS_cFv
/* 80833E58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80833E5C  41 82 00 40 */	beq lbl_80833E9C
lbl_80833E60:
/* 80833E60  88 7F 06 72 */	lbz r3, 0x672(r31)
/* 80833E64  28 03 00 01 */	cmplwi r3, 1
/* 80833E68  40 82 00 10 */	bne lbl_80833E78
/* 80833E6C  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 80833E70  28 00 00 00 */	cmplwi r0, 0
/* 80833E74  40 82 00 28 */	bne lbl_80833E9C
lbl_80833E78:
/* 80833E78  28 03 00 02 */	cmplwi r3, 2
/* 80833E7C  40 82 00 10 */	bne lbl_80833E8C
/* 80833E80  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 80833E84  28 00 00 00 */	cmplwi r0, 0
/* 80833E88  40 82 00 14 */	bne lbl_80833E9C
lbl_80833E8C:
/* 80833E8C  7F E3 FB 78 */	mr r3, r31
/* 80833E90  38 80 00 03 */	li r4, 3
/* 80833E94  38 A0 00 0A */	li r5, 0xa
/* 80833E98  4B FF F3 F9 */	bl setActionMode__8daE_ZS_cFii
lbl_80833E9C:
/* 80833E9C  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 80833EA0  28 00 00 00 */	cmplwi r0, 0
/* 80833EA4  40 82 00 30 */	bne lbl_80833ED4
/* 80833EA8  7F E3 FB 78 */	mr r3, r31
/* 80833EAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80833EB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80833EB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80833EB8  4B 7E 69 28 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80833EBC  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80833EC0  38 63 54 B0 */	addi r3, r3, l_HIO@l
/* 80833EC4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80833EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80833ECC  4C 40 13 82 */	cror 2, 0, 2
/* 80833ED0  40 82 00 34 */	bne lbl_80833F04
lbl_80833ED4:
/* 80833ED4  7F E3 FB 78 */	mr r3, r31
/* 80833ED8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80833EDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80833EE0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80833EE4  4B 7E 68 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80833EE8  7C 64 1B 78 */	mr r4, r3
/* 80833EEC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80833EF0  38 A0 00 08 */	li r5, 8
/* 80833EF4  38 C0 10 00 */	li r6, 0x1000
/* 80833EF8  4B A3 C7 10 */	b cLib_addCalcAngleS2__FPssss
/* 80833EFC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80833F00  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80833F04:
/* 80833F04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80833F08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80833F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80833F10  7C 08 03 A6 */	mtlr r0
/* 80833F14  38 21 00 20 */	addi r1, r1, 0x20
/* 80833F18  4E 80 00 20 */	blr 
