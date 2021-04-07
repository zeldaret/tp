lbl_807E9C1C:
/* 807E9C1C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807E9C20  7C 08 02 A6 */	mflr r0
/* 807E9C24  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807E9C28  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 807E9C2C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 807E9C30  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807E9C34  4B B7 85 A5 */	bl _savegpr_28
/* 807E9C38  7C 7C 1B 78 */	mr r28, r3
/* 807E9C3C  3C 80 80 7F */	lis r4, lit_3905@ha /* 0x807EF770@ha */
/* 807E9C40  3B C4 F7 70 */	addi r30, r4, lit_3905@l /* 0x807EF770@l */
/* 807E9C44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E9C48  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E9C4C  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 807E9C50  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807E9C54  28 00 00 1A */	cmplwi r0, 0x1a
/* 807E9C58  41 81 07 AC */	bgt lbl_807EA404
/* 807E9C5C  3C 80 80 7F */	lis r4, lit_5116@ha /* 0x807EF984@ha */
/* 807E9C60  38 84 F9 84 */	addi r4, r4, lit_5116@l /* 0x807EF984@l */
/* 807E9C64  54 00 10 3A */	slwi r0, r0, 2
/* 807E9C68  7C 04 00 2E */	lwzx r0, r4, r0
/* 807E9C6C  7C 09 03 A6 */	mtctr r0
/* 807E9C70  4E 80 04 20 */	bctr 
lbl_807E9C74:
/* 807E9C74  38 80 00 0B */	li r4, 0xb
/* 807E9C78  38 A0 00 02 */	li r5, 2
/* 807E9C7C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807E9C80  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807E9C84  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807E9C88  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807E9C8C  4B FF DE 51 */	bl setBck__8daE_WW_cFiUcff
/* 807E9C90  38 00 00 01 */	li r0, 1
/* 807E9C94  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807E9C98  38 00 00 0A */	li r0, 0xa
/* 807E9C9C  90 1C 07 28 */	stw r0, 0x728(r28)
/* 807E9CA0  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807E9CA4  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807E9CA8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E9CAC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807E9CB0  38 00 01 2C */	li r0, 0x12c
/* 807E9CB4  90 1C 07 2C */	stw r0, 0x72c(r28)
lbl_807E9CB8:
/* 807E9CB8  38 00 00 01 */	li r0, 1
/* 807E9CBC  98 1C 07 5A */	stb r0, 0x75a(r28)
/* 807E9CC0  7F 83 E3 78 */	mr r3, r28
/* 807E9CC4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807E9CC8  4B 83 0A 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E9CCC  7C 64 1B 78 */	mr r4, r3
/* 807E9CD0  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807E9CD4  38 A0 00 04 */	li r5, 4
/* 807E9CD8  38 C0 08 00 */	li r6, 0x800
/* 807E9CDC  38 E0 01 00 */	li r7, 0x100
/* 807E9CE0  4B A8 68 61 */	bl cLib_addCalcAngleS__FPsssss
/* 807E9CE4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807E9CE8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807E9CEC  7F 83 E3 78 */	mr r3, r28
/* 807E9CF0  4B FF E8 71 */	bl checkAttackWall__8daE_WW_cFv
/* 807E9CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E9CF8  40 82 00 14 */	bne lbl_807E9D0C
/* 807E9CFC  7F 83 E3 78 */	mr r3, r28
/* 807E9D00  38 80 00 03 */	li r4, 3
/* 807E9D04  38 A0 00 02 */	li r5, 2
/* 807E9D08  4B FF DE D5 */	bl setActionMode__8daE_WW_cFii
lbl_807E9D0C:
/* 807E9D0C  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 807E9D10  2C 00 00 00 */	cmpwi r0, 0
/* 807E9D14  40 82 00 88 */	bne lbl_807E9D9C
/* 807E9D18  7F 83 E3 78 */	mr r3, r28
/* 807E9D1C  48 00 1C 49 */	bl checkMoveOut__8daE_WW_cFv
/* 807E9D20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E9D24  40 82 07 30 */	bne lbl_807EA454
/* 807E9D28  7F 83 E3 78 */	mr r3, r28
/* 807E9D2C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807E9D30  4B 83 0A B1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E9D34  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 807E9D38  C0 1C 06 B0 */	lfs f0, 0x6b0(r28)
/* 807E9D3C  EC 02 00 2A */	fadds f0, f2, f0
/* 807E9D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9D44  40 80 00 58 */	bge lbl_807E9D9C
/* 807E9D48  38 00 00 14 */	li r0, 0x14
/* 807E9D4C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807E9D50  7F 83 E3 78 */	mr r3, r28
/* 807E9D54  38 80 00 08 */	li r4, 8
/* 807E9D58  38 A0 00 00 */	li r5, 0
/* 807E9D5C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807E9D60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807E9D64  4B FF DD 79 */	bl setBck__8daE_WW_cFiUcff
/* 807E9D68  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038F@ha */
/* 807E9D6C  38 03 03 8F */	addi r0, r3, 0x038F /* 0x0007038F@l */
/* 807E9D70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807E9D74  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807E9D78  38 81 00 1C */	addi r4, r1, 0x1c
/* 807E9D7C  38 A0 FF FF */	li r5, -1
/* 807E9D80  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807E9D84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E9D88  7D 89 03 A6 */	mtctr r12
/* 807E9D8C  4E 80 04 21 */	bctrl 
/* 807E9D90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E9D94  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807E9D98  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_807E9D9C:
/* 807E9D9C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807E9DA0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807E9DA4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807E9DA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9DAC  4C 40 13 82 */	cror 2, 0, 2
/* 807E9DB0  40 82 00 28 */	bne lbl_807E9DD8
/* 807E9DB4  7F 83 E3 78 */	mr r3, r28
/* 807E9DB8  4B FF EE 9D */	bl checkSideStep__8daE_WW_cFv
/* 807E9DBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E9DC0  41 82 00 18 */	beq lbl_807E9DD8
/* 807E9DC4  38 00 00 0A */	li r0, 0xa
/* 807E9DC8  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807E9DCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E9DD0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807E9DD4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_807E9DD8:
/* 807E9DD8  80 1C 07 2C */	lwz r0, 0x72c(r28)
/* 807E9DDC  2C 00 00 00 */	cmpwi r0, 0
/* 807E9DE0  40 82 06 24 */	bne lbl_807EA404
/* 807E9DE4  7F 83 E3 78 */	mr r3, r28
/* 807E9DE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807E9DEC  4B 83 30 11 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E9DF0  2C 03 00 00 */	cmpwi r3, 0
/* 807E9DF4  41 82 06 10 */	beq lbl_807EA404
/* 807E9DF8  7F 83 E3 78 */	mr r3, r28
/* 807E9DFC  38 80 00 03 */	li r4, 3
/* 807E9E00  38 A0 00 02 */	li r5, 2
/* 807E9E04  4B FF DD D9 */	bl setActionMode__8daE_WW_cFii
/* 807E9E08  48 00 06 4C */	b lbl_807EA454
lbl_807E9E0C:
/* 807E9E0C  7F A4 EB 78 */	mr r4, r29
/* 807E9E10  4B 83 09 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E9E14  B0 7C 06 CC */	sth r3, 0x6cc(r28)
/* 807E9E18  A8 1C 06 CC */	lha r0, 0x6cc(r28)
/* 807E9E1C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 807E9E20  80 1C 06 C0 */	lwz r0, 0x6c0(r28)
/* 807E9E24  2C 00 00 00 */	cmpwi r0, 0
/* 807E9E28  40 82 00 60 */	bne lbl_807E9E88
/* 807E9E2C  7F 83 E3 78 */	mr r3, r28
/* 807E9E30  38 80 00 0C */	li r4, 0xc
/* 807E9E34  38 A0 00 00 */	li r5, 0
/* 807E9E38  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807E9E3C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807E9E40  4B FF DC 9D */	bl setBck__8daE_WW_cFiUcff
/* 807E9E44  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807E9E48  4B A7 DB 45 */	bl cM_rndFX__Ff
/* 807E9E4C  A8 7C 06 CC */	lha r3, 0x6cc(r28)
/* 807E9E50  38 03 18 00 */	addi r0, r3, 0x1800
/* 807E9E54  C8 5E 00 60 */	lfd f2, 0x60(r30)
/* 807E9E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807E9E5C  90 01 00 94 */	stw r0, 0x94(r1)
/* 807E9E60  3C 00 43 30 */	lis r0, 0x4330
/* 807E9E64  90 01 00 90 */	stw r0, 0x90(r1)
/* 807E9E68  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 807E9E6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 807E9E70  EC 00 08 2A */	fadds f0, f0, f1
/* 807E9E74  FC 00 00 1E */	fctiwz f0, f0
/* 807E9E78  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807E9E7C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 807E9E80  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807E9E84  48 00 00 5C */	b lbl_807E9EE0
lbl_807E9E88:
/* 807E9E88  7F 83 E3 78 */	mr r3, r28
/* 807E9E8C  38 80 00 0D */	li r4, 0xd
/* 807E9E90  38 A0 00 00 */	li r5, 0
/* 807E9E94  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807E9E98  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807E9E9C  4B FF DC 41 */	bl setBck__8daE_WW_cFiUcff
/* 807E9EA0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807E9EA4  4B A7 DA E9 */	bl cM_rndFX__Ff
/* 807E9EA8  A8 7C 06 CC */	lha r3, 0x6cc(r28)
/* 807E9EAC  38 03 E8 00 */	addi r0, r3, -6144
/* 807E9EB0  C8 5E 00 60 */	lfd f2, 0x60(r30)
/* 807E9EB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807E9EB8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 807E9EBC  3C 00 43 30 */	lis r0, 0x4330
/* 807E9EC0  90 01 00 98 */	stw r0, 0x98(r1)
/* 807E9EC4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 807E9EC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 807E9ECC  EC 00 08 2A */	fadds f0, f0, f1
/* 807E9ED0  FC 00 00 1E */	fctiwz f0, f0
/* 807E9ED4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 807E9ED8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807E9EDC  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_807E9EE0:
/* 807E9EE0  38 00 00 0B */	li r0, 0xb
/* 807E9EE4  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_807E9EE8:
/* 807E9EE8  38 00 00 01 */	li r0, 1
/* 807E9EEC  98 1C 07 5A */	stb r0, 0x75a(r28)
/* 807E9EF0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807E9EF4  38 63 00 0C */	addi r3, r3, 0xc
/* 807E9EF8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807E9EFC  4B B3 E5 31 */	bl checkPass__12J3DFrameCtrlFf
/* 807E9F00  2C 03 00 00 */	cmpwi r3, 0
/* 807E9F04  41 82 05 00 */	beq lbl_807EA404
/* 807E9F08  38 00 00 01 */	li r0, 1
/* 807E9F0C  98 1C 07 5B */	stb r0, 0x75b(r28)
/* 807E9F10  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807E9F14  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807E9F18  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807E9F1C  4B A7 DA 71 */	bl cM_rndFX__Ff
/* 807E9F20  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807E9F24  EC 00 08 2A */	fadds f0, f0, f1
/* 807E9F28  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807E9F2C  38 00 00 0C */	li r0, 0xc
/* 807E9F30  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807E9F34  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807E9F38  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807E9F3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 807E9F40  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807E9F44  38 81 00 18 */	addi r4, r1, 0x18
/* 807E9F48  38 A0 00 00 */	li r5, 0
/* 807E9F4C  38 C0 FF FF */	li r6, -1
/* 807E9F50  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807E9F54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E9F58  7D 89 03 A6 */	mtctr r12
/* 807E9F5C  4E 80 04 21 */	bctrl 
/* 807E9F60  48 00 04 A4 */	b lbl_807EA404
lbl_807E9F64:
/* 807E9F64  38 00 00 01 */	li r0, 1
/* 807E9F68  98 1C 07 5A */	stb r0, 0x75a(r28)
/* 807E9F6C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807E9F70  4B 83 07 A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E9F74  7C 64 1B 78 */	mr r4, r3
/* 807E9F78  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807E9F7C  38 A0 00 04 */	li r5, 4
/* 807E9F80  38 C0 08 00 */	li r6, 0x800
/* 807E9F84  38 E0 01 00 */	li r7, 0x100
/* 807E9F88  4B A8 65 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 807E9F8C  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807E9F90  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E9F94  41 82 04 70 */	beq lbl_807EA404
/* 807E9F98  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807E9F9C  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 807E9FA0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807E9FA4  38 80 00 01 */	li r4, 1
/* 807E9FA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E9FAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E9FB0  40 82 00 14 */	bne lbl_807E9FC4
/* 807E9FB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E9FB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E9FBC  41 82 00 08 */	beq lbl_807E9FC4
/* 807E9FC0  38 80 00 00 */	li r4, 0
lbl_807E9FC4:
/* 807E9FC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E9FC8  41 82 04 3C */	beq lbl_807EA404
/* 807E9FCC  7F 83 E3 78 */	mr r3, r28
/* 807E9FD0  48 00 19 95 */	bl checkMoveOut__8daE_WW_cFv
/* 807E9FD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E9FD8  40 82 04 7C */	bne lbl_807EA454
/* 807E9FDC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807E9FE0  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 807E9FE4  EF E0 10 2A */	fadds f31, f0, f2
/* 807E9FE8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807E9FEC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807E9FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9FF4  4C 41 13 82 */	cror 2, 1, 2
/* 807E9FF8  40 82 00 0C */	bne lbl_807EA004
/* 807E9FFC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807EA000  EF E0 10 2A */	fadds f31, f0, f2
lbl_807EA004:
/* 807EA004  7F 83 E3 78 */	mr r3, r28
/* 807EA008  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EA00C  4B 83 07 D5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EA010  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807EA014  40 80 00 60 */	bge lbl_807EA074
/* 807EA018  7F 83 E3 78 */	mr r3, r28
/* 807EA01C  4B FF E5 45 */	bl checkAttackWall__8daE_WW_cFv
/* 807EA020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EA024  41 82 00 50 */	beq lbl_807EA074
/* 807EA028  38 00 00 14 */	li r0, 0x14
/* 807EA02C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807EA030  7F 83 E3 78 */	mr r3, r28
/* 807EA034  38 80 00 08 */	li r4, 8
/* 807EA038  38 A0 00 00 */	li r5, 0
/* 807EA03C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EA040  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA044  4B FF DA 99 */	bl setBck__8daE_WW_cFiUcff
/* 807EA048  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038F@ha */
/* 807EA04C  38 03 03 8F */	addi r0, r3, 0x038F /* 0x0007038F@l */
/* 807EA050  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EA054  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807EA058  38 81 00 14 */	addi r4, r1, 0x14
/* 807EA05C  38 A0 FF FF */	li r5, -1
/* 807EA060  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807EA064  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807EA068  7D 89 03 A6 */	mtctr r12
/* 807EA06C  4E 80 04 21 */	bctrl 
/* 807EA070  48 00 03 94 */	b lbl_807EA404
lbl_807EA074:
/* 807EA074  38 00 00 00 */	li r0, 0
/* 807EA078  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807EA07C  48 00 03 88 */	b lbl_807EA404
lbl_807EA080:
/* 807EA080  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807EA084  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807EA088  EC 21 00 32 */	fmuls f1, f1, f0
/* 807EA08C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EA090  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807EA094  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807EA098  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807EA09C  38 7C 06 5C */	addi r3, r28, 0x65c
/* 807EA0A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807EA0A4  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 807EA0A8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 807EA0AC  4B A8 6D 15 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807EA0B0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807EA0B4  38 9C 06 5C */	addi r4, r28, 0x65c
/* 807EA0B8  4B A8 6B 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807EA0BC  7C 64 1B 78 */	mr r4, r3
/* 807EA0C0  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807EA0C4  38 A0 00 04 */	li r5, 4
/* 807EA0C8  38 C0 10 00 */	li r6, 0x1000
/* 807EA0CC  38 E0 01 00 */	li r7, 0x100
/* 807EA0D0  4B A8 64 71 */	bl cLib_addCalcAngleS__FPsssss
/* 807EA0D4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807EA0D8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807EA0DC  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807EA0E0  38 63 00 0C */	addi r3, r3, 0xc
/* 807EA0E4  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 807EA0E8  4B B3 E3 45 */	bl checkPass__12J3DFrameCtrlFf
/* 807EA0EC  2C 03 00 00 */	cmpwi r3, 0
/* 807EA0F0  41 82 00 30 */	beq lbl_807EA120
/* 807EA0F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EA0F8  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EA0FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807EA100  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807EA104  38 81 00 10 */	addi r4, r1, 0x10
/* 807EA108  38 A0 00 00 */	li r5, 0
/* 807EA10C  38 C0 FF FF */	li r6, -1
/* 807EA110  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807EA114  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EA118  7D 89 03 A6 */	mtctr r12
/* 807EA11C  4E 80 04 21 */	bctrl 
lbl_807EA120:
/* 807EA120  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807EA124  38 80 00 01 */	li r4, 1
/* 807EA128  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EA12C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EA130  40 82 00 18 */	bne lbl_807EA148
/* 807EA134  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA138  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EA13C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EA140  41 82 00 08 */	beq lbl_807EA148
/* 807EA144  38 80 00 00 */	li r4, 0
lbl_807EA148:
/* 807EA148  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EA14C  41 82 02 B8 */	beq lbl_807EA404
/* 807EA150  7F 83 E3 78 */	mr r3, r28
/* 807EA154  4B FF F8 65 */	bl calcJumpSpeed__8daE_WW_cFv
/* 807EA158  88 1C 06 B4 */	lbz r0, 0x6b4(r28)
/* 807EA15C  28 00 00 00 */	cmplwi r0, 0
/* 807EA160  40 82 00 18 */	bne lbl_807EA178
/* 807EA164  38 00 00 15 */	li r0, 0x15
/* 807EA168  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807EA16C  38 00 00 00 */	li r0, 0
/* 807EA170  98 1C 07 56 */	stb r0, 0x756(r28)
/* 807EA174  48 00 00 38 */	b lbl_807EA1AC
lbl_807EA178:
/* 807EA178  38 00 00 19 */	li r0, 0x19
/* 807EA17C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807EA180  38 00 00 00 */	li r0, 0
/* 807EA184  98 1C 07 56 */	stb r0, 0x756(r28)
/* 807EA188  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA18C  60 00 00 02 */	ori r0, r0, 2
/* 807EA190  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 807EA194  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA198  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 807EA19C  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 807EA1A0  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA1A4  60 00 40 00 */	ori r0, r0, 0x4000
/* 807EA1A8  90 1C 07 CC */	stw r0, 0x7cc(r28)
lbl_807EA1AC:
/* 807EA1AC  7F 83 E3 78 */	mr r3, r28
/* 807EA1B0  38 80 00 09 */	li r4, 9
/* 807EA1B4  38 A0 00 02 */	li r5, 2
/* 807EA1B8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EA1BC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA1C0  4B FF D9 1D */	bl setBck__8daE_WW_cFiUcff
/* 807EA1C4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807EA1C8  C0 5C 04 FC */	lfs f2, 0x4fc(r28)
/* 807EA1CC  4B A7 D4 A9 */	bl cM_atan2s__Fff
/* 807EA1D0  38 03 C0 00 */	addi r0, r3, -16384
/* 807EA1D4  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 807EA1D8  48 00 02 2C */	b lbl_807EA404
lbl_807EA1DC:
/* 807EA1DC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807EA1E0  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807EA1E4  90 1C 0C 4C */	stw r0, 0xc4c(r28)
/* 807EA1E8  90 1C 0D 84 */	stw r0, 0xd84(r28)
/* 807EA1EC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807EA1F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA1F4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA1F8  4B A8 65 49 */	bl cLib_chaseF__FPfff
/* 807EA1FC  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 807EA200  60 00 00 01 */	ori r0, r0, 1
/* 807EA204  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 807EA208  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA20C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EA210  41 82 01 F4 */	beq lbl_807EA404
/* 807EA214  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807EA218  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807EA21C  7F 83 E3 78 */	mr r3, r28
/* 807EA220  38 80 00 0A */	li r4, 0xa
/* 807EA224  38 A0 00 00 */	li r5, 0
/* 807EA228  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EA22C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA230  4B FF D8 AD */	bl setBck__8daE_WW_cFiUcff
/* 807EA234  38 00 00 16 */	li r0, 0x16
/* 807EA238  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807EA23C  48 00 01 C8 */	b lbl_807EA404
lbl_807EA240:
/* 807EA240  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807EA244  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA248  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA24C  4B A8 64 F5 */	bl cLib_chaseF__FPfff
/* 807EA250  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807EA254  38 63 00 0C */	addi r3, r3, 0xc
/* 807EA258  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 807EA25C  4B B3 E1 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 807EA260  2C 03 00 00 */	cmpwi r3, 0
/* 807EA264  41 82 00 30 */	beq lbl_807EA294
/* 807EA268  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038D@ha */
/* 807EA26C  38 03 03 8D */	addi r0, r3, 0x038D /* 0x0007038D@l */
/* 807EA270  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EA274  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807EA278  38 81 00 0C */	addi r4, r1, 0xc
/* 807EA27C  38 A0 00 00 */	li r5, 0
/* 807EA280  38 C0 FF FF */	li r6, -1
/* 807EA284  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807EA288  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EA28C  7D 89 03 A6 */	mtctr r12
/* 807EA290  4E 80 04 21 */	bctrl 
lbl_807EA294:
/* 807EA294  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807EA298  38 80 00 01 */	li r4, 1
/* 807EA29C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EA2A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EA2A4  40 82 00 18 */	bne lbl_807EA2BC
/* 807EA2A8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA2AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EA2B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EA2B4  41 82 00 08 */	beq lbl_807EA2BC
/* 807EA2B8  38 80 00 00 */	li r4, 0
lbl_807EA2BC:
/* 807EA2BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EA2C0  41 82 01 44 */	beq lbl_807EA404
/* 807EA2C4  7F 83 E3 78 */	mr r3, r28
/* 807EA2C8  38 80 00 03 */	li r4, 3
/* 807EA2CC  38 A0 00 00 */	li r5, 0
/* 807EA2D0  4B FF D9 0D */	bl setActionMode__8daE_WW_cFii
/* 807EA2D4  48 00 01 30 */	b lbl_807EA404
lbl_807EA2D8:
/* 807EA2D8  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA2DC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 807EA2E0  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 807EA2E4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807EA2E8  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807EA2EC  90 1C 0C 4C */	stw r0, 0xc4c(r28)
/* 807EA2F0  90 1C 0D 84 */	stw r0, 0xd84(r28)
/* 807EA2F4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807EA2F8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA2FC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EA300  4B A8 64 41 */	bl cLib_chaseF__FPfff
/* 807EA304  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 807EA308  60 00 00 01 */	ori r0, r0, 1
/* 807EA30C  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 807EA310  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807EA314  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 807EA318  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807EA31C  EC 21 00 2A */	fadds f1, f1, f0
/* 807EA320  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807EA324  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807EA328  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807EA32C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807EA330  38 61 00 38 */	addi r3, r1, 0x38
/* 807EA334  4B 88 D2 49 */	bl __ct__11dBgS_GndChkFv
/* 807EA338  38 61 00 38 */	addi r3, r1, 0x38
/* 807EA33C  38 81 00 20 */	addi r4, r1, 0x20
/* 807EA340  4B A7 D9 E9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807EA344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EA348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EA34C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807EA350  38 81 00 38 */	addi r4, r1, 0x38
/* 807EA354  4B 88 A1 4D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807EA358  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807EA35C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807EA360  FC 20 08 18 */	frsp f1, f1
/* 807EA364  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807EA368  41 82 00 90 */	beq lbl_807EA3F8
/* 807EA36C  80 1C 06 BC */	lwz r0, 0x6bc(r28)
/* 807EA370  2C 00 00 19 */	cmpwi r0, 0x19
/* 807EA374  40 82 00 4C */	bne lbl_807EA3C0
/* 807EA378  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807EA37C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807EA380  40 80 00 40 */	bge lbl_807EA3C0
/* 807EA384  7F 83 E3 78 */	mr r3, r28
/* 807EA388  4B FF E3 79 */	bl setAppearEffect__8daE_WW_cFv
/* 807EA38C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038E@ha */
/* 807EA390  38 03 03 8E */	addi r0, r3, 0x038E /* 0x0007038E@l */
/* 807EA394  90 01 00 08 */	stw r0, 8(r1)
/* 807EA398  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 807EA39C  38 81 00 08 */	addi r4, r1, 8
/* 807EA3A0  38 A0 00 00 */	li r5, 0
/* 807EA3A4  38 C0 FF FF */	li r6, -1
/* 807EA3A8  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 807EA3AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EA3B0  7D 89 03 A6 */	mtctr r12
/* 807EA3B4  4E 80 04 21 */	bctrl 
/* 807EA3B8  38 00 00 1A */	li r0, 0x1a
/* 807EA3BC  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_807EA3C0:
/* 807EA3C0  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 807EA3C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807EA3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA3CC  40 80 00 0C */	bge lbl_807EA3D8
/* 807EA3D0  38 00 00 00 */	li r0, 0
/* 807EA3D4  98 1C 07 5D */	stb r0, 0x75d(r28)
lbl_807EA3D8:
/* 807EA3D8  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807EA3DC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807EA3E0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807EA3E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807EA3E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807EA3EC  40 80 00 0C */	bge lbl_807EA3F8
/* 807EA3F0  7F 83 E3 78 */	mr r3, r28
/* 807EA3F4  4B 82 F8 89 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807EA3F8:
/* 807EA3F8  38 61 00 38 */	addi r3, r1, 0x38
/* 807EA3FC  38 80 FF FF */	li r4, -1
/* 807EA400  4B 88 D1 F1 */	bl __dt__11dBgS_GndChkFv
lbl_807EA404:
/* 807EA404  80 1C 07 CC */	lwz r0, 0x7cc(r28)
/* 807EA408  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EA40C  41 82 00 20 */	beq lbl_807EA42C
/* 807EA410  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807EA414  38 80 00 00 */	li r4, 0
/* 807EA418  38 A0 00 04 */	li r5, 4
/* 807EA41C  38 C0 10 00 */	li r6, 0x1000
/* 807EA420  38 E0 02 00 */	li r7, 0x200
/* 807EA424  4B A8 61 1D */	bl cLib_addCalcAngleS__FPsssss
/* 807EA428  48 00 00 2C */	b lbl_807EA454
lbl_807EA42C:
/* 807EA42C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807EA430  C0 5C 04 FC */	lfs f2, 0x4fc(r28)
/* 807EA434  4B A7 D2 41 */	bl cM_atan2s__Fff
/* 807EA438  38 03 C0 00 */	addi r0, r3, -16384
/* 807EA43C  7C 04 07 34 */	extsh r4, r0
/* 807EA440  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807EA444  38 A0 00 04 */	li r5, 4
/* 807EA448  38 C0 08 00 */	li r6, 0x800
/* 807EA44C  38 E0 02 00 */	li r7, 0x200
/* 807EA450  4B A8 60 F1 */	bl cLib_addCalcAngleS__FPsssss
lbl_807EA454:
/* 807EA454  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 807EA458  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 807EA45C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807EA460  4B B7 7D C5 */	bl _restgpr_28
/* 807EA464  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807EA468  7C 08 03 A6 */	mtlr r0
/* 807EA46C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807EA470  4E 80 00 20 */	blr 
