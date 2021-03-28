lbl_807A1DB8:
/* 807A1DB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A1DBC  7C 08 02 A6 */	mflr r0
/* 807A1DC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A1DC4  39 61 00 40 */	addi r11, r1, 0x40
/* 807A1DC8  4B BC 04 08 */	b _savegpr_26
/* 807A1DCC  7C 7D 1B 78 */	mr r29, r3
/* 807A1DD0  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A1DD4  3B C4 68 24 */	addi r30, r4, lit_3903@l
/* 807A1DD8  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807A1DDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A1DE0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807A1DE4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1DE8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807A1DEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A1DF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A1DF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1DF8  4C 40 13 82 */	cror 2, 0, 2
/* 807A1DFC  40 82 00 18 */	bne lbl_807A1E14
/* 807A1E00  38 00 00 0D */	li r0, 0xd
/* 807A1E04  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A1E08  38 00 00 00 */	li r0, 0
/* 807A1E0C  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1E10  48 00 01 7C */	b lbl_807A1F8C
lbl_807A1E14:
/* 807A1E14  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A1E18  2C 00 00 01 */	cmpwi r0, 1
/* 807A1E1C  41 82 00 3C */	beq lbl_807A1E58
/* 807A1E20  40 80 01 4C */	bge lbl_807A1F6C
/* 807A1E24  2C 00 00 00 */	cmpwi r0, 0
/* 807A1E28  40 80 00 08 */	bge lbl_807A1E30
/* 807A1E2C  48 00 01 40 */	b lbl_807A1F6C
lbl_807A1E30:
/* 807A1E30  38 00 00 01 */	li r0, 1
/* 807A1E34  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1E38  38 80 00 17 */	li r4, 0x17
/* 807A1E3C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A1E40  38 A0 00 00 */	li r5, 0
/* 807A1E44  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1E48  4B FF C0 05 */	bl anm_init__FP10e_st_classifUcf
/* 807A1E4C  38 00 00 00 */	li r0, 0
/* 807A1E50  98 1D 0F 84 */	stb r0, 0xf84(r29)
/* 807A1E54  48 00 01 18 */	b lbl_807A1F6C
lbl_807A1E58:
/* 807A1E58  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1E5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807A1E60  FC 00 00 1E */	fctiwz f0, f0
/* 807A1E64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A1E68  83 61 00 1C */	lwz r27, 0x1c(r1)
/* 807A1E6C  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 807A1E70  41 80 00 68 */	blt lbl_807A1ED8
/* 807A1E74  2C 1B 00 2A */	cmpwi r27, 0x2a
/* 807A1E78  41 81 00 60 */	bgt lbl_807A1ED8
/* 807A1E7C  3B 40 00 00 */	li r26, 0
/* 807A1E80  3B 80 00 00 */	li r28, 0
lbl_807A1E84:
/* 807A1E84  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807A1E88  7C 07 07 74 */	extsb r7, r0
/* 807A1E8C  93 81 00 08 */	stw r28, 8(r1)
/* 807A1E90  38 60 01 C0 */	li r3, 0x1c0
/* 807A1E94  28 1D 00 00 */	cmplwi r29, 0
/* 807A1E98  41 82 00 0C */	beq lbl_807A1EA4
/* 807A1E9C  80 9D 00 04 */	lwz r4, 4(r29)
/* 807A1EA0  48 00 00 08 */	b lbl_807A1EA8
lbl_807A1EA4:
/* 807A1EA4  38 80 FF FF */	li r4, -1
lbl_807A1EA8:
/* 807A1EA8  88 BD 0F 84 */	lbz r5, 0xf84(r29)
/* 807A1EAC  38 DD 07 04 */	addi r6, r29, 0x704
/* 807A1EB0  39 00 00 00 */	li r8, 0
/* 807A1EB4  39 20 00 00 */	li r9, 0
/* 807A1EB8  39 40 FF FF */	li r10, -1
/* 807A1EBC  4B 87 80 34 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807A1EC0  88 7D 0F 84 */	lbz r3, 0xf84(r29)
/* 807A1EC4  38 03 00 01 */	addi r0, r3, 1
/* 807A1EC8  98 1D 0F 84 */	stb r0, 0xf84(r29)
/* 807A1ECC  3B 5A 00 01 */	addi r26, r26, 1
/* 807A1ED0  2C 1A 00 05 */	cmpwi r26, 5
/* 807A1ED4  41 80 FF B0 */	blt lbl_807A1E84
lbl_807A1ED8:
/* 807A1ED8  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 807A1EDC  41 80 00 38 */	blt lbl_807A1F14
/* 807A1EE0  2C 1B 00 37 */	cmpwi r27, 0x37
/* 807A1EE4  41 81 00 30 */	bgt lbl_807A1F14
/* 807A1EE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A6@ha */
/* 807A1EEC  38 03 00 A6 */	addi r0, r3, 0x00A6 /* 0x000700A6@l */
/* 807A1EF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A1EF4  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A1EF8  38 81 00 10 */	addi r4, r1, 0x10
/* 807A1EFC  38 A0 00 00 */	li r5, 0
/* 807A1F00  38 C0 FF FF */	li r6, -1
/* 807A1F04  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A1F08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807A1F0C  7D 89 03 A6 */	mtctr r12
/* 807A1F10  4E 80 04 21 */	bctrl 
lbl_807A1F14:
/* 807A1F14  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1F18  38 80 00 01 */	li r4, 1
/* 807A1F1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A1F20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A1F24  40 82 00 18 */	bne lbl_807A1F3C
/* 807A1F28  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A1F2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A1F30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A1F34  41 82 00 08 */	beq lbl_807A1F3C
/* 807A1F38  38 80 00 00 */	li r4, 0
lbl_807A1F3C:
/* 807A1F3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A1F40  41 82 00 2C */	beq lbl_807A1F6C
/* 807A1F44  38 00 00 0D */	li r0, 0xd
/* 807A1F48  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A1F4C  38 00 00 03 */	li r0, 3
/* 807A1F50  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1F54  7F A3 EB 78 */	mr r3, r29
/* 807A1F58  38 80 00 13 */	li r4, 0x13
/* 807A1F5C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A1F60  38 A0 00 02 */	li r5, 2
/* 807A1F64  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1F68  4B FF BE E5 */	bl anm_init__FP10e_st_classifUcf
lbl_807A1F6C:
/* 807A1F6C  7F A3 EB 78 */	mr r3, r29
/* 807A1F70  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1F74  4B 87 87 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A1F78  7C 64 1B 78 */	mr r4, r3
/* 807A1F7C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A1F80  38 A0 00 04 */	li r5, 4
/* 807A1F84  38 C0 10 00 */	li r6, 0x1000
/* 807A1F88  4B AC E6 80 */	b cLib_addCalcAngleS2__FPssss
lbl_807A1F8C:
/* 807A1F8C  39 61 00 40 */	addi r11, r1, 0x40
/* 807A1F90  4B BC 02 8C */	b _restgpr_26
/* 807A1F94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A1F98  7C 08 03 A6 */	mtlr r0
/* 807A1F9C  38 21 00 40 */	addi r1, r1, 0x40
/* 807A1FA0  4E 80 00 20 */	blr 
