lbl_80C8AEE0:
/* 80C8AEE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C8AEE4  7C 08 02 A6 */	mflr r0
/* 80C8AEE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C8AEEC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C8AEF0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C8AEF4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C8AEF8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C8AEFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C8AF00  4B 6D 72 DD */	bl _savegpr_29
/* 80C8AF04  7C 7E 1B 78 */	mr r30, r3
/* 80C8AF08  3C 60 80 C9 */	lis r3, lit_3661@ha /* 0x80C8B9AC@ha */
/* 80C8AF0C  3B E3 B9 AC */	addi r31, r3, lit_3661@l /* 0x80C8B9AC@l */
/* 80C8AF10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C8AF14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C8AF18  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C8AF1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C8AF20  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C8AF24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C8AF28  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C8AF2C  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80C8AF30  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C8AF34  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C8AF38  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C8AF3C  4B 5E 4B 7D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C8AF40  FF E0 08 90 */	fmr f31, f1
/* 80C8AF44  38 61 00 10 */	addi r3, r1, 0x10
/* 80C8AF48  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C8AF4C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8AF50  4B 5D BB E5 */	bl __mi__4cXyzCFRC3Vec
/* 80C8AF54  38 61 00 10 */	addi r3, r1, 0x10
/* 80C8AF58  4B 6B C1 E1 */	bl PSVECSquareMag
/* 80C8AF5C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C8AF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8AF64  40 81 00 58 */	ble lbl_80C8AFBC
/* 80C8AF68  FC 00 08 34 */	frsqrte f0, f1
/* 80C8AF6C  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80C8AF70  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AF74  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80C8AF78  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AF7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AF80  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AF84  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AF88  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AF8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AF90  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AF94  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AF98  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AF9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AFA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AFA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AFA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AFAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AFB0  FF C1 00 32 */	fmul f30, f1, f0
/* 80C8AFB4  FF C0 F0 18 */	frsp f30, f30
/* 80C8AFB8  48 00 00 90 */	b lbl_80C8B048
lbl_80C8AFBC:
/* 80C8AFBC  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80C8AFC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8AFC4  40 80 00 10 */	bge lbl_80C8AFD4
/* 80C8AFC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8AFCC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8AFD0  48 00 00 78 */	b lbl_80C8B048
lbl_80C8AFD4:
/* 80C8AFD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C8AFD8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C8AFDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C8AFE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8AFE4  7C 03 00 00 */	cmpw r3, r0
/* 80C8AFE8  41 82 00 14 */	beq lbl_80C8AFFC
/* 80C8AFEC  40 80 00 40 */	bge lbl_80C8B02C
/* 80C8AFF0  2C 03 00 00 */	cmpwi r3, 0
/* 80C8AFF4  41 82 00 20 */	beq lbl_80C8B014
/* 80C8AFF8  48 00 00 34 */	b lbl_80C8B02C
lbl_80C8AFFC:
/* 80C8AFFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8B000  41 82 00 0C */	beq lbl_80C8B00C
/* 80C8B004  38 00 00 01 */	li r0, 1
/* 80C8B008  48 00 00 28 */	b lbl_80C8B030
lbl_80C8B00C:
/* 80C8B00C  38 00 00 02 */	li r0, 2
/* 80C8B010  48 00 00 20 */	b lbl_80C8B030
lbl_80C8B014:
/* 80C8B014  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8B018  41 82 00 0C */	beq lbl_80C8B024
/* 80C8B01C  38 00 00 05 */	li r0, 5
/* 80C8B020  48 00 00 10 */	b lbl_80C8B030
lbl_80C8B024:
/* 80C8B024  38 00 00 03 */	li r0, 3
/* 80C8B028  48 00 00 08 */	b lbl_80C8B030
lbl_80C8B02C:
/* 80C8B02C  38 00 00 04 */	li r0, 4
lbl_80C8B030:
/* 80C8B030  2C 00 00 01 */	cmpwi r0, 1
/* 80C8B034  40 82 00 10 */	bne lbl_80C8B044
/* 80C8B038  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8B03C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8B040  48 00 00 08 */	b lbl_80C8B048
lbl_80C8B044:
/* 80C8B044  FF C0 08 90 */	fmr f30, f1
lbl_80C8B048:
/* 80C8B048  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8B04C  7C 03 07 74 */	extsb r3, r0
/* 80C8B050  4B 3A 20 1D */	bl dComIfGp_getReverb__Fi
/* 80C8B054  7C 7D 1B 78 */	mr r29, r3
/* 80C8B058  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C8B05C  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C8B060  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8B064  FC 20 F0 90 */	fmr f1, f30
/* 80C8B068  4B 6D 70 45 */	bl __cvt_fp2unsigned
/* 80C8B06C  7C 66 1B 78 */	mr r6, r3
/* 80C8B070  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8B074  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8B078  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8B07C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8B080  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8B084  7F A7 EB 78 */	mr r7, r29
/* 80C8B088  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8B08C  FC 40 08 90 */	fmr f2, f1
/* 80C8B090  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C8B094  FC 80 18 90 */	fmr f4, f3
/* 80C8B098  39 00 00 00 */	li r8, 0
/* 80C8B09C  4B 62 14 71 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8B0A0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C8B0A4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C8B0A8  40 82 00 30 */	bne lbl_80C8B0D8
/* 80C8B0AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C8B0B0  7F C3 F3 78 */	mr r3, r30
/* 80C8B0B4  48 00 04 89 */	bl setNextPoint__12daOptiLift_cFv
/* 80C8B0B8  A8 1E 05 CA */	lha r0, 0x5ca(r30)
/* 80C8B0BC  2C 00 FF FF */	cmpwi r0, -1
/* 80C8B0C0  41 82 00 10 */	beq lbl_80C8B0D0
/* 80C8B0C4  7F C3 F3 78 */	mr r3, r30
/* 80C8B0C8  4B FF F9 FD */	bl init_modeAcc__12daOptiLift_cFv
/* 80C8B0CC  48 00 00 0C */	b lbl_80C8B0D8
lbl_80C8B0D0:
/* 80C8B0D0  7F C3 F3 78 */	mr r3, r30
/* 80C8B0D4  48 00 01 C5 */	bl init_modeStop__12daOptiLift_cFv
lbl_80C8B0D8:
/* 80C8B0D8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C8B0DC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C8B0E0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C8B0E4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C8B0E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C8B0EC  4B 6D 71 3D */	bl _restgpr_29
/* 80C8B0F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C8B0F4  7C 08 03 A6 */	mtlr r0
/* 80C8B0F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80C8B0FC  4E 80 00 20 */	blr 
