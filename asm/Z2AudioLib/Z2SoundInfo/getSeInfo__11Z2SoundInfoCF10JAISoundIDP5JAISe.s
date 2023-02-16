lbl_802BB6DC:
/* 802BB6DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BB6E0  7C 08 02 A6 */	mflr r0
/* 802BB6E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BB6E8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802BB6EC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802BB6F0  39 61 00 40 */	addi r11, r1, 0x40
/* 802BB6F4  48 0A 6A E1 */	bl _savegpr_27
/* 802BB6F8  7C 7B 1B 78 */	mr r27, r3
/* 802BB6FC  7C 9C 23 78 */	mr r28, r4
/* 802BB700  7C BD 2B 79 */	or. r29, r5, r5
/* 802BB704  41 82 00 08 */	beq lbl_802BB70C
/* 802BB708  38 A5 00 10 */	addi r5, r5, 0x10
lbl_802BB70C:
/* 802BB70C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802BB710  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BB714  7F 63 DB 78 */	mr r3, r27
/* 802BB718  38 81 00 18 */	addi r4, r1, 0x18
/* 802BB71C  48 00 04 2D */	bl getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound
/* 802BB720  80 1C 00 00 */	lwz r0, 0(r28)
/* 802BB724  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BB728  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB72C  38 81 00 14 */	addi r4, r1, 0x14
/* 802BB730  4B FE BB 5D */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BB734  7C 7F 1B 78 */	mr r31, r3
/* 802BB738  80 1C 00 00 */	lwz r0, 0(r28)
/* 802BB73C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BB740  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB744  38 81 00 10 */	addi r4, r1, 0x10
/* 802BB748  4B FE BA 19 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB74C  28 1F 00 00 */	cmplwi r31, 0
/* 802BB750  41 82 01 44 */	beq lbl_802BB894
/* 802BB754  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802BB758  2C 00 00 51 */	cmpwi r0, 0x51
/* 802BB75C  41 82 00 08 */	beq lbl_802BB764
/* 802BB760  48 00 01 34 */	b lbl_802BB894
lbl_802BB764:
/* 802BB764  3B DD 00 54 */	addi r30, r29, 0x54
/* 802BB768  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 802BB76C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802BB770  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BB774  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 802BB778  80 1C 00 00 */	lwz r0, 0(r28)
/* 802BB77C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB780  7F 63 DB 78 */	mr r3, r27
/* 802BB784  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB788  48 00 03 41 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB78C  54 7F E7 3E */	rlwinm r31, r3, 0x1c, 0x1c, 0x1f
/* 802BB790  28 1F 00 08 */	cmplwi r31, 8
/* 802BB794  40 81 00 58 */	ble lbl_802BB7EC
/* 802BB798  4B FE E1 3D */	bl getRandom_0_1__6Z2CalcFv
/* 802BB79C  FF E0 08 90 */	fmr f31, f1
/* 802BB7A0  C8 22 C0 88 */	lfd f1, lit_973(r2)
/* 802BB7A4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802BB7A8  3C 00 43 30 */	lis r0, 0x4330
/* 802BB7AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BB7B0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BB7B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BB7B8  C0 42 C0 68 */	lfs f2, lit_963(r2)
/* 802BB7BC  C0 62 C0 6C */	lfs f3, lit_964(r2)
/* 802BB7C0  C0 82 C0 70 */	lfs f4, lit_965(r2)
/* 802BB7C4  C0 A2 C0 74 */	lfs f5, lit_966(r2)
/* 802BB7C8  38 60 00 01 */	li r3, 1
/* 802BB7CC  4B FE DE C1 */	bl linearTransform__6Z2CalcFfffffb
/* 802BB7D0  C0 02 C0 78 */	lfs f0, lit_967(r2)
/* 802BB7D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802BB7D8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802BB7DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BB7E0  EC 00 08 2A */	fadds f0, f0, f1
/* 802BB7E4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 802BB7E8  48 00 00 38 */	b lbl_802BB820
lbl_802BB7EC:
/* 802BB7EC  4B FE E0 E9 */	bl getRandom_0_1__6Z2CalcFv
/* 802BB7F0  C8 42 C0 88 */	lfd f2, lit_973(r2)
/* 802BB7F4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802BB7F8  3C 00 43 30 */	lis r0, 0x4330
/* 802BB7FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BB800  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BB804  EC 40 10 28 */	fsubs f2, f0, f2
/* 802BB808  C0 02 C0 78 */	lfs f0, lit_967(r2)
/* 802BB80C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BB810  EC 20 00 72 */	fmuls f1, f0, f1
/* 802BB814  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BB818  EC 00 08 2A */	fadds f0, f0, f1
/* 802BB81C  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_802BB820:
/* 802BB820  80 1C 00 00 */	lwz r0, 0(r28)
/* 802BB824  90 01 00 08 */	stw r0, 8(r1)
/* 802BB828  7F 63 DB 78 */	mr r3, r27
/* 802BB82C  38 81 00 08 */	addi r4, r1, 8
/* 802BB830  48 00 02 99 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB834  54 7E 27 3F */	rlwinm. r30, r3, 4, 0x1c, 0x1f
/* 802BB838  41 82 00 5C */	beq lbl_802BB894
/* 802BB83C  4B FE E0 99 */	bl getRandom_0_1__6Z2CalcFv
/* 802BB840  C8 42 C0 88 */	lfd f2, lit_973(r2)
/* 802BB844  93 C1 00 24 */	stw r30, 0x24(r1)
/* 802BB848  3C 00 43 30 */	lis r0, 0x4330
/* 802BB84C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BB850  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BB854  EC 40 10 28 */	fsubs f2, f0, f2
/* 802BB858  C0 02 C0 6C */	lfs f0, lit_964(r2)
/* 802BB85C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BB860  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BB864  C0 22 C0 7C */	lfs f1, lit_968(r2)
/* 802BB868  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BB86C  40 80 00 08 */	bge lbl_802BB874
/* 802BB870  48 00 00 18 */	b lbl_802BB888
lbl_802BB874:
/* 802BB874  C0 22 C0 80 */	lfs f1, lit_969(r2)
/* 802BB878  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BB87C  40 81 00 08 */	ble lbl_802BB884
/* 802BB880  48 00 00 08 */	b lbl_802BB888
lbl_802BB884:
/* 802BB884  FC 20 00 90 */	fmr f1, f0
lbl_802BB888:
/* 802BB888  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 802BB88C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BB890  D0 1D 00 4C */	stfs f0, 0x4c(r29)
lbl_802BB894:
/* 802BB894  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802BB898  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802BB89C  39 61 00 40 */	addi r11, r1, 0x40
/* 802BB8A0  48 0A 69 81 */	bl _restgpr_27
/* 802BB8A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BB8A8  7C 08 03 A6 */	mtlr r0
/* 802BB8AC  38 21 00 50 */	addi r1, r1, 0x50
/* 802BB8B0  4E 80 00 20 */	blr 
