lbl_804B3B7C:
/* 804B3B7C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804B3B80  7C 08 02 A6 */	mflr r0
/* 804B3B84  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804B3B88  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804B3B8C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804B3B90  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 804B3B94  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 804B3B98  39 61 00 80 */	addi r11, r1, 0x80
/* 804B3B9C  4B EA E6 30 */	b _savegpr_25
/* 804B3BA0  7C 7B 1B 78 */	mr r27, r3
/* 804B3BA4  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B3BA8  3B C3 B5 34 */	addi r30, r3, lit_3879@l
/* 804B3BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B3BB4  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 804B3BB8  80 1B 10 AC */	lwz r0, 0x10ac(r27)
/* 804B3BBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B3BC0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B3BC4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B3BC8  38 81 00 0C */	addi r4, r1, 0xc
/* 804B3BCC  4B B6 5C 2C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B3BD0  7C 7F 1B 78 */	mr r31, r3
/* 804B3BD4  C0 1B 10 60 */	lfs f0, 0x1060(r27)
/* 804B3BD8  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 804B3BDC  C0 1B 10 68 */	lfs f0, 0x1068(r27)
/* 804B3BE0  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 804B3BE4  C0 1B 05 90 */	lfs f0, 0x590(r27)
/* 804B3BE8  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 804B3BEC  3B A0 00 00 */	li r29, 0
/* 804B3BF0  3B 80 00 00 */	li r28, 0
/* 804B3BF4  C0 1B 14 DC */	lfs f0, 0x14dc(r27)
/* 804B3BF8  FC 20 00 50 */	fneg f1, f0
/* 804B3BFC  C3 FB 14 D8 */	lfs f31, 0x14d8(r27)
/* 804B3C00  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3C04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3C08  40 80 00 08 */	bge lbl_804B3C10
/* 804B3C0C  FC 20 00 90 */	fmr f1, f0
lbl_804B3C10:
/* 804B3C10  38 7B 15 08 */	addi r3, r27, 0x1508
/* 804B3C14  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804B3C18  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804B3C1C  4B DB BE 20 */	b cLib_addCalc2__FPffff
/* 804B3C20  38 7B 15 0C */	addi r3, r27, 0x150c
/* 804B3C24  FC 20 F8 90 */	fmr f1, f31
/* 804B3C28  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804B3C2C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804B3C30  4B DB BE 0C */	b cLib_addCalc2__FPffff
/* 804B3C34  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3C38  D0 1B 14 C8 */	stfs f0, 0x14c8(r27)
/* 804B3C3C  D0 1B 14 CC */	stfs f0, 0x14cc(r27)
/* 804B3C40  7F 63 DB 78 */	mr r3, r27
/* 804B3C44  4B FF F5 95 */	bl uki_pl_arm_calc__FP13dmg_rod_class
/* 804B3C48  C0 5B 15 08 */	lfs f2, 0x1508(r27)
/* 804B3C4C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B3C50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B3C54  40 81 01 F4 */	ble lbl_804B3E48
/* 804B3C58  EF E2 00 28 */	fsubs f31, f2, f0
/* 804B3C5C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 804B3C60  EF FF 00 32 */	fmuls f31, f31, f0
/* 804B3C64  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 804B3C68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804B3C6C  40 81 00 08 */	ble lbl_804B3C74
/* 804B3C70  FF E0 00 90 */	fmr f31, f0
lbl_804B3C74:
/* 804B3C74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B3C78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B3C7C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3C80  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B3C84  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 804B3C88  C0 1B 15 0C */	lfs f0, 0x150c(r27)
/* 804B3C8C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B3C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3C94  FC 00 00 1E */	fctiwz f0, f0
/* 804B3C98  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804B3C9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B3CA0  7C 04 02 14 */	add r0, r4, r0
/* 804B3CA4  7C 04 07 34 */	extsh r4, r0
/* 804B3CA8  4B B5 87 34 */	b mDoMtx_YrotS__FPA4_fs
/* 804B3CAC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3CB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804B3CB4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804B3CB8  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 804B3CBC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B3CC0  38 61 00 40 */	addi r3, r1, 0x40
/* 804B3CC4  38 81 00 34 */	addi r4, r1, 0x34
/* 804B3CC8  4B DB D2 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B3CCC  38 61 00 34 */	addi r3, r1, 0x34
/* 804B3CD0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B3CD4  7C 65 1B 78 */	mr r5, r3
/* 804B3CD8  4B E9 33 B8 */	b PSVECAdd
/* 804B3CDC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 804B3CE0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804B3CE4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B3CE8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804B3CEC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804B3CF0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804B3CF4  EC 42 00 28 */	fsubs f2, f2, f0
/* 804B3CF8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 804B3CFC  4B DB 39 78 */	b cM_atan2s__Fff
/* 804B3D00  7C 64 1B 78 */	mr r4, r3
/* 804B3D04  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804B3D08  EC 20 00 32 */	fmuls f1, f0, f0
/* 804B3D0C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804B3D10  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B3D14  EC 21 00 2A */	fadds f1, f1, f0
/* 804B3D18  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3D1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3D20  40 81 00 0C */	ble lbl_804B3D2C
/* 804B3D24  FC 00 08 34 */	frsqrte f0, f1
/* 804B3D28  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804B3D2C:
/* 804B3D2C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 804B3D30  EF C0 00 72 */	fmuls f30, f0, f1
/* 804B3D34  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B3D38  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804B3D3C  40 81 00 08 */	ble lbl_804B3D44
/* 804B3D40  FF C0 00 90 */	fmr f30, f0
lbl_804B3D44:
/* 804B3D44  C0 7F 05 BC */	lfs f3, 0x5bc(r31)
/* 804B3D48  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 804B3D4C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B3D50  40 81 00 20 */	ble lbl_804B3D70
/* 804B3D54  C0 5E 02 38 */	lfs f2, 0x238(r30)
/* 804B3D58  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 804B3D5C  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B3D60  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3D64  EC 02 00 2A */	fadds f0, f2, f0
/* 804B3D68  EC 03 00 32 */	fmuls f0, f3, f0
/* 804B3D6C  EF DE 00 32 */	fmuls f30, f30, f0
lbl_804B3D70:
/* 804B3D70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B3D74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B3D78  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3D7C  4B B5 86 60 */	b mDoMtx_YrotS__FPA4_fs
/* 804B3D80  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3D84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804B3D88  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804B3D8C  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 804B3D90  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B3D94  38 61 00 40 */	addi r3, r1, 0x40
/* 804B3D98  38 81 00 34 */	addi r4, r1, 0x34
/* 804B3D9C  4B DB D1 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B3DA0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804B3DA4  38 81 00 34 */	addi r4, r1, 0x34
/* 804B3DA8  7C 65 1B 78 */	mr r5, r3
/* 804B3DAC  4B E9 32 E4 */	b PSVECAdd
/* 804B3DB0  3B 20 00 00 */	li r25, 0
/* 804B3DB4  3B 40 00 00 */	li r26, 0
/* 804B3DB8  48 00 00 20 */	b lbl_804B3DD8
lbl_804B3DBC:
/* 804B3DBC  38 7A 06 64 */	addi r3, r26, 0x664
/* 804B3DC0  7C 7F 1A 14 */	add r3, r31, r3
/* 804B3DC4  38 81 00 34 */	addi r4, r1, 0x34
/* 804B3DC8  7C 65 1B 78 */	mr r5, r3
/* 804B3DCC  4B E9 32 C4 */	b PSVECAdd
/* 804B3DD0  3B 39 00 01 */	addi r25, r25, 1
/* 804B3DD4  3B 5A 00 0C */	addi r26, r26, 0xc
lbl_804B3DD8:
/* 804B3DD8  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 804B3DDC  7C 19 00 00 */	cmpw r25, r0
/* 804B3DE0  40 81 FF DC */	ble lbl_804B3DBC
/* 804B3DE4  A8 1B 05 84 */	lha r0, 0x584(r27)
/* 804B3DE8  2C 00 00 00 */	cmpwi r0, 0
/* 804B3DEC  41 82 00 1C */	beq lbl_804B3E08
/* 804B3DF0  C0 3B 05 90 */	lfs f1, 0x590(r27)
/* 804B3DF4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804B3DF8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B3DFC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804B3E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3E04  40 81 00 38 */	ble lbl_804B3E3C
lbl_804B3E08:
/* 804B3E08  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 804B3E0C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 804B3E10  C0 1B 05 90 */	lfs f0, 0x590(r27)
/* 804B3E14  EC 21 00 2A */	fadds f1, f1, f0
/* 804B3E18  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804B3E1C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 804B3E20  EC 60 07 F2 */	fmuls f3, f0, f31
/* 804B3E24  4B DB BC 18 */	b cLib_addCalc2__FPffff
/* 804B3E28  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804B3E2C  C0 1B 05 90 */	lfs f0, 0x590(r27)
/* 804B3E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3E34  40 81 00 08 */	ble lbl_804B3E3C
/* 804B3E38  3B A0 00 01 */	li r29, 1
lbl_804B3E3C:
/* 804B3E3C  38 00 00 14 */	li r0, 0x14
/* 804B3E40  B0 1B 05 80 */	sth r0, 0x580(r27)
/* 804B3E44  48 00 00 20 */	b lbl_804B3E64
lbl_804B3E48:
/* 804B3E48  A8 1B 05 80 */	lha r0, 0x580(r27)
/* 804B3E4C  2C 00 00 00 */	cmpwi r0, 0
/* 804B3E50  40 82 00 14 */	bne lbl_804B3E64
/* 804B3E54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804B3E58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B3E5C  40 80 00 08 */	bge lbl_804B3E64
/* 804B3E60  3B 80 00 01 */	li r28, 1
lbl_804B3E64:
/* 804B3E64  2C 1C 00 00 */	cmpwi r28, 0
/* 804B3E68  40 82 00 10 */	bne lbl_804B3E78
/* 804B3E6C  A8 1B 05 7E */	lha r0, 0x57e(r27)
/* 804B3E70  2C 00 00 00 */	cmpwi r0, 0
/* 804B3E74  40 82 00 A8 */	bne lbl_804B3F1C
lbl_804B3E78:
/* 804B3E78  38 00 00 01 */	li r0, 1
/* 804B3E7C  B0 1B 0F 7E */	sth r0, 0xf7e(r27)
/* 804B3E80  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3E84  D0 1B 06 E0 */	stfs f0, 0x6e0(r27)
/* 804B3E88  38 00 00 14 */	li r0, 0x14
/* 804B3E8C  B0 1B 05 7A */	sth r0, 0x57a(r27)
/* 804B3E90  38 00 00 02 */	li r0, 2
/* 804B3E94  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B3E98  38 00 00 00 */	li r0, 0
/* 804B3E9C  98 1B 10 A5 */	stb r0, 0x10a5(r27)
/* 804B3EA0  D0 1B 10 90 */	stfs f0, 0x1090(r27)
/* 804B3EA4  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 804B3EA8  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 804B3EAC  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 804B3EB0  28 00 00 04 */	cmplwi r0, 4
/* 804B3EB4  40 82 00 24 */	bne lbl_804B3ED8
/* 804B3EB8  80 1F 0C 4C */	lwz r0, 0xc4c(r31)
/* 804B3EBC  90 01 00 08 */	stw r0, 8(r1)
/* 804B3EC0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B3EC4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B3EC8  38 81 00 08 */	addi r4, r1, 8
/* 804B3ECC  4B B6 59 2C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B3ED0  38 00 00 00 */	li r0, 0
/* 804B3ED4  98 03 0A 92 */	stb r0, 0xa92(r3)
lbl_804B3ED8:
/* 804B3ED8  38 00 00 00 */	li r0, 0
/* 804B3EDC  98 1F 0C 3D */	stb r0, 0xc3d(r31)
/* 804B3EE0  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 804B3EE4  4B DB 3A 70 */	b cM_rndF__Ff
/* 804B3EE8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804B3EEC  EC 00 08 2A */	fadds f0, f0, f1
/* 804B3EF0  FC 00 00 1E */	fctiwz f0, f0
/* 804B3EF4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804B3EF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B3EFC  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 804B3F00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B3F04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B3F08  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3F0C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B3F10  38 80 00 01 */	li r4, 1
/* 804B3F14  4B DF EB 74 */	b changeFishingBgm__8Z2SeqMgrFl
/* 804B3F18  48 00 01 78 */	b lbl_804B4090
lbl_804B3F1C:
/* 804B3F1C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804B3F20  C0 1B 0F 60 */	lfs f0, 0xf60(r27)
/* 804B3F24  EC 21 00 32 */	fmuls f1, f1, f0
/* 804B3F28  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 804B3F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3F30  40 81 00 08 */	ble lbl_804B3F38
/* 804B3F34  FC 20 00 90 */	fmr f1, f0
lbl_804B3F38:
/* 804B3F38  38 7B 06 F8 */	addi r3, r27, 0x6f8
/* 804B3F3C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 804B3F40  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 804B3F44  4B DB BA F8 */	b cLib_addCalc2__FPffff
/* 804B3F48  7F 63 DB 78 */	mr r3, r27
/* 804B3F4C  4B FF E7 11 */	bl uki_calc__FP13dmg_rod_class
/* 804B3F50  38 7B 06 E0 */	addi r3, r27, 0x6e0
/* 804B3F54  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B3F58  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 804B3F5C  4B DB BB 24 */	b cLib_addCalc0__FPfff
/* 804B3F60  38 7B 0F 64 */	addi r3, r27, 0xf64
/* 804B3F64  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 804B3F68  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B3F6C  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 804B3F70  4B DB BA CC */	b cLib_addCalc2__FPffff
/* 804B3F74  38 7B 0F 68 */	addi r3, r27, 0xf68
/* 804B3F78  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 804B3F7C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B3F80  C0 7E 02 30 */	lfs f3, 0x230(r30)
/* 804B3F84  4B DB BA B8 */	b cLib_addCalc2__FPffff
/* 804B3F88  38 61 00 1C */	addi r3, r1, 0x1c
/* 804B3F8C  38 9B 06 AC */	addi r4, r27, 0x6ac
/* 804B3F90  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804B3F94  4B DB 2B A0 */	b __mi__4cXyzCFRC3Vec
/* 804B3F98  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804B3F9C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 804B3FA0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804B3FA4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804B3FA8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804B3FAC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B3FB0  4B DB 38 64 */	b cM_atan2f__Fff
/* 804B3FB4  4B EB 86 B4 */	b tan
/* 804B3FB8  FC 60 08 18 */	frsp f3, f1
/* 804B3FBC  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 804B3FC0  C0 3B 05 90 */	lfs f1, 0x590(r27)
/* 804B3FC4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804B3FC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B3FCC  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B3FD0  EC 02 00 2A */	fadds f0, f2, f0
/* 804B3FD4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B3FD8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804B3FDC  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 804B3FE0  4B DB 38 34 */	b cM_atan2f__Fff
/* 804B3FE4  4B EB 86 84 */	b tan
/* 804B3FE8  FC 60 08 18 */	frsp f3, f1
/* 804B3FEC  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 804B3FF0  C0 3B 05 90 */	lfs f1, 0x590(r27)
/* 804B3FF4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804B3FF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B3FFC  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B4000  EC 02 00 2A */	fadds f0, f2, f0
/* 804B4004  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B4008  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B400C  38 7B 11 78 */	addi r3, r27, 0x1178
/* 804B4010  38 81 00 28 */	addi r4, r1, 0x28
/* 804B4014  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804B4018  FC 40 08 90 */	fmr f2, f1
/* 804B401C  4B B6 90 F0 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 804B4020  2C 1D 00 00 */	cmpwi r29, 0
/* 804B4024  41 82 00 6C */	beq lbl_804B4090
/* 804B4028  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B402C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804B4030  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B4034  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B4038  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B403C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4044  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804B4048  38 80 00 04 */	li r4, 4
/* 804B404C  38 A0 00 01 */	li r5, 1
/* 804B4050  38 C1 00 10 */	addi r6, r1, 0x10
/* 804B4054  4B BB B9 D0 */	b StartShock__12dVibration_cFii4cXyz
/* 804B4058  38 00 00 48 */	li r0, 0x48
/* 804B405C  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 804B4060  38 60 00 00 */	li r3, 0
/* 804B4064  B0 7F 05 B8 */	sth r3, 0x5b8(r31)
/* 804B4068  38 00 00 06 */	li r0, 6
/* 804B406C  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 804B4070  B0 1B 0F 7E */	sth r0, 0xf7e(r27)
/* 804B4074  38 00 00 14 */	li r0, 0x14
/* 804B4078  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B407C  B0 7B 13 B6 */	sth r3, 0x13b6(r27)
/* 804B4080  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B4084  D0 1B 14 10 */	stfs f0, 0x1410(r27)
/* 804B4088  98 7B 14 6D */	stb r3, 0x146d(r27)
/* 804B408C  B0 7B 14 FC */	sth r3, 0x14fc(r27)
lbl_804B4090:
/* 804B4090  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804B4094  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804B4098  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 804B409C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 804B40A0  39 61 00 80 */	addi r11, r1, 0x80
/* 804B40A4  4B EA E1 74 */	b _restgpr_25
/* 804B40A8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804B40AC  7C 08 03 A6 */	mtlr r0
/* 804B40B0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804B40B4  4E 80 00 20 */	blr 
