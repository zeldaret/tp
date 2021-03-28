lbl_80C9E034:
/* 80C9E034  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C9E038  7C 08 02 A6 */	mflr r0
/* 80C9E03C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C9E040  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80C9E044  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80C9E048  7C 7E 1B 78 */	mr r30, r3
/* 80C9E04C  3C 60 80 CA */	lis r3, l_bmdName@ha
/* 80C9E050  3B E3 E8 AC */	addi r31, r3, l_bmdName@l
/* 80C9E054  88 7E 06 68 */	lbz r3, 0x668(r30)
/* 80C9E058  28 03 00 00 */	cmplwi r3, 0
/* 80C9E05C  40 82 02 A4 */	bne lbl_80C9E300
/* 80C9E060  A0 7E 06 5C */	lhz r3, 0x65c(r30)
/* 80C9E064  28 03 00 00 */	cmplwi r3, 0
/* 80C9E068  40 82 01 A0 */	bne lbl_80C9E208
/* 80C9E06C  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C9E070  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C9E074  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C9E078  4B 5D 26 C8 */	b cLib_chaseF__FPfff
/* 80C9E07C  38 7E 06 48 */	addi r3, r30, 0x648
/* 80C9E080  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C9E084  C0 5E 06 44 */	lfs f2, 0x644(r30)
/* 80C9E088  4B 5D 26 B8 */	b cLib_chaseF__FPfff
/* 80C9E08C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C9E090  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C9E094  C0 5E 06 48 */	lfs f2, 0x648(r30)
/* 80C9E098  4B 5D 26 A8 */	b cLib_chaseF__FPfff
/* 80C9E09C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9E0A0  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9E0A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C9E0A8  41 82 00 C8 */	beq lbl_80C9E170
/* 80C9E0AC  38 60 00 01 */	li r3, 1
/* 80C9E0B0  98 7E 06 68 */	stb r3, 0x668(r30)
/* 80C9E0B4  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80C9E0B8  28 04 00 00 */	cmplwi r4, 0
/* 80C9E0BC  41 82 00 1C */	beq lbl_80C9E0D8
/* 80C9E0C0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80C9E0C4  60 00 00 01 */	ori r0, r0, 1
/* 80C9E0C8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80C9E0CC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C9E0D0  38 00 00 00 */	li r0, 0
/* 80C9E0D4  90 1E 05 AC */	stw r0, 0x5ac(r30)
lbl_80C9E0D8:
/* 80C9E0D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9E0DC  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9E0E0  28 00 00 01 */	cmplwi r0, 1
/* 80C9E0E4  41 82 00 48 */	beq lbl_80C9E12C
/* 80C9E0E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CE@ha */
/* 80C9E0EC  38 03 00 CE */	addi r0, r3, 0x00CE /* 0x000800CE@l */
/* 80C9E0F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C9E0F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9E0F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9E0FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9E100  38 81 00 30 */	addi r4, r1, 0x30
/* 80C9E104  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9E108  38 C0 00 00 */	li r6, 0
/* 80C9E10C  38 E0 00 00 */	li r7, 0
/* 80C9E110  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E114  FC 40 08 90 */	fmr f2, f1
/* 80C9E118  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9E11C  FC 80 18 90 */	fmr f4, f3
/* 80C9E120  39 00 00 00 */	li r8, 0
/* 80C9E124  4B 60 D8 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9E128  48 00 02 94 */	b lbl_80C9E3BC
lbl_80C9E12C:
/* 80C9E12C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F3@ha */
/* 80C9E130  38 03 01 F3 */	addi r0, r3, 0x01F3 /* 0x000801F3@l */
/* 80C9E134  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C9E138  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9E13C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9E140  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9E144  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C9E148  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9E14C  38 C0 00 00 */	li r6, 0
/* 80C9E150  38 E0 00 00 */	li r7, 0
/* 80C9E154  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E158  FC 40 08 90 */	fmr f2, f1
/* 80C9E15C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9E160  FC 80 18 90 */	fmr f4, f3
/* 80C9E164  39 00 00 00 */	li r8, 0
/* 80C9E168  4B 60 D8 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9E16C  48 00 02 50 */	b lbl_80C9E3BC
lbl_80C9E170:
/* 80C9E170  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9E174  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9E178  28 00 00 01 */	cmplwi r0, 1
/* 80C9E17C  41 82 00 48 */	beq lbl_80C9E1C4
/* 80C9E180  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CD@ha */
/* 80C9E184  38 03 00 CD */	addi r0, r3, 0x00CD /* 0x000800CD@l */
/* 80C9E188  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C9E18C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9E190  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9E194  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9E198  38 81 00 28 */	addi r4, r1, 0x28
/* 80C9E19C  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9E1A0  38 C0 00 00 */	li r6, 0
/* 80C9E1A4  38 E0 00 00 */	li r7, 0
/* 80C9E1A8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E1AC  FC 40 08 90 */	fmr f2, f1
/* 80C9E1B0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9E1B4  FC 80 18 90 */	fmr f4, f3
/* 80C9E1B8  39 00 00 00 */	li r8, 0
/* 80C9E1BC  4B 60 E3 50 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9E1C0  48 00 01 FC */	b lbl_80C9E3BC
lbl_80C9E1C4:
/* 80C9E1C4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F2@ha */
/* 80C9E1C8  38 03 01 F2 */	addi r0, r3, 0x01F2 /* 0x000801F2@l */
/* 80C9E1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9E1D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9E1D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9E1D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9E1DC  38 81 00 24 */	addi r4, r1, 0x24
/* 80C9E1E0  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9E1E4  38 C0 00 00 */	li r6, 0
/* 80C9E1E8  38 E0 00 00 */	li r7, 0
/* 80C9E1EC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E1F0  FC 40 08 90 */	fmr f2, f1
/* 80C9E1F4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9E1F8  FC 80 18 90 */	fmr f4, f3
/* 80C9E1FC  39 00 00 00 */	li r8, 0
/* 80C9E200  4B 60 E3 0C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9E204  48 00 01 B8 */	b lbl_80C9E3BC
lbl_80C9E208:
/* 80C9E208  38 03 FF FF */	addi r0, r3, -1
/* 80C9E20C  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9E210  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9E214  28 00 00 00 */	cmplwi r0, 0
/* 80C9E218  40 82 00 8C */	bne lbl_80C9E2A4
/* 80C9E21C  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80C9E220  28 00 00 00 */	cmplwi r0, 0
/* 80C9E224  40 82 01 98 */	bne lbl_80C9E3BC
/* 80C9E228  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80C9E22C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C9E230  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C9E234  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C9E238  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80C9E23C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C9E240  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C9E244  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9E248  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C9E24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E254  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9E258  38 80 00 00 */	li r4, 0
/* 80C9E25C  90 81 00 08 */	stw r4, 8(r1)
/* 80C9E260  38 00 FF FF */	li r0, -1
/* 80C9E264  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9E268  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9E26C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9E270  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9E274  38 80 00 00 */	li r4, 0
/* 80C9E278  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833E@ha */
/* 80C9E27C  38 A5 83 3E */	addi r5, r5, 0x833E /* 0x0000833E@l */
/* 80C9E280  38 C1 00 40 */	addi r6, r1, 0x40
/* 80C9E284  38 E0 00 00 */	li r7, 0
/* 80C9E288  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80C9E28C  39 20 00 00 */	li r9, 0
/* 80C9E290  39 40 00 FF */	li r10, 0xff
/* 80C9E294  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E298  4B 3A E7 F8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9E29C  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80C9E2A0  48 00 01 1C */	b lbl_80C9E3BC
lbl_80C9E2A4:
/* 80C9E2A4  28 00 00 02 */	cmplwi r0, 2
/* 80C9E2A8  40 82 01 14 */	bne lbl_80C9E3BC
/* 80C9E2AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9E2B0  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9E2B4  28 00 00 01 */	cmplwi r0, 1
/* 80C9E2B8  41 82 01 04 */	beq lbl_80C9E3BC
/* 80C9E2BC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CC@ha */
/* 80C9E2C0  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000800CC@l */
/* 80C9E2C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C9E2C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9E2CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9E2D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9E2D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C9E2D8  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9E2DC  38 C0 00 00 */	li r6, 0
/* 80C9E2E0  38 E0 00 00 */	li r7, 0
/* 80C9E2E4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9E2E8  FC 40 08 90 */	fmr f2, f1
/* 80C9E2EC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9E2F0  FC 80 18 90 */	fmr f4, f3
/* 80C9E2F4  39 00 00 00 */	li r8, 0
/* 80C9E2F8  4B 60 D6 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9E2FC  48 00 00 C0 */	b lbl_80C9E3BC
lbl_80C9E300:
/* 80C9E300  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9E304  28 00 00 00 */	cmplwi r0, 0
/* 80C9E308  40 82 00 4C */	bne lbl_80C9E354
/* 80C9E30C  28 03 00 01 */	cmplwi r3, 1
/* 80C9E310  40 82 00 44 */	bne lbl_80C9E354
/* 80C9E314  38 00 00 0F */	li r0, 0xf
/* 80C9E318  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9E31C  38 00 00 02 */	li r0, 2
/* 80C9E320  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80C9E324  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C9E328  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C9E32C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C9E330  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C9E334  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C9E338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E33C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E340  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C9E344  38 80 00 04 */	li r4, 4
/* 80C9E348  38 A0 00 1F */	li r5, 0x1f
/* 80C9E34C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80C9E350  4B 3D 16 D4 */	b StartShock__12dVibration_cFii4cXyz
lbl_80C9E354:
/* 80C9E354  A0 7E 06 5C */	lhz r3, 0x65c(r30)
/* 80C9E358  38 03 FF FF */	addi r0, r3, -1
/* 80C9E35C  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9E360  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C9E364  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 80C9E368  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9E36C  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9E370  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C9E374  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 80C9E378  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C9E37C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C9E380  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9E384  1C 00 3A 98 */	mulli r0, r0, 0x3a98
/* 80C9E388  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9E38C  7C 63 02 14 */	add r3, r3, r0
/* 80C9E390  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C9E394  C0 3E 06 54 */	lfs f1, 0x654(r30)
/* 80C9E398  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C9E39C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C9E3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9E3A4  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9E3A8  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9E3AC  28 00 00 00 */	cmplwi r0, 0
/* 80C9E3B0  40 82 00 0C */	bne lbl_80C9E3BC
/* 80C9E3B4  7F C3 F3 78 */	mr r3, r30
/* 80C9E3B8  4B FF F6 0D */	bl modeWaitUpperInit__12daObjStair_cFv
lbl_80C9E3BC:
/* 80C9E3BC  38 60 00 01 */	li r3, 1
/* 80C9E3C0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80C9E3C4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80C9E3C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C9E3CC  7C 08 03 A6 */	mtlr r0
/* 80C9E3D0  38 21 00 60 */	addi r1, r1, 0x60
/* 80C9E3D4  4E 80 00 20 */	blr 
