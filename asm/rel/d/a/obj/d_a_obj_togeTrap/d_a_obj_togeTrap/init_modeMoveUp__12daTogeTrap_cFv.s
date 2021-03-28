lbl_80D186C0:
/* 80D186C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D186C4  7C 08 02 A6 */	mflr r0
/* 80D186C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D186CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D186D0  7C 7F 1B 78 */	mr r31, r3
/* 80D186D4  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D186D8  38 63 90 B4 */	addi r3, r3, l_HIO@l
/* 80D186DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D186E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D186E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D186E8  7C 03 07 74 */	extsb r3, r0
/* 80D186EC  4B 31 49 80 */	b dComIfGp_getReverb__Fi
/* 80D186F0  7C 67 1B 78 */	mr r7, r3
/* 80D186F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A8@ha */
/* 80D186F8  38 03 01 A8 */	addi r0, r3, 0x01A8 /* 0x000801A8@l */
/* 80D186FC  90 01 00 08 */	stw r0, 8(r1)
/* 80D18700  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D18704  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D18708  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1870C  38 81 00 08 */	addi r4, r1, 8
/* 80D18710  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80D18714  38 C0 00 00 */	li r6, 0
/* 80D18718  3D 00 80 D2 */	lis r8, lit_4006@ha
/* 80D1871C  C0 28 8E FC */	lfs f1, lit_4006@l(r8)
/* 80D18720  FC 40 08 90 */	fmr f2, f1
/* 80D18724  3D 00 80 D2 */	lis r8, lit_4007@ha
/* 80D18728  C0 68 8F 00 */	lfs f3, lit_4007@l(r8)
/* 80D1872C  FC 80 18 90 */	fmr f4, f3
/* 80D18730  39 00 00 00 */	li r8, 0
/* 80D18734  4B 59 32 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D18738  38 60 00 00 */	li r3, 0
/* 80D1873C  38 00 00 04 */	li r0, 4
/* 80D18740  7C 09 03 A6 */	mtctr r0
lbl_80D18744:
/* 80D18744  7C 9F 1A 14 */	add r4, r31, r3
/* 80D18748  80 04 05 DC */	lwz r0, 0x5dc(r4)
/* 80D1874C  60 00 00 01 */	ori r0, r0, 1
/* 80D18750  90 04 05 DC */	stw r0, 0x5dc(r4)
/* 80D18754  80 04 05 F4 */	lwz r0, 0x5f4(r4)
/* 80D18758  60 00 00 01 */	ori r0, r0, 1
/* 80D1875C  90 04 05 F4 */	stw r0, 0x5f4(r4)
/* 80D18760  38 63 01 3C */	addi r3, r3, 0x13c
/* 80D18764  42 00 FF E0 */	bdnz lbl_80D18744
/* 80D18768  38 00 00 01 */	li r0, 1
/* 80D1876C  98 1F 0A DC */	stb r0, 0xadc(r31)
/* 80D18770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D18774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D18778  7C 08 03 A6 */	mtlr r0
/* 80D1877C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D18780  4E 80 00 20 */	blr 
