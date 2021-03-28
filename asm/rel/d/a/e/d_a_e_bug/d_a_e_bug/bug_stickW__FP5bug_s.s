lbl_80695BE4:
/* 80695BE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80695BE8  7C 08 02 A6 */	mflr r0
/* 80695BEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80695BF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80695BF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80695BF8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80695BFC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80695C00  7C 7E 1B 78 */	mr r30, r3
/* 80695C04  3C 60 80 69 */	lis r3, lit_3829@ha
/* 80695C08  3B E3 7C A0 */	addi r31, r3, lit_3829@l
/* 80695C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80695C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80695C14  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80695C18  38 80 00 01 */	li r4, 1
/* 80695C1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80695C20  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80695C24  7D 89 03 A6 */	mtctr r12
/* 80695C28  4E 80 04 21 */	bctrl 
/* 80695C2C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80695C30  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80695C34  80 84 00 00 */	lwz r4, 0(r4)
/* 80695C38  4B CB 08 78 */	b PSMTXCopy
/* 80695C3C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80695C40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80695C44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695C48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80695C4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80695C50  38 81 00 14 */	addi r4, r1, 0x14
/* 80695C54  4B BD B2 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80695C58  88 1E 00 52 */	lbz r0, 0x52(r30)
/* 80695C5C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80695C60  40 82 00 94 */	bne lbl_80695CF4
/* 80695C64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80695C68  4B BD 1C EC */	b cM_rndF__Ff
/* 80695C6C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80695C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80695C74  40 80 00 28 */	bge lbl_80695C9C
/* 80695C78  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80695C7C  4B BD 1C D8 */	b cM_rndF__Ff
/* 80695C80  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80695C84  EC 00 08 2A */	fadds f0, f0, f1
/* 80695C88  FC 00 00 1E */	fctiwz f0, f0
/* 80695C8C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80695C90  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80695C94  B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 80695C98  48 00 00 28 */	b lbl_80695CC0
lbl_80695C9C:
/* 80695C9C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80695CA0  4B BD 1C B4 */	b cM_rndF__Ff
/* 80695CA4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80695CA8  EC 00 08 2A */	fadds f0, f0, f1
/* 80695CAC  FC 00 00 50 */	fneg f0, f0
/* 80695CB0  FC 00 00 1E */	fctiwz f0, f0
/* 80695CB4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80695CB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80695CBC  B0 1E 00 4A */	sth r0, 0x4a(r30)
lbl_80695CC0:
/* 80695CC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80695CC4  4B BD 1C 90 */	b cM_rndF__Ff
/* 80695CC8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80695CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80695CD0  40 80 00 24 */	bge lbl_80695CF4
/* 80695CD4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80695CD8  4B BD 1C 7C */	b cM_rndF__Ff
/* 80695CDC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80695CE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80695CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80695CE8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80695CEC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80695CF0  B0 1E 00 4E */	sth r0, 0x4e(r30)
lbl_80695CF4:
/* 80695CF4  A8 7E 00 48 */	lha r3, 0x48(r30)
/* 80695CF8  A8 1E 00 4A */	lha r0, 0x4a(r30)
/* 80695CFC  7C 03 02 14 */	add r0, r3, r0
/* 80695D00  B0 1E 00 48 */	sth r0, 0x48(r30)
/* 80695D04  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 80695D08  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 80695D0C  7C 03 02 14 */	add r0, r3, r0
/* 80695D10  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80695D14  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 80695D18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80695D1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80695D20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80695D24  7F E3 04 2E */	lfsx f31, r3, r0
/* 80695D28  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80695D2C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80695D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80695D34  A8 9E 00 48 */	lha r4, 0x48(r30)
/* 80695D38  4B 97 66 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80695D3C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80695D40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80695D44  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80695D48  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80695D4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80695D50  EC 21 00 28 */	fsubs f1, f1, f0
/* 80695D54  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80695D58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80695D5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695D60  FC 00 FA 10 */	fabs f0, f31
/* 80695D64  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80695D68  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80695D6C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80695D70  FC 00 00 18 */	frsp f0, f0
/* 80695D74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80695D78  EC 02 00 2A */	fadds f0, f2, f0
/* 80695D7C  EC 03 00 2A */	fadds f0, f3, f0
/* 80695D80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80695D84  38 61 00 2C */	addi r3, r1, 0x2c
/* 80695D88  38 81 00 20 */	addi r4, r1, 0x20
/* 80695D8C  4B BD B1 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 80695D90  38 61 00 08 */	addi r3, r1, 8
/* 80695D94  38 81 00 14 */	addi r4, r1, 0x14
/* 80695D98  38 A1 00 20 */	addi r5, r1, 0x20
/* 80695D9C  4B BD 0D 48 */	b __pl__4cXyzCFRC3Vec
/* 80695DA0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80695DA4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80695DA8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80695DAC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80695DB0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80695DB4  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80695DB8  A8 7E 00 48 */	lha r3, 0x48(r30)
/* 80695DBC  3C 63 00 01 */	addis r3, r3, 1
/* 80695DC0  38 03 80 00 */	addi r0, r3, -32768
/* 80695DC4  B0 1E 00 3E */	sth r0, 0x3e(r30)
/* 80695DC8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80695DCC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80695DD0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80695DD4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80695DD8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80695DDC  7C 08 03 A6 */	mtlr r0
/* 80695DE0  38 21 00 60 */	addi r1, r1, 0x60
/* 80695DE4  4E 80 00 20 */	blr 
