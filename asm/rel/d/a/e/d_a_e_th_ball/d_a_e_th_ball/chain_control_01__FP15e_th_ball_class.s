lbl_807B4CEC:
/* 807B4CEC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807B4CF0  7C 08 02 A6 */	mflr r0
/* 807B4CF4  90 01 01 14 */	stw r0, 0x114(r1)
/* 807B4CF8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807B4CFC  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807B4D00  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807B4D04  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807B4D08  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807B4D0C  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807B4D10  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807B4D14  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807B4D18  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807B4D1C  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807B4D20  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807B4D24  4B BA D4 9C */	b _savegpr_22
/* 807B4D28  7C 7B 1B 78 */	mr r27, r3
/* 807B4D2C  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B4D30  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B4D34  38 61 00 44 */	addi r3, r1, 0x44
/* 807B4D38  4B 8C 28 44 */	b __ct__11dBgS_GndChkFv
/* 807B4D3C  3B DB 06 5C */	addi r30, r27, 0x65c
/* 807B4D40  3C 60 80 7C */	lis r3, master@ha
/* 807B4D44  38 63 80 E0 */	addi r3, r3, master@l
/* 807B4D48  80 63 00 00 */	lwz r3, 0(r3)
/* 807B4D4C  28 03 00 00 */	cmplwi r3, 0
/* 807B4D50  41 82 00 34 */	beq lbl_807B4D84
/* 807B4D54  A8 03 00 08 */	lha r0, 8(r3)
/* 807B4D58  2C 00 01 C2 */	cmpwi r0, 0x1c2
/* 807B4D5C  40 82 00 28 */	bne lbl_807B4D84
/* 807B4D60  88 03 0D 8E */	lbz r0, 0xd8e(r3)
/* 807B4D64  7C 00 07 75 */	extsb. r0, r0
/* 807B4D68  40 82 00 1C */	bne lbl_807B4D84
/* 807B4D6C  C0 03 06 C0 */	lfs f0, 0x6c0(r3)
/* 807B4D70  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 807B4D74  C0 03 06 C4 */	lfs f0, 0x6c4(r3)
/* 807B4D78  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 807B4D7C  C0 03 06 C8 */	lfs f0, 0x6c8(r3)
/* 807B4D80  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
lbl_807B4D84:
/* 807B4D84  3B BE 00 D4 */	addi r29, r30, 0xd4
/* 807B4D88  3B 9E 06 A8 */	addi r28, r30, 0x6a8
/* 807B4D8C  C0 5B 0D E4 */	lfs f2, 0xde4(r27)
/* 807B4D90  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 807B4D94  C0 1B 0D D4 */	lfs f0, 0xdd4(r27)
/* 807B4D98  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B4D9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B4DA0  EF C2 00 28 */	fsubs f30, f2, f0
/* 807B4DA4  38 61 00 08 */	addi r3, r1, 8
/* 807B4DA8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807B4DAC  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 807B4DB0  4B AB 1D 84 */	b __mi__4cXyzCFRC3Vec
/* 807B4DB4  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B4DB8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807B4DBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B4DC0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B4DC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B4DC8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 807B4DCC  4B AB 28 A8 */	b cM_atan2s__Fff
/* 807B4DD0  7C 64 1B 78 */	mr r4, r3
/* 807B4DD4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4DD8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B4DDC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B4DE0  4B 85 75 FC */	b mDoMtx_YrotS__FPA4_fs
/* 807B4DE4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807B4DE8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B4DEC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807B4DF0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B4DF4  EC 41 00 2A */	fadds f2, f1, f0
/* 807B4DF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B4DFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B4E00  40 81 00 0C */	ble lbl_807B4E0C
/* 807B4E04  FC 00 10 34 */	frsqrte f0, f2
/* 807B4E08  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B4E0C:
/* 807B4E0C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 807B4E10  4B AB 28 64 */	b cM_atan2s__Fff
/* 807B4E14  7C 03 00 D0 */	neg r0, r3
/* 807B4E18  7C 04 07 34 */	extsh r4, r0
/* 807B4E1C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4E20  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B4E24  80 63 00 00 */	lwz r3, 0(r3)
/* 807B4E28  4B 85 75 74 */	b mDoMtx_XrotM__FPA4_fs
/* 807B4E2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B4E30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807B4E34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B4E38  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807B4E3C  C0 1B 0D D4 */	lfs f0, 0xdd4(r27)
/* 807B4E40  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B4E44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807B4E48  38 61 00 38 */	addi r3, r1, 0x38
/* 807B4E4C  38 81 00 14 */	addi r4, r1, 0x14
/* 807B4E50  4B AB C0 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 807B4E54  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B4E58  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 807B4E5C  3B 00 00 01 */	li r24, 1
/* 807B4E60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B4E64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B4E68  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 807B4E6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4E70  3B 43 07 68 */	addi r26, r3, calc_mtx@l
lbl_807B4E74:
/* 807B4E74  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 807B4E78  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807B4E7C  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 807B4E80  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B4E84  EF A2 00 2A */	fadds f29, f2, f0
/* 807B4E88  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807B4E8C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807B4E90  C0 1D FF FC */	lfs f0, -4(r29)
/* 807B4E94  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B4E98  EF 62 00 2A */	fadds f27, f2, f0
/* 807B4E9C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807B4EA0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B4EA4  EC 00 F0 2A */	fadds f0, f0, f30
/* 807B4EA8  EC 21 00 2A */	fadds f1, f1, f0
/* 807B4EAC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807B4EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B4EB4  4C 40 13 82 */	cror 2, 0, 2
/* 807B4EB8  40 82 00 08 */	bne lbl_807B4EC0
/* 807B4EBC  FC 20 00 90 */	fmr f1, f0
lbl_807B4EC0:
/* 807B4EC0  C0 1D FF F8 */	lfs f0, -8(r29)
/* 807B4EC4  EF 81 00 28 */	fsubs f28, f1, f0
/* 807B4EC8  FC 20 E8 90 */	fmr f1, f29
/* 807B4ECC  FC 40 D8 90 */	fmr f2, f27
/* 807B4ED0  4B AB 27 A4 */	b cM_atan2s__Fff
/* 807B4ED4  7C 76 07 34 */	extsh r22, r3
/* 807B4ED8  EC 3D 07 72 */	fmuls f1, f29, f29
/* 807B4EDC  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 807B4EE0  EC 41 00 2A */	fadds f2, f1, f0
/* 807B4EE4  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807B4EE8  40 81 00 0C */	ble lbl_807B4EF4
/* 807B4EEC  FC 00 10 34 */	frsqrte f0, f2
/* 807B4EF0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B4EF4:
/* 807B4EF4  FC 20 E0 90 */	fmr f1, f28
/* 807B4EF8  4B AB 27 7C */	b cM_atan2s__Fff
/* 807B4EFC  7C 03 00 D0 */	neg r0, r3
/* 807B4F00  7C 17 07 34 */	extsh r23, r0
/* 807B4F04  80 7A 00 00 */	lwz r3, 0(r26)
/* 807B4F08  7E C4 B3 78 */	mr r4, r22
/* 807B4F0C  4B 85 74 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 807B4F10  80 7A 00 00 */	lwz r3, 0(r26)
/* 807B4F14  7E E4 BB 78 */	mr r4, r23
/* 807B4F18  4B 85 74 84 */	b mDoMtx_XrotM__FPA4_fs
/* 807B4F1C  A8 7B 0D D0 */	lha r3, 0xdd0(r27)
/* 807B4F20  38 18 FF FF */	addi r0, r24, -1
/* 807B4F24  7C 03 00 00 */	cmpw r3, r0
/* 807B4F28  40 82 00 0C */	bne lbl_807B4F34
/* 807B4F2C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807B4F30  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_807B4F34:
/* 807B4F34  38 61 00 38 */	addi r3, r1, 0x38
/* 807B4F38  38 81 00 2C */	addi r4, r1, 0x2c
/* 807B4F3C  4B AB BF B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B4F40  C0 3D FF F4 */	lfs f1, -0xc(r29)
/* 807B4F44  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807B4F48  EC 01 00 2A */	fadds f0, f1, f0
/* 807B4F4C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807B4F50  C0 3D FF F8 */	lfs f1, -8(r29)
/* 807B4F54  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807B4F58  EC 01 00 2A */	fadds f0, f1, f0
/* 807B4F5C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 807B4F60  C0 3D FF FC */	lfs f1, -4(r29)
/* 807B4F64  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807B4F68  EC 01 00 2A */	fadds f0, f1, f0
/* 807B4F6C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807B4F70  A8 1B 06 4C */	lha r0, 0x64c(r27)
/* 807B4F74  7C 00 C2 14 */	add r0, r0, r24
/* 807B4F78  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807B4F7C  40 82 00 68 */	bne lbl_807B4FE4
/* 807B4F80  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807B4F84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B4F88  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807B4F8C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807B4F90  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807B4F94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B4F98  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B4F9C  EC 01 00 2A */	fadds f0, f1, f0
/* 807B4FA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B4FA4  38 61 00 44 */	addi r3, r1, 0x44
/* 807B4FA8  38 81 00 20 */	addi r4, r1, 0x20
/* 807B4FAC  4B AB 2D 60 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807B4FB0  7F 23 CB 78 */	mr r3, r25
/* 807B4FB4  38 81 00 44 */	addi r4, r1, 0x44
/* 807B4FB8  4B 8B F4 E8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807B4FBC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807B4FC0  EC 00 08 2A */	fadds f0, f0, f1
/* 807B4FC4  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807B4FC8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807B4FCC  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807B4FD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 807B4FD4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B4FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B4FDC  40 81 00 08 */	ble lbl_807B4FE4
/* 807B4FE0  D0 5C 00 00 */	stfs f2, 0(r28)
lbl_807B4FE4:
/* 807B4FE4  3B 18 00 01 */	addi r24, r24, 1
/* 807B4FE8  2C 18 00 32 */	cmpwi r24, 0x32
/* 807B4FEC  3B BD 00 0C */	addi r29, r29, 0xc
/* 807B4FF0  3B 9C 00 04 */	addi r28, r28, 4
/* 807B4FF4  41 80 FE 80 */	blt lbl_807B4E74
/* 807B4FF8  38 60 00 00 */	li r3, 0
/* 807B4FFC  38 00 00 32 */	li r0, 0x32
/* 807B5000  7C 09 03 A6 */	mtctr r0
lbl_807B5004:
/* 807B5004  7C 9E 1A 14 */	add r4, r30, r3
/* 807B5008  C0 04 00 C8 */	lfs f0, 0xc8(r4)
/* 807B500C  D0 04 03 20 */	stfs f0, 0x320(r4)
/* 807B5010  C0 04 00 CC */	lfs f0, 0xcc(r4)
/* 807B5014  D0 04 03 24 */	stfs f0, 0x324(r4)
/* 807B5018  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 807B501C  D0 04 03 28 */	stfs f0, 0x328(r4)
/* 807B5020  38 63 00 0C */	addi r3, r3, 0xc
/* 807B5024  42 00 FF E0 */	bdnz lbl_807B5004
/* 807B5028  38 61 00 44 */	addi r3, r1, 0x44
/* 807B502C  38 80 FF FF */	li r4, -1
/* 807B5030  4B 8C 25 C0 */	b __dt__11dBgS_GndChkFv
/* 807B5034  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807B5038  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807B503C  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807B5040  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807B5044  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807B5048  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807B504C  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807B5050  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807B5054  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807B5058  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807B505C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807B5060  4B BA D1 AC */	b _restgpr_22
/* 807B5064  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807B5068  7C 08 03 A6 */	mtlr r0
/* 807B506C  38 21 01 10 */	addi r1, r1, 0x110
/* 807B5070  4E 80 00 20 */	blr 
