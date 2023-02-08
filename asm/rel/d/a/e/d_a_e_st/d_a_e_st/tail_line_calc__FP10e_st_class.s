lbl_807A0D20:
/* 807A0D20  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 807A0D24  7C 08 02 A6 */	mflr r0
/* 807A0D28  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807A0D2C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 807A0D30  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 807A0D34  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 807A0D38  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 807A0D3C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 807A0D40  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 807A0D44  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 807A0D48  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 807A0D4C  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 807A0D50  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 807A0D54  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A0D58  4B BC 14 75 */	bl _savegpr_25
/* 807A0D5C  7C 7E 1B 78 */	mr r30, r3
/* 807A0D60  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 807A0D64  3B 83 68 24 */	addi r28, r3, lit_3903@l /* 0x807A6824@l */
/* 807A0D68  38 61 00 2C */	addi r3, r1, 0x2c
/* 807A0D6C  4B 8D 68 11 */	bl __ct__11dBgS_GndChkFv
/* 807A0D70  80 7E 07 80 */	lwz r3, 0x780(r30)
/* 807A0D74  80 83 00 00 */	lwz r4, 0(r3)
/* 807A0D78  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 807A0D7C  D0 04 00 00 */	stfs f0, 0(r4)
/* 807A0D80  C0 1E 07 14 */	lfs f0, 0x714(r30)
/* 807A0D84  D0 04 00 04 */	stfs f0, 4(r4)
/* 807A0D88  C0 1E 07 18 */	lfs f0, 0x718(r30)
/* 807A0D8C  D0 04 00 08 */	stfs f0, 8(r4)
/* 807A0D90  3B FE 07 88 */	addi r31, r30, 0x788
/* 807A0D94  C3 DC 00 04 */	lfs f30, 4(r28)
/* 807A0D98  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 807A0D9C  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 807A0DA0  C0 3C 00 E0 */	lfs f1, 0xe0(r28)
/* 807A0DA4  C0 1E 07 64 */	lfs f0, 0x764(r30)
/* 807A0DA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A0DAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A0DB0  3B 40 00 01 */	li r26, 1
/* 807A0DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A0DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A0DBC  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 807A0DC0  3B 24 00 0C */	addi r25, r4, 0xc
/* 807A0DC4  C3 FC 00 E4 */	lfs f31, 0xe4(r28)
/* 807A0DC8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A0DCC  3B A3 07 68 */	addi r29, r3, calc_mtx@l /* 0x80450768@l */
lbl_807A0DD0:
/* 807A0DD0  C0 39 00 00 */	lfs f1, 0(r25)
/* 807A0DD4  C0 19 FF F4 */	lfs f0, -0xc(r25)
/* 807A0DD8  EF A1 00 28 */	fsubs f29, f1, f0
/* 807A0DDC  C0 39 00 08 */	lfs f1, 8(r25)
/* 807A0DE0  C0 19 FF FC */	lfs f0, -4(r25)
/* 807A0DE4  EF 61 00 28 */	fsubs f27, f1, f0
/* 807A0DE8  C0 19 00 04 */	lfs f0, 4(r25)
/* 807A0DEC  EC 20 F8 2A */	fadds f1, f0, f31
/* 807A0DF0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A0DF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0DF8  40 80 00 08 */	bge lbl_807A0E00
/* 807A0DFC  FC 20 00 90 */	fmr f1, f0
lbl_807A0E00:
/* 807A0E00  C0 19 FF F8 */	lfs f0, -8(r25)
/* 807A0E04  EF 81 00 28 */	fsubs f28, f1, f0
/* 807A0E08  FC 20 E8 90 */	fmr f1, f29
/* 807A0E0C  FC 40 D8 90 */	fmr f2, f27
/* 807A0E10  4B AC 68 65 */	bl cM_atan2s__Fff
/* 807A0E14  7C 64 1B 78 */	mr r4, r3
/* 807A0E18  80 7D 00 00 */	lwz r3, 0(r29)
/* 807A0E1C  4B 86 B5 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 807A0E20  EC 3D 07 72 */	fmuls f1, f29, f29
/* 807A0E24  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 807A0E28  EC 41 00 2A */	fadds f2, f1, f0
/* 807A0E2C  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 807A0E30  40 81 00 0C */	ble lbl_807A0E3C
/* 807A0E34  FC 00 10 34 */	frsqrte f0, f2
/* 807A0E38  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807A0E3C:
/* 807A0E3C  FC 20 E0 90 */	fmr f1, f28
/* 807A0E40  4B AC 68 35 */	bl cM_atan2s__Fff
/* 807A0E44  7C 03 00 D0 */	neg r0, r3
/* 807A0E48  7C 04 07 34 */	extsh r4, r0
/* 807A0E4C  80 7D 00 00 */	lwz r3, 0(r29)
/* 807A0E50  4B 86 B5 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 807A0E54  38 61 00 14 */	addi r3, r1, 0x14
/* 807A0E58  38 81 00 08 */	addi r4, r1, 8
/* 807A0E5C  4B AD 00 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A0E60  C0 39 FF F4 */	lfs f1, -0xc(r25)
/* 807A0E64  C0 01 00 08 */	lfs f0, 8(r1)
/* 807A0E68  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0E6C  D0 19 00 00 */	stfs f0, 0(r25)
/* 807A0E70  C0 39 FF F8 */	lfs f1, -8(r25)
/* 807A0E74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807A0E78  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0E7C  D0 19 00 04 */	stfs f0, 4(r25)
/* 807A0E80  C0 39 FF FC */	lfs f1, -4(r25)
/* 807A0E84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807A0E88  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0E8C  D0 19 00 08 */	stfs f0, 8(r25)
/* 807A0E90  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 807A0E94  7C 00 D2 14 */	add r0, r0, r26
/* 807A0E98  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807A0E9C  40 82 00 68 */	bne lbl_807A0F04
/* 807A0EA0  C0 19 00 00 */	lfs f0, 0(r25)
/* 807A0EA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807A0EA8  C0 39 00 04 */	lfs f1, 4(r25)
/* 807A0EAC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807A0EB0  C0 19 00 08 */	lfs f0, 8(r25)
/* 807A0EB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A0EB8  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 807A0EBC  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0EC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A0EC4  38 61 00 2C */	addi r3, r1, 0x2c
/* 807A0EC8  38 81 00 20 */	addi r4, r1, 0x20
/* 807A0ECC  4B AC 6E 41 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807A0ED0  7F 63 DB 78 */	mr r3, r27
/* 807A0ED4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807A0ED8  4B 8D 35 C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807A0EDC  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 807A0EE0  EC 00 08 2A */	fadds f0, f0, f1
/* 807A0EE4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 807A0EE8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A0EEC  C0 59 00 04 */	lfs f2, 4(r25)
/* 807A0EF0  EC 20 10 28 */	fsubs f1, f0, f2
/* 807A0EF4  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 807A0EF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0EFC  40 81 00 08 */	ble lbl_807A0F04
/* 807A0F00  D0 5F 00 00 */	stfs f2, 0(r31)
lbl_807A0F04:
/* 807A0F04  3B 5A 00 01 */	addi r26, r26, 1
/* 807A0F08  2C 1A 00 14 */	cmpwi r26, 0x14
/* 807A0F0C  3B 39 00 0C */	addi r25, r25, 0xc
/* 807A0F10  3B FF 00 04 */	addi r31, r31, 4
/* 807A0F14  41 80 FE BC */	blt lbl_807A0DD0
/* 807A0F18  38 61 00 2C */	addi r3, r1, 0x2c
/* 807A0F1C  38 80 FF FF */	li r4, -1
/* 807A0F20  4B 8D 66 D1 */	bl __dt__11dBgS_GndChkFv
/* 807A0F24  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 807A0F28  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 807A0F2C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 807A0F30  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 807A0F34  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 807A0F38  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 807A0F3C  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 807A0F40  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 807A0F44  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 807A0F48  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 807A0F4C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A0F50  4B BC 12 C9 */	bl _restgpr_25
/* 807A0F54  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 807A0F58  7C 08 03 A6 */	mtlr r0
/* 807A0F5C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 807A0F60  4E 80 00 20 */	blr 
