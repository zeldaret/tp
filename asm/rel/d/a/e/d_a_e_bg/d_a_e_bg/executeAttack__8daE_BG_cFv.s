lbl_80686C90:
/* 80686C90  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80686C94  7C 08 02 A6 */	mflr r0
/* 80686C98  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80686C9C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80686CA0  4B CD B5 2C */	b _savegpr_25
/* 80686CA4  7C 7F 1B 78 */	mr r31, r3
/* 80686CA8  3C 60 80 69 */	lis r3, lit_3768@ha
/* 80686CAC  3B C3 A2 44 */	addi r30, r3, lit_3768@l
/* 80686CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80686CB4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80686CB8  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 80686CBC  7C 00 07 74 */	extsb r0, r0
/* 80686CC0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80686CC4  7C 7C 02 14 */	add r3, r28, r0
/* 80686CC8  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80686CCC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80686CD0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80686CD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80686CD8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80686CDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80686CE0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80686CE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80686CE8  38 61 00 30 */	addi r3, r1, 0x30
/* 80686CEC  4B 9F 0F 7C */	b __ct__11dBgS_LinChkFv
/* 80686CF0  38 00 0C 00 */	li r0, 0xc00
/* 80686CF4  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 80686CF8  A8 7F 06 9C */	lha r3, 0x69c(r31)
/* 80686CFC  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 80686D00  7C 03 02 14 */	add r0, r3, r0
/* 80686D04  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 80686D08  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80686D0C  2C 00 00 02 */	cmpwi r0, 2
/* 80686D10  41 81 01 D4 */	bgt lbl_80686EE4
/* 80686D14  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80686D18  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80686D1C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80686D20  41 82 00 4C */	beq lbl_80686D6C
/* 80686D24  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80686D28  C0 5F 06 84 */	lfs f2, 0x684(r31)
/* 80686D2C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80686D30  41 82 00 70 */	beq lbl_80686DA0
/* 80686D34  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80686D38  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80686D3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80686D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686D44  4C 41 13 82 */	cror 2, 1, 2
/* 80686D48  40 82 00 58 */	bne lbl_80686DA0
/* 80686D4C  7F E3 FB 78 */	mr r3, r31
/* 80686D50  38 80 00 01 */	li r4, 1
/* 80686D54  38 A0 00 00 */	li r5, 0
/* 80686D58  4B FF EE BD */	bl setActionMode__8daE_BG_cFii
/* 80686D5C  38 61 00 30 */	addi r3, r1, 0x30
/* 80686D60  38 80 FF FF */	li r4, -1
/* 80686D64  4B 9F 0F 78 */	b __dt__11dBgS_LinChkFv
/* 80686D68  48 00 0D B8 */	b lbl_80687B20
lbl_80686D6C:
/* 80686D6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80686D70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80686D74  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80686D78  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80686D7C  40 82 00 24 */	bne lbl_80686DA0
/* 80686D80  7F E3 FB 78 */	mr r3, r31
/* 80686D84  38 80 00 01 */	li r4, 1
/* 80686D88  38 A0 00 00 */	li r5, 0
/* 80686D8C  4B FF EE 89 */	bl setActionMode__8daE_BG_cFii
/* 80686D90  38 61 00 30 */	addi r3, r1, 0x30
/* 80686D94  38 80 FF FF */	li r4, -1
/* 80686D98  4B 9F 0F 44 */	b __dt__11dBgS_LinChkFv
/* 80686D9C  48 00 0D 84 */	b lbl_80687B20
lbl_80686DA0:
/* 80686DA0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80686DA4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80686DA8  4B CC 05 F4 */	b PSVECSquareDistance
/* 80686DAC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80686DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686DB4  40 81 00 58 */	ble lbl_80686E0C
/* 80686DB8  FC 00 08 34 */	frsqrte f0, f1
/* 80686DBC  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80686DC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80686DC4  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80686DC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80686DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80686DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80686DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80686DD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80686DDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80686DE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80686DE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80686DE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80686DEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80686DF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80686DF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80686DF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80686DFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80686E00  FC 21 00 32 */	fmul f1, f1, f0
/* 80686E04  FC 20 08 18 */	frsp f1, f1
/* 80686E08  48 00 00 88 */	b lbl_80686E90
lbl_80686E0C:
/* 80686E0C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80686E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686E14  40 80 00 10 */	bge lbl_80686E24
/* 80686E18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686E1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80686E20  48 00 00 70 */	b lbl_80686E90
lbl_80686E24:
/* 80686E24  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80686E28  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80686E2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80686E30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80686E34  7C 03 00 00 */	cmpw r3, r0
/* 80686E38  41 82 00 14 */	beq lbl_80686E4C
/* 80686E3C  40 80 00 40 */	bge lbl_80686E7C
/* 80686E40  2C 03 00 00 */	cmpwi r3, 0
/* 80686E44  41 82 00 20 */	beq lbl_80686E64
/* 80686E48  48 00 00 34 */	b lbl_80686E7C
lbl_80686E4C:
/* 80686E4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686E50  41 82 00 0C */	beq lbl_80686E5C
/* 80686E54  38 00 00 01 */	li r0, 1
/* 80686E58  48 00 00 28 */	b lbl_80686E80
lbl_80686E5C:
/* 80686E5C  38 00 00 02 */	li r0, 2
/* 80686E60  48 00 00 20 */	b lbl_80686E80
lbl_80686E64:
/* 80686E64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686E68  41 82 00 0C */	beq lbl_80686E74
/* 80686E6C  38 00 00 05 */	li r0, 5
/* 80686E70  48 00 00 10 */	b lbl_80686E80
lbl_80686E74:
/* 80686E74  38 00 00 03 */	li r0, 3
/* 80686E78  48 00 00 08 */	b lbl_80686E80
lbl_80686E7C:
/* 80686E7C  38 00 00 04 */	li r0, 4
lbl_80686E80:
/* 80686E80  2C 00 00 01 */	cmpwi r0, 1
/* 80686E84  40 82 00 0C */	bne lbl_80686E90
/* 80686E88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686E8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80686E90:
/* 80686E90  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80686E94  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 80686E98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80686E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686EA0  41 81 00 24 */	bgt lbl_80686EC4
/* 80686EA4  7F E3 FB 78 */	mr r3, r31
/* 80686EA8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80686EAC  4B 99 39 34 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686EB0  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80686EB4  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 80686EB8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80686EBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686EC0  40 81 00 24 */	ble lbl_80686EE4
lbl_80686EC4:
/* 80686EC4  7F E3 FB 78 */	mr r3, r31
/* 80686EC8  38 80 00 01 */	li r4, 1
/* 80686ECC  38 A0 00 00 */	li r5, 0
/* 80686ED0  4B FF ED 45 */	bl setActionMode__8daE_BG_cFii
/* 80686ED4  38 61 00 30 */	addi r3, r1, 0x30
/* 80686ED8  38 80 FF FF */	li r4, -1
/* 80686EDC  4B 9F 0E 00 */	b __dt__11dBgS_LinChkFv
/* 80686EE0  48 00 0C 40 */	b lbl_80687B20
lbl_80686EE4:
/* 80686EE4  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80686EE8  28 00 00 0A */	cmplwi r0, 0xa
/* 80686EEC  41 81 0C 20 */	bgt lbl_80687B0C
/* 80686EF0  3C 60 80 69 */	lis r3, lit_4648@ha
/* 80686EF4  38 63 A3 A0 */	addi r3, r3, lit_4648@l
/* 80686EF8  54 00 10 3A */	slwi r0, r0, 2
/* 80686EFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80686F00  7C 09 03 A6 */	mtctr r0
/* 80686F04  4E 80 04 20 */	bctr 
lbl_80686F08:
/* 80686F08  7F E3 FB 78 */	mr r3, r31
/* 80686F0C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80686F10  4B 99 38 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686F14  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80686F18  7C 00 18 50 */	subf r0, r0, r3
/* 80686F1C  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 80686F20  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 80686F24  38 80 24 00 */	li r4, 0x2400
/* 80686F28  38 A0 00 08 */	li r5, 8
/* 80686F2C  38 C0 04 00 */	li r6, 0x400
/* 80686F30  38 E0 01 00 */	li r7, 0x100
/* 80686F34  4B BE 96 0C */	b cLib_addCalcAngleS__FPsssss
/* 80686F38  7F E3 FB 78 */	mr r3, r31
/* 80686F3C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80686F40  4B 99 37 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686F44  7C 64 1B 78 */	mr r4, r3
/* 80686F48  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80686F4C  38 A0 00 10 */	li r5, 0x10
/* 80686F50  38 C0 04 00 */	li r6, 0x400
/* 80686F54  38 E0 01 00 */	li r7, 0x100
/* 80686F58  4B BE 95 E8 */	b cLib_addCalcAngleS__FPsssss
/* 80686F5C  7F E3 FB 78 */	mr r3, r31
/* 80686F60  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80686F64  4B 99 37 D4 */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686F68  7C 64 1B 78 */	mr r4, r3
/* 80686F6C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80686F70  38 A0 00 10 */	li r5, 0x10
/* 80686F74  38 C0 04 00 */	li r6, 0x400
/* 80686F78  38 E0 01 00 */	li r7, 0x100
/* 80686F7C  4B BE 95 C4 */	b cLib_addCalcAngleS__FPsssss
/* 80686F80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686F84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686F88  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80686F8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686F90  7C 63 02 14 */	add r3, r3, r0
/* 80686F94  C0 23 00 04 */	lfs f1, 4(r3)
/* 80686F98  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80686F9C  3C 80 80 69 */	lis r4, l_HIO@ha
/* 80686FA0  3B 24 A4 C8 */	addi r25, r4, l_HIO@l
/* 80686FA4  C0 19 00 08 */	lfs f0, 8(r25)
/* 80686FA8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80686FAC  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80686FB0  4B BE 97 90 */	b cLib_chaseF__FPfff
/* 80686FB4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80686FB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686FBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686FC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686FC4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80686FC8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80686FCC  C0 19 00 08 */	lfs f0, 8(r25)
/* 80686FD0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80686FD4  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80686FD8  4B BE 97 68 */	b cLib_chaseF__FPfff
/* 80686FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80686FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80686FE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80686FE8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80686FEC  40 82 00 34 */	bne lbl_80687020
/* 80686FF0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80686FF4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80686FF8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80686FFC  41 82 00 24 */	beq lbl_80687020
/* 80687000  38 00 00 01 */	li r0, 1
/* 80687004  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687008  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8068700C  4B BE 09 80 */	b cM_rndFX__Ff
/* 80687010  FC 00 08 1E */	fctiwz f0, f1
/* 80687014  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80687018  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8068701C  B0 1F 06 9A */	sth r0, 0x69a(r31)
lbl_80687020:
/* 80687020  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80687024  4B 9F D2 9C */	b ChkAtHit__12dCcD_GObjInfFv
/* 80687028  28 03 00 00 */	cmplwi r3, 0
/* 8068702C  41 82 0A E0 */	beq lbl_80687B0C
/* 80687030  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80687034  4B 9F D3 24 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 80687038  4B BD CA 10 */	b GetAc__8cCcD_ObjFv
/* 8068703C  A8 03 00 08 */	lha r0, 8(r3)
/* 80687040  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80687044  40 82 0A C8 */	bne lbl_80687B0C
/* 80687048  38 00 00 0A */	li r0, 0xa
/* 8068704C  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687050  38 00 00 1E */	li r0, 0x1e
/* 80687054  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 80687058  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8068705C  4B BE 09 30 */	b cM_rndFX__Ff
/* 80687060  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80687064  EC 00 08 2A */	fadds f0, f0, f1
/* 80687068  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8068706C  38 00 18 00 */	li r0, 0x1800
/* 80687070  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80687074  38 00 40 00 */	li r0, 0x4000
/* 80687078  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 8068707C  48 00 0A 90 */	b lbl_80687B0C
lbl_80687080:
/* 80687080  38 00 10 00 */	li r0, 0x1000
/* 80687084  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 80687088  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 8068708C  38 80 10 00 */	li r4, 0x1000
/* 80687090  38 A0 00 08 */	li r5, 8
/* 80687094  38 C0 04 00 */	li r6, 0x400
/* 80687098  38 E0 01 00 */	li r7, 0x100
/* 8068709C  4B BE 94 A4 */	b cLib_addCalcAngleS__FPsssss
/* 806870A0  7F E3 FB 78 */	mr r3, r31
/* 806870A4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806870A8  4B 99 36 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806870AC  7C 64 1B 78 */	mr r4, r3
/* 806870B0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 806870B4  38 A0 00 10 */	li r5, 0x10
/* 806870B8  38 C0 04 00 */	li r6, 0x400
/* 806870BC  38 E0 01 00 */	li r7, 0x100
/* 806870C0  4B BE 94 80 */	b cLib_addCalcAngleS__FPsssss
/* 806870C4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806870C8  38 80 00 00 */	li r4, 0
/* 806870CC  38 A0 00 10 */	li r5, 0x10
/* 806870D0  38 C0 04 00 */	li r6, 0x400
/* 806870D4  38 E0 01 00 */	li r7, 0x100
/* 806870D8  4B BE 94 68 */	b cLib_addCalcAngleS__FPsssss
/* 806870DC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806870E0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806870E4  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 806870E8  4B BE 96 58 */	b cLib_chaseF__FPfff
/* 806870EC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806870F0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806870F4  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806870F8  4B BE 96 48 */	b cLib_chaseF__FPfff
/* 806870FC  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 80687100  28 00 00 00 */	cmplwi r0, 0
/* 80687104  40 82 0A 08 */	bne lbl_80687B0C
/* 80687108  38 00 00 00 */	li r0, 0
/* 8068710C  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687110  48 00 09 FC */	b lbl_80687B0C
lbl_80687114:
/* 80687114  38 00 0C 00 */	li r0, 0xc00
/* 80687118  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 8068711C  A8 7F 06 9A */	lha r3, 0x69a(r31)
/* 80687120  A8 1D 02 32 */	lha r0, 0x232(r29)
/* 80687124  7C 03 02 14 */	add r0, r3, r0
/* 80687128  7C 19 07 34 */	extsh r25, r0
/* 8068712C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80687130  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80687134  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80687138  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8068713C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80687140  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80687144  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80687148  3B A3 A4 C8 */	addi r29, r3, l_HIO@l
/* 8068714C  C0 9D 00 10 */	lfs f4, 0x10(r29)
/* 80687150  57 20 04 38 */	rlwinm r0, r25, 0, 0x10, 0x1c
/* 80687154  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80687158  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8068715C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80687160  EC 04 00 32 */	fmuls f0, f4, f0
/* 80687164  EC 03 00 2A */	fadds f0, f3, f0
/* 80687168  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068716C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80687170  EC 02 00 2A */	fadds f0, f2, f0
/* 80687174  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80687178  3B 63 00 04 */	addi r27, r3, 4
/* 8068717C  7C 1B 04 2E */	lfsx f0, r27, r0
/* 80687180  EC 04 00 32 */	fmuls f0, f4, f0
/* 80687184  EC 01 00 2A */	fadds f0, f1, f0
/* 80687188  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068718C  38 61 00 30 */	addi r3, r1, 0x30
/* 80687190  38 81 00 18 */	addi r4, r1, 0x18
/* 80687194  38 A1 00 24 */	addi r5, r1, 0x24
/* 80687198  38 C0 00 00 */	li r6, 0
/* 8068719C  4B 9F 0B C8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806871A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806871A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806871A8  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 806871AC  7F 43 D3 78 */	mr r3, r26
/* 806871B0  38 81 00 30 */	addi r4, r1, 0x30
/* 806871B4  4B 9E D2 00 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806871B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806871BC  41 82 00 1C */	beq lbl_806871D8
/* 806871C0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806871C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806871C8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806871CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806871D0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 806871D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_806871D8:
/* 806871D8  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806871DC  38 80 18 00 */	li r4, 0x1800
/* 806871E0  38 A0 00 08 */	li r5, 8
/* 806871E4  38 C0 04 00 */	li r6, 0x400
/* 806871E8  38 E0 01 00 */	li r7, 0x100
/* 806871EC  4B BE 93 54 */	b cLib_addCalcAngleS__FPsssss
/* 806871F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806871F4  38 81 00 24 */	addi r4, r1, 0x24
/* 806871F8  4B BE 9A 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806871FC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80687200  7C 00 18 50 */	subf r0, r0, r3
/* 80687204  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 80687208  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8068720C  38 81 00 24 */	addi r4, r1, 0x24
/* 80687210  4B BE 99 F4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687214  7C 64 07 34 */	extsh r4, r3
/* 80687218  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8068721C  38 A0 00 10 */	li r5, 0x10
/* 80687220  38 C0 04 00 */	li r6, 0x400
/* 80687224  38 E0 01 00 */	li r7, 0x100
/* 80687228  4B BE 93 18 */	b cLib_addCalcAngleS__FPsssss
/* 8068722C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687230  38 81 00 24 */	addi r4, r1, 0x24
/* 80687234  4B BE 9A 40 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80687238  7C 64 07 34 */	extsh r4, r3
/* 8068723C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80687240  38 A0 00 10 */	li r5, 0x10
/* 80687244  38 C0 04 00 */	li r6, 0x400
/* 80687248  38 E0 01 00 */	li r7, 0x100
/* 8068724C  4B BE 92 F4 */	b cLib_addCalcAngleS__FPsssss
/* 80687250  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687254  38 81 00 18 */	addi r4, r1, 0x18
/* 80687258  4B CC 01 44 */	b PSVECSquareDistance
/* 8068725C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80687260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687264  40 81 00 58 */	ble lbl_806872BC
/* 80687268  FC 00 08 34 */	frsqrte f0, f1
/* 8068726C  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80687270  FC 44 00 32 */	fmul f2, f4, f0
/* 80687274  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80687278  FC 00 00 32 */	fmul f0, f0, f0
/* 8068727C  FC 01 00 32 */	fmul f0, f1, f0
/* 80687280  FC 03 00 28 */	fsub f0, f3, f0
/* 80687284  FC 02 00 32 */	fmul f0, f2, f0
/* 80687288  FC 44 00 32 */	fmul f2, f4, f0
/* 8068728C  FC 00 00 32 */	fmul f0, f0, f0
/* 80687290  FC 01 00 32 */	fmul f0, f1, f0
/* 80687294  FC 03 00 28 */	fsub f0, f3, f0
/* 80687298  FC 02 00 32 */	fmul f0, f2, f0
/* 8068729C  FC 44 00 32 */	fmul f2, f4, f0
/* 806872A0  FC 00 00 32 */	fmul f0, f0, f0
/* 806872A4  FC 01 00 32 */	fmul f0, f1, f0
/* 806872A8  FC 03 00 28 */	fsub f0, f3, f0
/* 806872AC  FC 02 00 32 */	fmul f0, f2, f0
/* 806872B0  FC 21 00 32 */	fmul f1, f1, f0
/* 806872B4  FC 20 08 18 */	frsp f1, f1
/* 806872B8  48 00 00 88 */	b lbl_80687340
lbl_806872BC:
/* 806872BC  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 806872C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806872C4  40 80 00 10 */	bge lbl_806872D4
/* 806872C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806872CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806872D0  48 00 00 70 */	b lbl_80687340
lbl_806872D4:
/* 806872D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806872D8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 806872DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806872E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806872E4  7C 03 00 00 */	cmpw r3, r0
/* 806872E8  41 82 00 14 */	beq lbl_806872FC
/* 806872EC  40 80 00 40 */	bge lbl_8068732C
/* 806872F0  2C 03 00 00 */	cmpwi r3, 0
/* 806872F4  41 82 00 20 */	beq lbl_80687314
/* 806872F8  48 00 00 34 */	b lbl_8068732C
lbl_806872FC:
/* 806872FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80687300  41 82 00 0C */	beq lbl_8068730C
/* 80687304  38 00 00 01 */	li r0, 1
/* 80687308  48 00 00 28 */	b lbl_80687330
lbl_8068730C:
/* 8068730C  38 00 00 02 */	li r0, 2
/* 80687310  48 00 00 20 */	b lbl_80687330
lbl_80687314:
/* 80687314  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80687318  41 82 00 0C */	beq lbl_80687324
/* 8068731C  38 00 00 05 */	li r0, 5
/* 80687320  48 00 00 10 */	b lbl_80687330
lbl_80687324:
/* 80687324  38 00 00 03 */	li r0, 3
/* 80687328  48 00 00 08 */	b lbl_80687330
lbl_8068732C:
/* 8068732C  38 00 00 04 */	li r0, 4
lbl_80687330:
/* 80687330  2C 00 00 01 */	cmpwi r0, 1
/* 80687334  40 82 00 0C */	bne lbl_80687340
/* 80687338  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068733C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80687340:
/* 80687340  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80687344  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80687348  EC 02 00 2A */	fadds f0, f2, f0
/* 8068734C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687350  40 81 00 58 */	ble lbl_806873A8
/* 80687354  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80687358  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068735C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 80687360  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80687364  3C 80 80 69 */	lis r4, l_HIO@ha
/* 80687368  3B 64 A4 C8 */	addi r27, r4, l_HIO@l
/* 8068736C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80687370  EC 20 00 72 */	fmuls f1, f0, f1
/* 80687374  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80687378  4B BE 93 C8 */	b cLib_chaseF__FPfff
/* 8068737C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80687380  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80687384  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80687388  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8068738C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80687390  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80687394  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80687398  EC 20 00 72 */	fmuls f1, f0, f1
/* 8068739C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806873A0  4B BE 93 A0 */	b cLib_chaseF__FPfff
/* 806873A4  48 00 00 4C */	b lbl_806873F0
lbl_806873A8:
/* 806873A8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 806873AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806873B0  7C 3B 04 2E */	lfsx f1, r27, r0
/* 806873B4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806873B8  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806873BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 806873C0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806873C4  4B BE 93 7C */	b cLib_chaseF__FPfff
/* 806873C8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 806873CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806873D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806873D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806873D8  7C 23 04 2E */	lfsx f1, r3, r0
/* 806873DC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806873E0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806873E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806873E8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806873EC  4B BE 93 54 */	b cLib_chaseF__FPfff
lbl_806873F0:
/* 806873F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806873F4  38 81 00 24 */	addi r4, r1, 0x24
/* 806873F8  4B CB FF A4 */	b PSVECSquareDistance
/* 806873FC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80687400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687404  40 81 00 58 */	ble lbl_8068745C
/* 80687408  FC 00 08 34 */	frsqrte f0, f1
/* 8068740C  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80687410  FC 44 00 32 */	fmul f2, f4, f0
/* 80687414  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80687418  FC 00 00 32 */	fmul f0, f0, f0
/* 8068741C  FC 01 00 32 */	fmul f0, f1, f0
/* 80687420  FC 03 00 28 */	fsub f0, f3, f0
/* 80687424  FC 02 00 32 */	fmul f0, f2, f0
/* 80687428  FC 44 00 32 */	fmul f2, f4, f0
/* 8068742C  FC 00 00 32 */	fmul f0, f0, f0
/* 80687430  FC 01 00 32 */	fmul f0, f1, f0
/* 80687434  FC 03 00 28 */	fsub f0, f3, f0
/* 80687438  FC 02 00 32 */	fmul f0, f2, f0
/* 8068743C  FC 44 00 32 */	fmul f2, f4, f0
/* 80687440  FC 00 00 32 */	fmul f0, f0, f0
/* 80687444  FC 01 00 32 */	fmul f0, f1, f0
/* 80687448  FC 03 00 28 */	fsub f0, f3, f0
/* 8068744C  FC 02 00 32 */	fmul f0, f2, f0
/* 80687450  FC 21 00 32 */	fmul f1, f1, f0
/* 80687454  FC 20 08 18 */	frsp f1, f1
/* 80687458  48 00 00 88 */	b lbl_806874E0
lbl_8068745C:
/* 8068745C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80687460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687464  40 80 00 10 */	bge lbl_80687474
/* 80687468  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068746C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80687470  48 00 00 70 */	b lbl_806874E0
lbl_80687474:
/* 80687474  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80687478  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8068747C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80687480  3C 00 7F 80 */	lis r0, 0x7f80
/* 80687484  7C 03 00 00 */	cmpw r3, r0
/* 80687488  41 82 00 14 */	beq lbl_8068749C
/* 8068748C  40 80 00 40 */	bge lbl_806874CC
/* 80687490  2C 03 00 00 */	cmpwi r3, 0
/* 80687494  41 82 00 20 */	beq lbl_806874B4
/* 80687498  48 00 00 34 */	b lbl_806874CC
lbl_8068749C:
/* 8068749C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806874A0  41 82 00 0C */	beq lbl_806874AC
/* 806874A4  38 00 00 01 */	li r0, 1
/* 806874A8  48 00 00 28 */	b lbl_806874D0
lbl_806874AC:
/* 806874AC  38 00 00 02 */	li r0, 2
/* 806874B0  48 00 00 20 */	b lbl_806874D0
lbl_806874B4:
/* 806874B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806874B8  41 82 00 0C */	beq lbl_806874C4
/* 806874BC  38 00 00 05 */	li r0, 5
/* 806874C0  48 00 00 10 */	b lbl_806874D0
lbl_806874C4:
/* 806874C4  38 00 00 03 */	li r0, 3
/* 806874C8  48 00 00 08 */	b lbl_806874D0
lbl_806874CC:
/* 806874CC  38 00 00 04 */	li r0, 4
lbl_806874D0:
/* 806874D0  2C 00 00 01 */	cmpwi r0, 1
/* 806874D4  40 82 00 0C */	bne lbl_806874E0
/* 806874D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806874DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806874E0:
/* 806874E0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806874E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806874E8  40 80 00 40 */	bge lbl_80687528
/* 806874EC  88 7F 06 AE */	lbz r3, 0x6ae(r31)
/* 806874F0  38 03 00 01 */	addi r0, r3, 1
/* 806874F4  98 1F 06 AE */	stb r0, 0x6ae(r31)
/* 806874F8  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 806874FC  28 00 00 1E */	cmplwi r0, 0x1e
/* 80687500  40 81 00 30 */	ble lbl_80687530
/* 80687504  38 00 00 00 */	li r0, 0
/* 80687508  98 1F 06 AE */	stb r0, 0x6ae(r31)
/* 8068750C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80687510  4B BE 04 7C */	b cM_rndFX__Ff
/* 80687514  FC 00 08 1E */	fctiwz f0, f1
/* 80687518  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8068751C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80687520  B0 1F 06 9A */	sth r0, 0x69a(r31)
/* 80687524  48 00 00 0C */	b lbl_80687530
lbl_80687528:
/* 80687528  38 00 00 00 */	li r0, 0
/* 8068752C  98 1F 06 AE */	stb r0, 0x6ae(r31)
lbl_80687530:
/* 80687530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80687534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80687538  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8068753C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80687540  41 82 00 10 */	beq lbl_80687550
/* 80687544  38 00 00 00 */	li r0, 0
/* 80687548  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8068754C  48 00 05 C0 */	b lbl_80687B0C
lbl_80687550:
/* 80687550  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80687554  2C 00 00 00 */	cmpwi r0, 0
/* 80687558  40 82 05 B4 */	bne lbl_80687B0C
/* 8068755C  3B 60 00 00 */	li r27, 0
/* 80687560  3B 5A 47 80 */	addi r26, r26, 0x4780
/* 80687564  7F 43 D3 78 */	mr r3, r26
/* 80687568  4B 9E C2 7C */	b LockonTruth__12dAttention_cFv
/* 8068756C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80687570  41 82 00 20 */	beq lbl_80687590
/* 80687574  7F 43 D3 78 */	mr r3, r26
/* 80687578  38 80 00 00 */	li r4, 0
/* 8068757C  4B 9E BF C0 */	b LockonTarget__12dAttention_cFl
/* 80687580  7C 03 F8 40 */	cmplw r3, r31
/* 80687584  40 82 00 0C */	bne lbl_80687590
/* 80687588  3B 60 00 01 */	li r27, 1
/* 8068758C  48 00 01 3C */	b lbl_806876C8
lbl_80687590:
/* 80687590  7F E3 FB 78 */	mr r3, r31
/* 80687594  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80687598  4B 99 31 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068759C  7C 64 1B 78 */	mr r4, r3
/* 806875A0  7F 23 CB 78 */	mr r3, r25
/* 806875A4  4B BE 98 80 */	b cLib_distanceAngleS__Fss
/* 806875A8  7C 60 07 34 */	extsh r0, r3
/* 806875AC  2C 00 68 00 */	cmpwi r0, 0x6800
/* 806875B0  40 81 01 18 */	ble lbl_806876C8
/* 806875B4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806875B8  38 81 00 24 */	addi r4, r1, 0x24
/* 806875BC  4B CB FD E0 */	b PSVECSquareDistance
/* 806875C0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806875C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806875C8  40 81 00 58 */	ble lbl_80687620
/* 806875CC  FC 00 08 34 */	frsqrte f0, f1
/* 806875D0  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 806875D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806875D8  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 806875DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806875E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806875E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806875E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806875EC  FC 44 00 32 */	fmul f2, f4, f0
/* 806875F0  FC 00 00 32 */	fmul f0, f0, f0
/* 806875F4  FC 01 00 32 */	fmul f0, f1, f0
/* 806875F8  FC 03 00 28 */	fsub f0, f3, f0
/* 806875FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80687600  FC 44 00 32 */	fmul f2, f4, f0
/* 80687604  FC 00 00 32 */	fmul f0, f0, f0
/* 80687608  FC 01 00 32 */	fmul f0, f1, f0
/* 8068760C  FC 03 00 28 */	fsub f0, f3, f0
/* 80687610  FC 02 00 32 */	fmul f0, f2, f0
/* 80687614  FC 21 00 32 */	fmul f1, f1, f0
/* 80687618  FC 20 08 18 */	frsp f1, f1
/* 8068761C  48 00 00 88 */	b lbl_806876A4
lbl_80687620:
/* 80687620  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80687624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687628  40 80 00 10 */	bge lbl_80687638
/* 8068762C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80687630  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80687634  48 00 00 70 */	b lbl_806876A4
lbl_80687638:
/* 80687638  D0 21 00 08 */	stfs f1, 8(r1)
/* 8068763C  80 81 00 08 */	lwz r4, 8(r1)
/* 80687640  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80687644  3C 00 7F 80 */	lis r0, 0x7f80
/* 80687648  7C 03 00 00 */	cmpw r3, r0
/* 8068764C  41 82 00 14 */	beq lbl_80687660
/* 80687650  40 80 00 40 */	bge lbl_80687690
/* 80687654  2C 03 00 00 */	cmpwi r3, 0
/* 80687658  41 82 00 20 */	beq lbl_80687678
/* 8068765C  48 00 00 34 */	b lbl_80687690
lbl_80687660:
/* 80687660  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80687664  41 82 00 0C */	beq lbl_80687670
/* 80687668  38 00 00 01 */	li r0, 1
/* 8068766C  48 00 00 28 */	b lbl_80687694
lbl_80687670:
/* 80687670  38 00 00 02 */	li r0, 2
/* 80687674  48 00 00 20 */	b lbl_80687694
lbl_80687678:
/* 80687678  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068767C  41 82 00 0C */	beq lbl_80687688
/* 80687680  38 00 00 05 */	li r0, 5
/* 80687684  48 00 00 10 */	b lbl_80687694
lbl_80687688:
/* 80687688  38 00 00 03 */	li r0, 3
/* 8068768C  48 00 00 08 */	b lbl_80687694
lbl_80687690:
/* 80687690  38 00 00 04 */	li r0, 4
lbl_80687694:
/* 80687694  2C 00 00 01 */	cmpwi r0, 1
/* 80687698  40 82 00 0C */	bne lbl_806876A4
/* 8068769C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806876A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806876A4:
/* 806876A4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806876A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806876AC  40 80 00 0C */	bge lbl_806876B8
/* 806876B0  3B 60 00 01 */	li r27, 1
/* 806876B4  48 00 00 14 */	b lbl_806876C8
lbl_806876B8:
/* 806876B8  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806876BC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806876C0  41 82 00 08 */	beq lbl_806876C8
/* 806876C4  3B 60 00 01 */	li r27, 1
lbl_806876C8:
/* 806876C8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 806876CC  41 82 04 40 */	beq lbl_80687B0C
/* 806876D0  38 00 00 02 */	li r0, 2
/* 806876D4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 806876D8  38 00 00 1E */	li r0, 0x1e
/* 806876DC  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 806876E0  48 00 04 2C */	b lbl_80687B0C
lbl_806876E4:
/* 806876E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806876E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806876EC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806876F0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806876F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806876F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806876FC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80687700  EC 01 00 2A */	fadds f0, f1, f0
/* 80687704  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80687708  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 8068770C  38 80 08 00 */	li r4, 0x800
/* 80687710  38 A0 00 08 */	li r5, 8
/* 80687714  38 C0 04 00 */	li r6, 0x400
/* 80687718  38 E0 01 00 */	li r7, 0x100
/* 8068771C  4B BE 8E 24 */	b cLib_addCalcAngleS__FPsssss
/* 80687720  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687724  38 81 00 24 */	addi r4, r1, 0x24
/* 80687728  4B BE 94 DC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8068772C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80687730  7C 00 18 50 */	subf r0, r0, r3
/* 80687734  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 80687738  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8068773C  38 81 00 24 */	addi r4, r1, 0x24
/* 80687740  4B BE 94 C4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687744  7C 64 07 34 */	extsh r4, r3
/* 80687748  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8068774C  38 A0 00 10 */	li r5, 0x10
/* 80687750  38 C0 04 00 */	li r6, 0x400
/* 80687754  38 E0 01 00 */	li r7, 0x100
/* 80687758  4B BE 8D E8 */	b cLib_addCalcAngleS__FPsssss
/* 8068775C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80687760  38 80 00 00 */	li r4, 0
/* 80687764  38 A0 00 10 */	li r5, 0x10
/* 80687768  38 C0 04 00 */	li r6, 0x400
/* 8068776C  38 E0 01 00 */	li r7, 0x100
/* 80687770  4B BE 8D D0 */	b cLib_addCalcAngleS__FPsssss
/* 80687774  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80687778  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8068777C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80687780  4B BE 8F C0 */	b cLib_chaseF__FPfff
/* 80687784  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80687788  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8068778C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80687790  4B BE 8F B0 */	b cLib_chaseF__FPfff
/* 80687794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80687798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068779C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806877A0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806877A4  41 82 00 10 */	beq lbl_806877B4
/* 806877A8  38 00 00 00 */	li r0, 0
/* 806877AC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 806877B0  48 00 03 5C */	b lbl_80687B0C
lbl_806877B4:
/* 806877B4  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 806877B8  28 00 00 00 */	cmplwi r0, 0
/* 806877BC  40 82 03 50 */	bne lbl_80687B0C
/* 806877C0  38 00 00 03 */	li r0, 3
/* 806877C4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 806877C8  38 00 00 0A */	li r0, 0xa
/* 806877CC  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 806877D0  38 00 20 00 */	li r0, 0x2000
/* 806877D4  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 806877D8  48 00 03 34 */	b lbl_80687B0C
lbl_806877DC:
/* 806877DC  38 00 00 01 */	li r0, 1
/* 806877E0  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 806877E4  38 00 10 00 */	li r0, 0x1000
/* 806877E8  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 806877EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806877F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806877F4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806877F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806877FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80687800  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80687804  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80687808  EC 01 00 2A */	fadds f0, f1, f0
/* 8068780C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80687810  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 80687814  38 80 20 00 */	li r4, 0x2000
/* 80687818  38 A0 00 08 */	li r5, 8
/* 8068781C  38 C0 04 00 */	li r6, 0x400
/* 80687820  38 E0 01 00 */	li r7, 0x100
/* 80687824  4B BE 8D 1C */	b cLib_addCalcAngleS__FPsssss
/* 80687828  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8068782C  38 81 00 24 */	addi r4, r1, 0x24
/* 80687830  4B BE 93 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687834  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80687838  7C 00 18 50 */	subf r0, r0, r3
/* 8068783C  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 80687840  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687844  38 81 00 24 */	addi r4, r1, 0x24
/* 80687848  4B BE 93 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8068784C  7C 64 07 34 */	extsh r4, r3
/* 80687850  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80687854  38 A0 00 10 */	li r5, 0x10
/* 80687858  38 C0 04 00 */	li r6, 0x400
/* 8068785C  38 E0 01 00 */	li r7, 0x100
/* 80687860  4B BE 8C E0 */	b cLib_addCalcAngleS__FPsssss
/* 80687864  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687868  38 81 00 24 */	addi r4, r1, 0x24
/* 8068786C  4B BE 94 08 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80687870  7C 64 07 34 */	extsh r4, r3
/* 80687874  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80687878  38 A0 00 10 */	li r5, 0x10
/* 8068787C  38 C0 04 00 */	li r6, 0x400
/* 80687880  38 E0 01 00 */	li r7, 0x100
/* 80687884  4B BE 8C BC */	b cLib_addCalcAngleS__FPsssss
/* 80687888  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8068788C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80687890  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80687894  4B BE 8E AC */	b cLib_chaseF__FPfff
/* 80687898  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 8068789C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806878A0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806878A4  4B BE 8E 9C */	b cLib_chaseF__FPfff
/* 806878A8  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 806878AC  28 00 00 00 */	cmplwi r0, 0
/* 806878B0  40 82 02 5C */	bne lbl_80687B0C
/* 806878B4  38 00 00 04 */	li r0, 4
/* 806878B8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 806878BC  38 00 00 3C */	li r0, 0x3c
/* 806878C0  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 806878C4  48 00 02 48 */	b lbl_80687B0C
lbl_806878C8:
/* 806878C8  38 00 00 01 */	li r0, 1
/* 806878CC  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 806878D0  38 00 10 00 */	li r0, 0x1000
/* 806878D4  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 806878D8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806878DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806878E0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806878E4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806878E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806878EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806878F0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806878F4  EC 01 00 2A */	fadds f0, f1, f0
/* 806878F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806878FC  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 80687900  38 80 10 00 */	li r4, 0x1000
/* 80687904  38 A0 00 08 */	li r5, 8
/* 80687908  38 C0 04 00 */	li r6, 0x400
/* 8068790C  38 E0 01 00 */	li r7, 0x100
/* 80687910  4B BE 8C 30 */	b cLib_addCalcAngleS__FPsssss
/* 80687914  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687918  38 81 00 24 */	addi r4, r1, 0x24
/* 8068791C  4B BE 92 E8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687920  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80687924  7C 00 18 50 */	subf r0, r0, r3
/* 80687928  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 8068792C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687930  38 81 00 24 */	addi r4, r1, 0x24
/* 80687934  4B BE 92 D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687938  7C 64 07 34 */	extsh r4, r3
/* 8068793C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80687940  38 A0 00 10 */	li r5, 0x10
/* 80687944  38 C0 04 00 */	li r6, 0x400
/* 80687948  38 E0 01 00 */	li r7, 0x100
/* 8068794C  4B BE 8B F4 */	b cLib_addCalcAngleS__FPsssss
/* 80687950  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687954  38 81 00 24 */	addi r4, r1, 0x24
/* 80687958  4B BE 93 1C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8068795C  7C 64 07 34 */	extsh r4, r3
/* 80687960  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80687964  38 A0 00 10 */	li r5, 0x10
/* 80687968  38 C0 04 00 */	li r6, 0x400
/* 8068796C  38 E0 01 00 */	li r7, 0x100
/* 80687970  4B BE 8B D0 */	b cLib_addCalcAngleS__FPsssss
/* 80687974  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80687978  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8068797C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80687980  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80687984  7C 63 02 14 */	add r3, r3, r0
/* 80687988  C0 23 00 04 */	lfs f1, 4(r3)
/* 8068798C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80687990  3C 80 80 69 */	lis r4, l_HIO@ha
/* 80687994  3B 24 A4 C8 */	addi r25, r4, l_HIO@l
/* 80687998  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 8068799C  EC 20 00 72 */	fmuls f1, f0, f1
/* 806879A0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806879A4  4B BE 8D 9C */	b cLib_chaseF__FPfff
/* 806879A8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 806879AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806879B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806879B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806879B8  7C 23 04 2E */	lfsx f1, r3, r0
/* 806879BC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806879C0  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 806879C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806879C8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806879CC  4B BE 8D 74 */	b cLib_chaseF__FPfff
/* 806879D0  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 806879D4  4B 9F C8 EC */	b ChkAtHit__12dCcD_GObjInfFv
/* 806879D8  28 03 00 00 */	cmplwi r3, 0
/* 806879DC  41 82 00 54 */	beq lbl_80687A30
/* 806879E0  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 806879E4  4B 9F C9 74 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 806879E8  4B BD C0 60 */	b GetAc__8cCcD_ObjFv
/* 806879EC  A8 03 00 08 */	lha r0, 8(r3)
/* 806879F0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 806879F4  40 82 00 3C */	bne lbl_80687A30
/* 806879F8  38 00 00 05 */	li r0, 5
/* 806879FC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687A00  38 00 00 1E */	li r0, 0x1e
/* 80687A04  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 80687A08  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80687A0C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80687A10  38 00 18 00 */	li r0, 0x1800
/* 80687A14  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80687A18  38 00 20 00 */	li r0, 0x2000
/* 80687A1C  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 80687A20  38 61 00 30 */	addi r3, r1, 0x30
/* 80687A24  38 80 FF FF */	li r4, -1
/* 80687A28  4B 9F 02 B4 */	b __dt__11dBgS_LinChkFv
/* 80687A2C  48 00 00 F4 */	b lbl_80687B20
lbl_80687A30:
/* 80687A30  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 80687A34  28 00 00 00 */	cmplwi r0, 0
/* 80687A38  40 82 00 D4 */	bne lbl_80687B0C
/* 80687A3C  38 00 00 00 */	li r0, 0
/* 80687A40  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687A44  38 00 00 C8 */	li r0, 0xc8
/* 80687A48  90 1F 06 90 */	stw r0, 0x690(r31)
/* 80687A4C  48 00 00 C0 */	b lbl_80687B0C
lbl_80687A50:
/* 80687A50  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80687A54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80687A58  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80687A5C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80687A60  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80687A64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80687A68  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80687A6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80687A70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80687A74  38 00 10 00 */	li r0, 0x1000
/* 80687A78  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 80687A7C  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 80687A80  38 80 10 00 */	li r4, 0x1000
/* 80687A84  38 A0 00 08 */	li r5, 8
/* 80687A88  38 C0 04 00 */	li r6, 0x400
/* 80687A8C  38 E0 01 00 */	li r7, 0x100
/* 80687A90  4B BE 8A B0 */	b cLib_addCalcAngleS__FPsssss
/* 80687A94  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80687A98  38 81 00 24 */	addi r4, r1, 0x24
/* 80687A9C  4B BE 91 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80687AA0  7C 64 07 34 */	extsh r4, r3
/* 80687AA4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80687AA8  38 A0 00 10 */	li r5, 0x10
/* 80687AAC  38 C0 04 00 */	li r6, 0x400
/* 80687AB0  38 E0 01 00 */	li r7, 0x100
/* 80687AB4  4B BE 8A 8C */	b cLib_addCalcAngleS__FPsssss
/* 80687AB8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80687ABC  38 80 00 00 */	li r4, 0
/* 80687AC0  38 A0 00 10 */	li r5, 0x10
/* 80687AC4  38 C0 04 00 */	li r6, 0x400
/* 80687AC8  38 E0 01 00 */	li r7, 0x100
/* 80687ACC  4B BE 8A 74 */	b cLib_addCalcAngleS__FPsssss
/* 80687AD0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80687AD4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80687AD8  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80687ADC  4B BE 8C 64 */	b cLib_chaseF__FPfff
/* 80687AE0  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80687AE4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80687AE8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80687AEC  4B BE 8C 54 */	b cLib_chaseF__FPfff
/* 80687AF0  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 80687AF4  28 00 00 00 */	cmplwi r0, 0
/* 80687AF8  40 82 00 14 */	bne lbl_80687B0C
/* 80687AFC  38 00 00 00 */	li r0, 0
/* 80687B00  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80687B04  38 00 00 C8 */	li r0, 0xc8
/* 80687B08  90 1F 06 90 */	stw r0, 0x690(r31)
lbl_80687B0C:
/* 80687B0C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80687B10  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80687B14  38 61 00 30 */	addi r3, r1, 0x30
/* 80687B18  38 80 FF FF */	li r4, -1
/* 80687B1C  4B 9F 01 C0 */	b __dt__11dBgS_LinChkFv
lbl_80687B20:
/* 80687B20  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80687B24  4B CD A6 F4 */	b _restgpr_25
/* 80687B28  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80687B2C  7C 08 03 A6 */	mtlr r0
/* 80687B30  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80687B34  4E 80 00 20 */	blr 
