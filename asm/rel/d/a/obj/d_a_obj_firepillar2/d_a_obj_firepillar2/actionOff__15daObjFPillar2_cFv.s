lbl_80BEA854:
/* 80BEA854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEA858  7C 08 02 A6 */	mflr r0
/* 80BEA85C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEA860  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BEA864  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BEA868  7C 7E 1B 78 */	mr r30, r3
/* 80BEA86C  3C 60 80 BF */	lis r3, lit_3656@ha
/* 80BEA870  3B E3 B4 C4 */	addi r31, r3, lit_3656@l
/* 80BEA874  38 7E 09 48 */	addi r3, r30, 0x948
/* 80BEA878  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BEA87C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BEA880  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BEA884  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BEA888  4B 68 5E B8 */	b cLib_chaseF__FPfff
/* 80BEA88C  A0 7E 09 78 */	lhz r3, 0x978(r30)
/* 80BEA890  28 03 00 00 */	cmplwi r3, 0
/* 80BEA894  40 82 00 10 */	bne lbl_80BEA8A4
/* 80BEA898  7F C3 F3 78 */	mr r3, r30
/* 80BEA89C  48 00 00 F1 */	bl actionOnWaitInit__15daObjFPillar2_cFv
/* 80BEA8A0  48 00 00 50 */	b lbl_80BEA8F0
lbl_80BEA8A4:
/* 80BEA8A4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BEA8A8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BEA8AC  28 04 00 FF */	cmplwi r4, 0xff
/* 80BEA8B0  41 82 00 38 */	beq lbl_80BEA8E8
/* 80BEA8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEA8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BEA8BC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BEA8C0  7C 05 07 74 */	extsb r5, r0
/* 80BEA8C4  4B 44 AA 9C */	b isSwitch__10dSv_info_cCFii
/* 80BEA8C8  2C 03 00 00 */	cmpwi r3, 0
/* 80BEA8CC  41 82 00 10 */	beq lbl_80BEA8DC
/* 80BEA8D0  38 00 00 01 */	li r0, 1
/* 80BEA8D4  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80BEA8D8  48 00 00 18 */	b lbl_80BEA8F0
lbl_80BEA8DC:
/* 80BEA8DC  38 00 00 00 */	li r0, 0
/* 80BEA8E0  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80BEA8E4  48 00 00 0C */	b lbl_80BEA8F0
lbl_80BEA8E8:
/* 80BEA8E8  38 03 FF FF */	addi r0, r3, -1
/* 80BEA8EC  B0 1E 09 78 */	sth r0, 0x978(r30)
lbl_80BEA8F0:
/* 80BEA8F0  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BEA8F4  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEA8F8  2C 00 00 01 */	cmpwi r0, 1
/* 80BEA8FC  41 82 00 78 */	beq lbl_80BEA974
/* 80BEA900  40 80 00 74 */	bge lbl_80BEA974
/* 80BEA904  2C 00 00 00 */	cmpwi r0, 0
/* 80BEA908  40 80 00 08 */	bge lbl_80BEA910
/* 80BEA90C  48 00 00 68 */	b lbl_80BEA974
lbl_80BEA910:
/* 80BEA910  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BEA914  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 80BEA918  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BEA91C  D0 1E 09 E0 */	stfs f0, 0x9e0(r30)
/* 80BEA920  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80BEA924  D0 1E 09 E4 */	stfs f0, 0x9e4(r30)
/* 80BEA928  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BEA92C  7C 03 07 74 */	extsb r3, r0
/* 80BEA930  4B 44 27 3C */	b dComIfGp_getReverb__Fi
/* 80BEA934  7C 67 1B 78 */	mr r7, r3
/* 80BEA938  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080124@ha */
/* 80BEA93C  38 03 01 24 */	addi r0, r3, 0x0124 /* 0x00080124@l */
/* 80BEA940  90 01 00 08 */	stw r0, 8(r1)
/* 80BEA944  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BEA948  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BEA94C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEA950  38 81 00 08 */	addi r4, r1, 8
/* 80BEA954  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BEA958  38 C0 00 00 */	li r6, 0
/* 80BEA95C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BEA960  FC 40 08 90 */	fmr f2, f1
/* 80BEA964  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80BEA968  FC 80 18 90 */	fmr f4, f3
/* 80BEA96C  39 00 00 00 */	li r8, 0
/* 80BEA970  4B 6C 1B 9C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BEA974:
/* 80BEA974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BEA978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BEA97C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEA980  7C 08 03 A6 */	mtlr r0
/* 80BEA984  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEA988  4E 80 00 20 */	blr 
