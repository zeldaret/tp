lbl_80C23088:
/* 80C23088  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C2308C  7C 08 02 A6 */	mflr r0
/* 80C23090  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C23094  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80C23098  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80C2309C  7C 7F 1B 78 */	mr r31, r3
/* 80C230A0  3C 60 80 C2 */	lis r3, l_dir_vec@ha
/* 80C230A4  3B C3 42 F4 */	addi r30, r3, l_dir_vec@l
/* 80C230A8  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80C230AC  28 00 00 01 */	cmplwi r0, 1
/* 80C230B0  40 82 00 20 */	bne lbl_80C230D0
/* 80C230B4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C230B8  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80C230BC  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 80C230C0  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80C230C4  C0 9E 00 C0 */	lfs f4, 0xc0(r30)
/* 80C230C8  4B 64 C8 B4 */	b cLib_addCalc__FPfffff
/* 80C230CC  48 00 00 1C */	b lbl_80C230E8
lbl_80C230D0:
/* 80C230D0  28 00 00 02 */	cmplwi r0, 2
/* 80C230D4  40 82 00 14 */	bne lbl_80C230E8
/* 80C230D8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C230DC  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80C230E0  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80C230E4  4B 64 D6 5C */	b cLib_chaseF__FPfff
lbl_80C230E8:
/* 80C230E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C230EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C230F0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C230F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C230F8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C230FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C23100  7F E3 FB 78 */	mr r3, r31
/* 80C23104  38 80 00 00 */	li r4, 0
/* 80C23108  4B 3F 75 58 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80C2310C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C23110  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C23114  7F E3 FB 78 */	mr r3, r31
/* 80C23118  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80C2311C  54 00 08 3C */	slwi r0, r0, 1
/* 80C23120  38 9E 00 30 */	addi r4, r30, 0x30
/* 80C23124  7C 84 02 AE */	lhax r4, r4, r0
/* 80C23128  48 00 03 E5 */	bl checkWallPre__13daObjIceBlk_cFs
/* 80C2312C  2C 03 00 00 */	cmpwi r3, 0
/* 80C23130  41 80 00 AC */	blt lbl_80C231DC
/* 80C23134  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C23138  C0 1F 09 5C */	lfs f0, 0x95c(r31)
/* 80C2313C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C23140  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C23144  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80C23148  C0 1F 09 64 */	lfs f0, 0x964(r31)
/* 80C2314C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C23150  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C23154  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80C23158  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2315C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80C23160  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C23164  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C23168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2316C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C23170  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C23174  38 80 00 04 */	li r4, 4
/* 80C23178  38 A0 00 1F */	li r5, 0x1f
/* 80C2317C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C23180  4B 44 C8 A4 */	b StartShock__12dVibration_cFii4cXyz
/* 80C23184  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C23188  7C 03 07 74 */	extsb r3, r0
/* 80C2318C  4B 40 9E E0 */	b dComIfGp_getReverb__Fi
/* 80C23190  7C 67 1B 78 */	mr r7, r3
/* 80C23194  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D3@ha */
/* 80C23198  38 03 01 D3 */	addi r0, r3, 0x01D3 /* 0x000801D3@l */
/* 80C2319C  90 01 00 08 */	stw r0, 8(r1)
/* 80C231A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C231A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C231A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C231AC  38 81 00 08 */	addi r4, r1, 8
/* 80C231B0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C231B4  38 C0 00 00 */	li r6, 0
/* 80C231B8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C231BC  FC 40 08 90 */	fmr f2, f1
/* 80C231C0  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80C231C4  FC 80 18 90 */	fmr f4, f3
/* 80C231C8  39 00 00 00 */	li r8, 0
/* 80C231CC  4B 68 87 B8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C231D0  7F E3 FB 78 */	mr r3, r31
/* 80C231D4  4B FF FD 25 */	bl mode_init_wait__13daObjIceBlk_cFv
/* 80C231D8  48 00 01 90 */	b lbl_80C23368
lbl_80C231DC:
/* 80C231DC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80C231E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C231E4  40 82 01 84 */	bne lbl_80C23368
/* 80C231E8  7F E3 FB 78 */	mr r3, r31
/* 80C231EC  48 00 06 C5 */	bl checkFall__13daObjIceBlk_cFv
/* 80C231F0  2C 03 00 00 */	cmpwi r3, 0
/* 80C231F4  41 82 01 74 */	beq lbl_80C23368
/* 80C231F8  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80C231FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C23200  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80C23204  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C23208  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80C2320C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C23210  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80C23214  2C 00 00 01 */	cmpwi r0, 1
/* 80C23218  40 82 00 50 */	bne lbl_80C23268
/* 80C2321C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C23220  C0 7F 09 C4 */	lfs f3, 0x9c4(r31)
/* 80C23224  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C23228  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80C2322C  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C23230  FC 00 00 1E */	fctiwz f0, f0
/* 80C23234  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C23238  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2323C  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80C23240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C23244  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C23248  3C 00 43 30 */	lis r0, 0x4330
/* 80C2324C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80C23250  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C23254  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C23258  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C2325C  EC 03 00 2A */	fadds f0, f3, f0
/* 80C23260  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C23264  48 00 00 FC */	b lbl_80C23360
lbl_80C23268:
/* 80C23268  2C 00 00 03 */	cmpwi r0, 3
/* 80C2326C  40 82 00 50 */	bne lbl_80C232BC
/* 80C23270  C0 7F 09 C4 */	lfs f3, 0x9c4(r31)
/* 80C23274  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C23278  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C2327C  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80C23280  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C23284  FC 00 00 1E */	fctiwz f0, f0
/* 80C23288  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C2328C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C23290  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80C23294  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C23298  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2329C  3C 00 43 30 */	lis r0, 0x4330
/* 80C232A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C232A4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C232A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C232AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C232B0  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C232B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C232B8  48 00 00 A8 */	b lbl_80C23360
lbl_80C232BC:
/* 80C232BC  2C 00 00 00 */	cmpwi r0, 0
/* 80C232C0  40 82 00 50 */	bne lbl_80C23310
/* 80C232C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C232C8  C0 7F 09 CC */	lfs f3, 0x9cc(r31)
/* 80C232CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C232D0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80C232D4  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C232D8  FC 00 00 1E */	fctiwz f0, f0
/* 80C232DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C232E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C232E4  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80C232E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C232EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C232F0  3C 00 43 30 */	lis r0, 0x4330
/* 80C232F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C232F8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C232FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C23300  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C23304  EC 03 00 2A */	fadds f0, f3, f0
/* 80C23308  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C2330C  48 00 00 54 */	b lbl_80C23360
lbl_80C23310:
/* 80C23310  2C 00 00 02 */	cmpwi r0, 2
/* 80C23314  40 82 00 4C */	bne lbl_80C23360
/* 80C23318  C0 7F 09 CC */	lfs f3, 0x9cc(r31)
/* 80C2331C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C23320  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C23324  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80C23328  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C2332C  FC 00 00 1E */	fctiwz f0, f0
/* 80C23330  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C23334  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C23338  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80C2333C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C23340  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C23344  3C 00 43 30 */	lis r0, 0x4330
/* 80C23348  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C2334C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C23350  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C23354  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C23358  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C2335C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80C23360:
/* 80C23360  7F E3 FB 78 */	mr r3, r31
/* 80C23364  4B FF FB 95 */	bl mode_init_wait__13daObjIceBlk_cFv
lbl_80C23368:
/* 80C23368  7F E3 FB 78 */	mr r3, r31
/* 80C2336C  4B FF F7 99 */	bl clrCounter__13daObjIceBlk_cFv
/* 80C23370  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80C23374  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80C23378  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C2337C  7C 08 03 A6 */	mtlr r0
/* 80C23380  38 21 00 50 */	addi r1, r1, 0x50
/* 80C23384  4E 80 00 20 */	blr 
