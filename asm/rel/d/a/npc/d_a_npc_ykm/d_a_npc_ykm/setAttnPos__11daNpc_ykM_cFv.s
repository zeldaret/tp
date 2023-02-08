lbl_80B55A64:
/* 80B55A64  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80B55A68  7C 08 02 A6 */	mflr r0
/* 80B55A6C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80B55A70  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80B55A74  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80B55A78  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80B55A7C  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 80B55A80  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80B55A84  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 80B55A88  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80B55A8C  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 80B55A90  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 80B55A94  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 80B55A98  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 80B55A9C  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 80B55AA0  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 80B55AA4  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 80B55AA8  DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 80B55AAC  F3 01 00 D8 */	psq_st f24, 216(r1), 0, 0 /* qr0 */
/* 80B55AB0  DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 80B55AB4  F2 E1 00 C8 */	psq_st f23, 200(r1), 0, 0 /* qr0 */
/* 80B55AB8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B55ABC  4B 80 C7 15 */	bl _savegpr_26
/* 80B55AC0  7C 7E 1B 78 */	mr r30, r3
/* 80B55AC4  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B55AC8  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B55ACC  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 80B55AD0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B55AD4  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80B55AD8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B55ADC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B55AE0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B55AE4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B55AE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B55AEC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B55AF0  88 1E 15 7B */	lbz r0, 0x157b(r30)
/* 80B55AF4  28 00 00 00 */	cmplwi r0, 0
/* 80B55AF8  41 82 00 38 */	beq lbl_80B55B30
/* 80B55AFC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B55B00  2C 00 00 00 */	cmpwi r0, 0
/* 80B55B04  41 82 00 38 */	beq lbl_80B55B3C
/* 80B55B08  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B55B0C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B55B10  40 82 00 14 */	bne lbl_80B55B24
/* 80B55B14  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B55B18  4B 5E FF 0D */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B55B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B55B20  41 82 00 1C */	beq lbl_80B55B3C
lbl_80B55B24:
/* 80B55B24  38 00 00 01 */	li r0, 1
/* 80B55B28  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80B55B2C  48 00 00 10 */	b lbl_80B55B3C
lbl_80B55B30:
/* 80B55B30  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B55B34  38 80 00 00 */	li r4, 0
/* 80B55B38  4B 5F 23 05 */	bl calc__19daNpcT_DmgStagger_cFi
lbl_80B55B3C:
/* 80B55B3C  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 80B55B40  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B55B44  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B55B48  7C 03 00 50 */	subf r0, r3, r0
/* 80B55B4C  7C 00 07 34 */	extsh r0, r0
/* 80B55B50  C8 3F 01 98 */	lfd f1, 0x198(r31)
/* 80B55B54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B55B58  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80B55B5C  3C 00 43 30 */	lis r0, 0x4330
/* 80B55B60  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B55B64  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80B55B68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B55B6C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B55B70  3B 7F 00 00 */	addi r27, r31, 0
/* 80B55B74  88 1E 15 74 */	lbz r0, 0x1574(r30)
/* 80B55B78  28 00 00 00 */	cmplwi r0, 0
/* 80B55B7C  41 82 00 0C */	beq lbl_80B55B88
/* 80B55B80  C3 DF 01 04 */	lfs f30, 0x104(r31)
/* 80B55B84  48 00 00 08 */	b lbl_80B55B8C
lbl_80B55B88:
/* 80B55B88  C3 DB 00 38 */	lfs f30, 0x38(r27)
lbl_80B55B8C:
/* 80B55B8C  28 00 00 00 */	cmplwi r0, 0
/* 80B55B90  41 82 00 0C */	beq lbl_80B55B9C
/* 80B55B94  C3 BF 01 04 */	lfs f29, 0x104(r31)
/* 80B55B98  48 00 00 0C */	b lbl_80B55BA4
lbl_80B55B9C:
/* 80B55B9C  38 7F 00 00 */	addi r3, r31, 0
/* 80B55BA0  C3 A3 00 3C */	lfs f29, 0x3c(r3)
lbl_80B55BA4:
/* 80B55BA4  28 00 00 00 */	cmplwi r0, 0
/* 80B55BA8  41 82 00 0C */	beq lbl_80B55BB4
/* 80B55BAC  C3 9F 01 04 */	lfs f28, 0x104(r31)
/* 80B55BB0  48 00 00 0C */	b lbl_80B55BBC
lbl_80B55BB4:
/* 80B55BB4  38 7F 00 00 */	addi r3, r31, 0
/* 80B55BB8  C3 83 00 30 */	lfs f28, 0x30(r3)
lbl_80B55BBC:
/* 80B55BBC  28 00 00 00 */	cmplwi r0, 0
/* 80B55BC0  41 82 00 0C */	beq lbl_80B55BCC
/* 80B55BC4  C3 7F 01 04 */	lfs f27, 0x104(r31)
/* 80B55BC8  48 00 00 0C */	b lbl_80B55BD4
lbl_80B55BCC:
/* 80B55BCC  38 7F 00 00 */	addi r3, r31, 0
/* 80B55BD0  C3 63 00 34 */	lfs f27, 0x34(r3)
lbl_80B55BD4:
/* 80B55BD4  88 1E 15 75 */	lbz r0, 0x1575(r30)
/* 80B55BD8  28 00 00 00 */	cmplwi r0, 0
/* 80B55BDC  41 82 00 0C */	beq lbl_80B55BE8
/* 80B55BE0  C3 5F 01 04 */	lfs f26, 0x104(r31)
/* 80B55BE4  48 00 00 0C */	b lbl_80B55BF0
lbl_80B55BE8:
/* 80B55BE8  38 7F 00 00 */	addi r3, r31, 0
/* 80B55BEC  C3 43 00 28 */	lfs f26, 0x28(r3)
lbl_80B55BF0:
/* 80B55BF0  28 00 00 00 */	cmplwi r0, 0
/* 80B55BF4  41 82 00 0C */	beq lbl_80B55C00
/* 80B55BF8  C3 3F 01 04 */	lfs f25, 0x104(r31)
/* 80B55BFC  48 00 00 0C */	b lbl_80B55C08
lbl_80B55C00:
/* 80B55C00  38 7F 00 00 */	addi r3, r31, 0
/* 80B55C04  C3 23 00 2C */	lfs f25, 0x2c(r3)
lbl_80B55C08:
/* 80B55C08  28 00 00 00 */	cmplwi r0, 0
/* 80B55C0C  41 82 00 0C */	beq lbl_80B55C18
/* 80B55C10  C3 1F 01 04 */	lfs f24, 0x104(r31)
/* 80B55C14  48 00 00 0C */	b lbl_80B55C20
lbl_80B55C18:
/* 80B55C18  38 7F 00 00 */	addi r3, r31, 0
/* 80B55C1C  C3 03 00 20 */	lfs f24, 0x20(r3)
lbl_80B55C20:
/* 80B55C20  28 00 00 00 */	cmplwi r0, 0
/* 80B55C24  41 82 00 0C */	beq lbl_80B55C30
/* 80B55C28  C2 FF 01 04 */	lfs f23, 0x104(r31)
/* 80B55C2C  48 00 00 0C */	b lbl_80B55C38
lbl_80B55C30:
/* 80B55C30  38 7F 00 00 */	addi r3, r31, 0
/* 80B55C34  C2 E3 00 24 */	lfs f23, 0x24(r3)
lbl_80B55C38:
/* 80B55C38  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55C3C  83 43 00 04 */	lwz r26, 4(r3)
/* 80B55C40  7F C3 F3 78 */	mr r3, r30
/* 80B55C44  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B55C48  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B55C4C  7D 89 03 A6 */	mtctr r12
/* 80B55C50  4E 80 04 21 */	bctrl 
/* 80B55C54  7C 7C 1B 78 */	mr r28, r3
/* 80B55C58  7F C3 F3 78 */	mr r3, r30
/* 80B55C5C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B55C60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B55C64  7D 89 03 A6 */	mtctr r12
/* 80B55C68  4E 80 04 21 */	bctrl 
/* 80B55C6C  7C 7D 1B 78 */	mr r29, r3
/* 80B55C70  7F C3 F3 78 */	mr r3, r30
/* 80B55C74  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B55C78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B55C7C  7D 89 03 A6 */	mtctr r12
/* 80B55C80  4E 80 04 21 */	bctrl 
/* 80B55C84  7C 67 1B 78 */	mr r7, r3
/* 80B55C88  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80B55C8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B55C90  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B55C94  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B55C98  7F C4 F3 78 */	mr r4, r30
/* 80B55C9C  7F 45 D3 78 */	mr r5, r26
/* 80B55CA0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B55CA4  7F A8 EB 78 */	mr r8, r29
/* 80B55CA8  7F 89 E3 78 */	mr r9, r28
/* 80B55CAC  FC 20 B8 90 */	fmr f1, f23
/* 80B55CB0  FC 40 C0 90 */	fmr f2, f24
/* 80B55CB4  FC 60 C8 90 */	fmr f3, f25
/* 80B55CB8  FC 80 D0 90 */	fmr f4, f26
/* 80B55CBC  FC A0 D8 90 */	fmr f5, f27
/* 80B55CC0  FC C0 E0 90 */	fmr f6, f28
/* 80B55CC4  FC E0 E8 90 */	fmr f7, f29
/* 80B55CC8  FD 00 F0 90 */	fmr f8, f30
/* 80B55CCC  39 41 00 50 */	addi r10, r1, 0x50
/* 80B55CD0  4B 5F 10 09 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B55CD4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B55CD8  2C 00 00 08 */	cmpwi r0, 8
/* 80B55CDC  40 82 00 1C */	bne lbl_80B55CF8
/* 80B55CE0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B55CE4  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80B55CE8  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80B55CEC  FC 60 F8 90 */	fmr f3, f31
/* 80B55CF0  4B 5F 1F 49 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B55CF4  48 00 00 18 */	b lbl_80B55D0C
lbl_80B55CF8:
/* 80B55CF8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B55CFC  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80B55D00  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80B55D04  FC 60 F8 90 */	fmr f3, f31
/* 80B55D08  4B 5F 1F 31 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
lbl_80B55D0C:
/* 80B55D0C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55D10  83 43 00 04 */	lwz r26, 4(r3)
/* 80B55D14  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B55D18  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B55D1C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B55D20  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B55D24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B55D28  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B55D2C  C0 1E 15 68 */	lfs f0, 0x1568(r30)
/* 80B55D30  EC 01 00 2A */	fadds f0, f1, f0
/* 80B55D34  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B55D38  38 61 00 44 */	addi r3, r1, 0x44
/* 80B55D3C  4B 4B 70 29 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B55D40  38 7E 0D 78 */	addi r3, r30, 0xd78
/* 80B55D44  4B 4B 72 01 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B55D48  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80B55D4C  4B 4B 71 25 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B55D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55D54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55D58  38 9A 00 24 */	addi r4, r26, 0x24
/* 80B55D5C  4B 7F 07 55 */	bl PSMTXCopy
/* 80B55D60  93 DA 00 14 */	stw r30, 0x14(r26)
/* 80B55D64  38 00 00 01 */	li r0, 1
/* 80B55D68  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55D6C  98 03 00 55 */	stb r0, 0x55(r3)
/* 80B55D70  C0 1E 0D FC */	lfs f0, 0xdfc(r30)
/* 80B55D74  FC 00 02 10 */	fabs f0, f0
/* 80B55D78  FC 20 00 18 */	frsp f1, f0
/* 80B55D7C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B55D80  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B55D84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B55D88  7C 00 00 26 */	mfcr r0
/* 80B55D8C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80B55D90  41 82 00 10 */	beq lbl_80B55DA0
/* 80B55D94  38 00 00 00 */	li r0, 0
/* 80B55D98  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55D9C  98 03 00 55 */	stb r0, 0x55(r3)
lbl_80B55DA0:
/* 80B55DA0  80 1E 0D 98 */	lwz r0, 0xd98(r30)
/* 80B55DA4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80B55DA8  41 82 00 10 */	beq lbl_80B55DB8
/* 80B55DAC  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80B55DB0  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 80B55DB4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80B55DB8:
/* 80B55DB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55DBC  4B 4B B4 31 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B55DC0  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80B55DC4  28 03 00 00 */	cmplwi r3, 0
/* 80B55DC8  41 82 00 C0 */	beq lbl_80B55E88
/* 80B55DCC  38 80 00 00 */	li r4, 0
/* 80B55DD0  38 A0 00 00 */	li r5, 0
/* 80B55DD4  4B 4B B2 DD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80B55DD8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B55DDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B55DE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B55DE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B55DE8  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 80B55DEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55DF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55DF4  4B 7F 06 BD */	bl PSMTXCopy
/* 80B55DF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55DFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55E00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B55E04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B55E08  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B55E0C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B55E10  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B55E14  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B55E18  38 81 00 68 */	addi r4, r1, 0x68
/* 80B55E1C  4B 7F 06 95 */	bl PSMTXCopy
/* 80B55E20  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80B55E24  80 83 00 04 */	lwz r4, 4(r3)
/* 80B55E28  38 61 00 68 */	addi r3, r1, 0x68
/* 80B55E2C  38 84 00 24 */	addi r4, r4, 0x24
/* 80B55E30  4B 7F 06 81 */	bl PSMTXCopy
/* 80B55E34  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80B55E38  4B 4B B3 B5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B55E3C  88 1E 15 79 */	lbz r0, 0x1579(r30)
/* 80B55E40  28 00 00 00 */	cmplwi r0, 0
/* 80B55E44  41 82 00 44 */	beq lbl_80B55E88
/* 80B55E48  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008F@ha */
/* 80B55E4C  38 03 00 8F */	addi r0, r3, 0x008F /* 0x0006008F@l */
/* 80B55E50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B55E54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B55E58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B55E5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B55E60  38 81 00 10 */	addi r4, r1, 0x10
/* 80B55E64  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B55E68  38 C0 00 00 */	li r6, 0
/* 80B55E6C  38 E0 00 00 */	li r7, 0
/* 80B55E70  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B55E74  FC 40 08 90 */	fmr f2, f1
/* 80B55E78  C0 7F 01 3C */	lfs f3, 0x13c(r31)
/* 80B55E7C  FC 80 18 90 */	fmr f4, f3
/* 80B55E80  39 00 00 00 */	li r8, 0
/* 80B55E84  4B 75 66 89 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B55E88:
/* 80B55E88  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B55E8C  28 03 00 00 */	cmplwi r3, 0
/* 80B55E90  41 82 00 5C */	beq lbl_80B55EEC
/* 80B55E94  38 80 00 00 */	li r4, 0
/* 80B55E98  38 A0 00 00 */	li r5, 0
/* 80B55E9C  4B 4B B2 15 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80B55EA0  7F C3 F3 78 */	mr r3, r30
/* 80B55EA4  38 80 00 05 */	li r4, 5
/* 80B55EA8  4B FF E6 A5 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B55EAC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B55EB0  41 82 00 3C */	beq lbl_80B55EEC
/* 80B55EB4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B55EB8  4B 4B 6E AD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B55EBC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80B55EC0  4B 4B 70 85 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B55EC4  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80B55EC8  4B 4B 6F A9 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B55ECC  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B55ED0  80 83 00 04 */	lwz r4, 4(r3)
/* 80B55ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55EDC  38 84 00 24 */	addi r4, r4, 0x24
/* 80B55EE0  4B 7F 05 D1 */	bl PSMTXCopy
/* 80B55EE4  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B55EE8  4B 4B B3 05 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80B55EEC:
/* 80B55EEC  7F C3 F3 78 */	mr r3, r30
/* 80B55EF0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B55EF4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B55EF8  7D 89 03 A6 */	mtctr r12
/* 80B55EFC  4E 80 04 21 */	bctrl 
/* 80B55F00  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B55F04  80 84 00 04 */	lwz r4, 4(r4)
/* 80B55F08  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B55F0C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B55F10  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B55F14  7C 64 02 14 */	add r3, r4, r0
/* 80B55F18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55F1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55F20  4B 7F 05 91 */	bl PSMTXCopy
/* 80B55F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B55F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B55F2C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B55F30  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B55F34  4B 7F 0E 39 */	bl PSMTXMultVec
/* 80B55F38  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B55F3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B55F40  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B55F44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B55F48  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B55F4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B55F50  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B55F54  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B55F58  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B55F5C  38 A0 00 00 */	li r5, 0
/* 80B55F60  48 00 71 49 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B55F64  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B55F68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B55F6C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B55F70  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B55F74  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B55F78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B55F7C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B55F80  38 81 00 20 */	addi r4, r1, 0x20
/* 80B55F84  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B55F88  A8 1E 0D 8C */	lha r0, 0xd8c(r30)
/* 80B55F8C  7C 05 02 14 */	add r0, r5, r0
/* 80B55F90  7C 05 07 34 */	extsh r5, r0
/* 80B55F94  38 C0 00 01 */	li r6, 1
/* 80B55F98  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B55F9C  38 E0 00 00 */	li r7, 0
/* 80B55FA0  48 00 6F ED */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B55FA4  C0 7F 01 04 */	lfs f3, 0x104(r31)
/* 80B55FA8  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80B55FAC  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 80B55FB0  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 80B55FB4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80B55FB8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B55FBC  C0 1E 15 68 */	lfs f0, 0x1568(r30)
/* 80B55FC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B55FC4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B55FC8  88 1E 15 81 */	lbz r0, 0x1581(r30)
/* 80B55FCC  28 00 00 00 */	cmplwi r0, 0
/* 80B55FD0  41 82 00 1C */	beq lbl_80B55FEC
/* 80B55FD4  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80B55FD8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B55FDC  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80B55FE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B55FE4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B55FE8  48 00 00 20 */	b lbl_80B56008
lbl_80B55FEC:
/* 80B55FEC  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B55FF0  28 00 00 01 */	cmplwi r0, 1
/* 80B55FF4  40 82 00 14 */	bne lbl_80B56008
/* 80B55FF8  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80B55FFC  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 80B56000  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B56004  D0 41 00 64 */	stfs f2, 0x64(r1)
lbl_80B56008:
/* 80B56008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B5600C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B56010  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80B56014  4B 4B 63 C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B56018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B5601C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B56020  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B56024  7C 85 23 78 */	mr r5, r4
/* 80B56028  4B 7F 0D 45 */	bl PSMTXMultVec
/* 80B5602C  38 61 00 14 */	addi r3, r1, 0x14
/* 80B56030  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B56034  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80B56038  4B 71 0A AD */	bl __pl__4cXyzCFRC3Vec
/* 80B5603C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B56040  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B56044  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B56048  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B5604C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B56050  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B56054  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80B56058  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80B5605C  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 80B56060  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80B56064  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 80B56068  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80B5606C  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 80B56070  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80B56074  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 80B56078  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 80B5607C  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 80B56080  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 80B56084  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 80B56088  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 80B5608C  E3 01 00 D8 */	psq_l f24, 216(r1), 0, 0 /* qr0 */
/* 80B56090  CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 80B56094  E2 E1 00 C8 */	psq_l f23, 200(r1), 0, 0 /* qr0 */
/* 80B56098  CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 80B5609C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B560A0  4B 80 C1 7D */	bl _restgpr_26
/* 80B560A4  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80B560A8  7C 08 03 A6 */	mtlr r0
/* 80B560AC  38 21 01 50 */	addi r1, r1, 0x150
/* 80B560B0  4E 80 00 20 */	blr 
