lbl_800553EC:
/* 800553EC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800553F0  7C 08 02 A6 */	mflr r0
/* 800553F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 800553F8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800553FC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80055400  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80055404  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80055408  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8005540C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80055410  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80055414  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80055418  39 61 00 30 */	addi r11, r1, 0x30
/* 8005541C  48 30 CD B9 */	bl _savegpr_27
/* 80055420  7C 7B 1B 78 */	mr r27, r3
/* 80055424  7C 9C 23 78 */	mr r28, r4
/* 80055428  FF A0 08 90 */	fmr f29, f1
/* 8005542C  FF C0 10 90 */	fmr f30, f2
/* 80055430  7C BD 2B 78 */	mr r29, r5
/* 80055434  7C DE 33 78 */	mr r30, r6
/* 80055438  FF E0 18 90 */	fmr f31, f3
/* 8005543C  7C FF 3B 78 */	mr r31, r7
/* 80055440  C0 62 86 10 */	lfs f3, lit_4074(r2)
/* 80055444  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 80055448  40 80 00 24 */	bge lbl_8005546C
/* 8005544C  C0 02 86 A4 */	lfs f0, lit_5375(r2)
/* 80055450  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80055454  FC 00 00 1E */	fctiwz f0, f0
/* 80055458  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8005545C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80055460  98 1B 00 00 */	stb r0, 0(r27)
/* 80055464  C3 E2 86 28 */	lfs f31, lit_4270(r2)
/* 80055468  48 00 00 8C */	b lbl_800554F4
lbl_8005546C:
/* 8005546C  C0 42 86 28 */	lfs f2, lit_4270(r2)
/* 80055470  C0 22 86 A8 */	lfs f1, lit_5376(r2)
/* 80055474  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80055478  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8005547C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80055480  EC 02 00 28 */	fsubs f0, f2, f0
/* 80055484  D0 01 00 08 */	stfs f0, 8(r1)
/* 80055488  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8005548C  40 80 00 0C */	bge lbl_80055498
/* 80055490  D0 61 00 08 */	stfs f3, 8(r1)
/* 80055494  48 00 00 10 */	b lbl_800554A4
lbl_80055498:
/* 80055498  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8005549C  40 81 00 08 */	ble lbl_800554A4
/* 800554A0  D0 41 00 08 */	stfs f2, 8(r1)
lbl_800554A4:
/* 800554A4  38 60 00 00 */	li r3, 0
/* 800554A8  38 81 00 08 */	addi r4, r1, 8
/* 800554AC  4B FF F6 21 */	bl setkankyoShadow__FP12dKy_tevstr_cPf
/* 800554B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 800554B4  C0 02 86 AC */	lfs f0, lit_5377(r2)
/* 800554B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 800554BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800554C0  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 800554C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800554C8  40 81 00 08 */	ble lbl_800554D0
/* 800554CC  D0 01 00 08 */	stfs f0, 8(r1)
lbl_800554D0:
/* 800554D0  3C 60 80 43 */	lis r3, g_envHIO@ha
/* 800554D4  38 63 07 9C */	addi r3, r3, g_envHIO@l
/* 800554D8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800554DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 800554E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800554E4  FC 00 00 1E */	fctiwz f0, f0
/* 800554E8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800554EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800554F0  98 1B 00 00 */	stb r0, 0(r27)
lbl_800554F4:
/* 800554F4  C0 62 86 48 */	lfs f3, lit_4806(r2)
/* 800554F8  C0 02 86 B0 */	lfs f0, lit_5378(r2)
/* 800554FC  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80055500  C0 22 86 28 */	lfs f1, lit_4270(r2)
/* 80055504  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80055508  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005550C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80055510  EF 83 00 2A */	fadds f28, f3, f0
/* 80055514  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80055518  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8005551C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80055520  EC 5D E0 2A */	fadds f2, f29, f28
/* 80055524  C0 7C 00 08 */	lfs f3, 8(r28)
/* 80055528  48 2F 13 C1 */	bl PSMTXTrans
/* 8005552C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80055530  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80055534  7F C4 F3 78 */	mr r4, r30
/* 80055538  4B FB 6E FD */	bl mDoMtx_YrotM__FPA4_fs
/* 8005553C  FC 20 F0 90 */	fmr f1, f30
/* 80055540  C0 42 86 B0 */	lfs f2, lit_5378(r2)
/* 80055544  EC 1C E0 2A */	fadds f0, f28, f28
/* 80055548  EC 42 00 2A */	fadds f2, f2, f0
/* 8005554C  EF FE 07 F2 */	fmuls f31, f30, f31
/* 80055550  FC 60 F8 90 */	fmr f3, f31
/* 80055554  4B FB 78 E5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80055558  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8005555C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80055560  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80055564  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80055568  38 BB 00 08 */	addi r5, r27, 8
/* 8005556C  48 2F 0F 79 */	bl PSMTXConcat
/* 80055570  C0 22 86 28 */	lfs f1, lit_4270(r2)
/* 80055574  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80055578  EC 00 00 32 */	fmuls f0, f0, f0
/* 8005557C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80055580  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80055584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80055588  40 81 00 0C */	ble lbl_80055594
/* 8005558C  FC 00 08 34 */	frsqrte f0, f1
/* 80055590  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80055594:
/* 80055594  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80055598  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005559C  41 82 00 1C */	beq lbl_800555B8
/* 800555A0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800555A4  EC 40 00 72 */	fmuls f2, f0, f1
/* 800555A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800555AC  FC 00 00 50 */	fneg f0, f0
/* 800555B0  EC 60 00 72 */	fmuls f3, f0, f1
/* 800555B4  48 00 00 0C */	b lbl_800555C0
lbl_800555B8:
/* 800555B8  FC 40 00 90 */	fmr f2, f0
/* 800555BC  FC 60 00 90 */	fmr f3, f0
lbl_800555C0:
/* 800555C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800555C4  D4 23 D4 70 */	stfsu f1, now__14mDoMtx_stack_c@l(r3)
/* 800555C8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 800555CC  D0 23 00 04 */	stfs f1, 4(r3)
/* 800555D0  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 800555D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 800555D8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 800555DC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800555E0  FC 00 08 50 */	fneg f0, f1
/* 800555E4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800555E8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800555EC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800555F0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800555F4  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 800555F8  D3 A3 00 1C */	stfs f29, 0x1c(r3)
/* 800555FC  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80055600  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80055604  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80055608  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8005560C  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80055610  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80055614  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80055618  7F C4 F3 78 */	mr r4, r30
/* 8005561C  4B FB 6E 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80055620  FC 20 F0 90 */	fmr f1, f30
/* 80055624  C0 42 86 28 */	lfs f2, lit_4270(r2)
/* 80055628  FC 60 F8 90 */	fmr f3, f31
/* 8005562C  4B FB 78 0D */	bl scaleM__14mDoMtx_stack_cFfff
/* 80055630  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80055634  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80055638  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8005563C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80055640  38 BB 00 38 */	addi r5, r27, 0x38
/* 80055644  48 2F 0E A1 */	bl PSMTXConcat
/* 80055648  93 FB 00 04 */	stw r31, 4(r27)
/* 8005564C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80055650  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80055654  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80055658  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8005565C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80055660  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80055664  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80055668  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8005566C  39 61 00 30 */	addi r11, r1, 0x30
/* 80055670  48 30 CB B1 */	bl _restgpr_27
/* 80055674  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80055678  7C 08 03 A6 */	mtlr r0
/* 8005567C  38 21 00 70 */	addi r1, r1, 0x70
/* 80055680  4E 80 00 20 */	blr 
