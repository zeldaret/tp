lbl_80C3DFAC:
/* 80C3DFAC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C3DFB0  7C 08 02 A6 */	mflr r0
/* 80C3DFB4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C3DFB8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C3DFBC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C3DFC0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C3DFC4  4B 72 42 19 */	bl _savegpr_29
/* 80C3DFC8  7C 7E 1B 78 */	mr r30, r3
/* 80C3DFCC  3C 60 80 C4 */	lis r3, lit_3648@ha /* 0x80C3F058@ha */
/* 80C3DFD0  3B E3 F0 58 */	addi r31, r3, lit_3648@l /* 0x80C3F058@l */
/* 80C3DFD4  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C3DFD8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3DFDC  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80C3DFE0  4B 63 1A A1 */	bl cLib_addCalc0__FPfff
/* 80C3DFE4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C3DFE8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C3DFEC  7C 65 1B 78 */	mr r5, r3
/* 80C3DFF0  4B 70 90 A1 */	bl PSVECAdd
/* 80C3DFF4  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C3DFF8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C3DFFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E000  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C3E004  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C3E008  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E00C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C3E010  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3E014  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3E018  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C3E01C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C3E020  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C3E024  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C3E028  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80C3E02C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C3E030  C3 FF 00 5C */	lfs f31, 0x5c(r31)
/* 80C3E034  C0 3E 05 98 */	lfs f1, 0x598(r30)
/* 80C3E038  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C3E03C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C3E040  41 82 01 40 */	beq lbl_80C3E180
/* 80C3E044  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80C3E048  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80C3E04C  FC 00 02 10 */	fabs f0, f0
/* 80C3E050  FC 20 00 18 */	frsp f1, f0
/* 80C3E054  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C3E058  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E05C  D0 1E 05 9C */	stfs f0, 0x59c(r30)
/* 80C3E060  C0 3E 05 9C */	lfs f1, 0x59c(r30)
/* 80C3E064  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C3E068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3E06C  40 81 00 08 */	ble lbl_80C3E074
/* 80C3E070  D0 1E 05 9C */	stfs f0, 0x59c(r30)
lbl_80C3E074:
/* 80C3E074  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C3E078  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3E07C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3E080  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3E084  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3E088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3E08C  C0 9E 04 D4 */	lfs f4, 0x4d4(r30)
/* 80C3E090  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80C3E094  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C3E098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3E09C  C0 7E 05 AC */	lfs f3, 0x5ac(r30)
/* 80C3E0A0  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80C3E0A4  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80C3E0A8  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80C3E0AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3E0B0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3E0B4  EC 03 00 2A */	fadds f0, f3, f0
/* 80C3E0B8  EC 04 00 2A */	fadds f0, f4, f0
/* 80C3E0BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3E0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3E0C4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3E0C8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C3E0CC  38 00 00 FF */	li r0, 0xff
/* 80C3E0D0  90 01 00 08 */	stw r0, 8(r1)
/* 80C3E0D4  38 80 00 00 */	li r4, 0
/* 80C3E0D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C3E0DC  38 00 FF FF */	li r0, -1
/* 80C3E0E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3E0E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3E0E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3E0EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C3E0F0  80 9E 09 E8 */	lwz r4, 0x9e8(r30)
/* 80C3E0F4  38 A0 00 00 */	li r5, 0
/* 80C3E0F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000086C3@ha */
/* 80C3E0FC  38 C6 86 C3 */	addi r6, r6, 0x86C3 /* 0x000086C3@l */
/* 80C3E100  38 E1 00 20 */	addi r7, r1, 0x20
/* 80C3E104  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C3E108  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C3E10C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80C3E110  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3E114  4B 40 F3 B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3E118  90 7E 09 E8 */	stw r3, 0x9e8(r30)
/* 80C3E11C  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80C3E120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C3E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3E128  4C 40 13 82 */	cror 2, 0, 2
/* 80C3E12C  40 82 00 54 */	bne lbl_80C3E180
/* 80C3E130  7F C3 F3 78 */	mr r3, r30
/* 80C3E134  4B 3D BB 49 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C3E138  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C3E13C  38 80 00 00 */	li r4, 0
/* 80C3E140  90 81 00 08 */	stw r4, 8(r1)
/* 80C3E144  38 00 FF FF */	li r0, -1
/* 80C3E148  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C3E14C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C3E150  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3E154  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3E158  38 80 00 00 */	li r4, 0
/* 80C3E15C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086C4@ha */
/* 80C3E160  38 A5 86 C4 */	addi r5, r5, 0x86C4 /* 0x000086C4@l */
/* 80C3E164  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C3E168  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C3E16C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80C3E170  39 21 00 2C */	addi r9, r1, 0x2c
/* 80C3E174  39 40 00 FF */	li r10, 0xff
/* 80C3E178  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3E17C  4B 40 E9 15 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C3E180:
/* 80C3E180  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C3E184  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C3E188  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3E18C  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80C3E190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3E194  40 81 00 18 */	ble lbl_80C3E1AC
/* 80C3E198  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 80C3E19C  38 81 00 38 */	addi r4, r1, 0x38
/* 80C3E1A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C3E1A4  FC 40 F8 90 */	fmr f2, f31
/* 80C3E1A8  4B 3D EF 65 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80C3E1AC:
/* 80C3E1AC  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C3E1B0  1C 00 03 84 */	mulli r0, r0, 0x384
/* 80C3E1B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3E1B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C3E1BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C3E1C0  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C3E1C4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C3E1C8  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80C3E1CC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C3E1D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C3E1D4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C3E1D8  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80C3E1DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3E1E0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C3E1E4  EC 22 00 2A */	fadds f1, f2, f0
/* 80C3E1E8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C3E1EC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C3E1F0  4B 63 18 4D */	bl cLib_addCalc2__FPffff
/* 80C3E1F4  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C3E1F8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C3E1FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3E200  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C3E204  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C3E208  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C3E20C  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80C3E210  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E214  FC 00 00 1E */	fctiwz f0, f0
/* 80C3E218  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C3E21C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C3E220  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C3E224  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C3E228  1C 00 04 4C */	mulli r0, r0, 0x44c
/* 80C3E22C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3E230  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C3E234  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80C3E238  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E23C  FC 00 00 1E */	fctiwz f0, f0
/* 80C3E240  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80C3E244  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C3E248  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C3E24C  38 7E 05 94 */	addi r3, r30, 0x594
/* 80C3E250  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C3E254  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C3E258  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C3E25C  4B 63 17 E1 */	bl cLib_addCalc2__FPffff
/* 80C3E260  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C3E264  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80C3E268  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3E26C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C3E270  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C3E274  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C3E278  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80C3E27C  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 80C3E280  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E284  FC 00 00 1E */	fctiwz f0, f0
/* 80C3E288  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80C3E28C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80C3E290  7C 03 02 14 */	add r0, r3, r0
/* 80C3E294  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C3E298  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C3E29C  1C 00 10 68 */	mulli r0, r0, 0x1068
/* 80C3E2A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3E2A4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C3E2A8  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C3E2AC  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 80C3E2B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E2B4  FC 00 00 1E */	fctiwz f0, f0
/* 80C3E2B8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C3E2BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C3E2C0  7C 03 02 14 */	add r0, r3, r0
/* 80C3E2C4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C3E2C8  38 7E 05 98 */	addi r3, r30, 0x598
/* 80C3E2CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C3E2D0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C3E2D4  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C3E2D8  4B 63 17 65 */	bl cLib_addCalc2__FPffff
/* 80C3E2DC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C3E2E0  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80C3E2E4  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80C3E2E8  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80C3E2EC  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80C3E2F0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C3E2F4  4B 63 17 49 */	bl cLib_addCalc2__FPffff
/* 80C3E2F8  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C3E2FC  A8 1E 05 A0 */	lha r0, 0x5a0(r30)
/* 80C3E300  2C 00 00 00 */	cmpwi r0, 0
/* 80C3E304  41 82 00 0C */	beq lbl_80C3E310
/* 80C3E308  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C3E30C  48 00 00 08 */	b lbl_80C3E314
lbl_80C3E310:
/* 80C3E310  C0 3F 00 08 */	lfs f1, 8(r31)
lbl_80C3E314:
/* 80C3E314  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C3E318  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C3E31C  4B 63 17 21 */	bl cLib_addCalc2__FPffff
/* 80C3E320  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C3E324  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C3E328  39 61 00 80 */	addi r11, r1, 0x80
/* 80C3E32C  4B 72 3E FD */	bl _restgpr_29
/* 80C3E330  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C3E334  7C 08 03 A6 */	mtlr r0
/* 80C3E338  38 21 00 90 */	addi r1, r1, 0x90
/* 80C3E33C  4E 80 00 20 */	blr 
