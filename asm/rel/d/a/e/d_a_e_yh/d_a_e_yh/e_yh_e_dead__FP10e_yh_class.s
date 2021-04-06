lbl_80801D10:
/* 80801D10  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80801D14  7C 08 02 A6 */	mflr r0
/* 80801D18  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80801D1C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80801D20  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80801D24  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80801D28  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80801D2C  39 61 00 90 */	addi r11, r1, 0x90
/* 80801D30  4B B6 04 AD */	bl _savegpr_29
/* 80801D34  7C 7D 1B 78 */	mr r29, r3
/* 80801D38  3C 60 80 80 */	lis r3, lit_3902@ha /* 0x8080427C@ha */
/* 80801D3C  3B E3 42 7C */	addi r31, r3, lit_3902@l /* 0x8080427C@l */
/* 80801D40  38 00 00 06 */	li r0, 6
/* 80801D44  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 80801D48  38 61 00 20 */	addi r3, r1, 0x20
/* 80801D4C  4B 87 5A 65 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80801D50  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80801D54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80801D58  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80801D5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80801D60  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80801D64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80801D68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80801D6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80801D70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80801D74  38 61 00 20 */	addi r3, r1, 0x20
/* 80801D78  38 81 00 14 */	addi r4, r1, 0x14
/* 80801D7C  4B A6 5F AD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80801D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80801D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80801D88  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80801D8C  7F C3 F3 78 */	mr r3, r30
/* 80801D90  38 81 00 20 */	addi r4, r1, 0x20
/* 80801D94  4B 87 27 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80801D98  FF E0 08 90 */	fmr f31, f1
/* 80801D9C  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 80801DA0  2C 00 00 02 */	cmpwi r0, 2
/* 80801DA4  41 82 00 F8 */	beq lbl_80801E9C
/* 80801DA8  40 80 00 14 */	bge lbl_80801DBC
/* 80801DAC  2C 00 00 00 */	cmpwi r0, 0
/* 80801DB0  41 82 00 18 */	beq lbl_80801DC8
/* 80801DB4  40 80 00 B8 */	bge lbl_80801E6C
/* 80801DB8  48 00 02 08 */	b lbl_80801FC0
lbl_80801DBC:
/* 80801DBC  2C 00 00 05 */	cmpwi r0, 5
/* 80801DC0  40 80 02 00 */	bge lbl_80801FC0
/* 80801DC4  48 00 01 64 */	b lbl_80801F28
lbl_80801DC8:
/* 80801DC8  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80801DCC  D0 1D 08 44 */	stfs f0, 0x844(r29)
/* 80801DD0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80801DD4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80801DD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80801DDC  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 80801DE0  4B 80 A5 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 80801DE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80801DE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80801DEC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80801DF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80801DF4  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80801DF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80801DFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80801E00  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80801E04  4B A6 F0 E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80801E08  7F A3 EB 78 */	mr r3, r29
/* 80801E0C  38 80 00 0D */	li r4, 0xd
/* 80801E10  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80801E14  38 A0 00 02 */	li r5, 2
/* 80801E18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80801E1C  4B FF B8 A1 */	bl anm_init__FP10e_yh_classifUcf
/* 80801E20  38 00 00 01 */	li r0, 1
/* 80801E24  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 80801E28  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 80801E2C  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 80801E30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80801E34  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80801E38  38 81 00 10 */	addi r4, r1, 0x10
/* 80801E3C  38 A0 FF FF */	li r5, -1
/* 80801E40  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80801E44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80801E48  7D 89 03 A6 */	mtctr r12
/* 80801E4C  4E 80 04 21 */	bctrl 
/* 80801E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80801E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80801E58  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80801E5C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80801E60  64 00 01 00 */	oris r0, r0, 0x100
/* 80801E64  90 03 05 88 */	stw r0, 0x588(r3)
/* 80801E68  48 00 01 58 */	b lbl_80801FC0
lbl_80801E6C:
/* 80801E6C  80 1D 10 8C */	lwz r0, 0x108c(r29)
/* 80801E70  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80801E74  41 82 00 28 */	beq lbl_80801E9C
/* 80801E78  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80801E7C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80801E80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80801E84  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80801E88  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80801E8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80801E90  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80801E94  38 00 00 02 */	li r0, 2
/* 80801E98  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_80801E9C:
/* 80801E9C  80 1D 10 8C */	lwz r0, 0x108c(r29)
/* 80801EA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80801EA4  41 82 01 1C */	beq lbl_80801FC0
/* 80801EA8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80801EAC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80801EB0  38 00 00 03 */	li r0, 3
/* 80801EB4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 80801EB8  38 00 00 00 */	li r0, 0
/* 80801EBC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 80801EC0  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80801EC4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80801EC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80801ECC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80801ED0  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80801ED4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80801ED8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80801EDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80801EE0  4B A6 5A 75 */	bl cM_rndF__Ff
/* 80801EE4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80801EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801EEC  40 80 00 10 */	bge lbl_80801EFC
/* 80801EF0  38 00 40 00 */	li r0, 0x4000
/* 80801EF4  B0 1D 08 64 */	sth r0, 0x864(r29)
/* 80801EF8  48 00 00 0C */	b lbl_80801F04
lbl_80801EFC:
/* 80801EFC  38 00 C0 00 */	li r0, -16384
/* 80801F00  B0 1D 08 64 */	sth r0, 0x864(r29)
lbl_80801F04:
/* 80801F04  38 7D 12 5C */	addi r3, r29, 0x125c
/* 80801F08  38 9D 12 60 */	addi r4, r29, 0x1260
/* 80801F0C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80801F10  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 80801F14  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80801F18  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80801F1C  39 00 00 01 */	li r8, 1
/* 80801F20  4B 81 B1 01 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80801F24  48 00 00 9C */	b lbl_80801FC0
lbl_80801F28:
/* 80801F28  80 1D 10 8C */	lwz r0, 0x108c(r29)
/* 80801F2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80801F30  41 82 00 3C */	beq lbl_80801F6C
/* 80801F34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80801F38  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80801F3C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80801F40  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 80801F44  2C 00 00 03 */	cmpwi r0, 3
/* 80801F48  40 82 00 24 */	bne lbl_80801F6C
/* 80801F4C  7F A3 EB 78 */	mr r3, r29
/* 80801F50  38 80 00 0F */	li r4, 0xf
/* 80801F54  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80801F58  38 A0 00 00 */	li r5, 0
/* 80801F5C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80801F60  4B FF B7 5D */	bl anm_init__FP10e_yh_classifUcf
/* 80801F64  38 00 00 04 */	li r0, 4
/* 80801F68  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_80801F6C:
/* 80801F6C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80801F70  A8 9D 08 64 */	lha r4, 0x864(r29)
/* 80801F74  38 A0 00 04 */	li r5, 4
/* 80801F78  38 C0 04 00 */	li r6, 0x400
/* 80801F7C  4B A6 E6 8D */	bl cLib_addCalcAngleS2__FPssss
/* 80801F80  38 7D 08 52 */	addi r3, r29, 0x852
/* 80801F84  38 80 00 00 */	li r4, 0
/* 80801F88  38 A0 00 01 */	li r5, 1
/* 80801F8C  38 C0 00 96 */	li r6, 0x96
/* 80801F90  4B A6 E6 79 */	bl cLib_addCalcAngleS2__FPssss
/* 80801F94  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 80801F98  2C 00 00 00 */	cmpwi r0, 0
/* 80801F9C  40 82 00 24 */	bne lbl_80801FC0
/* 80801FA0  7F A3 EB 78 */	mr r3, r29
/* 80801FA4  4B FF B5 71 */	bl yh_disappear__FP10e_yh_class
/* 80801FA8  A0 9D 04 94 */	lhz r4, 0x494(r29)
/* 80801FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80801FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80801FB4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80801FB8  7C 05 07 74 */	extsb r5, r0
/* 80801FBC  4B 83 36 89 */	bl onActor__10dSv_info_cFii
lbl_80801FC0:
/* 80801FC0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80801FC4  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 80801FC8  3C 84 00 01 */	addis r4, r4, 1
/* 80801FCC  38 04 80 00 */	addi r0, r4, -32768
/* 80801FD0  7C 04 07 34 */	extsh r4, r0
/* 80801FD4  38 A0 00 02 */	li r5, 2
/* 80801FD8  38 C0 10 00 */	li r6, 0x1000
/* 80801FDC  4B A6 E6 2D */	bl cLib_addCalcAngleS2__FPssss
/* 80801FE0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80801FE4  38 80 00 00 */	li r4, 0
/* 80801FE8  38 A0 00 02 */	li r5, 2
/* 80801FEC  38 C0 08 00 */	li r6, 0x800
/* 80801FF0  4B A6 E6 19 */	bl cLib_addCalcAngleS2__FPssss
/* 80801FF4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80801FF8  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80801FFC  7C 65 1B 78 */	mr r5, r3
/* 80802000  4B B4 50 91 */	bl PSVECAdd
/* 80802004  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80802008  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8080200C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80802010  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80802014  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80802018  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080201C  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80802020  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80802024  7C 63 02 14 */	add r3, r3, r0
/* 80802028  C0 63 00 04 */	lfs f3, 4(r3)
/* 8080202C  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x80804728@ha */
/* 80802030  38 63 47 28 */	addi r3, r3, l_HIO@l /* 0x80804728@l */
/* 80802034  C0 43 00 08 */	lfs f2, 8(r3)
/* 80802038  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 8080203C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80802040  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80802044  EC 21 00 2A */	fadds f1, f1, f0
/* 80802048  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8080204C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80802050  EF C2 00 32 */	fmuls f30, f2, f0
/* 80802054  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80802058  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8080205C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80802060  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80802064  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80802068  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 8080206C  38 7D 10 60 */	addi r3, r29, 0x1060
/* 80802070  7F C4 F3 78 */	mr r4, r30
/* 80802074  4B 87 4A 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80802078  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080207C  EC 00 F0 2A */	fadds f0, f0, f30
/* 80802080  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80802084  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80802088  EC 00 F0 2A */	fadds f0, f0, f30
/* 8080208C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80802090  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80802094  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80802098  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080209C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 808020A0  40 80 01 04 */	bge lbl_808021A4
/* 808020A4  38 00 00 14 */	li r0, 0x14
/* 808020A8  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 808020AC  38 00 00 32 */	li r0, 0x32
/* 808020B0  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 808020B4  7F A3 EB 78 */	mr r3, r29
/* 808020B8  38 80 00 0F */	li r4, 0xf
/* 808020BC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 808020C0  38 A0 00 00 */	li r5, 0
/* 808020C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808020C8  4B FF B5 F5 */	bl anm_init__FP10e_yh_classifUcf
/* 808020CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 808020D0  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 808020D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 808020D8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 808020DC  38 81 00 0C */	addi r4, r1, 0xc
/* 808020E0  38 A0 FF FF */	li r5, -1
/* 808020E4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 808020E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808020EC  7D 89 03 A6 */	mtctr r12
/* 808020F0  4E 80 04 21 */	bctrl 
/* 808020F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808020F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808020FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80802100  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80802104  64 00 01 00 */	oris r0, r0, 0x100
/* 80802108  90 03 05 88 */	stw r0, 0x588(r3)
/* 8080210C  38 00 00 C8 */	li r0, 0xc8
/* 80802110  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 80802114  38 00 00 50 */	li r0, 0x50
/* 80802118  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8080211C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80802120  4B A6 58 35 */	bl cM_rndF__Ff
/* 80802124  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80802128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080212C  40 80 00 10 */	bge lbl_8080213C
/* 80802130  38 00 40 00 */	li r0, 0x4000
/* 80802134  B0 1D 08 64 */	sth r0, 0x864(r29)
/* 80802138  48 00 00 0C */	b lbl_80802144
lbl_8080213C:
/* 8080213C  38 00 C0 00 */	li r0, -16384
/* 80802140  B0 1D 08 64 */	sth r0, 0x864(r29)
lbl_80802144:
/* 80802144  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80802148  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8080214C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80802150  40 80 00 10 */	bge lbl_80802160
/* 80802154  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80802158  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080215C  48 00 00 0C */	b lbl_80802168
lbl_80802160:
/* 80802160  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80802164  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80802168:
/* 80802168  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080216C  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80802170  38 80 00 00 */	li r4, 0
/* 80802174  4B 81 D7 09 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80802178  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8080217C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80802180  90 01 00 08 */	stw r0, 8(r1)
/* 80802184  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80802188  38 81 00 08 */	addi r4, r1, 8
/* 8080218C  38 A0 00 00 */	li r5, 0
/* 80802190  38 C0 FF FF */	li r6, -1
/* 80802194  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80802198  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080219C  7D 89 03 A6 */	mtctr r12
/* 808021A0  4E 80 04 21 */	bctrl 
lbl_808021A4:
/* 808021A4  38 61 00 20 */	addi r3, r1, 0x20
/* 808021A8  38 80 FF FF */	li r4, -1
/* 808021AC  4B 87 56 9D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 808021B0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 808021B4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 808021B8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 808021BC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 808021C0  39 61 00 90 */	addi r11, r1, 0x90
/* 808021C4  4B B6 00 65 */	bl _restgpr_29
/* 808021C8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 808021CC  7C 08 03 A6 */	mtlr r0
/* 808021D0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 808021D4  4E 80 00 20 */	blr 
