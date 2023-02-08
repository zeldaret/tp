lbl_80D01770:
/* 80D01770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D01774  7C 08 02 A6 */	mflr r0
/* 80D01778  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0177C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D01780  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D01784  7C 7E 1B 78 */	mr r30, r3
/* 80D01788  3C 60 80 D0 */	lis r3, l_bmd@ha /* 0x80D0206C@ha */
/* 80D0178C  3B E3 20 6C */	addi r31, r3, l_bmd@l /* 0x80D0206C@l */
/* 80D01790  38 00 00 00 */	li r0, 0
/* 80D01794  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 80D01798  98 1E 05 C6 */	stb r0, 0x5c6(r30)
/* 80D0179C  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80D017A0  28 00 00 01 */	cmplwi r0, 1
/* 80D017A4  40 82 00 AC */	bne lbl_80D01850
/* 80D017A8  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80D017AC  2C 00 00 01 */	cmpwi r0, 1
/* 80D017B0  40 82 00 54 */	bne lbl_80D01804
/* 80D017B4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D017B8  7C 03 07 74 */	extsb r3, r0
/* 80D017BC  4B 32 B8 B1 */	bl dComIfGp_getReverb__Fi
/* 80D017C0  7C 67 1B 78 */	mr r7, r3
/* 80D017C4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AD@ha */
/* 80D017C8  38 03 01 AD */	addi r0, r3, 0x01AD /* 0x000801AD@l */
/* 80D017CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D017D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D017D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D017D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D017DC  38 81 00 0C */	addi r4, r1, 0xc
/* 80D017E0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D017E4  38 C0 00 00 */	li r6, 0
/* 80D017E8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80D017EC  FC 40 08 90 */	fmr f2, f1
/* 80D017F0  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80D017F4  FC 80 18 90 */	fmr f4, f3
/* 80D017F8  39 00 00 00 */	li r8, 0
/* 80D017FC  4B 5A A1 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D01800  48 00 00 50 */	b lbl_80D01850
lbl_80D01804:
/* 80D01804  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D01808  7C 03 07 74 */	extsb r3, r0
/* 80D0180C  4B 32 B8 61 */	bl dComIfGp_getReverb__Fi
/* 80D01810  7C 67 1B 78 */	mr r7, r3
/* 80D01814  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AE@ha */
/* 80D01818  38 03 01 AE */	addi r0, r3, 0x01AE /* 0x000801AE@l */
/* 80D0181C  90 01 00 08 */	stw r0, 8(r1)
/* 80D01820  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D01824  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D01828  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0182C  38 81 00 08 */	addi r4, r1, 8
/* 80D01830  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D01834  38 C0 00 00 */	li r6, 0
/* 80D01838  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80D0183C  FC 40 08 90 */	fmr f2, f1
/* 80D01840  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80D01844  FC 80 18 90 */	fmr f4, f3
/* 80D01848  39 00 00 00 */	li r8, 0
/* 80D0184C  4B 5A A1 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D01850:
/* 80D01850  38 80 00 00 */	li r4, 0
/* 80D01854  B0 9E 05 B8 */	sth r4, 0x5b8(r30)
/* 80D01858  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80D0185C  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80D01860  54 00 08 3C */	slwi r0, r0, 1
/* 80D01864  38 7F 00 18 */	addi r3, r31, 0x18
/* 80D01868  7C 03 02 AE */	lhax r0, r3, r0
/* 80D0186C  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80D01870  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D01874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D01878  3C 00 43 30 */	lis r0, 0x4330
/* 80D0187C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D01880  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D01884  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D01888  EC 02 00 24 */	fdivs f0, f2, f0
/* 80D0188C  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80D01890  B0 9E 05 CC */	sth r4, 0x5cc(r30)
/* 80D01894  38 00 00 01 */	li r0, 1
/* 80D01898  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80D0189C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D018A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D018A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D018A8  7C 08 03 A6 */	mtlr r0
/* 80D018AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D018B0  4E 80 00 20 */	blr 
