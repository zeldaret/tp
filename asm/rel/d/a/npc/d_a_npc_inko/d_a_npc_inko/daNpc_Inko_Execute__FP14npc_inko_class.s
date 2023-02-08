lbl_80A0CCC8:
/* 80A0CCC8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80A0CCCC  7C 08 02 A6 */	mflr r0
/* 80A0CCD0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A0CCD4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80A0CCD8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80A0CCDC  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80A0CCE0  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80A0CCE4  39 61 00 80 */	addi r11, r1, 0x80
/* 80A0CCE8  4B 95 54 E1 */	bl _savegpr_24
/* 80A0CCEC  7C 7D 1B 78 */	mr r29, r3
/* 80A0CCF0  3C 60 80 A1 */	lis r3, lit_3849@ha /* 0x80A0E014@ha */
/* 80A0CCF4  3B C3 E0 14 */	addi r30, r3, lit_3849@l /* 0x80A0E014@l */
/* 80A0CCF8  A8 7D 05 96 */	lha r3, 0x596(r29)
/* 80A0CCFC  38 03 00 01 */	addi r0, r3, 1
/* 80A0CD00  B0 1D 05 96 */	sth r0, 0x596(r29)
/* 80A0CD04  38 60 00 00 */	li r3, 0
/* 80A0CD08  38 00 00 04 */	li r0, 4
/* 80A0CD0C  7C 09 03 A6 */	mtctr r0
lbl_80A0CD10:
/* 80A0CD10  38 A3 05 9C */	addi r5, r3, 0x59c
/* 80A0CD14  7C 9D 2A AE */	lhax r4, r29, r5
/* 80A0CD18  2C 04 00 00 */	cmpwi r4, 0
/* 80A0CD1C  41 82 00 0C */	beq lbl_80A0CD28
/* 80A0CD20  38 04 FF FF */	addi r0, r4, -1
/* 80A0CD24  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80A0CD28:
/* 80A0CD28  38 63 00 02 */	addi r3, r3, 2
/* 80A0CD2C  42 00 FF E4 */	bdnz lbl_80A0CD10
/* 80A0CD30  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80A0CD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0CD38  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80A0CD3C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80A0CD40  38 81 00 14 */	addi r4, r1, 0x14
/* 80A0CD44  4B 60 CA B5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A0CD48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0CD4C  40 82 00 0C */	bne lbl_80A0CD58
/* 80A0CD50  38 60 00 01 */	li r3, 1
/* 80A0CD54  48 00 0F F4 */	b lbl_80A0DD48
lbl_80A0CD58:
/* 80A0CD58  3B 80 00 00 */	li r28, 0
/* 80A0CD5C  3B 60 00 00 */	li r27, 0
/* 80A0CD60  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80A0CD64  38 63 00 24 */	addi r3, r3, 0x24
/* 80A0CD68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0CD6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0CD70  4B 93 97 41 */	bl PSMTXCopy
/* 80A0CD74  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80A0CD78  B0 1D 05 C0 */	sth r0, 0x5c0(r29)
/* 80A0CD7C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80A0CD80  B0 1D 05 C2 */	sth r0, 0x5c2(r29)
/* 80A0CD84  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80A0CD88  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 80A0CD8C  88 1D 05 98 */	lbz r0, 0x598(r29)
/* 80A0CD90  7C 00 07 74 */	extsb r0, r0
/* 80A0CD94  2C 00 00 02 */	cmpwi r0, 2
/* 80A0CD98  41 81 00 60 */	bgt lbl_80A0CDF8
/* 80A0CD9C  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80A0CDA0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80A0CDA4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80A0CDA8  4B 5F FF F5 */	bl transM__14mDoMtx_stack_cFfff
/* 80A0CDAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0CDB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0CDB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A0CDB8  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80A0CDBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A0CDC0  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80A0CDC4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A0CDC8  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80A0CDCC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80A0CDD0  A8 9D 05 9A */	lha r4, 0x59a(r29)
/* 80A0CDD4  38 A0 00 01 */	li r5, 1
/* 80A0CDD8  38 C0 0C 00 */	li r6, 0xc00
/* 80A0CDDC  4B 86 38 2D */	bl cLib_addCalcAngleS2__FPssss
/* 80A0CDE0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80A0CDE4  38 80 00 00 */	li r4, 0
/* 80A0CDE8  38 A0 00 01 */	li r5, 1
/* 80A0CDEC  38 C0 0A 00 */	li r6, 0xa00
/* 80A0CDF0  4B 86 38 19 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0CDF4  48 00 00 78 */	b lbl_80A0CE6C
lbl_80A0CDF8:
/* 80A0CDF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0CDFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0CE00  A8 9D 05 9A */	lha r4, 0x59a(r29)
/* 80A0CE04  4B 5F F6 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A0CE08  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A0CE0C  C0 5D 05 E8 */	lfs f2, 0x5e8(r29)
/* 80A0CE10  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80A0CE14  4B 5F FF 89 */	bl transM__14mDoMtx_stack_cFfff
/* 80A0CE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0CE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0CE20  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A0CE24  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80A0CE28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A0CE2C  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80A0CE30  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A0CE34  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80A0CE38  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80A0CE3C  A8 9D 05 C2 */	lha r4, 0x5c2(r29)
/* 80A0CE40  A8 1D 05 9A */	lha r0, 0x59a(r29)
/* 80A0CE44  7C 04 02 14 */	add r0, r4, r0
/* 80A0CE48  7C 04 07 34 */	extsh r4, r0
/* 80A0CE4C  38 A0 00 01 */	li r5, 1
/* 80A0CE50  38 C0 0A 00 */	li r6, 0xa00
/* 80A0CE54  4B 86 37 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0CE58  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80A0CE5C  A8 9D 05 EC */	lha r4, 0x5ec(r29)
/* 80A0CE60  38 A0 00 01 */	li r5, 1
/* 80A0CE64  38 C0 0A 00 */	li r6, 0xa00
/* 80A0CE68  4B 86 37 A1 */	bl cLib_addCalcAngleS2__FPssss
lbl_80A0CE6C:
/* 80A0CE6C  88 7D 05 98 */	lbz r3, 0x598(r29)
/* 80A0CE70  7C 60 07 75 */	extsb. r0, r3
/* 80A0CE74  40 82 03 C4 */	bne lbl_80A0D238
/* 80A0CE78  A8 1D 05 9E */	lha r0, 0x59e(r29)
/* 80A0CE7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A0CE80  40 82 00 70 */	bne lbl_80A0CEF0
/* 80A0CE84  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80A0CE88  4B 85 AA CD */	bl cM_rndF__Ff
/* 80A0CE8C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80A0CE90  EC 02 08 2A */	fadds f0, f2, f1
/* 80A0CE94  FC 00 00 1E */	fctiwz f0, f0
/* 80A0CE98  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0CE9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0CEA0  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 80A0CEA4  FC 20 10 90 */	fmr f1, f2
/* 80A0CEA8  4B 85 AA E5 */	bl cM_rndFX__Ff
/* 80A0CEAC  D0 3D 05 AC */	stfs f1, 0x5ac(r29)
/* 80A0CEB0  3B 00 00 00 */	li r24, 0
/* 80A0CEB4  C3 DE 00 1C */	lfs f30, 0x1c(r30)
lbl_80A0CEB8:
/* 80A0CEB8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80A0CEBC  4B 85 AA D1 */	bl cM_rndFX__Ff
/* 80A0CEC0  D0 3D 05 AC */	stfs f1, 0x5ac(r29)
/* 80A0CEC4  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80A0CEC8  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 80A0CECC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0CED0  FC 00 02 10 */	fabs f0, f0
/* 80A0CED4  FC 00 00 18 */	frsp f0, f0
/* 80A0CED8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80A0CEDC  4C 41 13 82 */	cror 2, 1, 2
/* 80A0CEE0  41 82 00 10 */	beq lbl_80A0CEF0
/* 80A0CEE4  3B 18 00 01 */	addi r24, r24, 1
/* 80A0CEE8  2C 18 00 0A */	cmpwi r24, 0xa
/* 80A0CEEC  41 80 FF CC */	blt lbl_80A0CEB8
lbl_80A0CEF0:
/* 80A0CEF0  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80A0CEF4  C0 3D 05 AC */	lfs f1, 0x5ac(r29)
/* 80A0CEF8  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A0CEFC  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80A0CF00  4B 86 2B 3D */	bl cLib_addCalc2__FPffff
/* 80A0CF04  38 00 00 00 */	li r0, 0
/* 80A0CF08  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 80A0CF0C  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80A0CF10  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 80A0CF14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0CF18  FC 00 02 10 */	fabs f0, f0
/* 80A0CF1C  FC 20 00 18 */	frsp f1, f0
/* 80A0CF20  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A0CF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0CF28  40 81 00 AC */	ble lbl_80A0CFD4
/* 80A0CF2C  A8 1D 05 96 */	lha r0, 0x596(r29)
/* 80A0CF30  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 80A0CF34  7C 03 07 34 */	extsh r3, r0
/* 80A0CF38  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A0CF3C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A0CF40  54 64 04 38 */	rlwinm r4, r3, 0, 0x10, 0x1c
/* 80A0CF44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A0CF48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A0CF4C  7C 03 24 2E */	lfsx f0, r3, r4
/* 80A0CF50  EF E1 00 32 */	fmuls f31, f1, f0
/* 80A0CF54  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A0CF58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A0CF5C  40 80 00 0C */	bge lbl_80A0CF68
/* 80A0CF60  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A0CF64  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80A0CF68:
/* 80A0CF68  28 00 40 00 */	cmplwi r0, 0x4000
/* 80A0CF6C  40 80 00 10 */	bge lbl_80A0CF7C
/* 80A0CF70  38 00 27 10 */	li r0, 0x2710
/* 80A0CF74  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 80A0CF78  48 00 00 1C */	b lbl_80A0CF94
lbl_80A0CF7C:
/* 80A0CF7C  28 00 80 00 */	cmplwi r0, 0x8000
/* 80A0CF80  40 81 00 14 */	ble lbl_80A0CF94
/* 80A0CF84  28 00 C0 00 */	cmplwi r0, 0xc000
/* 80A0CF88  40 80 00 0C */	bge lbl_80A0CF94
/* 80A0CF8C  38 00 27 10 */	li r0, 0x2710
/* 80A0CF90  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A0CF94:
/* 80A0CF94  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80A0CF98  7C 23 24 2E */	lfsx f1, r3, r4
/* 80A0CF9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A0CFA0  FC 00 00 1E */	fctiwz f0, f0
/* 80A0CFA4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0CFA8  83 81 00 44 */	lwz r28, 0x44(r1)
/* 80A0CFAC  7F 80 07 35 */	extsh. r0, r28
/* 80A0CFB0  40 80 00 0C */	bge lbl_80A0CFBC
/* 80A0CFB4  1C 1C FF FF */	mulli r0, r28, -1
/* 80A0CFB8  7C 1C 07 34 */	extsh r28, r0
lbl_80A0CFBC:
/* 80A0CFBC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A0CFC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A0CFC4  FC 00 00 1E */	fctiwz f0, f0
/* 80A0CFC8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0CFCC  83 61 00 4C */	lwz r27, 0x4c(r1)
/* 80A0CFD0  48 00 00 08 */	b lbl_80A0CFD8
lbl_80A0CFD4:
/* 80A0CFD4  C3 FE 00 00 */	lfs f31, 0(r30)
lbl_80A0CFD8:
/* 80A0CFD8  C0 1D 05 B4 */	lfs f0, 0x5b4(r29)
/* 80A0CFDC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A0CFE0  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 80A0CFE4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A0CFE8  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 80A0CFEC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A0CFF0  7F A3 EB 78 */	mr r3, r29
/* 80A0CFF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0CFF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0CFFC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A0D000  4B 60 D7 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A0D004  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A0D008  7C 79 07 34 */	extsh r25, r3
/* 80A0D00C  7C 00 C8 50 */	subf r0, r0, r25
/* 80A0D010  7C 18 07 34 */	extsh r24, r0
/* 80A0D014  A8 1D 05 A0 */	lha r0, 0x5a0(r29)
/* 80A0D018  2C 00 00 00 */	cmpwi r0, 0
/* 80A0D01C  40 82 07 30 */	bne lbl_80A0D74C
/* 80A0D020  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D024  4B 85 A9 31 */	bl cM_rndF__Ff
/* 80A0D028  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80A0D02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D030  40 80 01 34 */	bge lbl_80A0D164
/* 80A0D034  2C 18 30 00 */	cmpwi r24, 0x3000
/* 80A0D038  40 80 01 2C */	bge lbl_80A0D164
/* 80A0D03C  2C 18 D0 00 */	cmpwi r24, -12288
/* 80A0D040  40 81 01 24 */	ble lbl_80A0D164
/* 80A0D044  38 00 00 03 */	li r0, 3
/* 80A0D048  98 1D 05 98 */	stb r0, 0x598(r29)
/* 80A0D04C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D050  4B 85 A9 05 */	bl cM_rndF__Ff
/* 80A0D054  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A0D058  EC 40 08 2A */	fadds f2, f0, f1
/* 80A0D05C  7F A3 EB 78 */	mr r3, r29
/* 80A0D060  38 80 00 04 */	li r4, 4
/* 80A0D064  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D068  38 A0 00 02 */	li r5, 2
/* 80A0D06C  4B FF FB AD */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D070  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060046@ha */
/* 80A0D074  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00060046@l */
/* 80A0D078  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0D07C  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0D080  38 81 00 24 */	addi r4, r1, 0x24
/* 80A0D084  38 A0 00 00 */	li r5, 0
/* 80A0D088  38 C0 FF FF */	li r6, -1
/* 80A0D08C  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80A0D090  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A0D094  7D 89 03 A6 */	mtctr r12
/* 80A0D098  4E 80 04 21 */	bctrl 
/* 80A0D09C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A0D0A0  4B 85 A8 B5 */	bl cM_rndF__Ff
/* 80A0D0A4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A0D0A8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D0AC  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D0B0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0D0B4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A0D0B8  B0 1D 05 9C */	sth r0, 0x59c(r29)
/* 80A0D0BC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80A0D0C0  4B 85 A8 CD */	bl cM_rndFX__Ff
/* 80A0D0C4  FC 00 08 1E */	fctiwz f0, f1
/* 80A0D0C8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0D0CC  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80A0D0D0  A8 1D 05 C2 */	lha r0, 0x5c2(r29)
/* 80A0D0D4  7C 00 C8 50 */	subf r0, r0, r25
/* 80A0D0D8  7C 00 1A 14 */	add r0, r0, r3
/* 80A0D0DC  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 80A0D0E0  A8 1D 05 9A */	lha r0, 0x59a(r29)
/* 80A0D0E4  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 80A0D0E8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D0EC  4B 85 A8 69 */	bl cM_rndF__Ff
/* 80A0D0F0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80A0D0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D0F8  40 80 00 48 */	bge lbl_80A0D140
/* 80A0D0FC  28 18 50 00 */	cmplwi r24, 0x5000
/* 80A0D100  40 80 00 0C */	bge lbl_80A0D10C
/* 80A0D104  28 18 A0 00 */	cmplwi r24, 0xa000
/* 80A0D108  41 81 00 14 */	bgt lbl_80A0D11C
lbl_80A0D10C:
/* 80A0D10C  28 18 30 00 */	cmplwi r24, 0x3000
/* 80A0D110  41 80 00 0C */	blt lbl_80A0D11C
/* 80A0D114  28 18 D0 00 */	cmplwi r24, 0xd000
/* 80A0D118  40 81 00 28 */	ble lbl_80A0D140
lbl_80A0D11C:
/* 80A0D11C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80A0D120  4B 85 A8 35 */	bl cM_rndF__Ff
/* 80A0D124  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A0D128  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D12C  FC 00 00 50 */	fneg f0, f0
/* 80A0D130  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80A0D134  38 00 E0 C0 */	li r0, -8000
/* 80A0D138  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80A0D13C  48 00 06 10 */	b lbl_80A0D74C
lbl_80A0D140:
/* 80A0D140  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80A0D144  4B 85 A8 11 */	bl cM_rndF__Ff
/* 80A0D148  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A0D14C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D150  FC 00 00 50 */	fneg f0, f0
/* 80A0D154  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80A0D158  38 00 D8 F0 */	li r0, -10000
/* 80A0D15C  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80A0D160  48 00 05 EC */	b lbl_80A0D74C
lbl_80A0D164:
/* 80A0D164  38 00 00 02 */	li r0, 2
/* 80A0D168  98 1D 05 98 */	stb r0, 0x598(r29)
/* 80A0D16C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D170  4B 85 A7 E5 */	bl cM_rndF__Ff
/* 80A0D174  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A0D178  EC 40 08 2A */	fadds f2, f0, f1
/* 80A0D17C  7F A3 EB 78 */	mr r3, r29
/* 80A0D180  38 80 00 04 */	li r4, 4
/* 80A0D184  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D188  38 A0 00 02 */	li r5, 2
/* 80A0D18C  4B FF FA 8D */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D190  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060046@ha */
/* 80A0D194  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00060046@l */
/* 80A0D198  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0D19C  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0D1A0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A0D1A4  38 A0 00 00 */	li r5, 0
/* 80A0D1A8  38 C0 FF FF */	li r6, -1
/* 80A0D1AC  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80A0D1B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A0D1B4  7D 89 03 A6 */	mtctr r12
/* 80A0D1B8  4E 80 04 21 */	bctrl 
/* 80A0D1BC  C0 1D 05 A8 */	lfs f0, 0x5a8(r29)
/* 80A0D1C0  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 80A0D1C4  3B 00 00 00 */	li r24, 0
/* 80A0D1C8  C3 DE 00 1C */	lfs f30, 0x1c(r30)
lbl_80A0D1CC:
/* 80A0D1CC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80A0D1D0  4B 85 A7 BD */	bl cM_rndFX__Ff
/* 80A0D1D4  D0 3D 05 AC */	stfs f1, 0x5ac(r29)
/* 80A0D1D8  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80A0D1DC  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 80A0D1E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0D1E4  FC 00 02 10 */	fabs f0, f0
/* 80A0D1E8  FC 00 00 18 */	frsp f0, f0
/* 80A0D1EC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80A0D1F0  4C 41 13 82 */	cror 2, 1, 2
/* 80A0D1F4  41 82 00 10 */	beq lbl_80A0D204
/* 80A0D1F8  3B 18 00 01 */	addi r24, r24, 1
/* 80A0D1FC  2C 18 00 0A */	cmpwi r24, 0xa
/* 80A0D200  41 80 FF CC */	blt lbl_80A0D1CC
lbl_80A0D204:
/* 80A0D204  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D208  4B 85 A7 4D */	bl cM_rndF__Ff
/* 80A0D20C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80A0D210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D214  40 80 00 18 */	bge lbl_80A0D22C
/* 80A0D218  A8 7D 05 C2 */	lha r3, 0x5c2(r29)
/* 80A0D21C  3C 63 00 01 */	addis r3, r3, 1
/* 80A0D220  38 03 80 00 */	addi r0, r3, -32768
/* 80A0D224  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 80A0D228  48 00 05 24 */	b lbl_80A0D74C
lbl_80A0D22C:
/* 80A0D22C  A8 1D 05 C2 */	lha r0, 0x5c2(r29)
/* 80A0D230  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 80A0D234  48 00 05 18 */	b lbl_80A0D74C
lbl_80A0D238:
/* 80A0D238  7C 60 07 74 */	extsb r0, r3
/* 80A0D23C  2C 00 00 02 */	cmpwi r0, 2
/* 80A0D240  40 82 01 30 */	bne lbl_80A0D370
/* 80A0D244  38 00 00 00 */	li r0, 0
/* 80A0D248  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 80A0D24C  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80A0D250  C0 3D 05 AC */	lfs f1, 0x5ac(r29)
/* 80A0D254  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A0D258  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80A0D25C  4B 86 27 E1 */	bl cLib_addCalc2__FPffff
/* 80A0D260  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80A0D264  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 80A0D268  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0D26C  FC 00 02 10 */	fabs f0, f0
/* 80A0D270  FC 20 00 18 */	frsp f1, f0
/* 80A0D274  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80A0D278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D27C  4C 40 13 82 */	cror 2, 0, 2
/* 80A0D280  40 82 00 6C */	bne lbl_80A0D2EC
/* 80A0D284  38 00 00 00 */	li r0, 0
/* 80A0D288  98 1D 05 98 */	stb r0, 0x598(r29)
/* 80A0D28C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A0D290  4B 85 A6 C5 */	bl cM_rndF__Ff
/* 80A0D294  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A0D298  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D29C  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D2A0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0D2A4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A0D2A8  B0 1D 05 A0 */	sth r0, 0x5a0(r29)
/* 80A0D2AC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80A0D2B0  4B 85 A6 A5 */	bl cM_rndF__Ff
/* 80A0D2B4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80A0D2B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D2BC  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D2C0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0D2C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0D2C8  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 80A0D2CC  7F A3 EB 78 */	mr r3, r29
/* 80A0D2D0  38 80 00 05 */	li r4, 5
/* 80A0D2D4  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D2D8  38 A0 00 02 */	li r5, 2
/* 80A0D2DC  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A0D2E0  4B FF F9 39 */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D2E4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80A0D2E8  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_80A0D2EC:
/* 80A0D2EC  C0 3D 05 AC */	lfs f1, 0x5ac(r29)
/* 80A0D2F0  C0 1D 05 B0 */	lfs f0, 0x5b0(r29)
/* 80A0D2F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0D2F8  FC 00 02 10 */	fabs f0, f0
/* 80A0D2FC  FC 60 00 18 */	frsp f3, f0
/* 80A0D300  C0 1D 05 A8 */	lfs f0, 0x5a8(r29)
/* 80A0D304  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0D308  FC 00 02 10 */	fabs f0, f0
/* 80A0D30C  FC 80 00 18 */	frsp f4, f0
/* 80A0D310  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A0D314  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80A0D318  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80A0D31C  EC 04 18 24 */	fdivs f0, f4, f3
/* 80A0D320  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A0D324  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D328  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0D32C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A0D330  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A0D334  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A0D338  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A0D33C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A0D340  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A0D344  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A0D348  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A0D34C  40 81 00 08 */	ble lbl_80A0D354
/* 80A0D350  FF E0 00 90 */	fmr f31, f0
lbl_80A0D354:
/* 80A0D354  C0 1D 05 B4 */	lfs f0, 0x5b4(r29)
/* 80A0D358  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A0D35C  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 80A0D360  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A0D364  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 80A0D368  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A0D36C  48 00 03 E0 */	b lbl_80A0D74C
lbl_80A0D370:
/* 80A0D370  2C 00 00 03 */	cmpwi r0, 3
/* 80A0D374  40 82 02 1C */	bne lbl_80A0D590
/* 80A0D378  38 00 00 00 */	li r0, 0
/* 80A0D37C  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 80A0D380  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A0D384  C0 3D 05 B4 */	lfs f1, 0x5b4(r29)
/* 80A0D388  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80A0D38C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80A0D390  4B 86 26 AD */	bl cLib_addCalc2__FPffff
/* 80A0D394  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80A0D398  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80A0D39C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80A0D3A0  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80A0D3A4  4B 86 26 99 */	bl cLib_addCalc2__FPffff
/* 80A0D3A8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80A0D3AC  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 80A0D3B0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80A0D3B4  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80A0D3B8  4B 86 26 85 */	bl cLib_addCalc2__FPffff
/* 80A0D3BC  38 61 00 34 */	addi r3, r1, 0x34
/* 80A0D3C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A0D3C4  38 BD 05 B4 */	addi r5, r29, 0x5b4
/* 80A0D3C8  4B 85 97 6D */	bl __mi__4cXyzCFRC3Vec
/* 80A0D3CC  38 61 00 34 */	addi r3, r1, 0x34
/* 80A0D3D0  4B 93 9D 69 */	bl PSVECSquareMag
/* 80A0D3D4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A0D3D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D3DC  40 81 00 58 */	ble lbl_80A0D434
/* 80A0D3E0  FC 00 08 34 */	frsqrte f0, f1
/* 80A0D3E4  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80A0D3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D3EC  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80A0D3F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D3F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D3F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D3FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D400  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D404  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D408  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D40C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D410  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D414  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D418  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D41C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D420  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D424  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D428  FC 21 00 32 */	fmul f1, f1, f0
/* 80A0D42C  FC 20 08 18 */	frsp f1, f1
/* 80A0D430  48 00 00 88 */	b lbl_80A0D4B8
lbl_80A0D434:
/* 80A0D434  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80A0D438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D43C  40 80 00 10 */	bge lbl_80A0D44C
/* 80A0D440  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A0D444  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A0D448  48 00 00 70 */	b lbl_80A0D4B8
lbl_80A0D44C:
/* 80A0D44C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A0D450  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A0D454  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A0D458  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A0D45C  7C 03 00 00 */	cmpw r3, r0
/* 80A0D460  41 82 00 14 */	beq lbl_80A0D474
/* 80A0D464  40 80 00 40 */	bge lbl_80A0D4A4
/* 80A0D468  2C 03 00 00 */	cmpwi r3, 0
/* 80A0D46C  41 82 00 20 */	beq lbl_80A0D48C
/* 80A0D470  48 00 00 34 */	b lbl_80A0D4A4
lbl_80A0D474:
/* 80A0D474  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0D478  41 82 00 0C */	beq lbl_80A0D484
/* 80A0D47C  38 00 00 01 */	li r0, 1
/* 80A0D480  48 00 00 28 */	b lbl_80A0D4A8
lbl_80A0D484:
/* 80A0D484  38 00 00 02 */	li r0, 2
/* 80A0D488  48 00 00 20 */	b lbl_80A0D4A8
lbl_80A0D48C:
/* 80A0D48C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0D490  41 82 00 0C */	beq lbl_80A0D49C
/* 80A0D494  38 00 00 05 */	li r0, 5
/* 80A0D498  48 00 00 10 */	b lbl_80A0D4A8
lbl_80A0D49C:
/* 80A0D49C  38 00 00 03 */	li r0, 3
/* 80A0D4A0  48 00 00 08 */	b lbl_80A0D4A8
lbl_80A0D4A4:
/* 80A0D4A4  38 00 00 04 */	li r0, 4
lbl_80A0D4A8:
/* 80A0D4A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A0D4AC  40 82 00 0C */	bne lbl_80A0D4B8
/* 80A0D4B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A0D4B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A0D4B8:
/* 80A0D4B8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A0D4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D4C0  40 80 00 30 */	bge lbl_80A0D4F0
/* 80A0D4C4  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 80A0D4C8  2C 00 00 04 */	cmpwi r0, 4
/* 80A0D4CC  40 82 00 24 */	bne lbl_80A0D4F0
/* 80A0D4D0  7F A3 EB 78 */	mr r3, r29
/* 80A0D4D4  38 80 00 05 */	li r4, 5
/* 80A0D4D8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D4DC  38 A0 00 02 */	li r5, 2
/* 80A0D4E0  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A0D4E4  4B FF F7 35 */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D4E8  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80A0D4EC  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_80A0D4F0:
/* 80A0D4F0  38 00 32 C8 */	li r0, 0x32c8
/* 80A0D4F4  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
/* 80A0D4F8  A8 1D 05 9C */	lha r0, 0x59c(r29)
/* 80A0D4FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A0D500  40 82 02 4C */	bne lbl_80A0D74C
/* 80A0D504  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D508  4B 85 A4 4D */	bl cM_rndF__Ff
/* 80A0D50C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A0D510  EC 40 08 2A */	fadds f2, f0, f1
/* 80A0D514  7F A3 EB 78 */	mr r3, r29
/* 80A0D518  38 80 00 04 */	li r4, 4
/* 80A0D51C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D520  38 A0 00 02 */	li r5, 2
/* 80A0D524  4B FF F6 F5 */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D528  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060046@ha */
/* 80A0D52C  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00060046@l */
/* 80A0D530  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0D534  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0D538  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A0D53C  38 A0 00 00 */	li r5, 0
/* 80A0D540  38 C0 FF FF */	li r6, -1
/* 80A0D544  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80A0D548  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A0D54C  7D 89 03 A6 */	mtctr r12
/* 80A0D550  4E 80 04 21 */	bctrl 
/* 80A0D554  38 00 00 01 */	li r0, 1
/* 80A0D558  98 1D 05 98 */	stb r0, 0x598(r29)
/* 80A0D55C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0D560  4B 85 A3 F5 */	bl cM_rndF__Ff
/* 80A0D564  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80A0D568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D56C  40 80 00 18 */	bge lbl_80A0D584
/* 80A0D570  A8 7D 05 C2 */	lha r3, 0x5c2(r29)
/* 80A0D574  3C 63 00 01 */	addis r3, r3, 1
/* 80A0D578  38 03 80 00 */	addi r0, r3, -32768
/* 80A0D57C  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 80A0D580  48 00 01 CC */	b lbl_80A0D74C
lbl_80A0D584:
/* 80A0D584  A8 1D 05 C2 */	lha r0, 0x5c2(r29)
/* 80A0D588  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 80A0D58C  48 00 01 C0 */	b lbl_80A0D74C
lbl_80A0D590:
/* 80A0D590  2C 00 00 01 */	cmpwi r0, 1
/* 80A0D594  40 82 01 B8 */	bne lbl_80A0D74C
/* 80A0D598  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A0D59C  C0 3D 05 B4 */	lfs f1, 0x5b4(r29)
/* 80A0D5A0  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80A0D5A4  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80A0D5A8  4B 86 24 95 */	bl cLib_addCalc2__FPffff
/* 80A0D5AC  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80A0D5B0  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80A0D5B4  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80A0D5B8  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 80A0D5BC  4B 86 24 81 */	bl cLib_addCalc2__FPffff
/* 80A0D5C0  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80A0D5C4  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 80A0D5C8  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80A0D5CC  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80A0D5D0  4B 86 24 6D */	bl cLib_addCalc2__FPffff
/* 80A0D5D4  38 61 00 28 */	addi r3, r1, 0x28
/* 80A0D5D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A0D5DC  38 BD 05 B4 */	addi r5, r29, 0x5b4
/* 80A0D5E0  4B 85 95 55 */	bl __mi__4cXyzCFRC3Vec
/* 80A0D5E4  38 61 00 28 */	addi r3, r1, 0x28
/* 80A0D5E8  4B 93 9B 51 */	bl PSVECSquareMag
/* 80A0D5EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A0D5F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D5F4  40 81 00 58 */	ble lbl_80A0D64C
/* 80A0D5F8  FC 00 08 34 */	frsqrte f0, f1
/* 80A0D5FC  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80A0D600  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D604  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80A0D608  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D60C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D610  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D614  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D618  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D61C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D620  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D624  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D628  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D62C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0D630  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0D634  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0D638  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0D63C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0D640  FC 21 00 32 */	fmul f1, f1, f0
/* 80A0D644  FC 20 08 18 */	frsp f1, f1
/* 80A0D648  48 00 00 88 */	b lbl_80A0D6D0
lbl_80A0D64C:
/* 80A0D64C  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80A0D650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D654  40 80 00 10 */	bge lbl_80A0D664
/* 80A0D658  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A0D65C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A0D660  48 00 00 70 */	b lbl_80A0D6D0
lbl_80A0D664:
/* 80A0D664  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A0D668  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A0D66C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A0D670  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A0D674  7C 03 00 00 */	cmpw r3, r0
/* 80A0D678  41 82 00 14 */	beq lbl_80A0D68C
/* 80A0D67C  40 80 00 40 */	bge lbl_80A0D6BC
/* 80A0D680  2C 03 00 00 */	cmpwi r3, 0
/* 80A0D684  41 82 00 20 */	beq lbl_80A0D6A4
/* 80A0D688  48 00 00 34 */	b lbl_80A0D6BC
lbl_80A0D68C:
/* 80A0D68C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0D690  41 82 00 0C */	beq lbl_80A0D69C
/* 80A0D694  38 00 00 01 */	li r0, 1
/* 80A0D698  48 00 00 28 */	b lbl_80A0D6C0
lbl_80A0D69C:
/* 80A0D69C  38 00 00 02 */	li r0, 2
/* 80A0D6A0  48 00 00 20 */	b lbl_80A0D6C0
lbl_80A0D6A4:
/* 80A0D6A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0D6A8  41 82 00 0C */	beq lbl_80A0D6B4
/* 80A0D6AC  38 00 00 05 */	li r0, 5
/* 80A0D6B0  48 00 00 10 */	b lbl_80A0D6C0
lbl_80A0D6B4:
/* 80A0D6B4  38 00 00 03 */	li r0, 3
/* 80A0D6B8  48 00 00 08 */	b lbl_80A0D6C0
lbl_80A0D6BC:
/* 80A0D6BC  38 00 00 04 */	li r0, 4
lbl_80A0D6C0:
/* 80A0D6C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A0D6C4  40 82 00 0C */	bne lbl_80A0D6D0
/* 80A0D6C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A0D6CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A0D6D0:
/* 80A0D6D0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A0D6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0D6D8  40 80 00 74 */	bge lbl_80A0D74C
/* 80A0D6DC  38 00 00 00 */	li r0, 0
/* 80A0D6E0  98 1D 05 98 */	stb r0, 0x598(r29)
/* 80A0D6E4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A0D6E8  4B 85 A2 6D */	bl cM_rndF__Ff
/* 80A0D6EC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A0D6F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D6F4  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D6F8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0D6FC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A0D700  B0 1D 05 A0 */	sth r0, 0x5a0(r29)
/* 80A0D704  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80A0D708  4B 85 A2 4D */	bl cM_rndF__Ff
/* 80A0D70C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80A0D710  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D714  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D718  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0D71C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0D720  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 80A0D724  7F A3 EB 78 */	mr r3, r29
/* 80A0D728  38 80 00 05 */	li r4, 5
/* 80A0D72C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A0D730  38 A0 00 02 */	li r5, 2
/* 80A0D734  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A0D738  4B FF F4 E1 */	bl anm_init__FP14npc_inko_classifUcf
/* 80A0D73C  38 00 00 00 */	li r0, 0
/* 80A0D740  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
/* 80A0D744  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80A0D748  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_80A0D74C:
/* 80A0D74C  88 7D 05 C6 */	lbz r3, 0x5c6(r29)
/* 80A0D750  7C 60 07 75 */	extsb. r0, r3
/* 80A0D754  41 82 00 0C */	beq lbl_80A0D760
/* 80A0D758  38 03 FF FF */	addi r0, r3, -1
/* 80A0D75C  98 1D 05 C6 */	stb r0, 0x5c6(r29)
lbl_80A0D760:
/* 80A0D760  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80A0D764  A8 9D 05 CE */	lha r4, 0x5ce(r29)
/* 80A0D768  38 A0 00 02 */	li r5, 2
/* 80A0D76C  38 C0 0B B8 */	li r6, 0xbb8
/* 80A0D770  4B 86 2E 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0D774  38 7D 05 CA */	addi r3, r29, 0x5ca
/* 80A0D778  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 80A0D77C  38 A0 00 02 */	li r5, 2
/* 80A0D780  38 C0 0B B8 */	li r6, 0xbb8
/* 80A0D784  4B 86 2E 85 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0D788  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 80A0D78C  A8 9D 05 D2 */	lha r4, 0x5d2(r29)
/* 80A0D790  38 A0 00 02 */	li r5, 2
/* 80A0D794  38 C0 0B B8 */	li r6, 0xbb8
/* 80A0D798  4B 86 2E 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0D79C  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 80A0D7A0  7C 00 07 75 */	extsb. r0, r0
/* 80A0D7A4  40 82 00 6C */	bne lbl_80A0D810
/* 80A0D7A8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80A0D7AC  4B 85 A1 A9 */	bl cM_rndF__Ff
/* 80A0D7B0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80A0D7B4  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D7B8  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D7BC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A0D7C0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A0D7C4  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 80A0D7C8  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80A0D7CC  4B 85 A1 C1 */	bl cM_rndFX__Ff
/* 80A0D7D0  FC 00 08 1E */	fctiwz f0, f1
/* 80A0D7D4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A0D7D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0D7DC  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 80A0D7E0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80A0D7E4  4B 85 A1 A9 */	bl cM_rndFX__Ff
/* 80A0D7E8  FC 00 08 1E */	fctiwz f0, f1
/* 80A0D7EC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80A0D7F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A0D7F4  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 80A0D7F8  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80A0D7FC  4B 85 A1 91 */	bl cM_rndFX__Ff
/* 80A0D800  FC 00 08 1E */	fctiwz f0, f1
/* 80A0D804  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A0D808  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80A0D80C  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
lbl_80A0D810:
/* 80A0D810  A8 7D 05 E2 */	lha r3, 0x5e2(r29)
/* 80A0D814  2C 03 00 00 */	cmpwi r3, 0
/* 80A0D818  41 82 00 0C */	beq lbl_80A0D824
/* 80A0D81C  38 03 FF FF */	addi r0, r3, -1
/* 80A0D820  B0 1D 05 E2 */	sth r0, 0x5e2(r29)
lbl_80A0D824:
/* 80A0D824  A8 1D 05 E2 */	lha r0, 0x5e2(r29)
/* 80A0D828  2C 00 00 05 */	cmpwi r0, 5
/* 80A0D82C  40 82 00 24 */	bne lbl_80A0D850
/* 80A0D830  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80A0D834  4B 85 A1 21 */	bl cM_rndF__Ff
/* 80A0D838  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80A0D83C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D840  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D844  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A0D848  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80A0D84C  98 1D 05 E4 */	stb r0, 0x5e4(r29)
lbl_80A0D850:
/* 80A0D850  A8 1D 05 E2 */	lha r0, 0x5e2(r29)
/* 80A0D854  2C 00 00 00 */	cmpwi r0, 0
/* 80A0D858  40 82 00 54 */	bne lbl_80A0D8AC
/* 80A0D85C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80A0D860  4B 85 A0 F5 */	bl cM_rndF__Ff
/* 80A0D864  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A0D868  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D86C  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D870  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A0D874  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80A0D878  7C 00 07 74 */	extsb r0, r0
/* 80A0D87C  B0 1D 05 E2 */	sth r0, 0x5e2(r29)
/* 80A0D880  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060045@ha */
/* 80A0D884  38 03 00 45 */	addi r0, r3, 0x0045 /* 0x00060045@l */
/* 80A0D888  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0D88C  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0D890  38 81 00 18 */	addi r4, r1, 0x18
/* 80A0D894  38 A0 00 00 */	li r5, 0
/* 80A0D898  38 C0 FF FF */	li r6, -1
/* 80A0D89C  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80A0D8A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A0D8A4  7D 89 03 A6 */	mtctr r12
/* 80A0D8A8  4E 80 04 21 */	bctrl 
lbl_80A0D8AC:
/* 80A0D8AC  38 80 00 00 */	li r4, 0
/* 80A0D8B0  88 7D 05 E4 */	lbz r3, 0x5e4(r29)
/* 80A0D8B4  7C 60 07 75 */	extsb. r0, r3
/* 80A0D8B8  41 82 00 10 */	beq lbl_80A0D8C8
/* 80A0D8BC  38 03 FF FF */	addi r0, r3, -1
/* 80A0D8C0  98 1D 05 E4 */	stb r0, 0x5e4(r29)
/* 80A0D8C4  38 80 27 10 */	li r4, 0x2710
lbl_80A0D8C8:
/* 80A0D8C8  38 7D 05 E6 */	addi r3, r29, 0x5e6
/* 80A0D8CC  38 A0 00 01 */	li r5, 1
/* 80A0D8D0  38 C0 0F A0 */	li r6, 0xfa0
/* 80A0D8D4  4B 86 2D 35 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0D8D8  3B 40 00 00 */	li r26, 0
/* 80A0D8DC  3B 20 00 00 */	li r25, 0
lbl_80A0D8E0:
/* 80A0D8E0  3B 1A 05 DC */	addi r24, r26, 0x5dc
/* 80A0D8E4  7C 7D C0 AE */	lbzx r3, r29, r24
/* 80A0D8E8  7C 60 07 75 */	extsb. r0, r3
/* 80A0D8EC  41 82 00 0C */	beq lbl_80A0D8F8
/* 80A0D8F0  38 03 FF FF */	addi r0, r3, -1
/* 80A0D8F4  7C 1D C1 AE */	stbx r0, r29, r24
lbl_80A0D8F8:
/* 80A0D8F8  7C 1D C0 AE */	lbzx r0, r29, r24
/* 80A0D8FC  7C 00 07 75 */	extsb. r0, r0
/* 80A0D900  40 82 00 40 */	bne lbl_80A0D940
/* 80A0D904  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80A0D908  4B 85 A0 85 */	bl cM_rndFX__Ff
/* 80A0D90C  FC 00 08 1E */	fctiwz f0, f1
/* 80A0D910  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A0D914  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80A0D918  38 19 05 D8 */	addi r0, r25, 0x5d8
/* 80A0D91C  7C 7D 03 2E */	sthx r3, r29, r0
/* 80A0D920  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80A0D924  4B 85 A0 31 */	bl cM_rndF__Ff
/* 80A0D928  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80A0D92C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0D930  FC 00 00 1E */	fctiwz f0, f0
/* 80A0D934  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80A0D938  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A0D93C  7C 1D C1 AE */	stbx r0, r29, r24
lbl_80A0D940:
/* 80A0D940  7C 9D CA 14 */	add r4, r29, r25
/* 80A0D944  38 64 05 D4 */	addi r3, r4, 0x5d4
/* 80A0D948  A8 84 05 D8 */	lha r4, 0x5d8(r4)
/* 80A0D94C  38 A0 00 02 */	li r5, 2
/* 80A0D950  38 C0 01 F4 */	li r6, 0x1f4
/* 80A0D954  4B 86 2C B5 */	bl cLib_addCalcAngleS2__FPssss
/* 80A0D958  3B 5A 00 01 */	addi r26, r26, 1
/* 80A0D95C  2C 1A 00 02 */	cmpwi r26, 2
/* 80A0D960  3B 39 00 02 */	addi r25, r25, 2
/* 80A0D964  41 80 FF 7C */	blt lbl_80A0D8E0
/* 80A0D968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0D96C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0D970  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A0D974  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A0D978  EC 40 F8 2A */	fadds f2, f0, f31
/* 80A0D97C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80A0D980  4B 93 8F 69 */	bl PSMTXTrans
/* 80A0D984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0D988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0D98C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A0D990  7C 00 DA 14 */	add r0, r0, r27
/* 80A0D994  7C 04 07 34 */	extsh r4, r0
/* 80A0D998  4B 5F EA 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80A0D99C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0D9A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0D9A4  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80A0D9A8  7C 00 E2 14 */	add r0, r0, r28
/* 80A0D9AC  7C 04 07 34 */	extsh r4, r0
/* 80A0D9B0  4B 5F E9 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 80A0D9B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0D9B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0D9BC  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 80A0D9C0  4B 5F EB 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0D9C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A0D9C8  FC 40 08 90 */	fmr f2, f1
/* 80A0D9CC  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80A0D9D0  4B 5F F3 CD */	bl transM__14mDoMtx_stack_cFfff
/* 80A0D9D4  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 80A0D9D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80A0D9DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0D9E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0D9E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80A0D9E8  4B 93 8A C9 */	bl PSMTXCopy
/* 80A0D9EC  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 80A0D9F0  38 80 00 00 */	li r4, 0
/* 80A0D9F4  38 A0 00 00 */	li r5, 0
/* 80A0D9F8  38 C0 00 00 */	li r6, 0
/* 80A0D9FC  4B 60 2B CD */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 80A0DA00  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 80A0DA04  4B 60 2C A9 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80A0DA08  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A0DA0C  7C 03 07 74 */	extsb r3, r0
/* 80A0DA10  4B 61 F6 5D */	bl dComIfGp_getReverb__Fi
/* 80A0DA14  7C 65 1B 78 */	mr r5, r3
/* 80A0DA18  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0DA1C  38 80 00 00 */	li r4, 0
/* 80A0DA20  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80A0DA24  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A0DA28  7D 89 03 A6 */	mtctr r12
/* 80A0DA2C  4E 80 04 21 */	bctrl 
/* 80A0DA30  7F A3 EB 78 */	mr r3, r29
/* 80A0DA34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0DA38  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0DA3C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0DA40  4B 60 CF 25 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A0DA44  FF E0 08 90 */	fmr f31, f1
/* 80A0DA48  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A0DA4C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A0DA50  40 80 00 0C */	bge lbl_80A0DA5C
/* 80A0DA54  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A0DA58  4B 75 1A 99 */	bl setLookPos__9daPy_py_cFP4cXyz
lbl_80A0DA5C:
/* 80A0DA5C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A0DA60  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80A0DA64  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A0DA68  41 82 00 50 */	beq lbl_80A0DAB8
/* 80A0DA6C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80A0DA70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A0DA74  40 80 00 44 */	bge lbl_80A0DAB8
/* 80A0DA78  38 00 00 00 */	li r0, 0
/* 80A0DA7C  B0 1D 05 A0 */	sth r0, 0x5a0(r29)
/* 80A0DA80  38 00 02 55 */	li r0, 0x255
/* 80A0DA84  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80A0DA88  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A0DA8C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A0DA90  38 81 00 0A */	addi r4, r1, 0xa
/* 80A0DA94  4B 60 BD 65 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A0DA98  28 03 00 00 */	cmplwi r3, 0
/* 80A0DA9C  41 82 00 1C */	beq lbl_80A0DAB8
/* 80A0DAA0  38 00 00 28 */	li r0, 0x28
/* 80A0DAA4  98 03 07 B5 */	stb r0, 0x7b5(r3)
/* 80A0DAA8  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x1@ha /* 0x80450C9D@ha */
/* 80A0DAAC  8C 03 0C 9D */	lbzu r0, cDmr_SkipInfo+0x1@l(r3)  /* 0x80450C9D@l */
/* 80A0DAB0  60 00 00 40 */	ori r0, r0, 0x40
/* 80A0DAB4  98 03 00 00 */	stb r0, 0(r3)
lbl_80A0DAB8:
/* 80A0DAB8  88 9D 05 F4 */	lbz r4, 0x5f4(r29)
/* 80A0DABC  28 04 00 00 */	cmplwi r4, 0
/* 80A0DAC0  41 82 00 40 */	beq lbl_80A0DB00
/* 80A0DAC4  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80A0DAC8  7F A4 EB 78 */	mr r4, r29
/* 80A0DACC  38 A0 00 00 */	li r5, 0
/* 80A0DAD0  38 C0 00 00 */	li r6, 0
/* 80A0DAD4  4B 83 C8 05 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A0DAD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0DADC  41 82 00 1C */	beq lbl_80A0DAF8
/* 80A0DAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0DAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0DAE8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A0DAEC  4B 63 49 7D */	bl reset__14dEvt_control_cFv
/* 80A0DAF0  38 00 00 00 */	li r0, 0
/* 80A0DAF4  98 1D 05 F4 */	stb r0, 0x5f4(r29)
lbl_80A0DAF8:
/* 80A0DAF8  38 60 00 01 */	li r3, 1
/* 80A0DAFC  48 00 02 4C */	b lbl_80A0DD48
lbl_80A0DB00:
/* 80A0DB00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0DB04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0DB08  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A0DB0C  28 00 00 00 */	cmplwi r0, 0
/* 80A0DB10  41 82 00 D4 */	beq lbl_80A0DBE4
/* 80A0DB14  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A0DB18  28 00 00 01 */	cmplwi r0, 1
/* 80A0DB1C  40 82 00 C8 */	bne lbl_80A0DBE4
/* 80A0DB20  28 04 00 00 */	cmplwi r4, 0
/* 80A0DB24  40 82 00 C0 */	bne lbl_80A0DBE4
/* 80A0DB28  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A0DB2C  4B 85 9E 29 */	bl cM_rndF__Ff
/* 80A0DB30  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A0DB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0DB38  40 80 00 34 */	bge lbl_80A0DB6C
/* 80A0DB3C  3B 00 03 61 */	li r24, 0x361
/* 80A0DB40  38 00 02 55 */	li r0, 0x255
/* 80A0DB44  B0 01 00 08 */	sth r0, 8(r1)
/* 80A0DB48  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A0DB4C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A0DB50  38 81 00 08 */	addi r4, r1, 8
/* 80A0DB54  4B 60 BC A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A0DB58  28 03 00 00 */	cmplwi r3, 0
/* 80A0DB5C  41 82 00 48 */	beq lbl_80A0DBA4
/* 80A0DB60  38 00 00 02 */	li r0, 2
/* 80A0DB64  98 03 07 BA */	stb r0, 0x7ba(r3)
/* 80A0DB68  48 00 00 3C */	b lbl_80A0DBA4
lbl_80A0DB6C:
/* 80A0DB6C  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x1@ha /* 0x80450C9D@ha */
/* 80A0DB70  88 03 0C 9D */	lbz r0, cDmr_SkipInfo+0x1@l(r3)  /* 0x80450C9D@l */
/* 80A0DB74  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 80A0DB78  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80A0DB7C  41 82 00 18 */	beq lbl_80A0DB94
/* 80A0DB80  54 60 10 3A */	slwi r0, r3, 2
/* 80A0DB84  3C 60 80 A1 */	lis r3, mes_1@ha /* 0x80A0E0E8@ha */
/* 80A0DB88  38 63 E0 E8 */	addi r3, r3, mes_1@l /* 0x80A0E0E8@l */
/* 80A0DB8C  7F 03 00 2E */	lwzx r24, r3, r0
/* 80A0DB90  48 00 00 14 */	b lbl_80A0DBA4
lbl_80A0DB94:
/* 80A0DB94  54 60 10 3A */	slwi r0, r3, 2
/* 80A0DB98  3C 60 80 A1 */	lis r3, mes_0@ha /* 0x80A0E0D8@ha */
/* 80A0DB9C  38 63 E0 D8 */	addi r3, r3, mes_0@l /* 0x80A0E0D8@l */
/* 80A0DBA0  7F 03 00 2E */	lwzx r24, r3, r0
lbl_80A0DBA4:
/* 80A0DBA4  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80A0DBA8  7F A4 EB 78 */	mr r4, r29
/* 80A0DBAC  7F 05 C3 78 */	mr r5, r24
/* 80A0DBB0  38 C0 00 00 */	li r6, 0
/* 80A0DBB4  38 E0 00 00 */	li r7, 0
/* 80A0DBB8  4B 83 C3 D9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80A0DBBC  38 00 00 01 */	li r0, 1
/* 80A0DBC0  98 1D 05 F4 */	stb r0, 0x5f4(r29)
/* 80A0DBC4  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x1@ha /* 0x80450C9D@ha */
/* 80A0DBC8  38 83 0C 9D */	addi r4, r3, cDmr_SkipInfo+0x1@l /* 0x80450C9D@l */
/* 80A0DBCC  88 64 00 00 */	lbz r3, 0(r4)
/* 80A0DBD0  38 03 00 01 */	addi r0, r3, 1
/* 80A0DBD4  98 04 00 00 */	stb r0, 0(r4)
/* 80A0DBD8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A0DBDC  70 00 00 C3 */	andi. r0, r0, 0xc3
/* 80A0DBE0  98 04 00 00 */	stb r0, 0(r4)
lbl_80A0DBE4:
/* 80A0DBE4  83 1C 5D AC */	lwz r24, 0x5dac(r28)
/* 80A0DBE8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A0DBEC  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80A0DBF0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A0DBF4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A0DBF8  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80A0DBFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A0DC00  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x1@ha /* 0x80450C9D@ha */
/* 80A0DC04  88 03 0C 9D */	lbz r0, cDmr_SkipInfo+0x1@l(r3)  /* 0x80450C9D@l */
/* 80A0DC08  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80A0DC0C  41 82 00 60 */	beq lbl_80A0DC6C
/* 80A0DC10  A8 1D 05 A2 */	lha r0, 0x5a2(r29)
/* 80A0DC14  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A0DC18  40 80 00 54 */	bge lbl_80A0DC6C
/* 80A0DC1C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A0DC20  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A0DC24  EC 21 00 2A */	fadds f1, f1, f0
/* 80A0DC28  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A0DC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0DC30  40 80 00 3C */	bge lbl_80A0DC6C
/* 80A0DC34  7F A3 EB 78 */	mr r3, r29
/* 80A0DC38  7F 04 C3 78 */	mr r4, r24
/* 80A0DC3C  4B 60 CA D5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A0DC40  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 80A0DC44  7C 60 18 50 */	subf r3, r0, r3
/* 80A0DC48  3C 63 00 01 */	addis r3, r3, 1
/* 80A0DC4C  38 03 80 00 */	addi r0, r3, -32768
/* 80A0DC50  7C 00 07 34 */	extsh r0, r0
/* 80A0DC54  2C 00 18 00 */	cmpwi r0, 0x1800
/* 80A0DC58  40 80 00 14 */	bge lbl_80A0DC6C
/* 80A0DC5C  2C 00 E8 00 */	cmpwi r0, -6144
/* 80A0DC60  40 81 00 0C */	ble lbl_80A0DC6C
/* 80A0DC64  38 00 00 05 */	li r0, 5
/* 80A0DC68  98 1D 05 F5 */	stb r0, 0x5f5(r29)
lbl_80A0DC6C:
/* 80A0DC6C  A8 1D 05 A2 */	lha r0, 0x5a2(r29)
/* 80A0DC70  2C 00 00 00 */	cmpwi r0, 0
/* 80A0DC74  41 82 00 18 */	beq lbl_80A0DC8C
/* 80A0DC78  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80A0DC7C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80A0DC80  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80A0DC84  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A0DC88  41 82 00 24 */	beq lbl_80A0DCAC
lbl_80A0DC8C:
/* 80A0DC8C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80A0DC90  4B 85 9C C5 */	bl cM_rndF__Ff
/* 80A0DC94  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80A0DC98  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0DC9C  FC 00 00 1E */	fctiwz f0, f0
/* 80A0DCA0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A0DCA4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80A0DCA8  B0 1D 05 A2 */	sth r0, 0x5a2(r29)
lbl_80A0DCAC:
/* 80A0DCAC  88 7D 05 F5 */	lbz r3, 0x5f5(r29)
/* 80A0DCB0  28 03 00 00 */	cmplwi r3, 0
/* 80A0DCB4  41 82 00 74 */	beq lbl_80A0DD28
/* 80A0DCB8  38 03 FF FF */	addi r0, r3, -1
/* 80A0DCBC  98 1D 05 F5 */	stb r0, 0x5f5(r29)
/* 80A0DCC0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A0DCC4  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80A0DCC8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A0DCCC  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80A0DCD0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A0DCD4  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80A0DCD8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A0DCDC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80A0DCE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0DCE4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80A0DCE8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80A0DCEC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80A0DCF0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A0DCF4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80A0DCF8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80A0DCFC  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80A0DD00  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80A0DD04  EC 00 08 2A */	fadds f0, f0, f1
/* 80A0DD08  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80A0DD0C  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80A0DD10  60 00 00 0A */	ori r0, r0, 0xa
/* 80A0DD14  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A0DD18  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80A0DD1C  60 00 00 01 */	ori r0, r0, 1
/* 80A0DD20  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80A0DD24  48 00 00 20 */	b lbl_80A0DD44
lbl_80A0DD28:
/* 80A0DD28  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80A0DD2C  54 00 00 3E */	slwi r0, r0, 0
/* 80A0DD30  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80A0DD34  80 7D 05 5C */	lwz r3, 0x55c(r29)
/* 80A0DD38  38 00 FF F5 */	li r0, -11
/* 80A0DD3C  7C 60 00 38 */	and r0, r3, r0
/* 80A0DD40  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80A0DD44:
/* 80A0DD44  38 60 00 01 */	li r3, 1
lbl_80A0DD48:
/* 80A0DD48  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80A0DD4C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80A0DD50  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80A0DD54  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80A0DD58  39 61 00 80 */	addi r11, r1, 0x80
/* 80A0DD5C  4B 95 44 B9 */	bl _restgpr_24
/* 80A0DD60  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A0DD64  7C 08 03 A6 */	mtlr r0
/* 80A0DD68  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80A0DD6C  4E 80 00 20 */	blr 
