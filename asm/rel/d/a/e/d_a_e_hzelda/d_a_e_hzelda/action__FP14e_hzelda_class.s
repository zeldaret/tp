lbl_806F2A3C:
/* 806F2A3C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806F2A40  7C 08 02 A6 */	mflr r0
/* 806F2A44  90 01 00 94 */	stw r0, 0x94(r1)
/* 806F2A48  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 806F2A4C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 806F2A50  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 806F2A54  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 806F2A58  39 61 00 70 */	addi r11, r1, 0x70
/* 806F2A5C  4B C6 F7 75 */	bl _savegpr_26
/* 806F2A60  7C 7E 1B 78 */	mr r30, r3
/* 806F2A64  3C 80 80 6F */	lis r4, lit_3767@ha /* 0x806F5514@ha */
/* 806F2A68  3B E4 55 14 */	addi r31, r4, lit_3767@l /* 0x806F5514@l */
/* 806F2A6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F2A70  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F2A74  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 806F2A78  38 00 00 00 */	li r0, 0
/* 806F2A7C  98 03 06 BB */	stb r0, 0x6bb(r3)
/* 806F2A80  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806F2A84  4B 92 7D 5D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F2A88  D0 3E 06 A0 */	stfs f1, 0x6a0(r30)
/* 806F2A8C  7F C3 F3 78 */	mr r3, r30
/* 806F2A90  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806F2A94  4B 92 7C 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F2A98  B0 7E 06 A4 */	sth r3, 0x6a4(r30)
/* 806F2A9C  3B 60 00 01 */	li r27, 1
/* 806F2AA0  3B A0 00 01 */	li r29, 1
/* 806F2AA4  38 60 00 0C */	li r3, 0xc
/* 806F2AA8  38 80 FF FF */	li r4, -1
/* 806F2AAC  4B 93 B0 55 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 806F2AB0  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 806F2AB4  2C 00 00 03 */	cmpwi r0, 3
/* 806F2AB8  41 82 00 54 */	beq lbl_806F2B0C
/* 806F2ABC  40 80 00 1C */	bge lbl_806F2AD8
/* 806F2AC0  2C 00 00 01 */	cmpwi r0, 1
/* 806F2AC4  41 82 00 2C */	beq lbl_806F2AF0
/* 806F2AC8  40 80 00 38 */	bge lbl_806F2B00
/* 806F2ACC  2C 00 00 00 */	cmpwi r0, 0
/* 806F2AD0  40 80 00 14 */	bge lbl_806F2AE4
/* 806F2AD4  48 00 00 50 */	b lbl_806F2B24
lbl_806F2AD8:
/* 806F2AD8  2C 00 00 05 */	cmpwi r0, 5
/* 806F2ADC  41 82 00 3C */	beq lbl_806F2B18
/* 806F2AE0  48 00 00 44 */	b lbl_806F2B24
lbl_806F2AE4:
/* 806F2AE4  7F C3 F3 78 */	mr r3, r30
/* 806F2AE8  4B FF E8 C1 */	bl e_hzelda_wait__FP14e_hzelda_class
/* 806F2AEC  48 00 00 38 */	b lbl_806F2B24
lbl_806F2AF0:
/* 806F2AF0  7F C3 F3 78 */	mr r3, r30
/* 806F2AF4  4B FF EC 65 */	bl e_hzelda_attack_a__FP14e_hzelda_class
/* 806F2AF8  7C 7D 1B 78 */	mr r29, r3
/* 806F2AFC  48 00 00 28 */	b lbl_806F2B24
lbl_806F2B00:
/* 806F2B00  7F C3 F3 78 */	mr r3, r30
/* 806F2B04  4B FF F1 99 */	bl e_hzelda_attack_b__FP14e_hzelda_class
/* 806F2B08  48 00 00 1C */	b lbl_806F2B24
lbl_806F2B0C:
/* 806F2B0C  7F C3 F3 78 */	mr r3, r30
/* 806F2B10  4B FF F5 45 */	bl e_hzelda_attack_c__FP14e_hzelda_class
/* 806F2B14  48 00 00 10 */	b lbl_806F2B24
lbl_806F2B18:
/* 806F2B18  7F C3 F3 78 */	mr r3, r30
/* 806F2B1C  4B FF FD AD */	bl e_hzelda_damage__FP14e_hzelda_class
/* 806F2B20  3B 60 00 00 */	li r27, 0
lbl_806F2B24:
/* 806F2B24  2C 1B 00 00 */	cmpwi r27, 0
/* 806F2B28  41 82 00 14 */	beq lbl_806F2B3C
/* 806F2B2C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806F2B30  38 80 00 01 */	li r4, 1
/* 806F2B34  4B BC F0 49 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 806F2B38  48 00 00 10 */	b lbl_806F2B48
lbl_806F2B3C:
/* 806F2B3C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806F2B40  38 80 00 00 */	li r4, 0
/* 806F2B44  4B BC F0 39 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_806F2B48:
/* 806F2B48  38 00 00 04 */	li r0, 4
/* 806F2B4C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806F2B50  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806F2B54  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806F2B58  38 A0 00 02 */	li r5, 2
/* 806F2B5C  38 C0 20 00 */	li r6, 0x2000
/* 806F2B60  4B B7 DA A9 */	bl cLib_addCalcAngleS2__FPssss
/* 806F2B64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2B68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F2B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F2B70  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806F2B74  4B 91 98 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F2B78  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2B7C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F2B80  80 63 00 00 */	lwz r3, 0(r3)
/* 806F2B84  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806F2B88  4B 91 98 15 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F2B8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F2B90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F2B94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F2B98  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806F2B9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F2BA0  38 61 00 38 */	addi r3, r1, 0x38
/* 806F2BA4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806F2BA8  4B B7 E3 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F2BAC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806F2BB0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806F2BB4  7C 65 1B 78 */	mr r5, r3
/* 806F2BB8  4B C5 44 D9 */	bl PSVECAdd
/* 806F2BBC  3B 60 00 00 */	li r27, 0
/* 806F2BC0  3B 40 00 00 */	li r26, 0
/* 806F2BC4  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806F2BC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F2BCC  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806F2BD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F2BD4  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806F2BD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F2BDC  88 1E 06 BB */	lbz r0, 0x6bb(r30)
/* 806F2BE0  7C 00 07 75 */	extsb. r0, r0
/* 806F2BE4  41 82 00 BC */	beq lbl_806F2CA0
/* 806F2BE8  38 61 00 14 */	addi r3, r1, 0x14
/* 806F2BEC  38 81 00 20 */	addi r4, r1, 0x20
/* 806F2BF0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806F2BF4  4B B7 3F 41 */	bl __mi__4cXyzCFRC3Vec
/* 806F2BF8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 806F2BFC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806F2C00  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 806F2C04  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 806F2C08  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 806F2C0C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 806F2C10  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806F2C14  EC 03 00 2A */	fadds f0, f3, f0
/* 806F2C18  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F2C1C  4B B7 4A 59 */	bl cM_atan2s__Fff
/* 806F2C20  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806F2C24  7C 00 18 50 */	subf r0, r0, r3
/* 806F2C28  7C 1B 07 34 */	extsh r27, r0
/* 806F2C2C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806F2C30  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F2C34  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806F2C38  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F2C3C  EC 41 00 2A */	fadds f2, f1, f0
/* 806F2C40  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F2C44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F2C48  40 81 00 0C */	ble lbl_806F2C54
/* 806F2C4C  FC 00 10 34 */	frsqrte f0, f2
/* 806F2C50  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F2C54:
/* 806F2C54  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 806F2C58  4B B7 4A 1D */	bl cM_atan2s__Fff
/* 806F2C5C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 806F2C60  7C 00 1A 14 */	add r0, r0, r3
/* 806F2C64  7C 1A 07 34 */	extsh r26, r0
/* 806F2C68  2C 1B 1B 58 */	cmpwi r27, 0x1b58
/* 806F2C6C  40 81 00 0C */	ble lbl_806F2C78
/* 806F2C70  3B 60 1B 58 */	li r27, 0x1b58
/* 806F2C74  48 00 00 10 */	b lbl_806F2C84
lbl_806F2C78:
/* 806F2C78  2C 1B E4 A8 */	cmpwi r27, -7000
/* 806F2C7C  40 80 00 08 */	bge lbl_806F2C84
/* 806F2C80  3B 60 E4 A8 */	li r27, -7000
lbl_806F2C84:
/* 806F2C84  2C 1A 1B 58 */	cmpwi r26, 0x1b58
/* 806F2C88  40 81 00 0C */	ble lbl_806F2C94
/* 806F2C8C  3B 40 1B 58 */	li r26, 0x1b58
/* 806F2C90  48 00 00 10 */	b lbl_806F2CA0
lbl_806F2C94:
/* 806F2C94  2C 1A E4 A8 */	cmpwi r26, -7000
/* 806F2C98  40 80 00 08 */	bge lbl_806F2CA0
/* 806F2C9C  3B 40 E4 A8 */	li r26, -7000
lbl_806F2CA0:
/* 806F2CA0  38 7E 06 BC */	addi r3, r30, 0x6bc
/* 806F2CA4  7F 64 DB 78 */	mr r4, r27
/* 806F2CA8  38 A0 00 02 */	li r5, 2
/* 806F2CAC  38 C0 10 00 */	li r6, 0x1000
/* 806F2CB0  4B B7 D9 59 */	bl cLib_addCalcAngleS2__FPssss
/* 806F2CB4  38 7E 06 BE */	addi r3, r30, 0x6be
/* 806F2CB8  7F 44 D3 78 */	mr r4, r26
/* 806F2CBC  38 A0 00 02 */	li r5, 2
/* 806F2CC0  38 C0 10 00 */	li r6, 0x1000
/* 806F2CC4  4B B7 D9 45 */	bl cLib_addCalcAngleS2__FPssss
/* 806F2CC8  2C 1D 00 00 */	cmpwi r29, 0
/* 806F2CCC  41 82 02 34 */	beq lbl_806F2F00
/* 806F2CD0  2C 1D 00 01 */	cmpwi r29, 1
/* 806F2CD4  40 82 01 B0 */	bne lbl_806F2E84
/* 806F2CD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2CDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F2CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 806F2CE4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806F2CE8  7C 00 00 D0 */	neg r0, r0
/* 806F2CEC  7C 04 07 34 */	extsh r4, r0
/* 806F2CF0  4B 91 96 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 806F2CF4  38 61 00 08 */	addi r3, r1, 8
/* 806F2CF8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F2CFC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 806F2D00  4B B7 3E 35 */	bl __mi__4cXyzCFRC3Vec
/* 806F2D04  C0 01 00 08 */	lfs f0, 8(r1)
/* 806F2D08  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F2D0C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806F2D10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F2D14  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806F2D18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F2D1C  38 61 00 38 */	addi r3, r1, 0x38
/* 806F2D20  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F2D24  4B B7 E1 C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F2D28  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806F2D2C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806F2D30  EC 41 00 32 */	fmuls f2, f1, f0
/* 806F2D34  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 806F2D38  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806F2D3C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806F2D40  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F2D44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F2D48  FF E0 10 90 */	fmr f31, f2
/* 806F2D4C  FF C0 10 50 */	fneg f30, f2
/* 806F2D50  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806F2D54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F2D58  40 80 00 0C */	bge lbl_806F2D64
/* 806F2D5C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F2D60  48 00 00 14 */	b lbl_806F2D74
lbl_806F2D64:
/* 806F2D64  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806F2D68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F2D6C  40 81 00 08 */	ble lbl_806F2D74
/* 806F2D70  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_806F2D74:
/* 806F2D74  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 806F2D78  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806F2D7C  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 806F2D80  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 806F2D84  4B B7 CC B9 */	bl cLib_addCalc2__FPffff
/* 806F2D88  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806F2D8C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806F2D90  40 81 00 0C */	ble lbl_806F2D9C
/* 806F2D94  FF E0 00 90 */	fmr f31, f0
/* 806F2D98  48 00 00 14 */	b lbl_806F2DAC
lbl_806F2D9C:
/* 806F2D9C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806F2DA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806F2DA4  40 80 00 08 */	bge lbl_806F2DAC
/* 806F2DA8  FF E0 00 90 */	fmr f31, f0
lbl_806F2DAC:
/* 806F2DAC  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 806F2DB0  FC 20 F8 90 */	fmr f1, f31
/* 806F2DB4  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 806F2DB8  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 806F2DBC  4B B7 CC 81 */	bl cLib_addCalc2__FPffff
/* 806F2DC0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806F2DC4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 806F2DC8  40 81 00 0C */	ble lbl_806F2DD4
/* 806F2DCC  FF C0 00 90 */	fmr f30, f0
/* 806F2DD0  48 00 00 14 */	b lbl_806F2DE4
lbl_806F2DD4:
/* 806F2DD4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806F2DD8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 806F2DDC  40 80 00 08 */	bge lbl_806F2DE4
/* 806F2DE0  FF C0 00 90 */	fmr f30, f0
lbl_806F2DE4:
/* 806F2DE4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806F2DE8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806F2DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2DF0  40 81 00 0C */	ble lbl_806F2DFC
/* 806F2DF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F2DF8  48 00 00 14 */	b lbl_806F2E0C
lbl_806F2DFC:
/* 806F2DFC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806F2E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2E04  40 80 00 08 */	bge lbl_806F2E0C
/* 806F2E08  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_806F2E0C:
/* 806F2E0C  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806F2E10  FC 20 F0 90 */	fmr f1, f30
/* 806F2E14  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 806F2E18  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 806F2E1C  4B B7 CC 21 */	bl cLib_addCalc2__FPffff
/* 806F2E20  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806F2E24  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806F2E28  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 806F2E2C  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 806F2E30  4B B7 CC 0D */	bl cLib_addCalc2__FPffff
/* 806F2E34  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806F2E38  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806F2E3C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 806F2E40  FC 00 00 1E */	fctiwz f0, f0
/* 806F2E44  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806F2E48  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 806F2E4C  38 A0 00 08 */	li r5, 8
/* 806F2E50  38 C0 04 00 */	li r6, 0x400
/* 806F2E54  4B B7 D7 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 806F2E58  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806F2E5C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806F2E60  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806F2E64  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F2E68  FC 00 00 1E */	fctiwz f0, f0
/* 806F2E6C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806F2E70  80 81 00 54 */	lwz r4, 0x54(r1)
/* 806F2E74  38 A0 00 08 */	li r5, 8
/* 806F2E78  38 C0 04 00 */	li r6, 0x400
/* 806F2E7C  4B B7 D7 8D */	bl cLib_addCalcAngleS2__FPssss
/* 806F2E80  48 00 00 F4 */	b lbl_806F2F74
lbl_806F2E84:
/* 806F2E84  A8 7E 04 CA */	lha r3, 0x4ca(r30)
/* 806F2E88  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806F2E8C  7C 03 00 50 */	subf r0, r3, r0
/* 806F2E90  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806F2E94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F2E98  90 01 00 54 */	stw r0, 0x54(r1)
/* 806F2E9C  3C 00 43 30 */	lis r0, 0x4330
/* 806F2EA0  90 01 00 50 */	stw r0, 0x50(r1)
/* 806F2EA4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 806F2EA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 806F2EAC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806F2EB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806F2EB4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806F2EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2EBC  40 81 00 0C */	ble lbl_806F2EC8
/* 806F2EC0  FC 20 00 90 */	fmr f1, f0
/* 806F2EC4  48 00 00 14 */	b lbl_806F2ED8
lbl_806F2EC8:
/* 806F2EC8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806F2ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2ED0  40 80 00 08 */	bge lbl_806F2ED8
/* 806F2ED4  FC 20 00 90 */	fmr f1, f0
lbl_806F2ED8:
/* 806F2ED8  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806F2EDC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806F2EE0  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 806F2EE4  4B B7 CB 59 */	bl cLib_addCalc2__FPffff
/* 806F2EE8  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806F2EEC  38 80 00 00 */	li r4, 0
/* 806F2EF0  38 A0 00 08 */	li r5, 8
/* 806F2EF4  38 C0 08 00 */	li r6, 0x800
/* 806F2EF8  4B B7 D7 11 */	bl cLib_addCalcAngleS2__FPssss
/* 806F2EFC  48 00 00 78 */	b lbl_806F2F74
lbl_806F2F00:
/* 806F2F00  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 806F2F04  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F08  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F0C  4B B7 CB 75 */	bl cLib_addCalc0__FPfff
/* 806F2F10  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 806F2F14  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F18  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F1C  4B B7 CB 65 */	bl cLib_addCalc0__FPfff
/* 806F2F20  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 806F2F24  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F28  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F2C  4B B7 CB 55 */	bl cLib_addCalc0__FPfff
/* 806F2F30  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 806F2F34  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F38  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F3C  4B B7 CB 45 */	bl cLib_addCalc0__FPfff
/* 806F2F40  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806F2F44  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F48  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F4C  4B B7 CB 35 */	bl cLib_addCalc0__FPfff
/* 806F2F50  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806F2F54  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F2F58  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F2F5C  4B B7 CB 25 */	bl cLib_addCalc0__FPfff
/* 806F2F60  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806F2F64  38 80 00 00 */	li r4, 0
/* 806F2F68  38 A0 00 08 */	li r5, 8
/* 806F2F6C  38 C0 08 00 */	li r6, 0x800
/* 806F2F70  4B B7 D6 99 */	bl cLib_addCalcAngleS2__FPssss
lbl_806F2F74:
/* 806F2F74  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806F2F78  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806F2F7C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 806F2F80  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 806F2F84  39 61 00 70 */	addi r11, r1, 0x70
/* 806F2F88  4B C6 F2 95 */	bl _restgpr_26
/* 806F2F8C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806F2F90  7C 08 03 A6 */	mtlr r0
/* 806F2F94  38 21 00 90 */	addi r1, r1, 0x90
/* 806F2F98  4E 80 00 20 */	blr 
