lbl_80CA55C4:
/* 80CA55C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CA55C8  7C 08 02 A6 */	mflr r0
/* 80CA55CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CA55D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA55D4  4B 6B CB F8 */	b _savegpr_25
/* 80CA55D8  7C 7B 1B 78 */	mr r27, r3
/* 80CA55DC  3C 60 80 CA */	lis r3, ccSphSrc@ha
/* 80CA55E0  3B E3 64 80 */	addi r31, r3, ccSphSrc@l
/* 80CA55E4  3B 80 00 00 */	li r28, 0
/* 80CA55E8  3B A0 00 00 */	li r29, 0
/* 80CA55EC  48 00 01 C8 */	b lbl_80CA57B4
lbl_80CA55F0:
/* 80CA55F0  3B 5D 09 8C */	addi r26, r29, 0x98c
/* 80CA55F4  7F 5B D2 14 */	add r26, r27, r26
/* 80CA55F8  7F 43 D3 78 */	mr r3, r26
/* 80CA55FC  4B 3D F0 5C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80CA5600  28 03 00 00 */	cmplwi r3, 0
/* 80CA5604  41 82 01 A8 */	beq lbl_80CA57AC
/* 80CA5608  7F 43 D3 78 */	mr r3, r26
/* 80CA560C  4B 3D F0 E4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80CA5610  4B 5B E4 38 */	b GetAc__8cCcD_ObjFv
/* 80CA5614  7C 7E 1B 78 */	mr r30, r3
/* 80CA5618  7F 43 D3 78 */	mr r3, r26
/* 80CA561C  4B 3D F0 D4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80CA5620  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80CA5624  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80CA5628  28 00 00 FF */	cmplwi r0, 0xff
/* 80CA562C  40 82 01 80 */	bne lbl_80CA57AC
/* 80CA5630  3B 5E 04 D0 */	addi r26, r30, 0x4d0
/* 80CA5634  1F 3C 00 0C */	mulli r25, r28, 0xc
/* 80CA5638  7F BB CA 14 */	add r29, r27, r25
/* 80CA563C  3B DD 05 A0 */	addi r30, r29, 0x5a0
/* 80CA5640  7F C3 F3 78 */	mr r3, r30
/* 80CA5644  7F 44 D3 78 */	mr r4, r26
/* 80CA5648  4B 5C B5 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80CA564C  B0 7B 06 CC */	sth r3, 0x6cc(r27)
/* 80CA5650  88 1B 06 C8 */	lbz r0, 0x6c8(r27)
/* 80CA5654  28 00 00 00 */	cmplwi r0, 0
/* 80CA5658  40 82 00 CC */	bne lbl_80CA5724
/* 80CA565C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80CA5660  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 80CA5664  D0 1B 06 D8 */	stfs f0, 0x6d8(r27)
/* 80CA5668  C0 7B 06 D4 */	lfs f3, 0x6d4(r27)
/* 80CA566C  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80CA5670  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 80CA5674  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80CA5678  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CA567C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CA5680  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CA5684  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 80CA5688  D0 3D 06 04 */	stfs f1, 0x604(r29)
/* 80CA568C  D0 7D 06 08 */	stfs f3, 0x608(r29)
/* 80CA5690  38 00 02 00 */	li r0, 0x200
/* 80CA5694  1C 7C 00 06 */	mulli r3, r28, 6
/* 80CA5698  7C 9B 1A 14 */	add r4, r27, r3
/* 80CA569C  B0 04 06 90 */	sth r0, 0x690(r4)
/* 80CA56A0  A8 04 06 90 */	lha r0, 0x690(r4)
/* 80CA56A4  7C 00 00 D0 */	neg r0, r0
/* 80CA56A8  B0 1B 06 DC */	sth r0, 0x6dc(r27)
/* 80CA56AC  38 00 00 00 */	li r0, 0
/* 80CA56B0  B0 04 06 92 */	sth r0, 0x692(r4)
/* 80CA56B4  A8 04 06 92 */	lha r0, 0x692(r4)
/* 80CA56B8  7C 00 00 D0 */	neg r0, r0
/* 80CA56BC  B0 1B 06 DE */	sth r0, 0x6de(r27)
/* 80CA56C0  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80CA56C4  A8 1B 06 CC */	lha r0, 0x6cc(r27)
/* 80CA56C8  7C 03 00 50 */	subf r0, r3, r0
/* 80CA56CC  B0 04 06 62 */	sth r0, 0x662(r4)
/* 80CA56D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070354@ha */
/* 80CA56D4  38 03 03 54 */	addi r0, r3, 0x0354 /* 0x00070354@l */
/* 80CA56D8  90 01 00 08 */	stw r0, 8(r1)
/* 80CA56DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CA56E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CA56E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA56E8  38 81 00 08 */	addi r4, r1, 8
/* 80CA56EC  7F C5 F3 78 */	mr r5, r30
/* 80CA56F0  38 C0 00 00 */	li r6, 0
/* 80CA56F4  38 E0 00 00 */	li r7, 0
/* 80CA56F8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CA56FC  FC 40 08 90 */	fmr f2, f1
/* 80CA5700  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 80CA5704  FC 80 18 90 */	fmr f4, f3
/* 80CA5708  39 00 00 00 */	li r8, 0
/* 80CA570C  4B 60 62 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CA5710  7F 63 DB 78 */	mr r3, r27
/* 80CA5714  7F 84 E3 78 */	mr r4, r28
/* 80CA5718  4B FF F8 0D */	bl HakaiSet2__15daObjOCTHASHI_cFi
/* 80CA571C  93 9B 06 E4 */	stw r28, 0x6e4(r27)
/* 80CA5720  48 00 00 64 */	b lbl_80CA5784
lbl_80CA5724:
/* 80CA5724  38 00 00 07 */	li r0, 7
/* 80CA5728  90 1B 06 E4 */	stw r0, 0x6e4(r27)
/* 80CA572C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80CA5730  4B 5C 22 5C */	b cM_rndFX__Ff
/* 80CA5734  FC 00 08 1E */	fctiwz f0, f1
/* 80CA5738  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CA573C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA5740  1F 5C 00 06 */	mulli r26, r28, 6
/* 80CA5744  7C 7B D2 14 */	add r3, r27, r26
/* 80CA5748  B0 03 06 90 */	sth r0, 0x690(r3)
/* 80CA574C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80CA5750  4B 5C 22 3C */	b cM_rndFX__Ff
/* 80CA5754  FC 00 08 1E */	fctiwz f0, f1
/* 80CA5758  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CA575C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CA5760  7C 7B D2 14 */	add r3, r27, r26
/* 80CA5764  B0 03 06 92 */	sth r0, 0x692(r3)
/* 80CA5768  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80CA576C  4B 5C 22 20 */	b cM_rndFX__Ff
/* 80CA5770  D0 3D 06 00 */	stfs f1, 0x600(r29)
/* 80CA5774  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80CA5778  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 80CA577C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80CA5780  D0 1D 06 08 */	stfs f0, 0x608(r29)
lbl_80CA5784:
/* 80CA5784  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA5788  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA578C  A8 9B 06 CC */	lha r4, 0x6cc(r27)
/* 80CA5790  4B 36 6C 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80CA5794  38 9D 06 00 */	addi r4, r29, 0x600
/* 80CA5798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA579C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA57A0  7C 85 23 78 */	mr r5, r4
/* 80CA57A4  4B 6A 15 C8 */	b PSMTXMultVec
/* 80CA57A8  48 00 00 18 */	b lbl_80CA57C0
lbl_80CA57AC:
/* 80CA57AC  3B 9C 00 01 */	addi r28, r28, 1
/* 80CA57B0  3B BD 01 38 */	addi r29, r29, 0x138
lbl_80CA57B4:
/* 80CA57B4  80 1B 06 E0 */	lwz r0, 0x6e0(r27)
/* 80CA57B8  7C 1C 00 00 */	cmpw r28, r0
/* 80CA57BC  41 80 FE 34 */	blt lbl_80CA55F0
lbl_80CA57C0:
/* 80CA57C0  88 1B 06 C8 */	lbz r0, 0x6c8(r27)
/* 80CA57C4  28 00 00 00 */	cmplwi r0, 0
/* 80CA57C8  41 82 00 64 */	beq lbl_80CA582C
/* 80CA57CC  7F 63 DB 78 */	mr r3, r27
/* 80CA57D0  4B FF FB 21 */	bl HakaiMotion2__15daObjOCTHASHI_cFv
/* 80CA57D4  3B 20 00 00 */	li r25, 0
/* 80CA57D8  3B 80 00 00 */	li r28, 0
/* 80CA57DC  3B A0 00 00 */	li r29, 0
/* 80CA57E0  48 00 00 40 */	b lbl_80CA5820
lbl_80CA57E4:
/* 80CA57E4  3B 5D 07 AC */	addi r26, r29, 0x7ac
/* 80CA57E8  7F 5B D2 15 */	add. r26, r27, r26
/* 80CA57EC  41 82 00 28 */	beq lbl_80CA5814
/* 80CA57F0  7F 43 D3 78 */	mr r3, r26
/* 80CA57F4  7F 44 D3 78 */	mr r4, r26
/* 80CA57F8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80CA57FC  4B 6A 18 DC */	b PSVECScale
/* 80CA5800  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80CA5804  7C 7B 1A 14 */	add r3, r27, r3
/* 80CA5808  7F 44 D3 78 */	mr r4, r26
/* 80CA580C  7C 65 1B 78 */	mr r5, r3
/* 80CA5810  4B 6A 18 80 */	b PSVECAdd
lbl_80CA5814:
/* 80CA5814  3B 39 00 01 */	addi r25, r25, 1
/* 80CA5818  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CA581C  3B BD 00 3C */	addi r29, r29, 0x3c
lbl_80CA5820:
/* 80CA5820  80 1B 06 E0 */	lwz r0, 0x6e0(r27)
/* 80CA5824  7C 19 00 00 */	cmpw r25, r0
/* 80CA5828  41 80 FF BC */	blt lbl_80CA57E4
lbl_80CA582C:
/* 80CA582C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA5830  4B 6B C9 E8 */	b _restgpr_25
/* 80CA5834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CA5838  7C 08 03 A6 */	mtlr r0
/* 80CA583C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CA5840  4E 80 00 20 */	blr 
