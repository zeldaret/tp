lbl_806F8C90:
/* 806F8C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F8C94  7C 08 02 A6 */	mflr r0
/* 806F8C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F8C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F8CA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F8CA4  7C 7E 1B 78 */	mr r30, r3
/* 806F8CA8  3C 80 80 70 */	lis r4, lit_3788@ha
/* 806F8CAC  3B E4 A3 A4 */	addi r31, r4, lit_3788@l
/* 806F8CB0  38 00 00 06 */	li r0, 6
/* 806F8CB4  B0 03 06 9C */	sth r0, 0x69c(r3)
/* 806F8CB8  A8 83 06 78 */	lha r4, 0x678(r3)
/* 806F8CBC  2C 04 00 03 */	cmpwi r4, 3
/* 806F8CC0  41 82 01 5C */	beq lbl_806F8E1C
/* 806F8CC4  40 80 01 D4 */	bge lbl_806F8E98
/* 806F8CC8  2C 04 00 00 */	cmpwi r4, 0
/* 806F8CCC  41 82 00 0C */	beq lbl_806F8CD8
/* 806F8CD0  40 80 00 A4 */	bge lbl_806F8D74
/* 806F8CD4  48 00 01 C4 */	b lbl_806F8E98
lbl_806F8CD8:
/* 806F8CD8  38 80 00 06 */	li r4, 6
/* 806F8CDC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8CE0  38 A0 00 02 */	li r5, 2
/* 806F8CE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F8CE8  4B FF F2 3D */	bl anm_init__FP10e_kg_classifUcf
/* 806F8CEC  38 00 00 01 */	li r0, 1
/* 806F8CF0  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8CF4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8CF8  4B B6 EC 94 */	b cM_rndFX__Ff
/* 806F8CFC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806F8D00  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8D04  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806F8D08  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8D0C  4B B6 EC 80 */	b cM_rndFX__Ff
/* 806F8D10  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806F8D14  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8D18  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806F8D1C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806F8D20  4B B6 EC 6C */	b cM_rndFX__Ff
/* 806F8D24  FC 00 08 1E */	fctiwz f0, f1
/* 806F8D28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806F8D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F8D30  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 806F8D34  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BF@ha */
/* 806F8D38  38 03 00 BF */	addi r0, r3, 0x00BF /* 0x000700BF@l */
/* 806F8D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F8D40  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F8D44  38 81 00 0C */	addi r4, r1, 0xc
/* 806F8D48  38 A0 FF FF */	li r5, -1
/* 806F8D4C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806F8D50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F8D54  7D 89 03 A6 */	mtctr r12
/* 806F8D58  4E 80 04 21 */	bctrl 
/* 806F8D5C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806F8D60  54 00 00 3E */	slwi r0, r0, 0
/* 806F8D64  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806F8D68  38 00 00 00 */	li r0, 0
/* 806F8D6C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806F8D70  48 00 01 28 */	b lbl_806F8E98
lbl_806F8D74:
/* 806F8D74  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806F8D78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806F8D7C  41 82 01 1C */	beq lbl_806F8E98
/* 806F8D80  2C 04 00 01 */	cmpwi r4, 1
/* 806F8D84  40 82 00 30 */	bne lbl_806F8DB4
/* 806F8D88  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806F8D8C  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806F8D90  90 01 00 08 */	stw r0, 8(r1)
/* 806F8D94  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F8D98  38 81 00 08 */	addi r4, r1, 8
/* 806F8D9C  38 A0 00 00 */	li r5, 0
/* 806F8DA0  38 C0 FF FF */	li r6, -1
/* 806F8DA4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806F8DA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F8DAC  7D 89 03 A6 */	mtctr r12
/* 806F8DB0  4E 80 04 21 */	bctrl 
lbl_806F8DB4:
/* 806F8DB4  A8 7E 06 78 */	lha r3, 0x678(r30)
/* 806F8DB8  38 03 00 01 */	addi r0, r3, 1
/* 806F8DBC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8DC0  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 806F8DC4  2C 00 00 03 */	cmpwi r0, 3
/* 806F8DC8  40 82 00 18 */	bne lbl_806F8DE0
/* 806F8DCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806F8DD0  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 806F8DD4  38 00 00 1E */	li r0, 0x1e
/* 806F8DD8  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F8DDC  48 00 00 BC */	b lbl_806F8E98
lbl_806F8DE0:
/* 806F8DE0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806F8DE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806F8DE8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806F8DEC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806F8DF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F8DF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806F8DF8  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 806F8DFC  38 9E 0A 60 */	addi r4, r30, 0xa60
/* 806F8E00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806F8E04  38 C0 00 00 */	li r6, 0
/* 806F8E08  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 806F8E0C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806F8E10  39 00 00 01 */	li r8, 1
/* 806F8E14  4B 92 42 0C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806F8E18  48 00 00 80 */	b lbl_806F8E98
lbl_806F8E1C:
/* 806F8E1C  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 806F8E20  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F8E24  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F8E28  38 7E 06 64 */	addi r3, r30, 0x664
/* 806F8E2C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8E30  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 806F8E34  4B B7 6C 4C */	b cLib_addCalc0__FPfff
/* 806F8E38  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F8E3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8E40  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 806F8E44  4B B7 6C 3C */	b cLib_addCalc0__FPfff
/* 806F8E48  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F8E4C  2C 00 00 00 */	cmpwi r0, 0
/* 806F8E50  40 82 00 48 */	bne lbl_806F8E98
/* 806F8E54  7F C3 F3 78 */	mr r3, r30
/* 806F8E58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F8E5C  38 A0 00 08 */	li r5, 8
/* 806F8E60  38 C0 00 00 */	li r6, 0
/* 806F8E64  38 E0 00 2D */	li r7, 0x2d
/* 806F8E68  4B 92 3C 70 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806F8E6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806F8E70  54 04 46 3E */	srwi r4, r0, 0x18
/* 806F8E74  2C 04 00 FF */	cmpwi r4, 0xff
/* 806F8E78  41 82 00 18 */	beq lbl_806F8E90
/* 806F8E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F8E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F8E84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F8E88  7C 05 07 74 */	extsb r5, r0
/* 806F8E8C  4B 93 C3 74 */	b onSwitch__10dSv_info_cFii
lbl_806F8E90:
/* 806F8E90  7F C3 F3 78 */	mr r3, r30
/* 806F8E94  4B 92 0D E8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806F8E98:
/* 806F8E98  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806F8E9C  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 806F8EA0  7C 03 02 14 */	add r0, r3, r0
/* 806F8EA4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806F8EA8  38 7E 06 9E */	addi r3, r30, 0x69e
/* 806F8EAC  38 80 00 00 */	li r4, 0
/* 806F8EB0  38 A0 00 01 */	li r5, 1
/* 806F8EB4  38 C0 00 20 */	li r6, 0x20
/* 806F8EB8  4B B7 77 50 */	b cLib_addCalcAngleS2__FPssss
/* 806F8EBC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806F8EC0  38 80 7F FF */	li r4, 0x7fff
/* 806F8EC4  38 A0 00 01 */	li r5, 1
/* 806F8EC8  38 C0 08 00 */	li r6, 0x800
/* 806F8ECC  4B B7 77 3C */	b cLib_addCalcAngleS2__FPssss
/* 806F8ED0  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806F8ED4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806F8ED8  41 82 00 14 */	beq lbl_806F8EEC
/* 806F8EDC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806F8EE0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806F8EE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F8EE8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806F8EEC:
/* 806F8EEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F8EF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F8EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F8EF8  7C 08 03 A6 */	mtlr r0
/* 806F8EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 806F8F00  4E 80 00 20 */	blr 
