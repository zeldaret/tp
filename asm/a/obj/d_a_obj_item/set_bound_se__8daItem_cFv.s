lbl_8015D834:
/* 8015D834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D838  7C 08 02 A6 */	mflr r0
/* 8015D83C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D840  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015D844  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015D848  7C 7E 1B 78 */	mr r30, r3
/* 8015D84C  A8 03 09 28 */	lha r0, 0x928(r3)
/* 8015D850  2C 00 00 0A */	cmpwi r0, 0xa
/* 8015D854  41 80 00 F0 */	blt lbl_8015D944
/* 8015D858  C0 1E 09 54 */	lfs f0, 0x954(r30)
/* 8015D85C  FC 00 02 10 */	fabs f0, f0
/* 8015D860  FC 20 00 18 */	frsp f1, f0
/* 8015D864  C0 02 9B 9C */	lfs f0, lit_4506(r2)
/* 8015D868  EC 20 00 72 */	fmuls f1, f0, f1
/* 8015D86C  48 20 48 41 */	bl __cvt_fp2unsigned
/* 8015D870  7C 7F 1B 78 */	mr r31, r3
/* 8015D874  28 1F 00 64 */	cmplwi r31, 0x64
/* 8015D878  40 81 00 08 */	ble lbl_8015D880
/* 8015D87C  3B E0 00 64 */	li r31, 0x64
lbl_8015D880:
/* 8015D880  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 8015D884  2C 00 00 12 */	cmpwi r0, 0x12
/* 8015D888  40 80 00 24 */	bge lbl_8015D8AC
/* 8015D88C  2C 00 00 07 */	cmpwi r0, 7
/* 8015D890  40 80 00 10 */	bge lbl_8015D8A0
/* 8015D894  2C 00 00 01 */	cmpwi r0, 1
/* 8015D898  40 80 00 20 */	bge lbl_8015D8B8
/* 8015D89C  48 00 00 A8 */	b lbl_8015D944
lbl_8015D8A0:
/* 8015D8A0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8015D8A4  40 80 00 5C */	bge lbl_8015D900
/* 8015D8A8  48 00 00 9C */	b lbl_8015D944
lbl_8015D8AC:
/* 8015D8AC  2C 00 00 53 */	cmpwi r0, 0x53
/* 8015D8B0  41 82 00 50 */	beq lbl_8015D900
/* 8015D8B4  48 00 00 90 */	b lbl_8015D944
lbl_8015D8B8:
/* 8015D8B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8015D8BC  7C 03 07 74 */	extsb r3, r0
/* 8015D8C0  4B EC F7 AD */	bl dComIfGp_getReverb__Fi
/* 8015D8C4  7C 67 1B 78 */	mr r7, r3
/* 8015D8C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080083@ha */
/* 8015D8CC  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00080083@l */
/* 8015D8D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015D8D4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D8D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8015D8DC  38 BE 05 38 */	addi r5, r30, 0x538
/* 8015D8E0  7F E6 FB 78 */	mr r6, r31
/* 8015D8E4  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D8E8  FC 40 08 90 */	fmr f2, f1
/* 8015D8EC  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D8F0  FC 80 18 90 */	fmr f4, f3
/* 8015D8F4  39 00 00 00 */	li r8, 0
/* 8015D8F8  48 14 E0 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8015D8FC  48 00 00 48 */	b lbl_8015D944
lbl_8015D900:
/* 8015D900  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8015D904  7C 03 07 74 */	extsb r3, r0
/* 8015D908  4B EC F7 65 */	bl dComIfGp_getReverb__Fi
/* 8015D90C  7C 67 1B 78 */	mr r7, r3
/* 8015D910  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080085@ha */
/* 8015D914  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00080085@l */
/* 8015D918  90 01 00 08 */	stw r0, 8(r1)
/* 8015D91C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8015D920  38 81 00 08 */	addi r4, r1, 8
/* 8015D924  38 BE 05 38 */	addi r5, r30, 0x538
/* 8015D928  7F E6 FB 78 */	mr r6, r31
/* 8015D92C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D930  FC 40 08 90 */	fmr f2, f1
/* 8015D934  C0 62 9B BC */	lfs f3, lit_4923(r2)
/* 8015D938  FC 80 18 90 */	fmr f4, f3
/* 8015D93C  39 00 00 00 */	li r8, 0
/* 8015D940  48 14 E0 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8015D944:
/* 8015D944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015D948  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015D94C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D950  7C 08 03 A6 */	mtlr r0
/* 8015D954  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D958  4E 80 00 20 */	blr 
