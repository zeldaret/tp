lbl_8017A2A0:
/* 8017A2A0  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 8017A2A4  7C 08 02 A6 */	mflr r0
/* 8017A2A8  90 01 03 54 */	stw r0, 0x354(r1)
/* 8017A2AC  DB E1 03 40 */	stfd f31, 0x340(r1)
/* 8017A2B0  F3 E1 03 48 */	psq_st f31, 840(r1), 0, 0 /* qr0 */
/* 8017A2B4  DB C1 03 30 */	stfd f30, 0x330(r1)
/* 8017A2B8  F3 C1 03 38 */	psq_st f30, 824(r1), 0, 0 /* qr0 */
/* 8017A2BC  DB A1 03 20 */	stfd f29, 0x320(r1)
/* 8017A2C0  F3 A1 03 28 */	psq_st f29, 808(r1), 0, 0 /* qr0 */
/* 8017A2C4  DB 81 03 10 */	stfd f28, 0x310(r1)
/* 8017A2C8  F3 81 03 18 */	psq_st f28, 792(r1), 0, 0 /* qr0 */
/* 8017A2CC  DB 61 03 00 */	stfd f27, 0x300(r1)
/* 8017A2D0  F3 61 03 08 */	psq_st f27, 776(r1), 0, 0 /* qr0 */
/* 8017A2D4  DB 41 02 F0 */	stfd f26, 0x2f0(r1)
/* 8017A2D8  F3 41 02 F8 */	psq_st f26, 760(r1), 0, 0 /* qr0 */
/* 8017A2DC  DB 21 02 E0 */	stfd f25, 0x2e0(r1)
/* 8017A2E0  F3 21 02 E8 */	psq_st f25, 744(r1), 0, 0 /* qr0 */
/* 8017A2E4  DB 01 02 D0 */	stfd f24, 0x2d0(r1)
/* 8017A2E8  F3 01 02 D8 */	psq_st f24, 728(r1), 0, 0 /* qr0 */
/* 8017A2EC  DA E1 02 C0 */	stfd f23, 0x2c0(r1)
/* 8017A2F0  F2 E1 02 C8 */	psq_st f23, 712(r1), 0, 0 /* qr0 */
/* 8017A2F4  DA C1 02 B0 */	stfd f22, 0x2b0(r1)
/* 8017A2F8  F2 C1 02 B8 */	psq_st f22, 696(r1), 0, 0 /* qr0 */
/* 8017A2FC  DA A1 02 A0 */	stfd f21, 0x2a0(r1)
/* 8017A300  F2 A1 02 A8 */	psq_st f21, 680(r1), 0, 0 /* qr0 */
/* 8017A304  DA 81 02 90 */	stfd f20, 0x290(r1)
/* 8017A308  F2 81 02 98 */	psq_st f20, 664(r1), 0, 0 /* qr0 */
/* 8017A30C  39 61 02 90 */	addi r11, r1, 0x290
/* 8017A310  48 1E 7E B5 */	bl _savegpr_23
/* 8017A314  7C 79 1B 78 */	mr r25, r3
/* 8017A318  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 8017A31C  1F C4 00 78 */	mulli r30, r4, 0x78
/* 8017A320  7C 60 F2 14 */	add r3, r0, r30
/* 8017A324  C3 C3 00 24 */	lfs f30, 0x24(r3)
/* 8017A328  C3 A3 00 30 */	lfs f29, 0x30(r3)
/* 8017A32C  C2 C3 00 34 */	lfs f22, 0x34(r3)
/* 8017A330  C3 E3 00 2C */	lfs f31, 0x2c(r3)
/* 8017A334  C3 83 00 44 */	lfs f28, 0x44(r3)
/* 8017A338  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8017A33C  C3 63 00 4C */	lfs f27, 0x4c(r3)
/* 8017A340  C3 43 00 58 */	lfs f26, 0x58(r3)
/* 8017A344  C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 8017A348  C2 A3 00 1C */	lfs f21, 0x1c(r3)
/* 8017A34C  C2 83 00 20 */	lfs f20, 0x20(r3)
/* 8017A350  C3 23 00 08 */	lfs f25, 8(r3)
/* 8017A354  C3 03 00 10 */	lfs f24, 0x10(r3)
/* 8017A358  C2 E3 00 0C */	lfs f23, 0xc(r3)
/* 8017A35C  38 00 00 00 */	li r0, 0
/* 8017A360  90 19 00 88 */	stw r0, 0x88(r25)
/* 8017A364  80 19 08 90 */	lwz r0, 0x890(r25)
/* 8017A368  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017A36C  41 82 00 10 */	beq lbl_8017A37C
/* 8017A370  88 19 08 9B */	lbz r0, 0x89b(r25)
/* 8017A374  28 00 00 FF */	cmplwi r0, 0xff
/* 8017A378  40 82 00 0C */	bne lbl_8017A384
lbl_8017A37C:
/* 8017A37C  38 60 00 00 */	li r3, 0
/* 8017A380  48 00 09 C8 */	b lbl_8017AD48
lbl_8017A384:
/* 8017A384  80 19 01 74 */	lwz r0, 0x174(r25)
/* 8017A388  28 00 00 00 */	cmplwi r0, 0
/* 8017A38C  40 82 00 34 */	bne lbl_8017A3C0
/* 8017A390  80 19 06 0C */	lwz r0, 0x60c(r25)
/* 8017A394  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8017A398  41 82 00 18 */	beq lbl_8017A3B0
/* 8017A39C  C0 62 9C A8 */	lfs f3, lit_5658(r2)
/* 8017A3A0  FE A0 18 90 */	fmr f21, f3
/* 8017A3A4  FE 80 18 90 */	fmr f20, f3
/* 8017A3A8  D0 79 04 04 */	stfs f3, 0x404(r25)
/* 8017A3AC  48 00 00 0C */	b lbl_8017A3B8
lbl_8017A3B0:
/* 8017A3B0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017A3B4  D0 19 04 04 */	stfs f0, 0x404(r25)
lbl_8017A3B8:
/* 8017A3B8  38 00 00 FF */	li r0, 0xff
/* 8017A3BC  98 19 03 F5 */	stb r0, 0x3f5(r25)
lbl_8017A3C0:
/* 8017A3C0  C0 39 04 04 */	lfs f1, 0x404(r25)
/* 8017A3C4  EC 03 08 28 */	fsubs f0, f3, f1
/* 8017A3C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8017A3CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017A3D0  D0 19 04 04 */	stfs f0, 0x404(r25)
/* 8017A3D4  80 79 01 80 */	lwz r3, 0x180(r25)
/* 8017A3D8  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8017A3DC  7C 04 07 74 */	extsb r4, r0
/* 8017A3E0  88 79 08 9B */	lbz r3, 0x89b(r25)
/* 8017A3E4  4B ED 74 09 */	bl dPath_GetRoomPath__Fii
/* 8017A3E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8017A3EC  40 82 00 0C */	bne lbl_8017A3F8
/* 8017A3F0  38 60 00 00 */	li r3, 0
/* 8017A3F4  48 00 09 54 */	b lbl_8017AD48
lbl_8017A3F8:
/* 8017A3F8  88 19 07 BE */	lbz r0, 0x7be(r25)
/* 8017A3FC  98 19 0A ED */	stb r0, 0xaed(r25)
/* 8017A400  88 19 0A ED */	lbz r0, 0xaed(r25)
/* 8017A404  28 00 00 FF */	cmplwi r0, 0xff
/* 8017A408  41 82 00 2C */	beq lbl_8017A434
/* 8017A40C  C0 42 9D 38 */	lfs f2, lit_9399(r2)
/* 8017A410  7C 00 07 74 */	extsb r0, r0
/* 8017A414  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017A418  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017A41C  90 01 02 5C */	stw r0, 0x25c(r1)
/* 8017A420  3C 00 43 30 */	lis r0, 0x4330
/* 8017A424  90 01 02 58 */	stw r0, 0x258(r1)
/* 8017A428  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 8017A42C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017A430  EE C2 00 32 */	fmuls f22, f2, f0
lbl_8017A434:
/* 8017A434  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017A438  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017A43C  90 01 02 54 */	stw r0, 0x254(r1)
/* 8017A440  A3 9F 00 00 */	lhz r28, 0(r31)
/* 8017A444  3B 60 00 00 */	li r27, 0
/* 8017A448  80 19 01 74 */	lwz r0, 0x174(r25)
/* 8017A44C  28 00 00 00 */	cmplwi r0, 0
/* 8017A450  40 82 00 24 */	bne lbl_8017A474
/* 8017A454  3C 60 52 41 */	lis r3, 0x5241 /* 0x52415241@ha */
/* 8017A458  38 03 52 41 */	addi r0, r3, 0x5241 /* 0x52415241@l */
/* 8017A45C  90 19 03 E8 */	stw r0, 0x3e8(r25)
/* 8017A460  38 00 00 01 */	li r0, 1
/* 8017A464  98 19 01 58 */	stb r0, 0x158(r25)
/* 8017A468  38 00 00 FF */	li r0, 0xff
/* 8017A46C  98 19 03 F4 */	stb r0, 0x3f4(r25)
/* 8017A470  3B 60 00 01 */	li r27, 1
lbl_8017A474:
/* 8017A474  88 19 03 F5 */	lbz r0, 0x3f5(r25)
/* 8017A478  88 79 07 E7 */	lbz r3, 0x7e7(r25)
/* 8017A47C  7C 00 18 40 */	cmplw r0, r3
/* 8017A480  41 82 00 08 */	beq lbl_8017A488
/* 8017A484  98 79 03 F5 */	stb r3, 0x3f5(r25)
lbl_8017A488:
/* 8017A488  80 19 01 84 */	lwz r0, 0x184(r25)
/* 8017A48C  28 00 00 00 */	cmplwi r0, 0
/* 8017A490  41 82 00 70 */	beq lbl_8017A500
/* 8017A494  90 19 03 EC */	stw r0, 0x3ec(r25)
/* 8017A498  90 19 03 F0 */	stw r0, 0x3f0(r25)
/* 8017A49C  90 19 01 88 */	stw r0, 0x188(r25)
/* 8017A4A0  38 61 01 78 */	addi r3, r1, 0x178
/* 8017A4A4  7F 24 CB 78 */	mr r4, r25
/* 8017A4A8  80 B9 03 EC */	lwz r5, 0x3ec(r25)
/* 8017A4AC  4B F1 D2 71 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A4B0  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 8017A4B4  D0 01 01 F0 */	stfs f0, 0x1f0(r1)
/* 8017A4B8  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 8017A4BC  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 8017A4C0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017A4C4  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 8017A4C8  80 19 06 0C */	lwz r0, 0x60c(r25)
/* 8017A4CC  60 00 20 00 */	ori r0, r0, 0x2000
/* 8017A4D0  90 19 06 0C */	stw r0, 0x60c(r25)
/* 8017A4D4  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017A4D8  7F 24 CB 78 */	mr r4, r25
/* 8017A4DC  80 B9 03 F0 */	lwz r5, 0x3f0(r25)
/* 8017A4E0  4B F1 D2 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A4E4  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 8017A4E8  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 8017A4EC  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 8017A4F0  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 8017A4F4  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 8017A4F8  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 8017A4FC  48 00 00 74 */	b lbl_8017A570
lbl_8017A500:
/* 8017A500  38 00 00 00 */	li r0, 0
/* 8017A504  90 19 03 EC */	stw r0, 0x3ec(r25)
/* 8017A508  90 19 03 F0 */	stw r0, 0x3f0(r25)
/* 8017A50C  38 61 00 50 */	addi r3, r1, 0x50
/* 8017A510  38 99 00 5C */	addi r4, r25, 0x5c
/* 8017A514  48 0F 72 DD */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8017A518  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 8017A51C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8017A520  38 61 01 60 */	addi r3, r1, 0x160
/* 8017A524  7F 24 CB 78 */	mr r4, r25
/* 8017A528  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 8017A52C  4B F1 D1 F1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A530  38 61 01 54 */	addi r3, r1, 0x154
/* 8017A534  38 81 00 50 */	addi r4, r1, 0x50
/* 8017A538  48 0F 75 7D */	bl Xyz__7cSGlobeCFv
/* 8017A53C  38 61 01 48 */	addi r3, r1, 0x148
/* 8017A540  38 81 01 60 */	addi r4, r1, 0x160
/* 8017A544  38 A1 01 54 */	addi r5, r1, 0x154
/* 8017A548  48 0E C5 9D */	bl __pl__4cXyzCFRC3Vec
/* 8017A54C  C0 41 01 48 */	lfs f2, 0x148(r1)
/* 8017A550  D0 41 01 E4 */	stfs f2, 0x1e4(r1)
/* 8017A554  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 8017A558  D0 21 01 E8 */	stfs f1, 0x1e8(r1)
/* 8017A55C  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 8017A560  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 8017A564  D0 41 01 F0 */	stfs f2, 0x1f0(r1)
/* 8017A568  D0 21 01 F4 */	stfs f1, 0x1f4(r1)
/* 8017A56C  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
lbl_8017A570:
/* 8017A570  38 61 01 3C */	addi r3, r1, 0x13c
/* 8017A574  7F 24 CB 78 */	mr r4, r25
/* 8017A578  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 8017A57C  4B F1 D1 A1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A580  38 61 01 30 */	addi r3, r1, 0x130
/* 8017A584  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 8017A588  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8017A58C  48 0E C5 A9 */	bl __mi__4cXyzCFRC3Vec
/* 8017A590  38 61 00 48 */	addi r3, r1, 0x48
/* 8017A594  38 81 01 30 */	addi r4, r1, 0x130
/* 8017A598  48 0F 72 E9 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017A59C  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8017A5A0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8017A5A4  EC 02 F8 24 */	fdivs f0, f2, f31
/* 8017A5A8  EF E1 00 28 */	fsubs f31, f1, f0
/* 8017A5AC  C0 02 9C F8 */	lfs f0, lit_8016(r2)
/* 8017A5B0  EC 00 05 B2 */	fmuls f0, f0, f22
/* 8017A5B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8017A5B8  40 81 00 7C */	ble lbl_8017A634
/* 8017A5BC  38 00 00 00 */	li r0, 0
/* 8017A5C0  90 19 03 EC */	stw r0, 0x3ec(r25)
/* 8017A5C4  90 19 03 F0 */	stw r0, 0x3f0(r25)
/* 8017A5C8  38 61 00 40 */	addi r3, r1, 0x40
/* 8017A5CC  38 99 00 5C */	addi r4, r25, 0x5c
/* 8017A5D0  48 0F 72 21 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8017A5D4  FC 00 B0 50 */	fneg f0, f22
/* 8017A5D8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8017A5DC  38 61 01 24 */	addi r3, r1, 0x124
/* 8017A5E0  7F 24 CB 78 */	mr r4, r25
/* 8017A5E4  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 8017A5E8  4B F1 D1 35 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A5EC  38 61 01 18 */	addi r3, r1, 0x118
/* 8017A5F0  38 81 00 40 */	addi r4, r1, 0x40
/* 8017A5F4  48 0F 74 C1 */	bl Xyz__7cSGlobeCFv
/* 8017A5F8  38 61 01 0C */	addi r3, r1, 0x10c
/* 8017A5FC  38 81 01 24 */	addi r4, r1, 0x124
/* 8017A600  38 A1 01 18 */	addi r5, r1, 0x118
/* 8017A604  48 0E C4 E1 */	bl __pl__4cXyzCFRC3Vec
/* 8017A608  C0 41 01 0C */	lfs f2, 0x10c(r1)
/* 8017A60C  D0 41 01 E4 */	stfs f2, 0x1e4(r1)
/* 8017A610  C0 21 01 10 */	lfs f1, 0x110(r1)
/* 8017A614  D0 21 01 E8 */	stfs f1, 0x1e8(r1)
/* 8017A618  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 8017A61C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 8017A620  D0 41 01 F0 */	stfs f2, 0x1f0(r1)
/* 8017A624  D0 21 01 F4 */	stfs f1, 0x1f4(r1)
/* 8017A628  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 8017A62C  C3 E2 9C A0 */	lfs f31, lit_5656(r2)
/* 8017A630  48 00 00 24 */	b lbl_8017A654
lbl_8017A634:
/* 8017A634  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017A638  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8017A63C  40 80 00 0C */	bge lbl_8017A648
/* 8017A640  FF E0 00 90 */	fmr f31, f0
/* 8017A644  48 00 00 10 */	b lbl_8017A654
lbl_8017A648:
/* 8017A648  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8017A64C  40 81 00 08 */	ble lbl_8017A654
/* 8017A650  FF E0 08 90 */	fmr f31, f1
lbl_8017A654:
/* 8017A654  D2 81 01 CC */	stfs f20, 0x1cc(r1)
/* 8017A658  D2 A1 01 D0 */	stfs f21, 0x1d0(r1)
/* 8017A65C  D2 81 01 D4 */	stfs f20, 0x1d4(r1)
/* 8017A660  D3 21 01 C0 */	stfs f25, 0x1c0(r1)
/* 8017A664  D3 01 01 C4 */	stfs f24, 0x1c4(r1)
/* 8017A668  D2 E1 01 C8 */	stfs f23, 0x1c8(r1)
/* 8017A66C  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 8017A670  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8017A674  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8017A678  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017A67C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8017A680  80 19 0A F4 */	lwz r0, 0xaf4(r25)
/* 8017A684  7C 60 F2 14 */	add r3, r0, r30
/* 8017A688  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017A68C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8017A690  41 82 01 D0 */	beq lbl_8017A860
/* 8017A694  3A E0 00 00 */	li r23, 0
/* 8017A698  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017A69C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017A6A0  90 01 02 38 */	stw r0, 0x238(r1)
/* 8017A6A4  3B A0 00 00 */	li r29, 0
/* 8017A6A8  3B 00 00 00 */	li r24, 0
/* 8017A6AC  3B 5C FF FF */	addi r26, r28, -1
/* 8017A6B0  48 00 00 84 */	b lbl_8017A734
lbl_8017A6B4:
/* 8017A6B4  80 DF 00 08 */	lwz r6, 8(r31)
/* 8017A6B8  38 61 02 20 */	addi r3, r1, 0x220
/* 8017A6BC  38 98 00 04 */	addi r4, r24, 4
/* 8017A6C0  7C 86 22 14 */	add r4, r6, r4
/* 8017A6C4  38 1D 00 01 */	addi r0, r29, 1
/* 8017A6C8  54 05 20 36 */	slwi r5, r0, 4
/* 8017A6CC  38 A5 00 04 */	addi r5, r5, 4
/* 8017A6D0  7C A6 2A 14 */	add r5, r6, r5
/* 8017A6D4  48 0F 4C 49 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8017A6D8  38 61 02 20 */	addi r3, r1, 0x220
/* 8017A6DC  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8017A6E0  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8017A6E4  38 C1 00 30 */	addi r6, r1, 0x30
/* 8017A6E8  48 0E E0 29 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8017A6EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017A6F0  41 82 00 3C */	beq lbl_8017A72C
/* 8017A6F4  38 61 01 00 */	addi r3, r1, 0x100
/* 8017A6F8  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8017A6FC  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8017A700  48 0E C4 35 */	bl __mi__4cXyzCFRC3Vec
/* 8017A704  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8017A708  38 81 01 00 */	addi r4, r1, 0x100
/* 8017A70C  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017A710  48 0E C4 75 */	bl __ml__4cXyzCFf
/* 8017A714  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8017A718  38 81 00 F4 */	addi r4, r1, 0xf4
/* 8017A71C  7C 65 1B 78 */	mr r5, r3
/* 8017A720  48 1C C9 71 */	bl PSVECAdd
/* 8017A724  3A E0 00 01 */	li r23, 1
/* 8017A728  48 00 00 14 */	b lbl_8017A73C
lbl_8017A72C:
/* 8017A72C  3B BD 00 01 */	addi r29, r29, 1
/* 8017A730  3B 18 00 10 */	addi r24, r24, 0x10
lbl_8017A734:
/* 8017A734  7C 1D D0 00 */	cmpw r29, r26
/* 8017A738  41 80 FF 7C */	blt lbl_8017A6B4
lbl_8017A73C:
/* 8017A73C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8017A740  40 82 00 F8 */	bne lbl_8017A838
/* 8017A744  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8017A748  7F 24 CB 78 */	mr r4, r25
/* 8017A74C  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 8017A750  4B F1 CF CD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017A754  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8017A758  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8017A75C  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8017A760  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 8017A764  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8017A768  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 8017A76C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8017A770  C0 04 00 04 */	lfs f0, 4(r4)
/* 8017A774  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 8017A778  C0 04 00 08 */	lfs f0, 8(r4)
/* 8017A77C  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 8017A780  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8017A784  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 8017A788  38 1C FF FF */	addi r0, r28, -1
/* 8017A78C  54 03 20 36 */	slwi r3, r0, 4
/* 8017A790  38 63 00 04 */	addi r3, r3, 4
/* 8017A794  7C 64 1A 14 */	add r3, r4, r3
/* 8017A798  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017A79C  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8017A7A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017A7A4  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8017A7A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017A7AC  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8017A7B0  38 61 01 9C */	addi r3, r1, 0x19c
/* 8017A7B4  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 8017A7B8  4B F0 DC 35 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017A7BC  FE 80 08 90 */	fmr f20, f1
/* 8017A7C0  38 61 01 90 */	addi r3, r1, 0x190
/* 8017A7C4  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 8017A7C8  4B F0 DC 25 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017A7CC  FC 14 08 40 */	fcmpo cr0, f20, f1
/* 8017A7D0  40 80 00 20 */	bge lbl_8017A7F0
/* 8017A7D4  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8017A7D8  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8017A7DC  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 8017A7E0  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 8017A7E4  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 8017A7E8  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 8017A7EC  48 00 00 1C */	b lbl_8017A808
lbl_8017A7F0:
/* 8017A7F0  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 8017A7F4  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8017A7F8  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 8017A7FC  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 8017A800  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 8017A804  D0 01 01 BC */	stfs f0, 0x1bc(r1)
lbl_8017A808:
/* 8017A808  38 61 00 DC */	addi r3, r1, 0xdc
/* 8017A80C  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8017A810  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8017A814  48 0E C3 21 */	bl __mi__4cXyzCFRC3Vec
/* 8017A818  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8017A81C  38 81 00 DC */	addi r4, r1, 0xdc
/* 8017A820  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017A824  48 0E C3 61 */	bl __ml__4cXyzCFf
/* 8017A828  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8017A82C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8017A830  7C 65 1B 78 */	mr r5, r3
/* 8017A834  48 1C C8 5D */	bl PSVECAdd
lbl_8017A838:
/* 8017A838  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 8017A83C  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 8017A840  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8017A844  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 8017A848  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 8017A84C  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 8017A850  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017A854  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017A858  90 01 02 38 */	stw r0, 0x238(r1)
/* 8017A85C  48 00 00 4C */	b lbl_8017A8A8
lbl_8017A860:
/* 8017A860  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8017A864  7F 24 CB 78 */	mr r4, r25
/* 8017A868  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 8017A86C  38 C1 01 C0 */	addi r6, r1, 0x1c0
/* 8017A870  4B FE A4 FD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8017A874  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8017A878  38 81 00 48 */	addi r4, r1, 0x48
/* 8017A87C  48 0F 72 39 */	bl Xyz__7cSGlobeCFv
/* 8017A880  38 61 00 AC */	addi r3, r1, 0xac
/* 8017A884  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8017A888  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8017A88C  48 0E C2 59 */	bl __pl__4cXyzCFRC3Vec
/* 8017A890  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8017A894  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 8017A898  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8017A89C  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 8017A8A0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8017A8A4  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
lbl_8017A8A8:
/* 8017A8A8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8017A8AC  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 8017A8B0  38 B9 00 64 */	addi r5, r25, 0x64
/* 8017A8B4  48 0E C2 81 */	bl __mi__4cXyzCFRC3Vec
/* 8017A8B8  38 61 00 94 */	addi r3, r1, 0x94
/* 8017A8BC  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8017A8C0  38 A1 01 CC */	addi r5, r1, 0x1cc
/* 8017A8C4  48 0E C3 0D */	bl __ml__4cXyzCFRC3Vec
/* 8017A8C8  38 79 00 64 */	addi r3, r25, 0x64
/* 8017A8CC  38 81 00 94 */	addi r4, r1, 0x94
/* 8017A8D0  7C 65 1B 78 */	mr r5, r3
/* 8017A8D4  48 1C C7 BD */	bl PSVECAdd
/* 8017A8D8  FC 20 F8 90 */	fmr f1, f31
/* 8017A8DC  FC 40 E0 90 */	fmr f2, f28
/* 8017A8E0  4B F0 D8 5D */	bl rationalBezierRatio__8dCamMathFff
/* 8017A8E4  FF E0 08 90 */	fmr f31, f1
/* 8017A8E8  EE 96 05 B2 */	fmuls f20, f22, f22
/* 8017A8EC  C0 19 00 70 */	lfs f0, 0x70(r25)
/* 8017A8F0  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017A8F4  C0 19 00 74 */	lfs f0, 0x74(r25)
/* 8017A8F8  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8017A8FC  C0 19 00 78 */	lfs f0, 0x78(r25)
/* 8017A900  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8017A904  3B 40 00 00 */	li r26, 0
/* 8017A908  3B A0 00 00 */	li r29, 0
/* 8017A90C  3B 00 00 00 */	li r24, 0
/* 8017A910  3B 9C FF FF */	addi r28, r28, -1
/* 8017A914  48 00 00 B0 */	b lbl_8017A9C4
lbl_8017A918:
/* 8017A918  80 9F 00 08 */	lwz r4, 8(r31)
/* 8017A91C  38 78 00 04 */	addi r3, r24, 4
/* 8017A920  7C 64 1A 14 */	add r3, r4, r3
/* 8017A924  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017A928  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8017A92C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017A930  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 8017A934  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017A938  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8017A93C  38 1D 00 01 */	addi r0, r29, 1
/* 8017A940  54 03 20 36 */	slwi r3, r0, 4
/* 8017A944  38 63 00 04 */	addi r3, r3, 4
/* 8017A948  7C 64 1A 14 */	add r3, r4, r3
/* 8017A94C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017A950  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 8017A954  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017A958  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 8017A95C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017A960  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 8017A964  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017A968  38 81 02 08 */	addi r4, r1, 0x208
/* 8017A96C  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 8017A970  48 0F 49 AD */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8017A974  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017A978  38 99 00 64 */	addi r4, r25, 0x64
/* 8017A97C  38 A1 02 14 */	addi r5, r1, 0x214
/* 8017A980  38 C1 00 34 */	addi r6, r1, 0x34
/* 8017A984  48 0E DD 8D */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8017A988  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017A98C  41 82 00 30 */	beq lbl_8017A9BC
/* 8017A990  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8017A994  FC 00 A0 40 */	fcmpo cr0, f0, f20
/* 8017A998  40 80 00 20 */	bge lbl_8017A9B8
/* 8017A99C  FE 80 00 90 */	fmr f20, f0
/* 8017A9A0  C0 01 02 14 */	lfs f0, 0x214(r1)
/* 8017A9A4  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017A9A8  C0 01 02 18 */	lfs f0, 0x218(r1)
/* 8017A9AC  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8017A9B0  C0 01 02 1C */	lfs f0, 0x21c(r1)
/* 8017A9B4  D0 01 01 8C */	stfs f0, 0x18c(r1)
lbl_8017A9B8:
/* 8017A9B8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8017A9BC:
/* 8017A9BC  3B BD 00 01 */	addi r29, r29, 1
/* 8017A9C0  3B 18 00 10 */	addi r24, r24, 0x10
lbl_8017A9C4:
/* 8017A9C4  7C 1D E0 00 */	cmpw r29, r28
/* 8017A9C8  41 80 FF 50 */	blt lbl_8017A918
/* 8017A9CC  88 1F 00 05 */	lbz r0, 5(r31)
/* 8017A9D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017A9D4  41 82 00 98 */	beq lbl_8017AA6C
/* 8017A9D8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8017A9DC  57 A3 20 36 */	slwi r3, r29, 4
/* 8017A9E0  38 63 00 04 */	addi r3, r3, 4
/* 8017A9E4  7C 64 1A 14 */	add r3, r4, r3
/* 8017A9E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017A9EC  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8017A9F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017A9F4  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 8017A9F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017A9FC  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8017AA00  C0 04 00 04 */	lfs f0, 4(r4)
/* 8017AA04  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 8017AA08  C0 04 00 08 */	lfs f0, 8(r4)
/* 8017AA0C  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 8017AA10  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8017AA14  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 8017AA18  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017AA1C  38 81 02 08 */	addi r4, r1, 0x208
/* 8017AA20  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 8017AA24  48 0F 48 F9 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8017AA28  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017AA2C  38 99 00 64 */	addi r4, r25, 0x64
/* 8017AA30  38 A1 02 14 */	addi r5, r1, 0x214
/* 8017AA34  38 C1 00 34 */	addi r6, r1, 0x34
/* 8017AA38  48 0E DC D9 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8017AA3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017AA40  41 82 00 2C */	beq lbl_8017AA6C
/* 8017AA44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8017AA48  FC 00 A0 40 */	fcmpo cr0, f0, f20
/* 8017AA4C  40 80 00 1C */	bge lbl_8017AA68
/* 8017AA50  C0 01 02 14 */	lfs f0, 0x214(r1)
/* 8017AA54  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017AA58  C0 01 02 18 */	lfs f0, 0x218(r1)
/* 8017AA5C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8017AA60  C0 01 02 1C */	lfs f0, 0x21c(r1)
/* 8017AA64  D0 01 01 8C */	stfs f0, 0x18c(r1)
lbl_8017AA68:
/* 8017AA68  3B 5A 00 01 */	addi r26, r26, 1
lbl_8017AA6C:
/* 8017AA6C  2C 1A 00 00 */	cmpwi r26, 0
/* 8017AA70  40 82 00 B8 */	bne lbl_8017AB28
/* 8017AA74  80 19 0A F4 */	lwz r0, 0xaf4(r25)
/* 8017AA78  7C 60 F2 14 */	add r3, r0, r30
/* 8017AA7C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017AA80  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8017AA84  41 82 00 A4 */	beq lbl_8017AB28
/* 8017AA88  80 9F 00 08 */	lwz r4, 8(r31)
/* 8017AA8C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8017AA90  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8017AA94  C0 04 00 08 */	lfs f0, 8(r4)
/* 8017AA98  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 8017AA9C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8017AAA0  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8017AAA4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8017AAA8  38 03 FF FF */	addi r0, r3, -1
/* 8017AAAC  54 03 20 36 */	slwi r3, r0, 4
/* 8017AAB0  38 63 00 04 */	addi r3, r3, 4
/* 8017AAB4  7C 64 1A 14 */	add r3, r4, r3
/* 8017AAB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8017AABC  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 8017AAC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017AAC4  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 8017AAC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017AACC  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 8017AAD0  38 61 02 08 */	addi r3, r1, 0x208
/* 8017AAD4  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8017AAD8  4B F0 D9 15 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017AADC  FE 80 08 90 */	fmr f20, f1
/* 8017AAE0  38 61 01 FC */	addi r3, r1, 0x1fc
/* 8017AAE4  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8017AAE8  4B F0 D9 05 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017AAEC  FC 14 08 40 */	fcmpo cr0, f20, f1
/* 8017AAF0  40 80 00 20 */	bge lbl_8017AB10
/* 8017AAF4  C0 01 02 08 */	lfs f0, 0x208(r1)
/* 8017AAF8  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017AAFC  C0 01 02 0C */	lfs f0, 0x20c(r1)
/* 8017AB00  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8017AB04  C0 01 02 10 */	lfs f0, 0x210(r1)
/* 8017AB08  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8017AB0C  48 00 00 1C */	b lbl_8017AB28
lbl_8017AB10:
/* 8017AB10  C0 01 01 FC */	lfs f0, 0x1fc(r1)
/* 8017AB14  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017AB18  C0 01 02 00 */	lfs f0, 0x200(r1)
/* 8017AB1C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8017AB20  C0 01 02 04 */	lfs f0, 0x204(r1)
/* 8017AB24  D0 01 01 8C */	stfs f0, 0x18c(r1)
lbl_8017AB28:
/* 8017AB28  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8017AB2C  41 82 00 20 */	beq lbl_8017AB4C
/* 8017AB30  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 8017AB34  D0 19 03 F8 */	stfs f0, 0x3f8(r25)
/* 8017AB38  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 8017AB3C  D0 19 03 FC */	stfs f0, 0x3fc(r25)
/* 8017AB40  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8017AB44  D0 19 04 00 */	stfs f0, 0x400(r25)
/* 8017AB48  48 00 00 34 */	b lbl_8017AB7C
lbl_8017AB4C:
/* 8017AB4C  38 61 00 88 */	addi r3, r1, 0x88
/* 8017AB50  38 81 01 84 */	addi r4, r1, 0x184
/* 8017AB54  38 B9 03 F8 */	addi r5, r25, 0x3f8
/* 8017AB58  48 0E BF DD */	bl __mi__4cXyzCFRC3Vec
/* 8017AB5C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8017AB60  38 81 00 88 */	addi r4, r1, 0x88
/* 8017AB64  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017AB68  48 0E C0 1D */	bl __ml__4cXyzCFf
/* 8017AB6C  38 79 03 F8 */	addi r3, r25, 0x3f8
/* 8017AB70  38 81 00 7C */	addi r4, r1, 0x7c
/* 8017AB74  7C 65 1B 78 */	mr r5, r3
/* 8017AB78  48 1C C5 19 */	bl PSVECAdd
lbl_8017AB7C:
/* 8017AB7C  38 61 00 70 */	addi r3, r1, 0x70
/* 8017AB80  38 99 03 F8 */	addi r4, r25, 0x3f8
/* 8017AB84  38 B9 00 64 */	addi r5, r25, 0x64
/* 8017AB88  48 0E BF AD */	bl __mi__4cXyzCFRC3Vec
/* 8017AB8C  38 61 00 38 */	addi r3, r1, 0x38
/* 8017AB90  38 81 00 70 */	addi r4, r1, 0x70
/* 8017AB94  48 0F 6C ED */	bl __ct__7cSGlobeFRC4cXyz
/* 8017AB98  38 61 00 28 */	addi r3, r1, 0x28
/* 8017AB9C  3B A1 00 3E */	addi r29, r1, 0x3e
/* 8017ABA0  7F A4 EB 78 */	mr r4, r29
/* 8017ABA4  3B F9 00 62 */	addi r31, r25, 0x62
/* 8017ABA8  7F E5 FB 78 */	mr r5, r31
/* 8017ABAC  48 0F 65 F9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017ABB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017ABB4  38 81 00 28 */	addi r4, r1, 0x28
/* 8017ABB8  48 0F 63 B1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017ABBC  88 0D 8A C2 */	lbz r0, struct_80451040+0x2(r13)
/* 8017ABC0  7C 00 07 75 */	extsb. r0, r0
/* 8017ABC4  40 82 00 2C */	bne lbl_8017ABF0
/* 8017ABC8  38 6D 8A C4 */	la r3, struct_80451044+0x0(r13) /* 80451044-_SDA_BASE_ */
/* 8017ABCC  C0 22 9E 58 */	lfs f1, lit_12285(r2)
/* 8017ABD0  48 0F 63 F9 */	bl __ct__7cSAngleFf
/* 8017ABD4  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 8017ABD8  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 8017ABDC  3C A0 80 43 */	lis r5, lit_14615@ha
/* 8017ABE0  38 A5 C9 B8 */	addi r5, r5, lit_14615@l
/* 8017ABE4  48 1E 70 41 */	bl __register_global_object
/* 8017ABE8  38 00 00 01 */	li r0, 1
/* 8017ABEC  98 0D 8A C2 */	stb r0, struct_80451040+0x2(r13)
lbl_8017ABF0:
/* 8017ABF0  AB 0D 8A C4 */	lha r24, struct_80451044+0x0(r13)
/* 8017ABF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017ABF8  48 0F 64 D5 */	bl Abs__7cSAngleCFv
/* 8017ABFC  7C 63 07 34 */	extsh r3, r3
/* 8017AC00  7F 00 07 34 */	extsh r0, r24
/* 8017AC04  7C 03 00 00 */	cmpw r3, r0
/* 8017AC08  40 81 00 0C */	ble lbl_8017AC14
/* 8017AC0C  7F 23 CB 78 */	mr r3, r25
/* 8017AC10  4B FE A4 F5 */	bl setUSOAngle__9dCamera_cFv
lbl_8017AC14:
/* 8017AC14  80 19 0A F4 */	lwz r0, 0xaf4(r25)
/* 8017AC18  7C 60 F2 14 */	add r3, r0, r30
/* 8017AC1C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017AC20  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8017AC24  41 82 00 0C */	beq lbl_8017AC30
/* 8017AC28  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8017AC2C  48 00 00 10 */	b lbl_8017AC3C
lbl_8017AC30:
/* 8017AC30  EC 1E E8 28 */	fsubs f0, f30, f29
/* 8017AC34  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8017AC38  EC 1E 00 28 */	fsubs f0, f30, f0
lbl_8017AC3C:
/* 8017AC3C  C0 59 00 5C */	lfs f2, 0x5c(r25)
/* 8017AC40  C0 39 04 04 */	lfs f1, 0x404(r25)
/* 8017AC44  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017AC48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017AC4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8017AC50  D0 19 00 5C */	stfs f0, 0x5c(r25)
/* 8017AC54  38 61 00 24 */	addi r3, r1, 0x24
/* 8017AC58  7F A4 EB 78 */	mr r4, r29
/* 8017AC5C  7F E5 FB 78 */	mr r5, r31
/* 8017AC60  48 0F 65 45 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017AC64  38 61 00 20 */	addi r3, r1, 0x20
/* 8017AC68  38 81 00 24 */	addi r4, r1, 0x24
/* 8017AC6C  C0 39 04 04 */	lfs f1, 0x404(r25)
/* 8017AC70  48 0F 65 F5 */	bl __ml__7cSAngleCFf
/* 8017AC74  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017AC78  7F E4 FB 78 */	mr r4, r31
/* 8017AC7C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8017AC80  48 0F 64 F5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017AC84  38 61 00 0C */	addi r3, r1, 0xc
/* 8017AC88  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8017AC8C  48 0F 63 0D */	bl __ct__7cSAngleFs
/* 8017AC90  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017AC94  B0 19 00 62 */	sth r0, 0x62(r25)
/* 8017AC98  38 61 00 18 */	addi r3, r1, 0x18
/* 8017AC9C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8017ACA0  3B 19 00 60 */	addi r24, r25, 0x60
/* 8017ACA4  7F 05 C3 78 */	mr r5, r24
/* 8017ACA8  48 0F 64 FD */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017ACAC  38 61 00 14 */	addi r3, r1, 0x14
/* 8017ACB0  38 81 00 18 */	addi r4, r1, 0x18
/* 8017ACB4  C0 39 04 04 */	lfs f1, 0x404(r25)
/* 8017ACB8  48 0F 65 AD */	bl __ml__7cSAngleCFf
/* 8017ACBC  38 61 00 10 */	addi r3, r1, 0x10
/* 8017ACC0  7F 04 C3 78 */	mr r4, r24
/* 8017ACC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8017ACC8  48 0F 64 AD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017ACCC  38 61 00 08 */	addi r3, r1, 8
/* 8017ACD0  A8 81 00 10 */	lha r4, 0x10(r1)
/* 8017ACD4  48 0F 62 C5 */	bl __ct__7cSAngleFs
/* 8017ACD8  A8 01 00 08 */	lha r0, 8(r1)
/* 8017ACDC  B0 19 00 60 */	sth r0, 0x60(r25)
/* 8017ACE0  38 61 00 64 */	addi r3, r1, 0x64
/* 8017ACE4  38 99 00 5C */	addi r4, r25, 0x5c
/* 8017ACE8  48 0F 6D CD */	bl Xyz__7cSGlobeCFv
/* 8017ACEC  38 61 00 58 */	addi r3, r1, 0x58
/* 8017ACF0  38 99 00 64 */	addi r4, r25, 0x64
/* 8017ACF4  38 A1 00 64 */	addi r5, r1, 0x64
/* 8017ACF8  48 0E BD ED */	bl __pl__4cXyzCFRC3Vec
/* 8017ACFC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8017AD00  D0 19 00 70 */	stfs f0, 0x70(r25)
/* 8017AD04  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8017AD08  D0 19 00 74 */	stfs f0, 0x74(r25)
/* 8017AD0C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8017AD10  D0 19 00 78 */	stfs f0, 0x78(r25)
/* 8017AD14  C0 59 00 80 */	lfs f2, 0x80(r25)
/* 8017AD18  C0 39 04 04 */	lfs f1, 0x404(r25)
/* 8017AD1C  EC 1B D0 28 */	fsubs f0, f27, f26
/* 8017AD20  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8017AD24  EC 1B 00 28 */	fsubs f0, f27, f0
/* 8017AD28  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017AD2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017AD30  EC 02 00 2A */	fadds f0, f2, f0
/* 8017AD34  D0 19 00 80 */	stfs f0, 0x80(r25)
/* 8017AD38  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017AD3C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017AD40  90 01 02 54 */	stw r0, 0x254(r1)
/* 8017AD44  38 60 00 01 */	li r3, 1
lbl_8017AD48:
/* 8017AD48  E3 E1 03 48 */	psq_l f31, 840(r1), 0, 0 /* qr0 */
/* 8017AD4C  CB E1 03 40 */	lfd f31, 0x340(r1)
/* 8017AD50  E3 C1 03 38 */	psq_l f30, 824(r1), 0, 0 /* qr0 */
/* 8017AD54  CB C1 03 30 */	lfd f30, 0x330(r1)
/* 8017AD58  E3 A1 03 28 */	psq_l f29, 808(r1), 0, 0 /* qr0 */
/* 8017AD5C  CB A1 03 20 */	lfd f29, 0x320(r1)
/* 8017AD60  E3 81 03 18 */	psq_l f28, 792(r1), 0, 0 /* qr0 */
/* 8017AD64  CB 81 03 10 */	lfd f28, 0x310(r1)
/* 8017AD68  E3 61 03 08 */	psq_l f27, 776(r1), 0, 0 /* qr0 */
/* 8017AD6C  CB 61 03 00 */	lfd f27, 0x300(r1)
/* 8017AD70  E3 41 02 F8 */	psq_l f26, 760(r1), 0, 0 /* qr0 */
/* 8017AD74  CB 41 02 F0 */	lfd f26, 0x2f0(r1)
/* 8017AD78  E3 21 02 E8 */	psq_l f25, 744(r1), 0, 0 /* qr0 */
/* 8017AD7C  CB 21 02 E0 */	lfd f25, 0x2e0(r1)
/* 8017AD80  E3 01 02 D8 */	psq_l f24, 728(r1), 0, 0 /* qr0 */
/* 8017AD84  CB 01 02 D0 */	lfd f24, 0x2d0(r1)
/* 8017AD88  E2 E1 02 C8 */	psq_l f23, 712(r1), 0, 0 /* qr0 */
/* 8017AD8C  CA E1 02 C0 */	lfd f23, 0x2c0(r1)
/* 8017AD90  E2 C1 02 B8 */	psq_l f22, 696(r1), 0, 0 /* qr0 */
/* 8017AD94  CA C1 02 B0 */	lfd f22, 0x2b0(r1)
/* 8017AD98  E2 A1 02 A8 */	psq_l f21, 680(r1), 0, 0 /* qr0 */
/* 8017AD9C  CA A1 02 A0 */	lfd f21, 0x2a0(r1)
/* 8017ADA0  E2 81 02 98 */	psq_l f20, 664(r1), 0, 0 /* qr0 */
/* 8017ADA4  CA 81 02 90 */	lfd f20, 0x290(r1)
/* 8017ADA8  39 61 02 90 */	addi r11, r1, 0x290
/* 8017ADAC  48 1E 74 65 */	bl _restgpr_23
/* 8017ADB0  80 01 03 54 */	lwz r0, 0x354(r1)
/* 8017ADB4  7C 08 03 A6 */	mtlr r0
/* 8017ADB8  38 21 03 50 */	addi r1, r1, 0x350
/* 8017ADBC  4E 80 00 20 */	blr 
