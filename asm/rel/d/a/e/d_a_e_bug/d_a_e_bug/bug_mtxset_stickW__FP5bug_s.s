lbl_806951C8:
/* 806951C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806951CC  7C 08 02 A6 */	mflr r0
/* 806951D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 806951D4  39 61 00 60 */	addi r11, r1, 0x60
/* 806951D8  4B CC D0 04 */	b _savegpr_29
/* 806951DC  7C 7D 1B 78 */	mr r29, r3
/* 806951E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806951E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806951E8  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 806951EC  38 61 00 14 */	addi r3, r1, 0x14
/* 806951F0  38 9D 00 18 */	addi r4, r29, 0x18
/* 806951F4  38 BD 00 0C */	addi r5, r29, 0xc
/* 806951F8  4B BD 19 3C */	b __mi__4cXyzCFRC3Vec
/* 806951FC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80695200  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80695204  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80695208  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8069520C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80695210  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80695214  EC 21 00 72 */	fmuls f1, f1, f1
/* 80695218  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069521C  EC 21 00 2A */	fadds f1, f1, f0
/* 80695220  3C 60 80 69 */	lis r3, lit_3945@ha
/* 80695224  C0 03 7C A8 */	lfs f0, lit_3945@l(r3)
/* 80695228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069522C  40 81 00 0C */	ble lbl_80695238
/* 80695230  FC 00 08 34 */	frsqrte f0, f1
/* 80695234  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80695238:
/* 80695238  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8069523C  4B BD 24 38 */	b cM_atan2s__Fff
/* 80695240  7C 7E 1B 78 */	mr r30, r3
/* 80695244  A8 1D 00 4A */	lha r0, 0x4a(r29)
/* 80695248  2C 00 00 00 */	cmpwi r0, 0
/* 8069524C  40 80 00 0C */	bge lbl_80695258
/* 80695250  1C 1E FF FF */	mulli r0, r30, -1
/* 80695254  7C 1E 07 34 */	extsh r30, r0
lbl_80695258:
/* 80695258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069525C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80695260  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80695264  38 80 00 01 */	li r4, 1
/* 80695268  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8069526C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80695270  7D 89 03 A6 */	mtctr r12
/* 80695274  4E 80 04 21 */	bctrl 
/* 80695278  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8069527C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80695280  80 84 00 00 */	lwz r4, 0(r4)
/* 80695284  4B CB 12 2C */	b PSMTXCopy
/* 80695288  3C 60 80 69 */	lis r3, lit_3945@ha
/* 8069528C  C0 03 7C A8 */	lfs f0, lit_3945@l(r3)
/* 80695290  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80695294  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80695298  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8069529C  38 61 00 38 */	addi r3, r1, 0x38
/* 806952A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806952A4  4B BD BC 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 806952A8  38 61 00 08 */	addi r3, r1, 8
/* 806952AC  38 9D 00 18 */	addi r4, r29, 0x18
/* 806952B0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806952B4  4B BD 18 80 */	b __mi__4cXyzCFRC3Vec
/* 806952B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 806952BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806952C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806952C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806952C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806952CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806952D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806952D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806952D8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806952DC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 806952E0  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 806952E4  4B CB 16 04 */	b PSMTXTrans
/* 806952E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806952EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806952F0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806952F4  4B 97 71 40 */	b mDoMtx_YrotM__FPA4_fs
/* 806952F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806952FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695300  38 80 C9 50 */	li r4, -14000
/* 80695304  4B 97 70 98 */	b mDoMtx_XrotM__FPA4_fs
/* 80695308  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8069530C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80695310  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80695314  4B 97 7A 88 */	b transM__14mDoMtx_stack_cFfff
/* 80695318  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069531C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695320  A8 9D 00 3E */	lha r4, 0x3e(r29)
/* 80695324  4B 97 71 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80695328  38 7D 00 40 */	addi r3, r29, 0x40
/* 8069532C  7F C4 F3 78 */	mr r4, r30
/* 80695330  38 A0 00 02 */	li r5, 2
/* 80695334  38 C0 10 00 */	li r6, 0x1000
/* 80695338  4B BD B2 D0 */	b cLib_addCalcAngleS2__FPssss
/* 8069533C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80695340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695344  A8 9D 00 40 */	lha r4, 0x40(r29)
/* 80695348  4B 97 71 84 */	b mDoMtx_ZrotM__FPA4_fs
/* 8069534C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80695350  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695354  38 80 C0 00 */	li r4, -16384
/* 80695358  4B 97 70 44 */	b mDoMtx_XrotM__FPA4_fs
/* 8069535C  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80695360  38 63 7E 7C */	addi r3, r3, l_HIO@l
/* 80695364  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80695368  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8069536C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80695370  FC 40 08 90 */	fmr f2, f1
/* 80695374  FC 60 08 90 */	fmr f3, f1
/* 80695378  4B 97 7A C0 */	b scaleM__14mDoMtx_stack_cFfff
/* 8069537C  3C 60 80 69 */	lis r3, lit_3945@ha
/* 80695380  C0 23 7C A8 */	lfs f1, lit_3945@l(r3)
/* 80695384  3C 60 80 69 */	lis r3, lit_4019@ha
/* 80695388  C0 43 7C D0 */	lfs f2, lit_4019@l(r3)
/* 8069538C  FC 60 08 90 */	fmr f3, f1
/* 80695390  4B 97 7A 0C */	b transM__14mDoMtx_stack_cFfff
/* 80695394  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80695398  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8069539C  41 82 00 1C */	beq lbl_806953B8
/* 806953A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806953A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806953A8  80 9D 00 00 */	lwz r4, 0(r29)
/* 806953AC  38 84 00 24 */	addi r4, r4, 0x24
/* 806953B0  4B CB 11 00 */	b PSMTXCopy
/* 806953B4  48 00 00 18 */	b lbl_806953CC
lbl_806953B8:
/* 806953B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806953BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806953C0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806953C4  38 84 00 24 */	addi r4, r4, 0x24
/* 806953C8  4B CB 10 E8 */	b PSMTXCopy
lbl_806953CC:
/* 806953CC  39 61 00 60 */	addi r11, r1, 0x60
/* 806953D0  4B CC CE 58 */	b _restgpr_29
/* 806953D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806953D8  7C 08 03 A6 */	mtlr r0
/* 806953DC  38 21 00 60 */	addi r1, r1, 0x60
/* 806953E0  4E 80 00 20 */	blr 
