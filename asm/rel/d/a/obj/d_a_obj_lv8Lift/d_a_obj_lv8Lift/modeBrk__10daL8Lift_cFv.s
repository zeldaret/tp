lbl_80C894C8:
/* 80C894C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C894CC  7C 08 02 A6 */	mflr r0
/* 80C894D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C894D4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C894D8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C894DC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C894E0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C894E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C894E8  4B 6D 8C F5 */	bl _savegpr_29
/* 80C894EC  7C 7E 1B 78 */	mr r30, r3
/* 80C894F0  3C 60 80 C9 */	lis r3, lit_3627@ha /* 0x80C89F60@ha */
/* 80C894F4  3B E3 9F 60 */	addi r31, r3, lit_3627@l /* 0x80C89F60@l */
/* 80C894F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C894FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C89500  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C89504  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C89508  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C8950C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C89510  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C89514  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80C89518  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C8951C  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C89520  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80C89524  4B 5E 65 95 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C89528  FF E0 08 90 */	fmr f31, f1
/* 80C8952C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C89530  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C89534  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C89538  4B 5D D5 FD */	bl __mi__4cXyzCFRC3Vec
/* 80C8953C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C89540  4B 6B DB F9 */	bl PSVECSquareMag
/* 80C89544  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C89548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8954C  40 81 00 58 */	ble lbl_80C895A4
/* 80C89550  FC 00 08 34 */	frsqrte f0, f1
/* 80C89554  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C89558  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8955C  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C89560  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89564  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89568  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8956C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89570  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89574  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89578  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8957C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89580  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89584  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89588  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8958C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89590  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89594  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89598  FF C1 00 32 */	fmul f30, f1, f0
/* 80C8959C  FF C0 F0 18 */	frsp f30, f30
/* 80C895A0  48 00 00 90 */	b lbl_80C89630
lbl_80C895A4:
/* 80C895A4  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C895A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C895AC  40 80 00 10 */	bge lbl_80C895BC
/* 80C895B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C895B4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C895B8  48 00 00 78 */	b lbl_80C89630
lbl_80C895BC:
/* 80C895BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C895C0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C895C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C895C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C895CC  7C 03 00 00 */	cmpw r3, r0
/* 80C895D0  41 82 00 14 */	beq lbl_80C895E4
/* 80C895D4  40 80 00 40 */	bge lbl_80C89614
/* 80C895D8  2C 03 00 00 */	cmpwi r3, 0
/* 80C895DC  41 82 00 20 */	beq lbl_80C895FC
/* 80C895E0  48 00 00 34 */	b lbl_80C89614
lbl_80C895E4:
/* 80C895E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C895E8  41 82 00 0C */	beq lbl_80C895F4
/* 80C895EC  38 00 00 01 */	li r0, 1
/* 80C895F0  48 00 00 28 */	b lbl_80C89618
lbl_80C895F4:
/* 80C895F4  38 00 00 02 */	li r0, 2
/* 80C895F8  48 00 00 20 */	b lbl_80C89618
lbl_80C895FC:
/* 80C895FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C89600  41 82 00 0C */	beq lbl_80C8960C
/* 80C89604  38 00 00 05 */	li r0, 5
/* 80C89608  48 00 00 10 */	b lbl_80C89618
lbl_80C8960C:
/* 80C8960C  38 00 00 03 */	li r0, 3
/* 80C89610  48 00 00 08 */	b lbl_80C89618
lbl_80C89614:
/* 80C89614  38 00 00 04 */	li r0, 4
lbl_80C89618:
/* 80C89618  2C 00 00 01 */	cmpwi r0, 1
/* 80C8961C  40 82 00 10 */	bne lbl_80C8962C
/* 80C89620  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C89624  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C89628  48 00 00 08 */	b lbl_80C89630
lbl_80C8962C:
/* 80C8962C  FF C0 08 90 */	fmr f30, f1
lbl_80C89630:
/* 80C89630  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C89634  7C 03 07 74 */	extsb r3, r0
/* 80C89638  4B 3A 3A 35 */	bl dComIfGp_getReverb__Fi
/* 80C8963C  7C 7D 1B 78 */	mr r29, r3
/* 80C89640  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C89644  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C89648  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8964C  FC 20 F0 90 */	fmr f1, f30
/* 80C89650  4B 6D 8A 5D */	bl __cvt_fp2unsigned
/* 80C89654  7C 66 1B 78 */	mr r6, r3
/* 80C89658  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8965C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C89660  80 63 00 00 */	lwz r3, 0(r3)
/* 80C89664  38 81 00 0C */	addi r4, r1, 0xc
/* 80C89668  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8966C  7F A7 EB 78 */	mr r7, r29
/* 80C89670  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C89674  FC 40 08 90 */	fmr f2, f1
/* 80C89678  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C8967C  FC 80 18 90 */	fmr f4, f3
/* 80C89680  39 00 00 00 */	li r8, 0
/* 80C89684  4B 62 2E 89 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C89688  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C8968C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C89690  40 82 00 10 */	bne lbl_80C896A0
/* 80C89694  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C89698  7F C3 F3 78 */	mr r3, r30
/* 80C8969C  48 00 00 2D */	bl init_modeWaitInit__10daL8Lift_cFv
lbl_80C896A0:
/* 80C896A0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C896A4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C896A8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C896AC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C896B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C896B4  4B 6D 8B 75 */	bl _restgpr_29
/* 80C896B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C896BC  7C 08 03 A6 */	mtlr r0
/* 80C896C0  38 21 00 60 */	addi r1, r1, 0x60
/* 80C896C4  4E 80 00 20 */	blr 
