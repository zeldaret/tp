lbl_80C7BAF4:
/* 80C7BAF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7BAF8  7C 08 02 A6 */	mflr r0
/* 80C7BAFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7BB00  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C7BB04  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C7BB08  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7BB0C  4B 6E 66 D0 */	b _savegpr_29
/* 80C7BB10  7C 7F 1B 78 */	mr r31, r3
/* 80C7BB14  3C 60 80 C8 */	lis r3, lit_3631@ha
/* 80C7BB18  3B C3 C6 18 */	addi r30, r3, lit_3631@l
/* 80C7BB1C  C0 3F 06 04 */	lfs f1, 0x604(r31)
/* 80C7BB20  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C7BB24  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C7BB28  38 84 CA 64 */	addi r4, r4, l_HIO@l
/* 80C7BB2C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C7BB30  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C7BB34  4B 5F 4C 0C */	b cLib_chaseF__FPfff
/* 80C7BB38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C7BB3C  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C7BB40  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C7BB44  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 80C7BB48  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 80C7BB4C  4B 5F 3F 6C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7BB50  FF E0 08 90 */	fmr f31, f1
/* 80C7BB54  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C7BB58  7C 03 07 74 */	extsb r3, r0
/* 80C7BB5C  4B 3B 15 10 */	b dComIfGp_getReverb__Fi
/* 80C7BB60  7C 7D 1B 78 */	mr r29, r3
/* 80C7BB64  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C7BB68  4B 6E 65 44 */	b __cvt_fp2unsigned
/* 80C7BB6C  7C 66 1B 78 */	mr r6, r3
/* 80C7BB70  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7BB74  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7BB78  90 01 00 08 */	stw r0, 8(r1)
/* 80C7BB7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C7BB80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7BB84  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7BB88  38 81 00 08 */	addi r4, r1, 8
/* 80C7BB8C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C7BB90  7F A7 EB 78 */	mr r7, r29
/* 80C7BB94  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C7BB98  FC 40 08 90 */	fmr f2, f1
/* 80C7BB9C  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 80C7BBA0  FC 80 18 90 */	fmr f4, f3
/* 80C7BBA4  39 00 00 00 */	li r8, 0
/* 80C7BBA8  4B 63 09 64 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BBAC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80C7BBB0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C7BBB4  40 82 00 80 */	bne lbl_80C7BC34
/* 80C7BBB8  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80C7BBBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C7BBC0  7C 04 07 74 */	extsb r4, r0
/* 80C7BBC4  4B 3D 5C 28 */	b dPath_GetRoomPath__Fii
/* 80C7BBC8  83 A3 00 08 */	lwz r29, 8(r3)
/* 80C7BBCC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C7BBD0  38 9D 00 04 */	addi r4, r29, 4
/* 80C7BBD4  4B 5E B4 58 */	b __eq__4cXyzCFRC3Vec
/* 80C7BBD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7BBDC  41 82 00 10 */	beq lbl_80C7BBEC
/* 80C7BBE0  7F E3 FB 78 */	mr r3, r31
/* 80C7BBE4  4B FF FD A5 */	bl init_modeWaitType2__15daLv6TogeTrap_cFv
/* 80C7BBE8  48 00 00 4C */	b lbl_80C7BC34
lbl_80C7BBEC:
/* 80C7BBEC  38 00 FF FF */	li r0, -1
/* 80C7BBF0  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7BBF4  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C7BBF8  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 80C7BBFC  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C7BC00  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 80C7BC04  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C7BC08  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80C7BC0C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C7BC10  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C7BC14  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C7BC18  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C7BC1C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80C7BC20  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C7BC24  38 00 00 00 */	li r0, 0
/* 80C7BC28  B0 1F 05 AE */	sth r0, 0x5ae(r31)
/* 80C7BC2C  7F E3 FB 78 */	mr r3, r31
/* 80C7BC30  48 00 00 25 */	bl init_modeWaitAttackType2__15daLv6TogeTrap_cFv
lbl_80C7BC34:
/* 80C7BC34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C7BC38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C7BC3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7BC40  4B 6E 65 E8 */	b _restgpr_29
/* 80C7BC44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7BC48  7C 08 03 A6 */	mtlr r0
/* 80C7BC4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7BC50  4E 80 00 20 */	blr 
