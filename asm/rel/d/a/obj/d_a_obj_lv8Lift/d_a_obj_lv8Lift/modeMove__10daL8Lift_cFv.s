lbl_80C891A4:
/* 80C891A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C891A8  7C 08 02 A6 */	mflr r0
/* 80C891AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C891B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C891B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C891B8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C891BC  4B 6D 90 21 */	bl _savegpr_29
/* 80C891C0  7C 7E 1B 78 */	mr r30, r3
/* 80C891C4  3C 60 80 C9 */	lis r3, lit_3627@ha /* 0x80C89F60@ha */
/* 80C891C8  3B E3 9F 60 */	addi r31, r3, lit_3627@l /* 0x80C89F60@l */
/* 80C891CC  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80C891D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C891D4  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80C891D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C891DC  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80C891E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C891E4  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C891E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C891EC  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C891F0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C891F4  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80C891F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C891FC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C89200  38 81 00 38 */	addi r4, r1, 0x38
/* 80C89204  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C89208  4B 5D D9 2D */	bl __mi__4cXyzCFRC3Vec
/* 80C8920C  38 61 00 20 */	addi r3, r1, 0x20
/* 80C89210  4B 6B DF 29 */	bl PSVECSquareMag
/* 80C89214  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C89218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8921C  40 81 00 58 */	ble lbl_80C89274
/* 80C89220  FC 00 08 34 */	frsqrte f0, f1
/* 80C89224  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C89228  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8922C  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C89230  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89234  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89238  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8923C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89240  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89244  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89248  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8924C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89250  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89254  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89258  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8925C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89260  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89264  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89268  FC 21 00 32 */	fmul f1, f1, f0
/* 80C8926C  FC 20 08 18 */	frsp f1, f1
/* 80C89270  48 00 00 88 */	b lbl_80C892F8
lbl_80C89274:
/* 80C89274  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C89278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8927C  40 80 00 10 */	bge lbl_80C8928C
/* 80C89280  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C89284  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C89288  48 00 00 70 */	b lbl_80C892F8
lbl_80C8928C:
/* 80C8928C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C89290  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C89294  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C89298  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8929C  7C 03 00 00 */	cmpw r3, r0
/* 80C892A0  41 82 00 14 */	beq lbl_80C892B4
/* 80C892A4  40 80 00 40 */	bge lbl_80C892E4
/* 80C892A8  2C 03 00 00 */	cmpwi r3, 0
/* 80C892AC  41 82 00 20 */	beq lbl_80C892CC
/* 80C892B0  48 00 00 34 */	b lbl_80C892E4
lbl_80C892B4:
/* 80C892B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C892B8  41 82 00 0C */	beq lbl_80C892C4
/* 80C892BC  38 00 00 01 */	li r0, 1
/* 80C892C0  48 00 00 28 */	b lbl_80C892E8
lbl_80C892C4:
/* 80C892C4  38 00 00 02 */	li r0, 2
/* 80C892C8  48 00 00 20 */	b lbl_80C892E8
lbl_80C892CC:
/* 80C892CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C892D0  41 82 00 0C */	beq lbl_80C892DC
/* 80C892D4  38 00 00 05 */	li r0, 5
/* 80C892D8  48 00 00 10 */	b lbl_80C892E8
lbl_80C892DC:
/* 80C892DC  38 00 00 03 */	li r0, 3
/* 80C892E0  48 00 00 08 */	b lbl_80C892E8
lbl_80C892E4:
/* 80C892E4  38 00 00 04 */	li r0, 4
lbl_80C892E8:
/* 80C892E8  2C 00 00 01 */	cmpwi r0, 1
/* 80C892EC  40 82 00 0C */	bne lbl_80C892F8
/* 80C892F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C892F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C892F8:
/* 80C892F8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C892FC  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C89300  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C89304  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C89308  40 80 00 08 */	bge lbl_80C89310
/* 80C8930C  FF E0 00 90 */	fmr f31, f0
lbl_80C89310:
/* 80C89310  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C89314  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C89318  40 81 00 08 */	ble lbl_80C89320
/* 80C8931C  FF E0 00 90 */	fmr f31, f0
lbl_80C89320:
/* 80C89320  38 61 00 14 */	addi r3, r1, 0x14
/* 80C89324  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C89328  38 BE 05 CC */	addi r5, r30, 0x5cc
/* 80C8932C  4B 5D D8 09 */	bl __mi__4cXyzCFRC3Vec
/* 80C89330  38 61 00 14 */	addi r3, r1, 0x14
/* 80C89334  4B 6B DE 05 */	bl PSVECSquareMag
/* 80C89338  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C8933C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C89340  40 81 00 58 */	ble lbl_80C89398
/* 80C89344  FC 00 08 34 */	frsqrte f0, f1
/* 80C89348  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C8934C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89350  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C89354  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89358  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8935C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89360  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89364  FC 44 00 32 */	fmul f2, f4, f0
/* 80C89368  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8936C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89370  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89374  FC 02 00 32 */	fmul f0, f2, f0
/* 80C89378  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8937C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C89380  FC 01 00 32 */	fmul f0, f1, f0
/* 80C89384  FC 03 00 28 */	fsub f0, f3, f0
/* 80C89388  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8938C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C89390  FC 20 08 18 */	frsp f1, f1
/* 80C89394  48 00 00 88 */	b lbl_80C8941C
lbl_80C89398:
/* 80C89398  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C8939C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C893A0  40 80 00 10 */	bge lbl_80C893B0
/* 80C893A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C893A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C893AC  48 00 00 70 */	b lbl_80C8941C
lbl_80C893B0:
/* 80C893B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C893B4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C893B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C893BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C893C0  7C 03 00 00 */	cmpw r3, r0
/* 80C893C4  41 82 00 14 */	beq lbl_80C893D8
/* 80C893C8  40 80 00 40 */	bge lbl_80C89408
/* 80C893CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C893D0  41 82 00 20 */	beq lbl_80C893F0
/* 80C893D4  48 00 00 34 */	b lbl_80C89408
lbl_80C893D8:
/* 80C893D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C893DC  41 82 00 0C */	beq lbl_80C893E8
/* 80C893E0  38 00 00 01 */	li r0, 1
/* 80C893E4  48 00 00 28 */	b lbl_80C8940C
lbl_80C893E8:
/* 80C893E8  38 00 00 02 */	li r0, 2
/* 80C893EC  48 00 00 20 */	b lbl_80C8940C
lbl_80C893F0:
/* 80C893F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C893F4  41 82 00 0C */	beq lbl_80C89400
/* 80C893F8  38 00 00 05 */	li r0, 5
/* 80C893FC  48 00 00 10 */	b lbl_80C8940C
lbl_80C89400:
/* 80C89400  38 00 00 03 */	li r0, 3
/* 80C89404  48 00 00 08 */	b lbl_80C8940C
lbl_80C89408:
/* 80C89408  38 00 00 04 */	li r0, 4
lbl_80C8940C:
/* 80C8940C  2C 00 00 01 */	cmpwi r0, 1
/* 80C89410  40 82 00 0C */	bne lbl_80C8941C
/* 80C89414  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C89418  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C8941C:
/* 80C8941C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C89420  40 81 00 0C */	ble lbl_80C8942C
/* 80C89424  7F C3 F3 78 */	mr r3, r30
/* 80C89428  48 00 00 95 */	bl init_modeBrk__10daL8Lift_cFv
lbl_80C8942C:
/* 80C8942C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C89430  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80C89434  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C89438  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C8943C  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C89440  4B 5E 66 79 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C89444  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C89448  7C 03 07 74 */	extsb r3, r0
/* 80C8944C  4B 3A 3C 21 */	bl dComIfGp_getReverb__Fi
/* 80C89450  7C 7D 1B 78 */	mr r29, r3
/* 80C89454  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C89458  4B 6D 8C 55 */	bl __cvt_fp2unsigned
/* 80C8945C  7C 66 1B 78 */	mr r6, r3
/* 80C89460  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C89464  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C89468  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C8946C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C89470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C89474  80 63 00 00 */	lwz r3, 0(r3)
/* 80C89478  38 81 00 10 */	addi r4, r1, 0x10
/* 80C8947C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C89480  7F A7 EB 78 */	mr r7, r29
/* 80C89484  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C89488  FC 40 08 90 */	fmr f2, f1
/* 80C8948C  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C89490  FC 80 18 90 */	fmr f4, f3
/* 80C89494  39 00 00 00 */	li r8, 0
/* 80C89498  4B 62 30 75 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8949C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C894A0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C894A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C894A8  4B 6D 8D 81 */	bl _restgpr_29
/* 80C894AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C894B0  7C 08 03 A6 */	mtlr r0
/* 80C894B4  38 21 00 70 */	addi r1, r1, 0x70
/* 80C894B8  4E 80 00 20 */	blr 
