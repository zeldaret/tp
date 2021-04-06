lbl_807B5F2C:
/* 807B5F2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807B5F30  7C 08 02 A6 */	mflr r0
/* 807B5F34  90 01 00 64 */	stw r0, 0x64(r1)
/* 807B5F38  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807B5F3C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807B5F40  39 61 00 50 */	addi r11, r1, 0x50
/* 807B5F44  4B BA C2 99 */	bl _savegpr_29
/* 807B5F48  7C 7D 1B 78 */	mr r29, r3
/* 807B5F4C  7C 9E 23 78 */	mr r30, r4
/* 807B5F50  3C 60 80 7B */	lis r3, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B5F54  3B E3 7E B8 */	addi r31, r3, lit_3746@l /* 0x807B7EB8@l */
/* 807B5F58  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B5F5C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B5F60  80 63 00 00 */	lwz r3, 0(r3)
/* 807B5F64  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807B5F68  4B 85 64 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 807B5F6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B5F70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B5F74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B5F78  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807B5F7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B5F80  38 61 00 20 */	addi r3, r1, 0x20
/* 807B5F84  38 81 00 14 */	addi r4, r1, 0x14
/* 807B5F88  4B AB AF 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B5F8C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 807B5F90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B5F94  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807B5F98  38 81 00 14 */	addi r4, r1, 0x14
/* 807B5F9C  7C 65 1B 78 */	mr r5, r3
/* 807B5FA0  4B B9 10 F1 */	bl PSVECAdd
/* 807B5FA4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807B5FA8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807B5FAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5FB0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807B5FB4  7F C0 07 75 */	extsb. r0, r30
/* 807B5FB8  41 82 00 28 */	beq lbl_807B5FE0
/* 807B5FBC  A8 7D 04 DC */	lha r3, 0x4dc(r29)
/* 807B5FC0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807B5FC4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807B5FC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B5FCC  FC 00 00 1E */	fctiwz f0, f0
/* 807B5FD0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807B5FD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B5FD8  7C 03 02 14 */	add r0, r3, r0
/* 807B5FDC  B0 1D 04 DC */	sth r0, 0x4dc(r29)
lbl_807B5FE0:
/* 807B5FE0  C3 FD 04 FC */	lfs f31, 0x4fc(r29)
/* 807B5FE4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807B5FE8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807B5FEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 807B5FF0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807B5FF4  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807B5FF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807B5FFC  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807B6000  38 7D 16 08 */	addi r3, r29, 0x1608
/* 807B6004  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B6008  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B600C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807B6010  4B 8C 0A 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807B6014  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807B6018  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807B601C  EC 00 08 2A */	fadds f0, f0, f1
/* 807B6020  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807B6024  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807B6028  EC 00 08 2A */	fadds f0, f0, f1
/* 807B602C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807B6030  80 1D 16 34 */	lwz r0, 0x1634(r29)
/* 807B6034  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807B6038  41 82 00 74 */	beq lbl_807B60AC
/* 807B603C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807B6040  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807B6044  40 80 00 58 */	bge lbl_807B609C
/* 807B6048  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 807B604C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807B6050  38 7D 16 F8 */	addi r3, r29, 0x16f8
/* 807B6054  4B 9F 54 6D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 807B6058  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 807B605C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807B6060  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 807B6064  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 807B6068  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807B606C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807B6070  7D 89 03 A6 */	mtctr r12
/* 807B6074  4E 80 04 21 */	bctrl 
/* 807B6078  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807B607C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B6080  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807B6084  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807B6088  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807B608C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B6090  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 807B6094  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B6098  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_807B609C:
/* 807B609C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807B60A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B60A4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 807B60A8  4B AB 99 D9 */	bl cLib_addCalc0__FPfff
lbl_807B60AC:
/* 807B60AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807B60B0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807B60B4  39 61 00 50 */	addi r11, r1, 0x50
/* 807B60B8  4B BA C1 71 */	bl _restgpr_29
/* 807B60BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807B60C0  7C 08 03 A6 */	mtlr r0
/* 807B60C4  38 21 00 60 */	addi r1, r1, 0x60
/* 807B60C8  4E 80 00 20 */	blr 
