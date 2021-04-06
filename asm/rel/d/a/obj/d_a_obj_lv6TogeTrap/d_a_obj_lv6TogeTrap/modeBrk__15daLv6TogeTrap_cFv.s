lbl_80C7B240:
/* 80C7B240  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C7B244  7C 08 02 A6 */	mflr r0
/* 80C7B248  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C7B24C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C7B250  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C7B254  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C7B258  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C7B25C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7B260  4B 6E 6F 7D */	bl _savegpr_29
/* 80C7B264  7C 7E 1B 78 */	mr r30, r3
/* 80C7B268  3C 60 80 C8 */	lis r3, lit_3631@ha /* 0x80C7C618@ha */
/* 80C7B26C  3B E3 C6 18 */	addi r31, r3, lit_3631@l /* 0x80C7C618@l */
/* 80C7B270  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C7B274  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C7B278  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C7B27C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C7B280  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C7B284  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7B288  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C7B28C  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 80C7B290  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80C7B294  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C7B298  C0 7F 01 30 */	lfs f3, 0x130(r31)
/* 80C7B29C  4B 5F 48 1D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7B2A0  FF E0 08 90 */	fmr f31, f1
/* 80C7B2A4  38 61 00 10 */	addi r3, r1, 0x10
/* 80C7B2A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C7B2AC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7B2B0  4B 5E B8 85 */	bl __mi__4cXyzCFRC3Vec
/* 80C7B2B4  38 61 00 10 */	addi r3, r1, 0x10
/* 80C7B2B8  4B 6C BE 81 */	bl PSVECSquareMag
/* 80C7B2BC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7B2C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B2C4  40 81 00 58 */	ble lbl_80C7B31C
/* 80C7B2C8  FC 00 08 34 */	frsqrte f0, f1
/* 80C7B2CC  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80C7B2D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B2D4  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80C7B2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B2E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B300  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B304  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B308  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B30C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B310  FF C1 00 32 */	fmul f30, f1, f0
/* 80C7B314  FF C0 F0 18 */	frsp f30, f30
/* 80C7B318  48 00 00 90 */	b lbl_80C7B3A8
lbl_80C7B31C:
/* 80C7B31C  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80C7B320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B324  40 80 00 10 */	bge lbl_80C7B334
/* 80C7B328  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7B32C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7B330  48 00 00 78 */	b lbl_80C7B3A8
lbl_80C7B334:
/* 80C7B334  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C7B338  80 81 00 08 */	lwz r4, 8(r1)
/* 80C7B33C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7B340  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7B344  7C 03 00 00 */	cmpw r3, r0
/* 80C7B348  41 82 00 14 */	beq lbl_80C7B35C
/* 80C7B34C  40 80 00 40 */	bge lbl_80C7B38C
/* 80C7B350  2C 03 00 00 */	cmpwi r3, 0
/* 80C7B354  41 82 00 20 */	beq lbl_80C7B374
/* 80C7B358  48 00 00 34 */	b lbl_80C7B38C
lbl_80C7B35C:
/* 80C7B35C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B360  41 82 00 0C */	beq lbl_80C7B36C
/* 80C7B364  38 00 00 01 */	li r0, 1
/* 80C7B368  48 00 00 28 */	b lbl_80C7B390
lbl_80C7B36C:
/* 80C7B36C  38 00 00 02 */	li r0, 2
/* 80C7B370  48 00 00 20 */	b lbl_80C7B390
lbl_80C7B374:
/* 80C7B374  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B378  41 82 00 0C */	beq lbl_80C7B384
/* 80C7B37C  38 00 00 05 */	li r0, 5
/* 80C7B380  48 00 00 10 */	b lbl_80C7B390
lbl_80C7B384:
/* 80C7B384  38 00 00 03 */	li r0, 3
/* 80C7B388  48 00 00 08 */	b lbl_80C7B390
lbl_80C7B38C:
/* 80C7B38C  38 00 00 04 */	li r0, 4
lbl_80C7B390:
/* 80C7B390  2C 00 00 01 */	cmpwi r0, 1
/* 80C7B394  40 82 00 10 */	bne lbl_80C7B3A4
/* 80C7B398  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7B39C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7B3A0  48 00 00 08 */	b lbl_80C7B3A8
lbl_80C7B3A4:
/* 80C7B3A4  FF C0 08 90 */	fmr f30, f1
lbl_80C7B3A8:
/* 80C7B3A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7B3AC  7C 03 07 74 */	extsb r3, r0
/* 80C7B3B0  4B 3B 1C BD */	bl dComIfGp_getReverb__Fi
/* 80C7B3B4  7C 7D 1B 78 */	mr r29, r3
/* 80C7B3B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7B3BC  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7B3C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7B3C4  FC 20 F0 90 */	fmr f1, f30
/* 80C7B3C8  4B 6E 6C E5 */	bl __cvt_fp2unsigned
/* 80C7B3CC  7C 66 1B 78 */	mr r6, r3
/* 80C7B3D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7B3D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7B3D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7B3DC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C7B3E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7B3E4  7F A7 EB 78 */	mr r7, r29
/* 80C7B3E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7B3EC  FC 40 08 90 */	fmr f2, f1
/* 80C7B3F0  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80C7B3F4  FC 80 18 90 */	fmr f4, f3
/* 80C7B3F8  39 00 00 00 */	li r8, 0
/* 80C7B3FC  4B 63 11 11 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7B400  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7B404  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C7B408  40 82 00 0C */	bne lbl_80C7B414
/* 80C7B40C  7F C3 F3 78 */	mr r3, r30
/* 80C7B410  48 00 01 09 */	bl init_modeWaitInit__15daLv6TogeTrap_cFv
lbl_80C7B414:
/* 80C7B414  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C7B418  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C7B41C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C7B420  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C7B424  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7B428  4B 6E 6E 01 */	bl _restgpr_29
/* 80C7B42C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C7B430  7C 08 03 A6 */	mtlr r0
/* 80C7B434  38 21 00 60 */	addi r1, r1, 0x60
/* 80C7B438  4E 80 00 20 */	blr 
