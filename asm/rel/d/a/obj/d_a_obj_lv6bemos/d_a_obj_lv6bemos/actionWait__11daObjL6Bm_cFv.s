lbl_80C7D598:
/* 80C7D598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7D59C  7C 08 02 A6 */	mflr r0
/* 80C7D5A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7D5A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7D5A8  4B 6E 4C 2C */	b _savegpr_27
/* 80C7D5AC  7C 7E 1B 78 */	mr r30, r3
/* 80C7D5B0  3C 80 80 C8 */	lis r4, l_sph_src@ha
/* 80C7D5B4  3B E4 DE CC */	addi r31, r4, l_sph_src@l
/* 80C7D5B8  3B 80 00 00 */	li r28, 0
/* 80C7D5BC  3B 60 00 00 */	li r27, 0
/* 80C7D5C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C7D5C4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80C7D5C8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7D5CC  4B 39 D3 98 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7D5D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C7D5D4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C7D5D8  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7D5DC  41 82 00 28 */	beq lbl_80C7D604
/* 80C7D5E0  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80C7D5E4  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 80C7D5E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7D5EC  3C 00 43 30 */	lis r0, 0x4330
/* 80C7D5F0  90 01 00 08 */	stw r0, 8(r1)
/* 80C7D5F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7D5F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C7D5FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7D600  48 00 00 08 */	b lbl_80C7D608
lbl_80C7D604:
/* 80C7D604  C0 1F 00 88 */	lfs f0, 0x88(r31)
lbl_80C7D608:
/* 80C7D608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7D60C  40 80 00 08 */	bge lbl_80C7D614
/* 80C7D610  3B 80 00 01 */	li r28, 1
lbl_80C7D614:
/* 80C7D614  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80C7D618  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80C7D61C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C7D620  4B 5F 35 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C7D624  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C7D628  7C 00 18 50 */	subf r0, r0, r3
/* 80C7D62C  7C 03 07 34 */	extsh r3, r0
/* 80C7D630  4B 6E 7A A0 */	b abs
/* 80C7D634  7C 60 07 34 */	extsh r0, r3
/* 80C7D638  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80C7D63C  40 80 00 08 */	bge lbl_80C7D644
/* 80C7D640  3B 60 00 01 */	li r27, 1
lbl_80C7D644:
/* 80C7D644  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C7D648  41 82 00 20 */	beq lbl_80C7D668
/* 80C7D64C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C7D650  41 82 00 18 */	beq lbl_80C7D668
/* 80C7D654  38 00 00 01 */	li r0, 1
/* 80C7D658  98 1E 09 10 */	stb r0, 0x910(r30)
/* 80C7D65C  38 00 00 14 */	li r0, 0x14
/* 80C7D660  98 1E 09 11 */	stb r0, 0x911(r30)
/* 80C7D664  48 00 00 2C */	b lbl_80C7D690
lbl_80C7D668:
/* 80C7D668  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C7D66C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80C7D670  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7D674  38 60 04 B0 */	li r3, 0x4b0
/* 80C7D678  41 82 00 0C */	beq lbl_80C7D684
/* 80C7D67C  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80C7D680  7C 03 07 34 */	extsh r3, r0
lbl_80C7D684:
/* 80C7D684  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C7D688  7C 00 1A 14 */	add r0, r0, r3
/* 80C7D68C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80C7D690:
/* 80C7D690  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C7D694  B0 1E 08 92 */	sth r0, 0x892(r30)
/* 80C7D698  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D69C  4B 38 FD 8C */	b play__14mDoExt_baseAnmFv
/* 80C7D6A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C7D6A4  41 82 00 10 */	beq lbl_80C7D6B4
/* 80C7D6A8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C7D6AC  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D6B0  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80C7D6B4:
/* 80C7D6B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7D6B8  4B 6E 4B 68 */	b _restgpr_27
/* 80C7D6BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7D6C0  7C 08 03 A6 */	mtlr r0
/* 80C7D6C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7D6C8  4E 80 00 20 */	blr 
