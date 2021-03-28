lbl_80BC6430:
/* 80BC6430  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC6434  7C 08 02 A6 */	mflr r0
/* 80BC6438  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC643C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BC6440  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BC6444  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BC6448  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BC644C  7C 7E 1B 78 */	mr r30, r3
/* 80BC6450  3C 60 80 BC */	lis r3, l_cull_box@ha
/* 80BC6454  3B E3 6A 38 */	addi r31, r3, l_cull_box@l
/* 80BC6458  38 7E 0C A4 */	addi r3, r30, 0xca4
/* 80BC645C  48 00 05 1D */	bl func_80BC6978
/* 80BC6460  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BC6464  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80BC6468  A8 7E 0C A6 */	lha r3, 0xca6(r30)
/* 80BC646C  A8 1E 0C A4 */	lha r0, 0xca4(r30)
/* 80BC6470  20 00 00 0D */	subfic r0, r0, 0xd
/* 80BC6474  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BC6478  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC647C  7C 64 02 14 */	add r3, r4, r0
/* 80BC6480  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC6484  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80BC6488  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BC648C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BC6490  EF E2 00 32 */	fmuls f31, f2, f0
/* 80BC6494  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BC6498  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BC649C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BC64A0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BC64A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC64A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC64AC  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80BC64B0  4B 44 5F 2C */	b mDoMtx_YrotS__FPA4_fs
/* 80BC64B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC64B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC64BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC64C0  7C 85 23 78 */	mr r5, r4
/* 80BC64C4  4B 78 08 A8 */	b PSMTXMultVec
/* 80BC64C8  C0 5E 04 A8 */	lfs f2, 0x4a8(r30)
/* 80BC64CC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BC64D0  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BC64D4  88 1E 0C A2 */	lbz r0, 0xca2(r30)
/* 80BC64D8  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80BC64DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BC64E0  3C 60 43 30 */	lis r3, 0x4330
/* 80BC64E4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80BC64E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BC64EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BC64F0  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BC64F4  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BC64F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC64FC  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC6500  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BC6504  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 80BC6508  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BC650C  88 1E 0C A2 */	lbz r0, 0xca2(r30)
/* 80BC6510  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC6514  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BC6518  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BC651C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BC6520  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BC6524  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BC6528  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC652C  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC6530  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BC6534  7F C3 F3 78 */	mr r3, r30
/* 80BC6538  C0 3E 0C 20 */	lfs f1, 0xc20(r30)
/* 80BC653C  48 00 01 0D */	bl setPower__11daObjCBlk_cFf
/* 80BC6540  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC6544  7C 03 07 74 */	extsb r3, r0
/* 80BC6548  4B 46 6B 24 */	b dComIfGp_getReverb__Fi
/* 80BC654C  7C 67 1B 78 */	mr r7, r3
/* 80BC6550  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011B@ha */
/* 80BC6554  38 03 01 1B */	addi r0, r3, 0x011B /* 0x0008011B@l */
/* 80BC6558  90 01 00 08 */	stw r0, 8(r1)
/* 80BC655C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC6560  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC6564  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC6568  38 81 00 08 */	addi r4, r1, 8
/* 80BC656C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BC6570  38 C0 00 00 */	li r6, 0
/* 80BC6574  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BC6578  FC 40 08 90 */	fmr f2, f1
/* 80BC657C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BC6580  FC 80 18 90 */	fmr f4, f3
/* 80BC6584  39 00 00 00 */	li r8, 0
/* 80BC6588  4B 6E 5F 84 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC658C  A8 1E 0C A4 */	lha r0, 0xca4(r30)
/* 80BC6590  2C 00 00 00 */	cmpwi r0, 0
/* 80BC6594  40 82 00 18 */	bne lbl_80BC65AC
/* 80BC6598  7F C3 F3 78 */	mr r3, r30
/* 80BC659C  4B FF FC D5 */	bl initWait__11daObjCBlk_cFv
/* 80BC65A0  88 7E 0C A2 */	lbz r3, 0xca2(r30)
/* 80BC65A4  38 03 00 01 */	addi r0, r3, 1
/* 80BC65A8  98 1E 0C A2 */	stb r0, 0xca2(r30)
lbl_80BC65AC:
/* 80BC65AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BC65B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BC65B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BC65B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BC65BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC65C0  7C 08 03 A6 */	mtlr r0
/* 80BC65C4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC65C8  4E 80 00 20 */	blr 
