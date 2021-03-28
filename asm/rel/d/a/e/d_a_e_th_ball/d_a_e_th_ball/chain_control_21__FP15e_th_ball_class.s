lbl_807B5C34:
/* 807B5C34  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807B5C38  7C 08 02 A6 */	mflr r0
/* 807B5C3C  90 01 01 14 */	stw r0, 0x114(r1)
/* 807B5C40  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807B5C44  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807B5C48  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807B5C4C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807B5C50  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807B5C54  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807B5C58  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807B5C5C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807B5C60  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807B5C64  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807B5C68  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 807B5C6C  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 807B5C70  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807B5C74  4B BA C5 48 */	b _savegpr_21
/* 807B5C78  7C 79 1B 78 */	mr r25, r3
/* 807B5C7C  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B5C80  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B5C84  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B5C88  4B 8C 18 F4 */	b __ct__11dBgS_GndChkFv
/* 807B5C8C  3C 60 80 7C */	lis r3, master@ha
/* 807B5C90  38 63 80 E0 */	addi r3, r3, master@l
/* 807B5C94  80 63 00 00 */	lwz r3, 0(r3)
/* 807B5C98  C0 03 06 B4 */	lfs f0, 0x6b4(r3)
/* 807B5C9C  D0 19 12 28 */	stfs f0, 0x1228(r25)
/* 807B5CA0  C0 03 06 B8 */	lfs f0, 0x6b8(r3)
/* 807B5CA4  D0 19 12 2C */	stfs f0, 0x122c(r25)
/* 807B5CA8  C0 03 06 BC */	lfs f0, 0x6bc(r3)
/* 807B5CAC  D0 19 12 30 */	stfs f0, 0x1230(r25)
/* 807B5CB0  3B B9 12 34 */	addi r29, r25, 0x1234
/* 807B5CB4  3B 99 14 14 */	addi r28, r25, 0x1414
/* 807B5CB8  3B 79 14 FE */	addi r27, r25, 0x14fe
/* 807B5CBC  3B 59 15 74 */	addi r26, r25, 0x1574
/* 807B5CC0  C3 BF 00 04 */	lfs f29, 4(r31)
/* 807B5CC4  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 807B5CC8  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 807B5CCC  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 807B5CD0  3B C0 00 01 */	li r30, 1
/* 807B5CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B5CD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B5CDC  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 807B5CE0  C3 DF 00 64 */	lfs f30, 0x64(r31)
/* 807B5CE4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5CE8  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 807B5CEC  C3 FF 00 68 */	lfs f31, 0x68(r31)
lbl_807B5CF0:
/* 807B5CF0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 807B5CF4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807B5CF8  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 807B5CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5D00  EF 82 00 2A */	fadds f28, f2, f0
/* 807B5D04  C0 5C 00 08 */	lfs f2, 8(r28)
/* 807B5D08  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807B5D0C  C0 1D FF FC */	lfs f0, -4(r29)
/* 807B5D10  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5D14  EF 42 00 2A */	fadds f26, f2, f0
/* 807B5D18  C0 3C 00 04 */	lfs f1, 4(r28)
/* 807B5D1C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B5D20  EC 00 F0 2A */	fadds f0, f0, f30
/* 807B5D24  EC 21 00 2A */	fadds f1, f1, f0
/* 807B5D28  C0 1A 00 00 */	lfs f0, 0(r26)
/* 807B5D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B5D30  4C 40 13 82 */	cror 2, 0, 2
/* 807B5D34  40 82 00 08 */	bne lbl_807B5D3C
/* 807B5D38  FC 20 00 90 */	fmr f1, f0
lbl_807B5D3C:
/* 807B5D3C  C0 1D FF F8 */	lfs f0, -8(r29)
/* 807B5D40  EF 61 00 28 */	fsubs f27, f1, f0
/* 807B5D44  FC 20 E0 90 */	fmr f1, f28
/* 807B5D48  FC 40 D0 90 */	fmr f2, f26
/* 807B5D4C  4B AB 19 28 */	b cM_atan2s__Fff
/* 807B5D50  7C 75 07 34 */	extsh r21, r3
/* 807B5D54  EC 3C 07 32 */	fmuls f1, f28, f28
/* 807B5D58  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 807B5D5C  EC 41 00 2A */	fadds f2, f1, f0
/* 807B5D60  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 807B5D64  40 81 00 0C */	ble lbl_807B5D70
/* 807B5D68  FC 00 10 34 */	frsqrte f0, f2
/* 807B5D6C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B5D70:
/* 807B5D70  FC 20 D8 90 */	fmr f1, f27
/* 807B5D74  4B AB 19 00 */	b cM_atan2s__Fff
/* 807B5D78  7C 03 00 D0 */	neg r0, r3
/* 807B5D7C  7C 16 07 34 */	extsh r22, r0
/* 807B5D80  80 78 00 00 */	lwz r3, 0(r24)
/* 807B5D84  7E A4 AB 78 */	mr r4, r21
/* 807B5D88  4B 85 66 54 */	b mDoMtx_YrotS__FPA4_fs
/* 807B5D8C  80 78 00 00 */	lwz r3, 0(r24)
/* 807B5D90  7E C4 B3 78 */	mr r4, r22
/* 807B5D94  4B 85 66 08 */	b mDoMtx_XrotM__FPA4_fs
/* 807B5D98  80 79 11 D4 */	lwz r3, 0x11d4(r25)
/* 807B5D9C  38 1E FF FF */	addi r0, r30, -1
/* 807B5DA0  7C 03 00 00 */	cmpw r3, r0
/* 807B5DA4  40 82 00 0C */	bne lbl_807B5DB0
/* 807B5DA8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807B5DAC  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_807B5DB0:
/* 807B5DB0  38 61 00 20 */	addi r3, r1, 0x20
/* 807B5DB4  38 81 00 14 */	addi r4, r1, 0x14
/* 807B5DB8  4B AB B1 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B5DBC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807B5DC0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807B5DC4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B5DC8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 807B5DCC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807B5DD0  D0 1C 00 08 */	stfs f0, 8(r28)
/* 807B5DD4  C0 3D FF F4 */	lfs f1, -0xc(r29)
/* 807B5DD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B5DDC  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5DE0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807B5DE4  C0 3D FF F8 */	lfs f1, -8(r29)
/* 807B5DE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B5DEC  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5DF0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 807B5DF4  C0 3D FF FC */	lfs f1, -4(r29)
/* 807B5DF8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807B5DFC  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5E00  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807B5E04  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807B5E08  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807B5E0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5E10  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807B5E14  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807B5E18  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807B5E1C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 807B5E20  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5E24  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807B5E28  D0 1C 00 04 */	stfs f0, 4(r28)
/* 807B5E2C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807B5E30  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807B5E34  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5E38  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807B5E3C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 807B5E40  B2 DB FF FA */	sth r22, -6(r27)
/* 807B5E44  B2 BB FF FC */	sth r21, -4(r27)
/* 807B5E48  A8 19 06 4C */	lha r0, 0x64c(r25)
/* 807B5E4C  7C 00 F2 14 */	add r0, r0, r30
/* 807B5E50  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807B5E54  40 82 00 68 */	bne lbl_807B5EBC
/* 807B5E58  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807B5E5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B5E60  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807B5E64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807B5E68  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807B5E6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B5E70  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B5E74  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5E78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B5E7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B5E80  38 81 00 08 */	addi r4, r1, 8
/* 807B5E84  4B AB 1E 88 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807B5E88  7E E3 BB 78 */	mr r3, r23
/* 807B5E8C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807B5E90  4B 8B E6 10 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807B5E94  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807B5E98  EC 00 08 2A */	fadds f0, f0, f1
/* 807B5E9C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 807B5EA0  C0 1A 00 00 */	lfs f0, 0(r26)
/* 807B5EA4  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807B5EA8  EC 20 10 28 */	fsubs f1, f0, f2
/* 807B5EAC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B5EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B5EB4  40 81 00 08 */	ble lbl_807B5EBC
/* 807B5EB8  D0 5A 00 00 */	stfs f2, 0(r26)
lbl_807B5EBC:
/* 807B5EBC  3B DE 00 01 */	addi r30, r30, 1
/* 807B5EC0  2C 1E 00 14 */	cmpwi r30, 0x14
/* 807B5EC4  3B BD 00 0C */	addi r29, r29, 0xc
/* 807B5EC8  3B 7B 00 06 */	addi r27, r27, 6
/* 807B5ECC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 807B5ED0  3B 5A 00 04 */	addi r26, r26, 4
/* 807B5ED4  41 80 FE 1C */	blt lbl_807B5CF0
/* 807B5ED8  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B5EDC  38 80 FF FF */	li r4, -1
/* 807B5EE0  4B 8C 17 10 */	b __dt__11dBgS_GndChkFv
/* 807B5EE4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807B5EE8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807B5EEC  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807B5EF0  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807B5EF4  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807B5EF8  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807B5EFC  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807B5F00  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807B5F04  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807B5F08  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807B5F0C  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 807B5F10  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 807B5F14  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807B5F18  4B BA C2 F0 */	b _restgpr_21
/* 807B5F1C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807B5F20  7C 08 03 A6 */	mtlr r0
/* 807B5F24  38 21 01 10 */	addi r1, r1, 0x110
/* 807B5F28  4E 80 00 20 */	blr 
