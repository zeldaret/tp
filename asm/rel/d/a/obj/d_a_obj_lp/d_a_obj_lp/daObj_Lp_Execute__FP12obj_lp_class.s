lbl_80C54D40:
/* 80C54D40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C54D44  7C 08 02 A6 */	mflr r0
/* 80C54D48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C54D4C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C54D50  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C54D54  39 61 00 40 */	addi r11, r1, 0x40
/* 80C54D58  4B 70 D4 75 */	bl _savegpr_25
/* 80C54D5C  7C 7A 1B 78 */	mr r26, r3
/* 80C54D60  3C 60 80 C5 */	lis r3, lit_1109@ha /* 0x80C55B40@ha */
/* 80C54D64  3B A3 5B 40 */	addi r29, r3, lit_1109@l /* 0x80C55B40@l */
/* 80C54D68  3C 60 80 C5 */	lis r3, lit_3916@ha /* 0x80C55A10@ha */
/* 80C54D6C  3B C3 5A 10 */	addi r30, r3, lit_3916@l /* 0x80C55A10@l */
/* 80C54D70  A8 7A 05 74 */	lha r3, 0x574(r26)
/* 80C54D74  38 03 00 01 */	addi r0, r3, 1
/* 80C54D78  B0 1A 05 74 */	sth r0, 0x574(r26)
/* 80C54D7C  3C 9A 00 01 */	addis r4, r26, 1
/* 80C54D80  88 64 AD B0 */	lbz r3, -0x5250(r4)
/* 80C54D84  28 03 00 00 */	cmplwi r3, 0
/* 80C54D88  41 82 00 0C */	beq lbl_80C54D94
/* 80C54D8C  38 03 FF FF */	addi r0, r3, -1
/* 80C54D90  98 04 AD B0 */	stb r0, -0x5250(r4)
lbl_80C54D94:
/* 80C54D94  38 60 00 04 */	li r3, 4
/* 80C54D98  38 A0 00 00 */	li r5, 0
/* 80C54D9C  38 9D 00 48 */	addi r4, r29, 0x48
/* 80C54DA0  38 00 00 09 */	li r0, 9
/* 80C54DA4  7C 09 03 A6 */	mtctr r0
lbl_80C54DA8:
/* 80C54DA8  7C A4 19 2E */	stwx r5, r4, r3
/* 80C54DAC  38 63 00 04 */	addi r3, r3, 4
/* 80C54DB0  42 00 FF F8 */	bdnz lbl_80C54DA8
/* 80C54DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C54DB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C54DBC  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 80C54DC0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C54DC4  38 00 00 01 */	li r0, 1
/* 80C54DC8  90 1D 00 70 */	stw r0, 0x70(r29)
/* 80C54DCC  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80C54DD0  3C 80 80 C5 */	lis r4, d_a_obj_lp__stringBase0@ha /* 0x80C55AC0@ha */
/* 80C54DD4  38 84 5A C0 */	addi r4, r4, d_a_obj_lp__stringBase0@l /* 0x80C55AC0@l */
/* 80C54DD8  4B 71 3B BD */	bl strcmp
/* 80C54DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C54DE0  40 82 00 14 */	bne lbl_80C54DF4
/* 80C54DE4  3C 60 80 C5 */	lis r3, s_ks_sub__FPvPv@ha /* 0x80C542FC@ha */
/* 80C54DE8  38 63 42 FC */	addi r3, r3, s_ks_sub__FPvPv@l /* 0x80C542FC@l */
/* 80C54DEC  7F 44 D3 78 */	mr r4, r26
/* 80C54DF0  4B 3C C5 49 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80C54DF4:
/* 80C54DF4  3C 7A 00 01 */	addis r3, r26, 1
/* 80C54DF8  88 03 AD B1 */	lbz r0, -0x524f(r3)
/* 80C54DFC  28 00 00 00 */	cmplwi r0, 0
/* 80C54E00  41 82 00 8C */	beq lbl_80C54E8C
/* 80C54E04  38 00 00 ED */	li r0, 0xed
/* 80C54E08  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C54E0C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80C54E10  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80C54E14  38 81 00 0A */	addi r4, r1, 0xa
/* 80C54E18  4B 3C 49 E1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C54E1C  28 03 00 00 */	cmplwi r3, 0
/* 80C54E20  41 82 00 6C */	beq lbl_80C54E8C
/* 80C54E24  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C54E28  20 00 00 02 */	subfic r0, r0, 2
/* 80C54E2C  7C 00 00 34 */	cntlzw r0, r0
/* 80C54E30  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80C54E34  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80C54E38  38 00 02 E4 */	li r0, 0x2e4
/* 80C54E3C  B0 01 00 08 */	sth r0, 8(r1)
/* 80C54E40  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80C54E44  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80C54E48  38 81 00 08 */	addi r4, r1, 8
/* 80C54E4C  4B 3C 49 AD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C54E50  28 03 00 00 */	cmplwi r3, 0
/* 80C54E54  41 82 00 30 */	beq lbl_80C54E84
/* 80C54E58  A8 03 13 B4 */	lha r0, 0x13b4(r3)
/* 80C54E5C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80C54E60  40 82 00 24 */	bne lbl_80C54E84
/* 80C54E64  A8 03 13 B6 */	lha r0, 0x13b6(r3)
/* 80C54E68  2C 00 00 14 */	cmpwi r0, 0x14
/* 80C54E6C  40 81 00 18 */	ble lbl_80C54E84
/* 80C54E70  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C54E74  40 80 00 10 */	bge lbl_80C54E84
/* 80C54E78  38 00 00 01 */	li r0, 1
/* 80C54E7C  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80C54E80  48 00 00 0C */	b lbl_80C54E8C
lbl_80C54E84:
/* 80C54E84  38 00 00 00 */	li r0, 0
/* 80C54E88  90 1D 00 44 */	stw r0, 0x44(r29)
lbl_80C54E8C:
/* 80C54E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C54E90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C54E94  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80C54E98  3B 9A 05 7C */	addi r28, r26, 0x57c
/* 80C54E9C  3B 60 00 00 */	li r27, 0
/* 80C54EA0  3F 3A 00 01 */	addis r25, r26, 1
/* 80C54EA4  48 00 00 BC */	b lbl_80C54F60
lbl_80C54EA8:
/* 80C54EA8  A8 1A 05 74 */	lha r0, 0x574(r26)
/* 80C54EAC  7C 00 DA 14 */	add r0, r0, r27
/* 80C54EB0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80C54EB4  40 82 00 7C */	bne lbl_80C54F30
/* 80C54EB8  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80C54EBC  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 80C54EC0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C54EC4  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 80C54EC8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80C54ECC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C54ED0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80C54ED4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C54ED8  EC 21 00 2A */	fadds f1, f1, f0
/* 80C54EDC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C54EE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54EE4  40 81 00 0C */	ble lbl_80C54EF0
/* 80C54EE8  FC 00 08 34 */	frsqrte f0, f1
/* 80C54EEC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C54EF0:
/* 80C54EF0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80C54EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54EF8  40 80 00 10 */	bge lbl_80C54F08
/* 80C54EFC  38 00 00 00 */	li r0, 0
/* 80C54F00  98 1C 00 4F */	stb r0, 0x4f(r28)
/* 80C54F04  48 00 00 0C */	b lbl_80C54F10
lbl_80C54F08:
/* 80C54F08  38 00 00 01 */	li r0, 1
/* 80C54F0C  98 1C 00 4F */	stb r0, 0x4f(r28)
lbl_80C54F10:
/* 80C54F10  2C 1B 00 00 */	cmpwi r27, 0
/* 80C54F14  40 82 00 1C */	bne lbl_80C54F30
/* 80C54F18  3C 7A 00 01 */	addis r3, r26, 1
/* 80C54F1C  88 03 AD B1 */	lbz r0, -0x524f(r3)
/* 80C54F20  28 00 00 00 */	cmplwi r0, 0
/* 80C54F24  41 82 00 0C */	beq lbl_80C54F30
/* 80C54F28  88 1C 00 4F */	lbz r0, 0x4f(r28)
/* 80C54F2C  98 03 AD B2 */	stb r0, -0x524e(r3)
lbl_80C54F30:
/* 80C54F30  88 1C 00 4F */	lbz r0, 0x4f(r28)
/* 80C54F34  28 00 00 00 */	cmplwi r0, 0
/* 80C54F38  41 82 00 14 */	beq lbl_80C54F4C
/* 80C54F3C  3C 7A 00 01 */	addis r3, r26, 1
/* 80C54F40  88 03 AD B0 */	lbz r0, -0x5250(r3)
/* 80C54F44  28 00 00 00 */	cmplwi r0, 0
/* 80C54F48  41 82 00 10 */	beq lbl_80C54F58
lbl_80C54F4C:
/* 80C54F4C  7F 43 D3 78 */	mr r3, r26
/* 80C54F50  7F 84 E3 78 */	mr r4, r28
/* 80C54F54  4B FF F7 85 */	bl hasu_action__FP12obj_lp_classP5wd_ss
lbl_80C54F58:
/* 80C54F58  3B 7B 00 01 */	addi r27, r27, 1
/* 80C54F5C  3B 9C 00 54 */	addi r28, r28, 0x54
lbl_80C54F60:
/* 80C54F60  80 19 AD 98 */	lwz r0, -0x5268(r25)
/* 80C54F64  7C 1B 00 00 */	cmpw r27, r0
/* 80C54F68  41 80 FF 40 */	blt lbl_80C54EA8
/* 80C54F6C  C3 FE 00 08 */	lfs f31, 8(r30)
/* 80C54F70  A8 1A 05 74 */	lha r0, 0x574(r26)
/* 80C54F74  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80C54F78  40 82 00 54 */	bne lbl_80C54FCC
/* 80C54F7C  83 3F 5D AC */	lwz r25, 0x5dac(r31)
/* 80C54F80  7F 43 D3 78 */	mr r3, r26
/* 80C54F84  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80C54F88  4B FF FB 99 */	bl set_out_check__FP12obj_lp_classP4cXyz
/* 80C54F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80C54F90  40 82 00 3C */	bne lbl_80C54FCC
/* 80C54F94  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80C54F98  FC 00 02 10 */	fabs f0, f0
/* 80C54F9C  FC 20 00 18 */	frsp f1, f0
/* 80C54FA0  FF E0 08 90 */	fmr f31, f1
/* 80C54FA4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C54FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54FAC  40 81 00 20 */	ble lbl_80C54FCC
/* 80C54FB0  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80C54FB4  3C 7A 00 01 */	addis r3, r26, 1
/* 80C54FB8  D0 03 AD 9C */	stfs f0, -0x5264(r3)
/* 80C54FBC  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80C54FC0  D0 03 AD A0 */	stfs f0, -0x5260(r3)
/* 80C54FC4  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80C54FC8  D0 03 AD A4 */	stfs f0, -0x525c(r3)
lbl_80C54FCC:
/* 80C54FCC  4B 55 34 A9 */	bl dKy_Sound_get__Fv
/* 80C54FD0  7C 79 1B 78 */	mr r25, r3
/* 80C54FD4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80C54FD8  3C 03 00 01 */	addis r0, r3, 1
/* 80C54FDC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C54FE0  41 82 00 74 */	beq lbl_80C55054
/* 80C54FE4  A8 7A 05 74 */	lha r3, 0x574(r26)
/* 80C54FE8  38 03 00 03 */	addi r0, r3, 3
/* 80C54FEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C54FF0  40 82 00 64 */	bne lbl_80C55054
/* 80C54FF4  7F 43 D3 78 */	mr r3, r26
/* 80C54FF8  7F 24 CB 78 */	mr r4, r25
/* 80C54FFC  4B FF FB 25 */	bl set_out_check__FP12obj_lp_classP4cXyz
/* 80C55000  2C 03 00 00 */	cmpwi r3, 0
/* 80C55004  40 82 00 50 */	bne lbl_80C55054
/* 80C55008  80 19 00 0C */	lwz r0, 0xc(r25)
/* 80C5500C  C8 3E 00 90 */	lfd f1, 0x90(r30)
/* 80C55010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C55014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55018  3C 00 43 30 */	lis r0, 0x4330
/* 80C5501C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C55020  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C55024  EF E0 08 28 */	fsubs f31, f0, f1
/* 80C55028  C0 19 00 00 */	lfs f0, 0(r25)
/* 80C5502C  3C 7A 00 01 */	addis r3, r26, 1
/* 80C55030  D0 03 AD 9C */	stfs f0, -0x5264(r3)
/* 80C55034  C0 19 00 04 */	lfs f0, 4(r25)
/* 80C55038  D0 03 AD A0 */	stfs f0, -0x5260(r3)
/* 80C5503C  C0 19 00 08 */	lfs f0, 8(r25)
/* 80C55040  D0 03 AD A4 */	stfs f0, -0x525c(r3)
/* 80C55044  38 00 00 01 */	li r0, 1
/* 80C55048  90 19 00 10 */	stw r0, 0x10(r25)
/* 80C5504C  38 00 FF FF */	li r0, -1
/* 80C55050  90 19 00 14 */	stw r0, 0x14(r25)
lbl_80C55054:
/* 80C55054  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C55058  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C5505C  40 81 00 3C */	ble lbl_80C55098
/* 80C55060  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80C55064  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80C55068  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80C5506C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C55070  40 81 00 08 */	ble lbl_80C55078
/* 80C55074  FC 20 00 90 */	fmr f1, f0
lbl_80C55078:
/* 80C55078  3C 7A 00 01 */	addis r3, r26, 1
/* 80C5507C  C0 03 AD A8 */	lfs f0, -0x5258(r3)
/* 80C55080  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C55084  4C 40 13 82 */	cror 2, 0, 2
/* 80C55088  40 82 00 10 */	bne lbl_80C55098
/* 80C5508C  D0 23 AD A8 */	stfs f1, -0x5258(r3)
/* 80C55090  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C55094  D0 03 AD AC */	stfs f0, -0x5254(r3)
lbl_80C55098:
/* 80C55098  3C 7A 00 01 */	addis r3, r26, 1
/* 80C5509C  C0 03 AD A8 */	lfs f0, -0x5258(r3)
/* 80C550A0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C550A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C550A8  40 81 00 24 */	ble lbl_80C550CC
/* 80C550AC  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80C550B0  38 63 AD A8 */	addi r3, r3, -21080
/* 80C550B4  4B 61 A9 CD */	bl cLib_addCalc0__FPfff
/* 80C550B8  3C 7A 00 01 */	addis r3, r26, 1
/* 80C550BC  C0 23 AD AC */	lfs f1, -0x5254(r3)
/* 80C550C0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80C550C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C550C8  D0 03 AD AC */	stfs f0, -0x5254(r3)
lbl_80C550CC:
/* 80C550CC  38 60 00 01 */	li r3, 1
/* 80C550D0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C550D4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C550D8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C550DC  4B 70 D1 3D */	bl _restgpr_25
/* 80C550E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C550E4  7C 08 03 A6 */	mtlr r0
/* 80C550E8  38 21 00 50 */	addi r1, r1, 0x50
/* 80C550EC  4E 80 00 20 */	blr 
