lbl_8017F25C:
/* 8017F25C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8017F260  7C 08 02 A6 */	mflr r0
/* 8017F264  90 01 01 54 */	stw r0, 0x154(r1)
/* 8017F268  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8017F26C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 8017F270  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8017F274  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 8017F278  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8017F27C  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 8017F280  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8017F284  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 8017F288  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8017F28C  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 8017F290  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 8017F294  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 8017F298  93 E1 00 EC */	stw r31, 0xec(r1)
/* 8017F29C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 8017F2A0  7C 7E 1B 78 */	mr r30, r3
/* 8017F2A4  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 8017F2A8  1F E4 00 78 */	mulli r31, r4, 0x78
/* 8017F2AC  7C 60 FA 14 */	add r3, r0, r31
/* 8017F2B0  C3 E3 00 08 */	lfs f31, 8(r3)
/* 8017F2B4  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 8017F2B8  C3 A3 00 0C */	lfs f29, 0xc(r3)
/* 8017F2BC  C3 83 00 20 */	lfs f28, 0x20(r3)
/* 8017F2C0  C3 43 00 68 */	lfs f26, 0x68(r3)
/* 8017F2C4  C3 63 00 4C */	lfs f27, 0x4c(r3)
/* 8017F2C8  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8017F2CC  28 00 00 00 */	cmplwi r0, 0
/* 8017F2D0  40 82 00 3C */	bne lbl_8017F30C
/* 8017F2D4  3C 60 4F 4E */	lis r3, 0x4F4E /* 0x4F4E4553@ha */
/* 8017F2D8  38 03 45 53 */	addi r0, r3, 0x4553 /* 0x4F4E4553@l */
/* 8017F2DC  90 1E 03 E8 */	stw r0, 0x3e8(r30)
/* 8017F2E0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8017F2E4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8017F2E8  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8017F2EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017F2F0  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8017F2F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017F2F8  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8017F2FC  38 00 00 FF */	li r0, 0xff
/* 8017F300  90 1E 04 14 */	stw r0, 0x414(r30)
/* 8017F304  38 00 00 FE */	li r0, 0xfe
/* 8017F308  90 1E 04 1C */	stw r0, 0x41c(r30)
lbl_8017F30C:
/* 8017F30C  80 7E 07 D8 */	lwz r3, 0x7d8(r30)
/* 8017F310  80 1E 04 14 */	lwz r0, 0x414(r30)
/* 8017F314  7C 03 00 00 */	cmpw r3, r0
/* 8017F318  41 82 00 18 */	beq lbl_8017F330
/* 8017F31C  38 00 00 00 */	li r0, 0
/* 8017F320  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8017F324  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8017F328  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 8017F32C  90 1E 04 14 */	stw r0, 0x414(r30)
lbl_8017F330:
/* 8017F330  38 00 00 00 */	li r0, 0
/* 8017F334  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8017F338  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017F33C  7C 60 FA 14 */	add r3, r0, r31
/* 8017F340  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017F344  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017F348  41 82 01 70 */	beq lbl_8017F4B8
/* 8017F34C  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 8017F350  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017F354  41 82 01 64 */	beq lbl_8017F4B8
/* 8017F358  80 7E 07 DC */	lwz r3, 0x7dc(r30)
/* 8017F35C  80 1E 04 1C */	lwz r0, 0x41c(r30)
/* 8017F360  7C 03 00 00 */	cmpw r3, r0
/* 8017F364  41 82 00 6C */	beq lbl_8017F3D0
/* 8017F368  88 1E 07 BD */	lbz r0, 0x7bd(r30)
/* 8017F36C  98 1E 0A EC */	stb r0, 0xaec(r30)
/* 8017F370  88 1E 07 BE */	lbz r0, 0x7be(r30)
/* 8017F374  98 1E 0A ED */	stb r0, 0xaed(r30)
/* 8017F378  88 1E 07 BF */	lbz r0, 0x7bf(r30)
/* 8017F37C  98 1E 0A EE */	stb r0, 0xaee(r30)
/* 8017F380  A0 1E 07 C0 */	lhz r0, 0x7c0(r30)
/* 8017F384  7C 00 07 34 */	extsh r0, r0
/* 8017F388  90 1E 0A F0 */	stw r0, 0xaf0(r30)
/* 8017F38C  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 8017F390  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8017F394  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8017F398  7C 63 02 14 */	add r3, r3, r0
/* 8017F39C  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 8017F3A0  1C 00 00 16 */	mulli r0, r0, 0x16
/* 8017F3A4  7C 63 02 14 */	add r3, r3, r0
/* 8017F3A8  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8017F3AC  54 00 08 3C */	slwi r0, r0, 1
/* 8017F3B0  7C 63 02 14 */	add r3, r3, r0
/* 8017F3B4  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8017F3B8  7C 04 00 00 */	cmpw r4, r0
/* 8017F3BC  40 82 00 0C */	bne lbl_8017F3C8
/* 8017F3C0  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8017F3C4  4B F0 92 11 */	bl Change__11dCamParam_cFl
lbl_8017F3C8:
/* 8017F3C8  80 1E 07 DC */	lwz r0, 0x7dc(r30)
/* 8017F3CC  90 1E 04 1C */	stw r0, 0x41c(r30)
lbl_8017F3D0:
/* 8017F3D0  C0 1E 07 C4 */	lfs f0, 0x7c4(r30)
/* 8017F3D4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8017F3D8  C0 1E 07 C8 */	lfs f0, 0x7c8(r30)
/* 8017F3DC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8017F3E0  C0 1E 07 CC */	lfs f0, 0x7cc(r30)
/* 8017F3E4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8017F3E8  38 7E 04 04 */	addi r3, r30, 0x404
/* 8017F3EC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8017F3F0  48 0E 7C 7D */	bl __ne__4cXyzCFRC3Vec
/* 8017F3F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017F3F8  41 82 00 0C */	beq lbl_8017F404
/* 8017F3FC  7F C3 F3 78 */	mr r3, r30
/* 8017F400  4B FE 5D 05 */	bl setUSOAngle__9dCamera_cFv
lbl_8017F404:
/* 8017F404  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8017F408  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8017F40C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8017F410  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8017F414  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8017F418  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8017F41C  88 1E 0A EC */	lbz r0, 0xaec(r30)
/* 8017F420  28 00 00 FF */	cmplwi r0, 0xff
/* 8017F424  41 82 00 28 */	beq lbl_8017F44C
/* 8017F428  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8017F42C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8017F430  3C 00 43 30 */	lis r0, 0x4330
/* 8017F434  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8017F438  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8017F43C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017F440  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017F444  7C 60 FA 14 */	add r3, r0, r31
/* 8017F448  D0 03 00 4C */	stfs f0, 0x4c(r3)
lbl_8017F44C:
/* 8017F44C  88 1E 0A ED */	lbz r0, 0xaed(r30)
/* 8017F450  28 00 00 FF */	cmplwi r0, 0xff
/* 8017F454  41 82 00 28 */	beq lbl_8017F47C
/* 8017F458  38 61 00 50 */	addi r3, r1, 0x50
/* 8017F45C  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8017F460  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8017F464  3C 00 43 30 */	lis r0, 0x4330
/* 8017F468  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8017F46C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8017F470  EC 20 08 28 */	fsubs f1, f0, f1
/* 8017F474  48 0F 1B 99 */	bl Val__7cSAngleFf
/* 8017F478  48 00 00 10 */	b lbl_8017F488
lbl_8017F47C:
/* 8017F47C  38 61 00 50 */	addi r3, r1, 0x50
/* 8017F480  C0 22 9D 84 */	lfs f1, lit_10556(r2)
/* 8017F484  48 0F 1B 89 */	bl Val__7cSAngleFf
lbl_8017F488:
/* 8017F488  88 1E 0A EE */	lbz r0, 0xaee(r30)
/* 8017F48C  28 00 00 FF */	cmplwi r0, 0xff
/* 8017F490  41 82 00 4C */	beq lbl_8017F4DC
/* 8017F494  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8017F498  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8017F49C  3C 00 43 30 */	lis r0, 0x4330
/* 8017F4A0  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8017F4A4  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8017F4A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8017F4AC  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 8017F4B0  EF 41 00 24 */	fdivs f26, f1, f0
/* 8017F4B4  48 00 00 28 */	b lbl_8017F4DC
lbl_8017F4B8:
/* 8017F4B8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8017F4BC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8017F4C0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8017F4C4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8017F4C8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8017F4CC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8017F4D0  38 61 00 50 */	addi r3, r1, 0x50
/* 8017F4D4  C0 22 9D 84 */	lfs f1, lit_10556(r2)
/* 8017F4D8  48 0F 1B 35 */	bl Val__7cSAngleFf
lbl_8017F4DC:
/* 8017F4DC  38 00 00 01 */	li r0, 1
/* 8017F4E0  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8017F4E4  D3 E1 00 C8 */	stfs f31, 0xc8(r1)
/* 8017F4E8  D3 C1 00 CC */	stfs f30, 0xcc(r1)
/* 8017F4EC  D3 A1 00 D0 */	stfs f29, 0xd0(r1)
/* 8017F4F0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017F4F4  7F C4 F3 78 */	mr r4, r30
/* 8017F4F8  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8017F4FC  4B F1 82 3D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017F500  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8017F504  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8017F508  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8017F50C  4B F0 8E 79 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017F510  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8017F514  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8017F518  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8017F51C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8017F520  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8017F524  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8017F528  38 61 00 98 */	addi r3, r1, 0x98
/* 8017F52C  7F C4 F3 78 */	mr r4, r30
/* 8017F530  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8017F534  4B F1 81 E9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017F538  38 61 00 8C */	addi r3, r1, 0x8c
/* 8017F53C  38 81 00 98 */	addi r4, r1, 0x98
/* 8017F540  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8017F544  48 0E 75 A1 */	bl __pl__4cXyzCFRC3Vec
/* 8017F548  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8017F54C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8017F550  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8017F554  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8017F558  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8017F55C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8017F560  38 61 00 80 */	addi r3, r1, 0x80
/* 8017F564  38 81 00 BC */	addi r4, r1, 0xbc
/* 8017F568  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8017F56C  48 0E 75 C9 */	bl __mi__4cXyzCFRC3Vec
/* 8017F570  38 61 00 54 */	addi r3, r1, 0x54
/* 8017F574  38 81 00 80 */	addi r4, r1, 0x80
/* 8017F578  48 0F 23 09 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017F57C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8017F580  C0 02 9D E8 */	lfs f0, lit_10581(r2)
/* 8017F584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017F588  4C 41 13 82 */	cror 2, 1, 2
/* 8017F58C  40 82 00 0C */	bne lbl_8017F598
/* 8017F590  C3 A2 9C A8 */	lfs f29, lit_5658(r2)
/* 8017F594  48 00 00 08 */	b lbl_8017F59C
lbl_8017F598:
/* 8017F598  EF A1 00 24 */	fdivs f29, f1, f0
lbl_8017F59C:
/* 8017F59C  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017F5A0  7C 60 FA 14 */	add r3, r0, r31
/* 8017F5A4  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017F5A8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8017F5AC  40 82 00 2C */	bne lbl_8017F5D8
/* 8017F5B0  38 61 00 38 */	addi r3, r1, 0x38
/* 8017F5B4  A8 1E 07 D0 */	lha r0, 0x7d0(r30)
/* 8017F5B8  7C 00 00 D0 */	neg r0, r0
/* 8017F5BC  7C 04 07 34 */	extsh r4, r0
/* 8017F5C0  48 0F 19 D9 */	bl __ct__7cSAngleFs
/* 8017F5C4  38 61 00 0C */	addi r3, r1, 0xc
/* 8017F5C8  A8 81 00 38 */	lha r4, 0x38(r1)
/* 8017F5CC  48 0F 19 CD */	bl __ct__7cSAngleFs
/* 8017F5D0  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017F5D4  B0 01 00 58 */	sth r0, 0x58(r1)
lbl_8017F5D8:
/* 8017F5D8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017F5DC  A8 9E 07 D2 */	lha r4, 0x7d2(r30)
/* 8017F5E0  48 0F 19 B9 */	bl __ct__7cSAngleFs
/* 8017F5E4  38 61 00 34 */	addi r3, r1, 0x34
/* 8017F5E8  38 81 00 5A */	addi r4, r1, 0x5a
/* 8017F5EC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8017F5F0  48 0F 1B B5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017F5F4  38 61 00 48 */	addi r3, r1, 0x48
/* 8017F5F8  38 81 00 34 */	addi r4, r1, 0x34
/* 8017F5FC  48 0F 19 6D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017F600  38 61 00 30 */	addi r3, r1, 0x30
/* 8017F604  38 81 00 48 */	addi r4, r1, 0x48
/* 8017F608  FC 20 D0 90 */	fmr f1, f26
/* 8017F60C  48 0F 1C 59 */	bl __ml__7cSAngleCFf
/* 8017F610  38 61 00 40 */	addi r3, r1, 0x40
/* 8017F614  38 81 00 30 */	addi r4, r1, 0x30
/* 8017F618  48 0F 19 51 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017F61C  A8 61 00 48 */	lha r3, 0x48(r1)
/* 8017F620  A8 01 00 50 */	lha r0, 0x50(r1)
/* 8017F624  7C 03 00 00 */	cmpw r3, r0
/* 8017F628  40 80 00 30 */	bge lbl_8017F658
/* 8017F62C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017F630  38 81 00 50 */	addi r4, r1, 0x50
/* 8017F634  48 0F 1B 15 */	bl __mi__7cSAngleCFv
/* 8017F638  A8 A1 00 48 */	lha r5, 0x48(r1)
/* 8017F63C  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 8017F640  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8017F644  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8017F648  7C 05 00 10 */	subfc r0, r5, r0
/* 8017F64C  7C 04 19 14 */	adde r0, r4, r3
/* 8017F650  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8017F654  41 82 00 1C */	beq lbl_8017F670
lbl_8017F658:
/* 8017F658  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8017F65C  28 00 00 00 */	cmplwi r0, 0
/* 8017F660  41 82 00 10 */	beq lbl_8017F670
/* 8017F664  A8 1E 04 1A */	lha r0, 0x41a(r30)
/* 8017F668  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8017F66C  48 00 00 90 */	b lbl_8017F6FC
lbl_8017F670:
/* 8017F670  A8 61 00 40 */	lha r3, 0x40(r1)
/* 8017F674  A8 01 00 50 */	lha r0, 0x50(r1)
/* 8017F678  7C 03 00 00 */	cmpw r3, r0
/* 8017F67C  40 81 00 20 */	ble lbl_8017F69C
/* 8017F680  38 61 00 28 */	addi r3, r1, 0x28
/* 8017F684  38 81 00 4C */	addi r4, r1, 0x4c
/* 8017F688  38 A1 00 50 */	addi r5, r1, 0x50
/* 8017F68C  48 0F 1A E9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017F690  A8 01 00 28 */	lha r0, 0x28(r1)
/* 8017F694  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8017F698  48 00 00 64 */	b lbl_8017F6FC
lbl_8017F69C:
/* 8017F69C  38 61 00 24 */	addi r3, r1, 0x24
/* 8017F6A0  38 81 00 50 */	addi r4, r1, 0x50
/* 8017F6A4  48 0F 1A A5 */	bl __mi__7cSAngleCFv
/* 8017F6A8  A8 01 00 40 */	lha r0, 0x40(r1)
/* 8017F6AC  A8 81 00 24 */	lha r4, 0x24(r1)
/* 8017F6B0  7C 80 02 78 */	xor r0, r4, r0
/* 8017F6B4  7C 03 0E 70 */	srawi r3, r0, 1
/* 8017F6B8  7C 00 20 38 */	and r0, r0, r4
/* 8017F6BC  7C 00 18 50 */	subf r0, r0, r3
/* 8017F6C0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8017F6C4  41 82 00 20 */	beq lbl_8017F6E4
/* 8017F6C8  38 61 00 20 */	addi r3, r1, 0x20
/* 8017F6CC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8017F6D0  38 A1 00 50 */	addi r5, r1, 0x50
/* 8017F6D4  48 0F 1A D1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017F6D8  A8 01 00 20 */	lha r0, 0x20(r1)
/* 8017F6DC  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8017F6E0  48 00 00 1C */	b lbl_8017F6FC
lbl_8017F6E4:
/* 8017F6E4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017F6E8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8017F6EC  38 A1 00 40 */	addi r5, r1, 0x40
/* 8017F6F0  48 0F 1A 85 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017F6F4  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 8017F6F8  B0 01 00 44 */	sth r0, 0x44(r1)
lbl_8017F6FC:
/* 8017F6FC  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8017F700  28 00 00 00 */	cmplwi r0, 0
/* 8017F704  40 82 00 10 */	bne lbl_8017F714
/* 8017F708  A8 01 00 44 */	lha r0, 0x44(r1)
/* 8017F70C  B0 1E 04 1A */	sth r0, 0x41a(r30)
/* 8017F710  48 00 00 40 */	b lbl_8017F750
lbl_8017F714:
/* 8017F714  38 61 00 18 */	addi r3, r1, 0x18
/* 8017F718  38 81 00 44 */	addi r4, r1, 0x44
/* 8017F71C  38 BE 04 1A */	addi r5, r30, 0x41a
/* 8017F720  48 0F 1A 85 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017F724  38 61 00 14 */	addi r3, r1, 0x14
/* 8017F728  38 81 00 18 */	addi r4, r1, 0x18
/* 8017F72C  FC 20 E0 90 */	fmr f1, f28
/* 8017F730  48 0F 1B 35 */	bl __ml__7cSAngleCFf
/* 8017F734  38 61 00 10 */	addi r3, r1, 0x10
/* 8017F738  38 81 00 14 */	addi r4, r1, 0x14
/* 8017F73C  FC 20 E8 90 */	fmr f1, f29
/* 8017F740  48 0F 1B 25 */	bl __ml__7cSAngleCFf
/* 8017F744  38 7E 04 1A */	addi r3, r30, 0x41a
/* 8017F748  38 81 00 10 */	addi r4, r1, 0x10
/* 8017F74C  48 0F 1A 89 */	bl __apl__7cSAngleFRC7cSAngle
lbl_8017F750:
/* 8017F750  38 61 00 08 */	addi r3, r1, 8
/* 8017F754  A8 9E 04 1A */	lha r4, 0x41a(r30)
/* 8017F758  48 0F 18 41 */	bl __ct__7cSAngleFs
/* 8017F75C  A8 01 00 08 */	lha r0, 8(r1)
/* 8017F760  B0 01 00 5A */	sth r0, 0x5a(r1)
/* 8017F764  38 61 00 74 */	addi r3, r1, 0x74
/* 8017F768  38 81 00 54 */	addi r4, r1, 0x54
/* 8017F76C  48 0F 23 49 */	bl Xyz__7cSGlobeCFv
/* 8017F770  38 61 00 68 */	addi r3, r1, 0x68
/* 8017F774  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8017F778  38 A1 00 74 */	addi r5, r1, 0x74
/* 8017F77C  48 0E 73 69 */	bl __pl__4cXyzCFRC3Vec
/* 8017F780  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8017F784  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 8017F788  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8017F78C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 8017F790  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8017F794  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8017F798  D0 5E 00 64 */	stfs f2, 0x64(r30)
/* 8017F79C  D0 3E 00 68 */	stfs f1, 0x68(r30)
/* 8017F7A0  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8017F7A4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8017F7A8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8017F7AC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8017F7B0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8017F7B4  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8017F7B8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8017F7BC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8017F7C0  38 9E 00 70 */	addi r4, r30, 0x70
/* 8017F7C4  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017F7C8  48 0E 73 6D */	bl __mi__4cXyzCFRC3Vec
/* 8017F7CC  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8017F7D0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8017F7D4  48 0F 22 9D */	bl Val__7cSGlobeFRC4cXyz
/* 8017F7D8  D3 7E 00 80 */	stfs f27, 0x80(r30)
/* 8017F7DC  38 60 00 01 */	li r3, 1
/* 8017F7E0  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 8017F7E4  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8017F7E8  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 8017F7EC  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8017F7F0  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 8017F7F4  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8017F7F8  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 8017F7FC  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8017F800  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 8017F804  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8017F808  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 8017F80C  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 8017F810  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 8017F814  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 8017F818  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8017F81C  7C 08 03 A6 */	mtlr r0
/* 8017F820  38 21 01 50 */	addi r1, r1, 0x150
/* 8017F824  4E 80 00 20 */	blr 
