lbl_8046A0A8:
/* 8046A0A8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8046A0AC  7C 08 02 A6 */	mflr r0
/* 8046A0B0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8046A0B4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8046A0B8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8046A0BC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8046A0C0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8046A0C4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8046A0C8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8046A0CC  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8046A0D0  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8046A0D4  39 61 00 80 */	addi r11, r1, 0x80
/* 8046A0D8  4B EF 80 F9 */	bl _savegpr_26
/* 8046A0DC  7C 7E 1B 78 */	mr r30, r3
/* 8046A0E0  3C 60 80 47 */	lis r3, lit_3681@ha /* 0x8046AFC4@ha */
/* 8046A0E4  3B E3 AF C4 */	addi r31, r3, lit_3681@l /* 0x8046AFC4@l */
/* 8046A0E8  38 00 00 00 */	li r0, 0
/* 8046A0EC  98 1E 06 01 */	stb r0, 0x601(r30)
/* 8046A0F0  98 1E 06 02 */	stb r0, 0x602(r30)
/* 8046A0F4  88 7E 06 40 */	lbz r3, 0x640(r30)
/* 8046A0F8  7C 60 07 75 */	extsb. r0, r3
/* 8046A0FC  41 82 00 0C */	beq lbl_8046A108
/* 8046A100  38 03 FF FF */	addi r0, r3, -1
/* 8046A104  98 1E 06 40 */	stb r0, 0x640(r30)
lbl_8046A108:
/* 8046A108  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 8046A10C  28 00 00 00 */	cmplwi r0, 0
/* 8046A110  41 82 01 08 */	beq lbl_8046A218
/* 8046A114  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8046A118  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8046A11C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8046A120  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8046A124  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8046A128  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8046A12C  88 1E 06 40 */	lbz r0, 0x640(r30)
/* 8046A130  7C 00 07 75 */	extsb. r0, r0
/* 8046A134  41 82 00 10 */	beq lbl_8046A144
/* 8046A138  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8046A13C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8046A140  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8046A144:
/* 8046A144  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 8046A148  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8046A14C  4B E0 50 91 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8046A150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046A154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046A158  38 63 23 3C */	addi r3, r3, 0x233c
/* 8046A15C  38 9E 06 80 */	addi r4, r30, 0x680
/* 8046A160  4B DF AA 49 */	bl Set__4cCcSFP8cCcD_Obj
/* 8046A164  88 1E 06 40 */	lbz r0, 0x640(r30)
/* 8046A168  7C 00 07 75 */	extsb. r0, r0
/* 8046A16C  40 82 00 34 */	bne lbl_8046A1A0
/* 8046A170  38 7E 06 80 */	addi r3, r30, 0x680
/* 8046A174  4B C1 A2 ED */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8046A178  28 03 00 00 */	cmplwi r3, 0
/* 8046A17C  41 82 00 24 */	beq lbl_8046A1A0
/* 8046A180  38 00 00 0A */	li r0, 0xa
/* 8046A184  98 1E 06 40 */	stb r0, 0x640(r30)
/* 8046A188  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8046A18C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8046A190  7C 04 07 74 */	extsb r4, r0
/* 8046A194  38 BE 06 80 */	addi r5, r30, 0x680
/* 8046A198  38 C0 00 0B */	li r6, 0xb
/* 8046A19C  4B BC D7 65 */	bl HitSeStart__5daObjFPC4cXyziPC12dCcD_GObjInfUl
lbl_8046A1A0:
/* 8046A1A0  7F C3 F3 78 */	mr r3, r30
/* 8046A1A4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8046A1A8  38 80 00 00 */	li r4, 0
/* 8046A1AC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8046A1B0  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 8046A1B4  38 A0 00 00 */	li r5, 0
/* 8046A1B8  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 8046A1BC  4B BB 09 25 */	bl fopAcM_rollPlayerCrash__FPC10fopAc_ac_cfUlffif
/* 8046A1C0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8046A1C4  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8046A1C8  3B 63 D8 E4 */	addi r27, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8046A1CC  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 8046A1D0  7F 63 DB 78 */	mr r3, r27
/* 8046A1D4  4B E0 95 B9 */	bl calcViewFrustum__11J3DUClipperFv
/* 8046A1D8  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 8046A1DC  38 63 00 24 */	addi r3, r3, 0x24
/* 8046A1E0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8046A1E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8046A1E8  FC 60 08 90 */	fmr f3, f1
/* 8046A1EC  C0 9F 00 8C */	lfs f4, 0x8c(r31)
/* 8046A1F0  C0 BF 00 CC */	lfs f5, 0xcc(r31)
/* 8046A1F4  FC C0 20 90 */	fmr f6, f4
/* 8046A1F8  4B BB 0A 49 */	bl fopAcM_checkCullingBox__FPA4_fffffff
/* 8046A1FC  98 7E 06 02 */	stb r3, 0x602(r30)
/* 8046A200  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha /* 0x80450C70@ha */
/* 8046A204  C0 03 0C 70 */	lfs f0, mSystemFar__14mDoLib_clipper@l(r3)  /* 0x80450C70@l */
/* 8046A208  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 8046A20C  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8046A210  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8046A214  4B E0 95 79 */	bl calcViewFrustum__11J3DUClipperFv
lbl_8046A218:
/* 8046A218  38 60 00 00 */	li r3, 0
/* 8046A21C  38 00 00 03 */	li r0, 3
/* 8046A220  7C 09 03 A6 */	mtctr r0
lbl_8046A224:
/* 8046A224  38 A3 05 C8 */	addi r5, r3, 0x5c8
/* 8046A228  7C 9E 2A AE */	lhax r4, r30, r5
/* 8046A22C  2C 04 00 00 */	cmpwi r4, 0
/* 8046A230  41 82 00 0C */	beq lbl_8046A23C
/* 8046A234  38 04 FF FF */	addi r0, r4, -1
/* 8046A238  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_8046A23C:
/* 8046A23C  38 63 00 02 */	addi r3, r3, 2
/* 8046A240  42 00 FF E4 */	bdnz lbl_8046A224
/* 8046A244  A8 7E 05 CE */	lha r3, 0x5ce(r30)
/* 8046A248  7C 60 07 35 */	extsh. r0, r3
/* 8046A24C  41 82 00 14 */	beq lbl_8046A260
/* 8046A250  2C 03 27 10 */	cmpwi r3, 0x2710
/* 8046A254  40 80 00 0C */	bge lbl_8046A260
/* 8046A258  38 03 FF FF */	addi r0, r3, -1
/* 8046A25C  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_8046A260:
/* 8046A260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046A264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046A268  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8046A26C  28 00 00 00 */	cmplwi r0, 0
/* 8046A270  40 82 00 18 */	bne lbl_8046A288
/* 8046A274  88 7E 0A 5B */	lbz r3, 0xa5b(r30)
/* 8046A278  28 03 00 00 */	cmplwi r3, 0
/* 8046A27C  41 82 00 0C */	beq lbl_8046A288
/* 8046A280  38 03 FF FF */	addi r0, r3, -1
/* 8046A284  98 1E 0A 5B */	stb r0, 0xa5b(r30)
lbl_8046A288:
/* 8046A288  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 8046A28C  2C 00 00 00 */	cmpwi r0, 0
/* 8046A290  40 82 00 30 */	bne lbl_8046A2C0
/* 8046A294  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046A298  4B DF D6 BD */	bl cM_rndF__Ff
/* 8046A29C  FC 00 08 1E */	fctiwz f0, f1
/* 8046A2A0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8046A2A4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8046A2A8  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 8046A2AC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8046A2B0  4B DF D6 A5 */	bl cM_rndF__Ff
/* 8046A2B4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8046A2B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8046A2BC  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_8046A2C0:
/* 8046A2C0  A8 1E 05 CA */	lha r0, 0x5ca(r30)
/* 8046A2C4  2C 00 00 00 */	cmpwi r0, 0
/* 8046A2C8  40 82 00 74 */	bne lbl_8046A33C
/* 8046A2CC  A8 1E 0A 50 */	lha r0, 0xa50(r30)
/* 8046A2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8046A2D4  41 82 00 34 */	beq lbl_8046A308
/* 8046A2D8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046A2DC  4B DF D6 79 */	bl cM_rndF__Ff
/* 8046A2E0  FC 00 08 1E */	fctiwz f0, f1
/* 8046A2E4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8046A2E8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8046A2EC  B0 1E 05 CA */	sth r0, 0x5ca(r30)
/* 8046A2F0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8046A2F4  4B DF D6 61 */	bl cM_rndF__Ff
/* 8046A2F8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8046A2FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8046A300  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 8046A304  48 00 00 38 */	b lbl_8046A33C
lbl_8046A308:
/* 8046A308  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8046A30C  4B DF D6 49 */	bl cM_rndF__Ff
/* 8046A310  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8046A314  EC 00 08 2A */	fadds f0, f0, f1
/* 8046A318  FC 00 00 1E */	fctiwz f0, f0
/* 8046A31C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8046A320  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8046A324  B0 1E 05 CA */	sth r0, 0x5ca(r30)
/* 8046A328  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8046A32C  4B DF D6 29 */	bl cM_rndF__Ff
/* 8046A330  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8046A334  EC 00 08 2A */	fadds f0, f0, f1
/* 8046A338  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
lbl_8046A33C:
/* 8046A33C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8046A340  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 8046A344  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8046A348  FC 60 10 90 */	fmr f3, f2
/* 8046A34C  4B E0 56 F1 */	bl cLib_addCalc2__FPffff
/* 8046A350  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8046A354  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 8046A358  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 8046A35C  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 8046A360  4B E0 56 DD */	bl cLib_addCalc2__FPffff
/* 8046A364  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8046A368  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8046A36C  3B 63 D8 E4 */	addi r27, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8046A370  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 8046A374  7F 63 DB 78 */	mr r3, r27
/* 8046A378  4B E0 94 15 */	bl calcViewFrustum__11J3DUClipperFv
/* 8046A37C  38 7E 05 70 */	addi r3, r30, 0x570
/* 8046A380  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8046A384  FC 40 08 90 */	fmr f2, f1
/* 8046A388  FC 60 08 90 */	fmr f3, f1
/* 8046A38C  C0 9F 00 EC */	lfs f4, 0xec(r31)
/* 8046A390  FC A0 20 90 */	fmr f5, f4
/* 8046A394  FC C0 20 90 */	fmr f6, f4
/* 8046A398  4B BB 08 A9 */	bl fopAcM_checkCullingBox__FPA4_fffffff
/* 8046A39C  98 7E 06 01 */	stb r3, 0x601(r30)
/* 8046A3A0  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha /* 0x80450C70@ha */
/* 8046A3A4  C0 03 0C 70 */	lfs f0, mSystemFar__14mDoLib_clipper@l(r3)  /* 0x80450C70@l */
/* 8046A3A8  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 8046A3AC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8046A3B0  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8046A3B4  4B E0 93 D9 */	bl calcViewFrustum__11J3DUClipperFv
/* 8046A3B8  88 1E 0A 79 */	lbz r0, 0xa79(r30)
/* 8046A3BC  7C 00 07 75 */	extsb. r0, r0
/* 8046A3C0  40 82 00 C8 */	bne lbl_8046A488
/* 8046A3C4  7F C3 F3 78 */	mr r3, r30
/* 8046A3C8  4B FF F4 2D */	bl ep_move__FP8ep_class
/* 8046A3CC  38 7E 06 80 */	addi r3, r30, 0x680
/* 8046A3D0  4B C1 A0 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8046A3D4  28 03 00 00 */	cmplwi r3, 0
/* 8046A3D8  41 82 00 B0 */	beq lbl_8046A488
/* 8046A3DC  38 7E 06 80 */	addi r3, r30, 0x680
/* 8046A3E0  4B C1 A1 19 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8046A3E4  90 7E 0A 2C */	stw r3, 0xa2c(r30)
/* 8046A3E8  80 1E 0A 2C */	lwz r0, 0xa2c(r30)
/* 8046A3EC  28 00 00 00 */	cmplwi r0, 0
/* 8046A3F0  41 82 00 98 */	beq lbl_8046A488
/* 8046A3F4  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 8046A3F8  4B C1 D6 61 */	bl at_power_check__FP11dCcU_AtInfo
/* 8046A3FC  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 8046A400  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8046A404  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010040@ha */
/* 8046A408  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00010040@l */
/* 8046A40C  7C 80 00 39 */	and. r0, r4, r0
/* 8046A410  40 82 00 10 */	bne lbl_8046A420
/* 8046A414  A0 1E 0A 48 */	lhz r0, 0xa48(r30)
/* 8046A418  28 00 00 0A */	cmplwi r0, 0xa
/* 8046A41C  41 80 00 6C */	blt lbl_8046A488
lbl_8046A420:
/* 8046A420  38 00 00 01 */	li r0, 1
/* 8046A424  98 1E 0A 79 */	stb r0, 0xa79(r30)
/* 8046A428  88 1E 0A 4C */	lbz r0, 0xa4c(r30)
/* 8046A42C  28 00 00 01 */	cmplwi r0, 1
/* 8046A430  40 82 00 10 */	bne lbl_8046A440
/* 8046A434  38 00 00 02 */	li r0, 2
/* 8046A438  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 8046A43C  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
lbl_8046A440:
/* 8046A440  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040020@ha */
/* 8046A444  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00040020@l */
/* 8046A448  90 01 00 20 */	stw r0, 0x20(r1)
/* 8046A44C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046A450  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8046A454  80 63 00 00 */	lwz r3, 0(r3)
/* 8046A458  38 81 00 20 */	addi r4, r1, 0x20
/* 8046A45C  38 BE 06 34 */	addi r5, r30, 0x634
/* 8046A460  38 C0 00 00 */	li r6, 0
/* 8046A464  38 E0 00 00 */	li r7, 0
/* 8046A468  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8046A46C  FC 40 08 90 */	fmr f2, f1
/* 8046A470  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8046A474  FC 80 18 90 */	fmr f4, f3
/* 8046A478  39 00 00 00 */	li r8, 0
/* 8046A47C  4B E4 15 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8046A480  38 7E 06 14 */	addi r3, r30, 0x614
/* 8046A484  4B D3 D4 A9 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_8046A488:
/* 8046A488  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8046A48C  54 00 00 3E */	slwi r0, r0, 0
/* 8046A490  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8046A494  38 60 00 00 */	li r3, 0
/* 8046A498  90 7E 05 5C */	stw r3, 0x55c(r30)
/* 8046A49C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8046A4A0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8046A4A4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8046A4A8  88 1E 0A 79 */	lbz r0, 0xa79(r30)
/* 8046A4AC  2C 00 00 01 */	cmpwi r0, 1
/* 8046A4B0  40 82 01 D4 */	bne lbl_8046A684
/* 8046A4B4  38 00 00 02 */	li r0, 2
/* 8046A4B8  98 1E 0A 79 */	stb r0, 0xa79(r30)
/* 8046A4BC  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 8046A4C0  3B 9E 0A 7C */	addi r28, r30, 0xa7c
/* 8046A4C4  3B 40 00 00 */	li r26, 0
/* 8046A4C8  3B A0 00 00 */	li r29, 0
/* 8046A4CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8046A4D0  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
/* 8046A4D4  C3 9F 00 08 */	lfs f28, 8(r31)
/* 8046A4D8  C3 BF 00 84 */	lfs f29, 0x84(r31)
/* 8046A4DC  C3 DF 00 F8 */	lfs f30, 0xf8(r31)
/* 8046A4E0  C3 FF 00 90 */	lfs f31, 0x90(r31)
lbl_8046A4E4:
/* 8046A4E4  38 00 00 01 */	li r0, 1
/* 8046A4E8  98 1C 00 97 */	stb r0, 0x97(r28)
/* 8046A4EC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8046A4F0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8046A4F4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8046A4F8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8046A4FC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8046A500  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 8046A504  2C 1A 00 03 */	cmpwi r26, 3
/* 8046A508  40 80 00 20 */	bge lbl_8046A528
/* 8046A50C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8046A510  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8046A514  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A518  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8046A51C  38 00 36 3C */	li r0, 0x363c
/* 8046A520  B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 8046A524  48 00 00 1C */	b lbl_8046A540
lbl_8046A528:
/* 8046A528  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8046A52C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8046A530  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A534  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8046A538  38 00 C9 C4 */	li r0, -13884
/* 8046A53C  B0 1C 00 2C */	sth r0, 0x2c(r28)
lbl_8046A540:
/* 8046A540  38 1D 03 E8 */	addi r0, r29, 0x3e8
/* 8046A544  B0 1C 00 2A */	sth r0, 0x2a(r28)
/* 8046A548  80 7B 00 00 */	lwz r3, 0(r27)
/* 8046A54C  A8 9C 00 2A */	lha r4, 0x2a(r28)
/* 8046A550  4B BA 1E 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 8046A554  D3 81 00 3C */	stfs f28, 0x3c(r1)
/* 8046A558  D3 81 00 40 */	stfs f28, 0x40(r1)
/* 8046A55C  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 8046A560  38 61 00 3C */	addi r3, r1, 0x3c
/* 8046A564  38 81 00 30 */	addi r4, r1, 0x30
/* 8046A568  4B E0 69 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8046A56C  38 7C 00 04 */	addi r3, r28, 4
/* 8046A570  38 81 00 30 */	addi r4, r1, 0x30
/* 8046A574  7C 65 1B 78 */	mr r5, r3
/* 8046A578  4B ED CB 19 */	bl PSVECAdd
/* 8046A57C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8046A580  4B DF D3 D5 */	bl cM_rndF__Ff
/* 8046A584  EC 1E 08 2A */	fadds f0, f30, f1
/* 8046A588  FC 00 00 1E */	fctiwz f0, f0
/* 8046A58C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8046A590  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8046A594  B0 1C 00 90 */	sth r0, 0x90(r28)
/* 8046A598  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 8046A59C  4B DF D3 F1 */	bl cM_rndFX__Ff
/* 8046A5A0  FC 00 08 1E */	fctiwz f0, f1
/* 8046A5A4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8046A5A8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8046A5AC  B0 1C 00 92 */	sth r0, 0x92(r28)
/* 8046A5B0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8046A5B4  4B DF D3 A1 */	bl cM_rndF__Ff
/* 8046A5B8  EC 1F 08 2A */	fadds f0, f31, f1
/* 8046A5BC  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 8046A5C0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8046A5C4  4B DF D3 C9 */	bl cM_rndFX__Ff
/* 8046A5C8  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 8046A5CC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8046A5D0  4B DF D3 BD */	bl cM_rndFX__Ff
/* 8046A5D4  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 8046A5D8  38 00 00 00 */	li r0, 0
/* 8046A5DC  98 1C 00 96 */	stb r0, 0x96(r28)
/* 8046A5E0  3B 5A 00 01 */	addi r26, r26, 1
/* 8046A5E4  2C 1A 00 06 */	cmpwi r26, 6
/* 8046A5E8  3B BD 55 55 */	addi r29, r29, 0x5555
/* 8046A5EC  3B 9C 00 A8 */	addi r28, r28, 0xa8
/* 8046A5F0  41 80 FE F4 */	blt lbl_8046A4E4
/* 8046A5F4  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 8046A5F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8046A5FC  C0 3E 06 38 */	lfs f1, 0x638(r30)
/* 8046A600  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8046A604  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 8046A608  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8046A60C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8046A610  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A614  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046A618  3B 40 00 00 */	li r26, 0
/* 8046A61C  3B A0 00 00 */	li r29, 0
/* 8046A620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046A624  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046A628  3C 60 80 47 */	lis r3, eff_name@ha /* 0x8046B134@ha */
/* 8046A62C  3B 83 B1 34 */	addi r28, r3, eff_name@l /* 0x8046B134@l */
lbl_8046A630:
/* 8046A630  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8046A634  38 80 00 00 */	li r4, 0
/* 8046A638  90 81 00 08 */	stw r4, 8(r1)
/* 8046A63C  38 00 FF FF */	li r0, -1
/* 8046A640  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046A644  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046A648  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046A64C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046A650  38 80 00 00 */	li r4, 0
/* 8046A654  7C BC EA 2E */	lhzx r5, r28, r29
/* 8046A658  38 C1 00 24 */	addi r6, r1, 0x24
/* 8046A65C  38 E0 00 00 */	li r7, 0
/* 8046A660  39 00 00 00 */	li r8, 0
/* 8046A664  39 20 00 00 */	li r9, 0
/* 8046A668  39 40 00 FF */	li r10, 0xff
/* 8046A66C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8046A670  4B BE 24 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046A674  3B 5A 00 01 */	addi r26, r26, 1
/* 8046A678  2C 1A 00 03 */	cmpwi r26, 3
/* 8046A67C  3B BD 00 02 */	addi r29, r29, 2
/* 8046A680  41 80 FF B0 */	blt lbl_8046A630
lbl_8046A684:
/* 8046A684  88 1E 0A 79 */	lbz r0, 0xa79(r30)
/* 8046A688  7C 00 07 75 */	extsb. r0, r0
/* 8046A68C  41 82 00 0C */	beq lbl_8046A698
/* 8046A690  7F C3 F3 78 */	mr r3, r30
/* 8046A694  4B FF EA 65 */	bl hahen_move__FP8ep_class
lbl_8046A698:
/* 8046A698  38 60 00 01 */	li r3, 1
/* 8046A69C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8046A6A0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8046A6A4  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8046A6A8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8046A6AC  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8046A6B0  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8046A6B4  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8046A6B8  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8046A6BC  39 61 00 80 */	addi r11, r1, 0x80
/* 8046A6C0  4B EF 7B 5D */	bl _restgpr_26
/* 8046A6C4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8046A6C8  7C 08 03 A6 */	mtlr r0
/* 8046A6CC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8046A6D0  4E 80 00 20 */	blr 
