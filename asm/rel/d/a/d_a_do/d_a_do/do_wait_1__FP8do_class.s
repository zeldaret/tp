lbl_80669B80:
/* 80669B80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80669B84  7C 08 02 A6 */	mflr r0
/* 80669B88  90 01 00 84 */	stw r0, 0x84(r1)
/* 80669B8C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80669B90  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80669B94  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80669B98  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80669B9C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80669BA0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80669BA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80669BA8  4B CF 86 2D */	bl _savegpr_27
/* 80669BAC  7C 7C 1B 78 */	mr r28, r3
/* 80669BB0  3C 60 80 67 */	lis r3, lit_3662@ha /* 0x8066EDE8@ha */
/* 80669BB4  3B E3 ED E8 */	addi r31, r3, lit_3662@l /* 0x8066EDE8@l */
/* 80669BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80669BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80669BC0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80669BC4  38 00 00 01 */	li r0, 1
/* 80669BC8  98 1C 06 16 */	stb r0, 0x616(r28)
/* 80669BCC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80669BD0  D0 1C 06 48 */	stfs f0, 0x648(r28)
/* 80669BD4  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 80669BD8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80669BDC  7C 04 00 50 */	subf r0, r4, r0
/* 80669BE0  7C 1B 07 35 */	extsh. r27, r0
/* 80669BE4  40 80 00 0C */	bge lbl_80669BF0
/* 80669BE8  1C 1B FF FF */	mulli r0, r27, -1
/* 80669BEC  7C 1B 07 34 */	extsh r27, r0
lbl_80669BF0:
/* 80669BF0  3B A0 30 00 */	li r29, 0x3000
/* 80669BF4  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80669BF8  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 80669BFC  40 82 00 08 */	bne lbl_80669C04
/* 80669C00  3B A0 10 00 */	li r29, 0x1000
lbl_80669C04:
/* 80669C04  A8 7C 05 F6 */	lha r3, 0x5f6(r28)
/* 80669C08  38 03 00 01 */	addi r0, r3, 1
/* 80669C0C  28 00 00 0C */	cmplwi r0, 0xc
/* 80669C10  41 81 04 68 */	bgt lbl_8066A078
/* 80669C14  3C 60 80 67 */	lis r3, lit_4557@ha /* 0x8066F028@ha */
/* 80669C18  38 63 F0 28 */	addi r3, r3, lit_4557@l /* 0x8066F028@l */
/* 80669C1C  54 00 10 3A */	slwi r0, r0, 2
/* 80669C20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80669C24  7C 09 03 A6 */	mtctr r0
/* 80669C28  4E 80 04 20 */	bctr 
lbl_80669C2C:
/* 80669C2C  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 80669C30  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80669C34  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80669C38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80669C3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669C40  40 81 00 34 */	ble lbl_80669C74
/* 80669C44  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80669C48  4B BF DD 45 */	bl cM_rndFX__Ff
/* 80669C4C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80669C50  EC 40 08 2A */	fadds f2, f0, f1
/* 80669C54  7F 83 E3 78 */	mr r3, r28
/* 80669C58  38 80 00 0D */	li r4, 0xd
/* 80669C5C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80669C60  38 A0 00 02 */	li r5, 2
/* 80669C64  4B FF E1 45 */	bl anm_init__FP8do_classifUcf
/* 80669C68  38 00 FF FF */	li r0, -1
/* 80669C6C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669C70  48 00 00 28 */	b lbl_80669C98
lbl_80669C74:
/* 80669C74  7F 83 E3 78 */	mr r3, r28
/* 80669C78  38 80 00 15 */	li r4, 0x15
/* 80669C7C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80669C80  38 A0 00 02 */	li r5, 2
/* 80669C84  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80669C88  4B FF E1 21 */	bl anm_init__FP8do_classifUcf
/* 80669C8C  A8 7C 05 F6 */	lha r3, 0x5f6(r28)
/* 80669C90  38 03 00 01 */	addi r0, r3, 1
/* 80669C94  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_80669C98:
/* 80669C98  7F 63 07 34 */	extsh r3, r27
/* 80669C9C  7F A0 07 34 */	extsh r0, r29
/* 80669CA0  7C 03 00 00 */	cmpw r3, r0
/* 80669CA4  40 81 00 28 */	ble lbl_80669CCC
/* 80669CA8  7F 83 E3 78 */	mr r3, r28
/* 80669CAC  38 80 00 12 */	li r4, 0x12
/* 80669CB0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80669CB4  38 A0 00 02 */	li r5, 2
/* 80669CB8  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80669CBC  4B FF E0 ED */	bl anm_init__FP8do_classifUcf
/* 80669CC0  38 00 00 02 */	li r0, 2
/* 80669CC4  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669CC8  48 00 03 B0 */	b lbl_8066A078
lbl_80669CCC:
/* 80669CCC  C0 3C 06 58 */	lfs f1, 0x658(r28)
/* 80669CD0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80669CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80669CD8  40 80 00 30 */	bge lbl_80669D08
/* 80669CDC  38 00 00 03 */	li r0, 3
/* 80669CE0  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669CE4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80669CE8  4B BF DC 6D */	bl cM_rndF__Ff
/* 80669CEC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80669CF0  EC 00 08 2A */	fadds f0, f0, f1
/* 80669CF4  FC 00 00 1E */	fctiwz f0, f0
/* 80669CF8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80669CFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80669D00  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 80669D04  48 00 03 74 */	b lbl_8066A078
lbl_80669D08:
/* 80669D08  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 80669D0C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80669D10  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 80669D14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80669D18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669D1C  40 80 01 88 */	bge lbl_80669EA4
/* 80669D20  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80669D24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80669D28  C3 BF 00 78 */	lfs f29, 0x78(r31)
/* 80669D2C  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 80669D30  3B 60 00 00 */	li r27, 0
/* 80669D34  C3 DF 00 EC */	lfs f30, 0xec(r31)
/* 80669D38  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
lbl_80669D3C:
/* 80669D3C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 80669D40  40 80 00 38 */	bge lbl_80669D78
/* 80669D44  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80669D48  4B BF DC 45 */	bl cM_rndFX__Ff
/* 80669D4C  FC 00 08 1E */	fctiwz f0, f1
/* 80669D50  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80669D54  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80669D58  A8 1C 05 CC */	lha r0, 0x5cc(r28)
/* 80669D5C  7C 00 1A 14 */	add r0, r0, r3
/* 80669D60  7C 04 07 34 */	extsh r4, r0
/* 80669D64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80669D68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80669D6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80669D70  4B 9A 26 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80669D74  48 00 00 28 */	b lbl_80669D9C
lbl_80669D78:
/* 80669D78  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80669D7C  4B BF DB D9 */	bl cM_rndF__Ff
/* 80669D80  FC 00 08 1E */	fctiwz f0, f1
/* 80669D84  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80669D88  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80669D8C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80669D90  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80669D94  80 63 00 00 */	lwz r3, 0(r3)
/* 80669D98  4B 9A 26 45 */	bl mDoMtx_YrotS__FPA4_fs
lbl_80669D9C:
/* 80669D9C  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80669DA0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80669DA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80669DA8  38 61 00 18 */	addi r3, r1, 0x18
/* 80669DAC  38 9C 05 B8 */	addi r4, r28, 0x5b8
/* 80669DB0  4B C0 71 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80669DB4  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 80669DB8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80669DBC  7C 65 1B 78 */	mr r5, r3
/* 80669DC0  4B CD D2 D1 */	bl PSVECAdd
/* 80669DC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80669DC8  4B BF DB 8D */	bl cM_rndF__Ff
/* 80669DCC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80669DD0  41 80 00 78 */	blt lbl_80669E48
/* 80669DD4  C0 1C 05 B8 */	lfs f0, 0x5b8(r28)
/* 80669DD8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80669DDC  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 80669DE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80669DE4  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 80669DE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80669DEC  7F 83 E3 78 */	mr r3, r28
/* 80669DF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80669DF4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80669DF8  4B FF EA 75 */	bl dansa_check__FP8do_class4cXyzf
/* 80669DFC  7C 60 00 34 */	cntlzw r0, r3
/* 80669E00  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80669E04  40 82 00 44 */	bne lbl_80669E48
/* 80669E08  C0 1C 05 B8 */	lfs f0, 0x5b8(r28)
/* 80669E0C  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 80669E10  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 80669E14  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80669E18  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 80669E1C  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 80669E20  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80669E24  4B BF DB 31 */	bl cM_rndF__Ff
/* 80669E28  EC 1D 08 2A */	fadds f0, f29, f1
/* 80669E2C  FC 00 00 1E */	fctiwz f0, f0
/* 80669E30  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80669E34  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80669E38  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80669E3C  3B 7B 00 01 */	addi r27, r27, 1
/* 80669E40  2C 1B 00 14 */	cmpwi r27, 0x14
/* 80669E44  41 80 FE F8 */	blt lbl_80669D3C
lbl_80669E48:
/* 80669E48  38 00 00 05 */	li r0, 5
/* 80669E4C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669E50  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80669E54  4B BF DB 39 */	bl cM_rndFX__Ff
/* 80669E58  FC 00 08 1E */	fctiwz f0, f1
/* 80669E5C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80669E60  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80669E64  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 80669E68  7F 83 E3 78 */	mr r3, r28
/* 80669E6C  38 80 00 16 */	li r4, 0x16
/* 80669E70  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80669E74  38 A0 00 02 */	li r5, 2
/* 80669E78  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80669E7C  4B FF DF 2D */	bl anm_init__FP8do_classifUcf
/* 80669E80  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80669E84  4B BF DA D1 */	bl cM_rndF__Ff
/* 80669E88  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80669E8C  EC 00 08 2A */	fadds f0, f0, f1
/* 80669E90  FC 00 00 1E */	fctiwz f0, f0
/* 80669E94  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80669E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80669E9C  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 80669EA0  48 00 01 D8 */	b lbl_8066A078
lbl_80669EA4:
/* 80669EA4  A8 1C 05 F6 */	lha r0, 0x5f6(r28)
/* 80669EA8  2C 00 00 06 */	cmpwi r0, 6
/* 80669EAC  41 82 01 CC */	beq lbl_8066A078
/* 80669EB0  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80669EB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80669EB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669EBC  40 80 01 BC */	bge lbl_8066A078
/* 80669EC0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80669EC4  4B BF DA C9 */	bl cM_rndFX__Ff
/* 80669EC8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80669ECC  EC 40 08 2A */	fadds f2, f0, f1
/* 80669ED0  7F 83 E3 78 */	mr r3, r28
/* 80669ED4  38 80 00 0D */	li r4, 0xd
/* 80669ED8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80669EDC  38 A0 00 02 */	li r5, 2
/* 80669EE0  4B FF DE C9 */	bl anm_init__FP8do_classifUcf
/* 80669EE4  38 00 00 06 */	li r0, 6
/* 80669EE8  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669EEC  48 00 01 8C */	b lbl_8066A078
lbl_80669EF0:
/* 80669EF0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80669EF4  38 A0 00 04 */	li r5, 4
/* 80669EF8  38 C0 04 00 */	li r6, 0x400
/* 80669EFC  4B C0 67 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80669F00  7F 60 07 34 */	extsh r0, r27
/* 80669F04  2C 00 08 00 */	cmpwi r0, 0x800
/* 80669F08  40 80 01 70 */	bge lbl_8066A078
/* 80669F0C  38 00 00 00 */	li r0, 0
/* 80669F10  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669F14  48 00 01 64 */	b lbl_8066A078
lbl_80669F18:
/* 80669F18  C0 3C 06 58 */	lfs f1, 0x658(r28)
/* 80669F1C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80669F20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80669F24  40 80 00 44 */	bge lbl_80669F68
/* 80669F28  A8 1C 05 FC */	lha r0, 0x5fc(r28)
/* 80669F2C  2C 00 00 00 */	cmpwi r0, 0
/* 80669F30  40 82 01 48 */	bne lbl_8066A078
/* 80669F34  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80669F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80669F3C  40 80 00 18 */	bge lbl_80669F54
/* 80669F40  38 00 00 00 */	li r0, 0
/* 80669F44  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 80669F48  38 00 00 0A */	li r0, 0xa
/* 80669F4C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669F50  48 00 01 28 */	b lbl_8066A078
lbl_80669F54:
/* 80669F54  38 00 00 08 */	li r0, 8
/* 80669F58  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 80669F5C  38 00 00 00 */	li r0, 0
/* 80669F60  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669F64  48 00 01 14 */	b lbl_8066A078
lbl_80669F68:
/* 80669F68  38 00 00 01 */	li r0, 1
/* 80669F6C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669F70  48 00 01 08 */	b lbl_8066A078
lbl_80669F74:
/* 80669F74  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80669F78  A8 1C 06 54 */	lha r0, 0x654(r28)
/* 80669F7C  7C 04 02 14 */	add r0, r4, r0
/* 80669F80  7C 04 07 34 */	extsh r4, r0
/* 80669F84  38 A0 00 04 */	li r5, 4
/* 80669F88  38 C0 08 00 */	li r6, 0x800
/* 80669F8C  4B C0 66 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80669F90  38 7C 06 54 */	addi r3, r28, 0x654
/* 80669F94  A8 9C 06 56 */	lha r4, 0x656(r28)
/* 80669F98  38 A0 00 04 */	li r5, 4
/* 80669F9C  38 C0 10 00 */	li r6, 0x1000
/* 80669FA0  4B C0 66 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80669FA4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80669FA8  C0 3C 05 B8 */	lfs f1, 0x5b8(r28)
/* 80669FAC  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80669FB0  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 80669FB4  4B C0 5A 89 */	bl cLib_addCalc2__FPffff
/* 80669FB8  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 80669FBC  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 80669FC0  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80669FC4  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 80669FC8  4B C0 5A 75 */	bl cLib_addCalc2__FPffff
/* 80669FCC  A8 1C 05 FC */	lha r0, 0x5fc(r28)
/* 80669FD0  2C 00 00 00 */	cmpwi r0, 0
/* 80669FD4  40 82 00 A4 */	bne lbl_8066A078
/* 80669FD8  38 00 00 00 */	li r0, 0
/* 80669FDC  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 80669FE0  48 00 00 98 */	b lbl_8066A078
lbl_80669FE4:
/* 80669FE4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80669FE8  D0 1C 06 48 */	stfs f0, 0x648(r28)
/* 80669FEC  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 80669FF0  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80669FF4  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80669FF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80669FFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066A000  40 81 FC 98 */	ble lbl_80669C98
/* 8066A004  38 00 00 00 */	li r0, 0
/* 8066A008  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066A00C  4B FF FC 8C */	b lbl_80669C98
lbl_8066A010:
/* 8066A010  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8066A014  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066A018  7F 83 E3 78 */	mr r3, r28
/* 8066A01C  38 80 00 16 */	li r4, 0x16
/* 8066A020  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066A024  38 A0 00 02 */	li r5, 2
/* 8066A028  C0 5C 05 E8 */	lfs f2, 0x5e8(r28)
/* 8066A02C  4B FF DD 7D */	bl anm_init__FP8do_classifUcf
/* 8066A030  A8 7C 05 F6 */	lha r3, 0x5f6(r28)
/* 8066A034  38 03 00 01 */	addi r0, r3, 1
/* 8066A038  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066A03C:
/* 8066A03C  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8066A040  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066A044  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A048  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 8066A04C  4B C0 59 F1 */	bl cLib_addCalc2__FPffff
/* 8066A050  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066A054  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8066A058  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8066A05C  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8066A060  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8066A064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A068  4C 40 13 82 */	cror 2, 0, 2
/* 8066A06C  40 82 00 0C */	bne lbl_8066A078
/* 8066A070  38 00 00 00 */	li r0, 0
/* 8066A074  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066A078:
/* 8066A078  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066A07C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066A080  FC 40 08 90 */	fmr f2, f1
/* 8066A084  4B C0 59 FD */	bl cLib_addCalc0__FPfff
/* 8066A088  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 8066A08C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8066A090  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 8066A094  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066A098  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066A09C  40 81 00 54 */	ble lbl_8066A0F0
/* 8066A0A0  7F 83 E3 78 */	mr r3, r28
/* 8066A0A4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8066A0A8  4B FF E9 89 */	bl dansa_check2__FP8do_classf
/* 8066A0AC  2C 03 00 00 */	cmpwi r3, 0
/* 8066A0B0  40 82 00 40 */	bne lbl_8066A0F0
/* 8066A0B4  A8 1C 05 F6 */	lha r0, 0x5f6(r28)
/* 8066A0B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8066A0BC  40 80 00 34 */	bge lbl_8066A0F0
/* 8066A0C0  38 00 00 02 */	li r0, 2
/* 8066A0C4  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066A0C8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8066A0CC  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066A0D0  7F 83 E3 78 */	mr r3, r28
/* 8066A0D4  38 80 00 16 */	li r4, 0x16
/* 8066A0D8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066A0DC  38 A0 00 02 */	li r5, 2
/* 8066A0E0  C0 5C 05 E8 */	lfs f2, 0x5e8(r28)
/* 8066A0E4  4B FF DC C5 */	bl anm_init__FP8do_classifUcf
/* 8066A0E8  38 00 00 01 */	li r0, 1
/* 8066A0EC  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066A0F0:
/* 8066A0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066A0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066A0F8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066A0FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066A100  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8066A104  7D 89 03 A6 */	mtctr r12
/* 8066A108  4E 80 04 21 */	bctrl 
/* 8066A10C  28 03 00 00 */	cmplwi r3, 0
/* 8066A110  41 82 00 24 */	beq lbl_8066A134
/* 8066A114  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 8066A118  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8066A11C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A120  40 80 00 14 */	bge lbl_8066A134
/* 8066A124  38 00 00 15 */	li r0, 0x15
/* 8066A128  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066A12C  38 00 00 00 */	li r0, 0
/* 8066A130  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066A134:
/* 8066A134  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 8066A138  28 00 00 02 */	cmplwi r0, 2
/* 8066A13C  40 82 00 58 */	bne lbl_8066A194
/* 8066A140  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8066A144  C0 1C 05 C8 */	lfs f0, 0x5c8(r28)
/* 8066A148  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066A14C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8066A150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A154  40 81 00 08 */	ble lbl_8066A15C
/* 8066A158  FC 20 00 90 */	fmr f1, f0
lbl_8066A15C:
/* 8066A15C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050023@ha */
/* 8066A160  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00050023@l */
/* 8066A164  90 01 00 08 */	stw r0, 8(r1)
/* 8066A168  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 8066A16C  38 81 00 08 */	addi r4, r1, 8
/* 8066A170  FC 00 08 1E */	fctiwz f0, f1
/* 8066A174  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066A178  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066A17C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8066A180  38 C0 FF FF */	li r6, -1
/* 8066A184  81 9C 0B F4 */	lwz r12, 0xbf4(r28)
/* 8066A188  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8066A18C  7D 89 03 A6 */	mtctr r12
/* 8066A190  4E 80 04 21 */	bctrl 
lbl_8066A194:
/* 8066A194  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8066A198  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8066A19C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8066A1A0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8066A1A4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8066A1A8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8066A1AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8066A1B0  4B CF 80 71 */	bl _restgpr_27
/* 8066A1B4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8066A1B8  7C 08 03 A6 */	mtlr r0
/* 8066A1BC  38 21 00 80 */	addi r1, r1, 0x80
/* 8066A1C0  4E 80 00 20 */	blr 
