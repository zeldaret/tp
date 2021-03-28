lbl_80BF846C:
/* 80BF846C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF8470  7C 08 02 A6 */	mflr r0
/* 80BF8474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF8478  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF847C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BF8480  7C 7E 1B 78 */	mr r30, r3
/* 80BF8484  3C 80 80 C0 */	lis r4, l_dzb@ha
/* 80BF8488  3B E4 8F E8 */	addi r31, r4, l_dzb@l
/* 80BF848C  A0 03 07 60 */	lhz r0, 0x760(r3)
/* 80BF8490  28 00 00 00 */	cmplwi r0, 0
/* 80BF8494  40 82 00 1C */	bne lbl_80BF84B0
/* 80BF8498  48 00 01 A5 */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF849C  7F C3 F3 78 */	mr r3, r30
/* 80BF84A0  48 00 08 01 */	bl stopEmitterClm00__13daObjGeyser_cFv
/* 80BF84A4  7F C3 F3 78 */	mr r3, r30
/* 80BF84A8  4B FF FD 95 */	bl actionOffInit__13daObjGeyser_cFv
/* 80BF84AC  48 00 00 3C */	b lbl_80BF84E8
lbl_80BF84B0:
/* 80BF84B0  28 00 00 05 */	cmplwi r0, 5
/* 80BF84B4  40 82 00 28 */	bne lbl_80BF84DC
/* 80BF84B8  38 00 00 00 */	li r0, 0
/* 80BF84BC  98 1E 07 84 */	stb r0, 0x784(r30)
/* 80BF84C0  48 00 08 0D */	bl stopEmitterSmk01__13daObjGeyser_cFv
/* 80BF84C4  7F C3 F3 78 */	mr r3, r30
/* 80BF84C8  48 00 08 31 */	bl stopEmitterSmk02__13daObjGeyser_cFv
/* 80BF84CC  7F C3 F3 78 */	mr r3, r30
/* 80BF84D0  48 00 05 B1 */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF84D4  7F C3 F3 78 */	mr r3, r30
/* 80BF84D8  48 00 05 D5 */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
lbl_80BF84DC:
/* 80BF84DC  A0 7E 07 60 */	lhz r3, 0x760(r30)
/* 80BF84E0  38 03 FF FF */	addi r0, r3, -1
/* 80BF84E4  B0 1E 07 60 */	sth r0, 0x760(r30)
lbl_80BF84E8:
/* 80BF84E8  38 7E 07 85 */	addi r3, r30, 0x785
/* 80BF84EC  88 9E 07 84 */	lbz r4, 0x784(r30)
/* 80BF84F0  38 A0 00 33 */	li r5, 0x33
/* 80BF84F4  4B 67 81 68 */	b cLib_chaseUC__FPUcUcUc
/* 80BF84F8  80 7E 07 6C */	lwz r3, 0x76c(r30)
/* 80BF84FC  28 03 00 00 */	cmplwi r3, 0
/* 80BF8500  41 82 00 0C */	beq lbl_80BF850C
/* 80BF8504  88 1E 07 85 */	lbz r0, 0x785(r30)
/* 80BF8508  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80BF850C:
/* 80BF850C  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80BF8510  38 7E 07 30 */	addi r3, r30, 0x730
/* 80BF8514  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BF8518  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BF851C  4B 67 82 24 */	b cLib_chaseF__FPfff
/* 80BF8520  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF8524  7C 03 07 74 */	extsb r3, r0
/* 80BF8528  4B 43 4B 44 */	b dComIfGp_getReverb__Fi
/* 80BF852C  7C 67 1B 78 */	mr r7, r3
/* 80BF8530  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080089@ha */
/* 80BF8534  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00080089@l */
/* 80BF8538  90 01 00 08 */	stw r0, 8(r1)
/* 80BF853C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BF8540  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BF8544  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF8548  38 81 00 08 */	addi r4, r1, 8
/* 80BF854C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BF8550  38 C0 00 00 */	li r6, 0
/* 80BF8554  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BF8558  FC 40 08 90 */	fmr f2, f1
/* 80BF855C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80BF8560  FC 80 18 90 */	fmr f4, f3
/* 80BF8564  39 00 00 00 */	li r8, 0
/* 80BF8568  4B 6B 3F A4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF856C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF8570  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BF8574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF8578  7C 08 03 A6 */	mtlr r0
/* 80BF857C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF8580  4E 80 00 20 */	blr 
