lbl_804E6608:
/* 804E6608  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E660C  7C 08 02 A6 */	mflr r0
/* 804E6610  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E6614  39 61 00 50 */	addi r11, r1, 0x50
/* 804E6618  4B E7 BB C4 */	b _savegpr_29
/* 804E661C  7C 7E 1B 78 */	mr r30, r3
/* 804E6620  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E6624  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E6628  38 00 00 05 */	li r0, 5
/* 804E662C  98 03 06 F4 */	stb r0, 0x6f4(r3)
/* 804E6630  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E6634  28 00 00 0A */	cmplwi r0, 0xa
/* 804E6638  41 81 03 DC */	bgt lbl_804E6A14
/* 804E663C  3C 80 80 4F */	lis r4, lit_4546@ha
/* 804E6640  38 84 EA 78 */	addi r4, r4, lit_4546@l
/* 804E6644  54 00 10 3A */	slwi r0, r0, 2
/* 804E6648  7C 04 00 2E */	lwzx r0, r4, r0
/* 804E664C  7C 09 03 A6 */	mtctr r0
/* 804E6650  4E 80 04 20 */	bctr 
lbl_804E6654:
/* 804E6654  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804E6658  4B D8 12 FC */	b cM_rndF__Ff
/* 804E665C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804E6660  EC 40 08 2A */	fadds f2, f0, f1
/* 804E6664  7F C3 F3 78 */	mr r3, r30
/* 804E6668  38 80 00 1F */	li r4, 0x1f
/* 804E666C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6670  38 A0 00 02 */	li r5, 2
/* 804E6674  4B FF EC 5D */	bl anm_init__FP10e_dn_classifUcf
/* 804E6678  38 00 00 01 */	li r0, 1
/* 804E667C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6680:
/* 804E6680  7F C3 F3 78 */	mr r3, r30
/* 804E6684  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 804E6688  4B B3 65 D4 */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 804E668C  2C 03 00 00 */	cmpwi r3, 0
/* 804E6690  40 82 00 1C */	bne lbl_804E66AC
/* 804E6694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E6698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E669C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E66A0  80 03 05 80 */	lwz r0, 0x580(r3)
/* 804E66A4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 804E66A8  41 82 03 6C */	beq lbl_804E6A14
lbl_804E66AC:
/* 804E66AC  4B CC 1D C8 */	b dKy_Sound_get__Fv
/* 804E66B0  7C 7D 1B 78 */	mr r29, r3
/* 804E66B4  38 61 00 10 */	addi r3, r1, 0x10
/* 804E66B8  7F A4 EB 78 */	mr r4, r29
/* 804E66BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E66C0  4B D8 04 74 */	b __mi__4cXyzCFRC3Vec
/* 804E66C4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E66C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804E66CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E66D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E66D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E66D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E66DC  EC 21 00 72 */	fmuls f1, f1, f1
/* 804E66E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E66E4  EC 41 00 2A */	fadds f2, f1, f0
/* 804E66E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E66EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E66F0  40 81 00 0C */	ble lbl_804E66FC
/* 804E66F4  FC 00 10 34 */	frsqrte f0, f2
/* 804E66F8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804E66FC:
/* 804E66FC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804E6700  4B D8 0F 74 */	b cM_atan2s__Fff
/* 804E6704  7C 60 07 34 */	extsh r0, r3
/* 804E6708  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804E670C  40 81 00 10 */	ble lbl_804E671C
/* 804E6710  38 00 00 05 */	li r0, 5
/* 804E6714  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6718  48 00 00 0C */	b lbl_804E6724
lbl_804E671C:
/* 804E671C  38 00 00 02 */	li r0, 2
/* 804E6720  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6724:
/* 804E6724  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6728  4B D8 12 2C */	b cM_rndF__Ff
/* 804E672C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804E6730  EC 00 08 2A */	fadds f0, f0, f1
/* 804E6734  FC 00 00 1E */	fctiwz f0, f0
/* 804E6738  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E673C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6740  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6744  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804E6748  D0 1E 07 38 */	stfs f0, 0x738(r30)
/* 804E674C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804E6750  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 804E6754  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804E6758  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 804E675C  48 00 02 B8 */	b lbl_804E6A14
lbl_804E6760:
/* 804E6760  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E6764  2C 00 00 00 */	cmpwi r0, 0
/* 804E6768  40 82 02 AC */	bne lbl_804E6A14
/* 804E676C  38 80 00 15 */	li r4, 0x15
/* 804E6770  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E6774  38 A0 00 00 */	li r5, 0
/* 804E6778  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804E677C  4B FF EB 55 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6780  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003F@ha */
/* 804E6784  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0007003F@l */
/* 804E6788  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E678C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E6790  38 81 00 0C */	addi r4, r1, 0xc
/* 804E6794  38 A0 FF FF */	li r5, -1
/* 804E6798  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E679C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E67A0  7D 89 03 A6 */	mtctr r12
/* 804E67A4  4E 80 04 21 */	bctrl 
/* 804E67A8  38 00 00 03 */	li r0, 3
/* 804E67AC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E67B0  48 00 02 64 */	b lbl_804E6A14
lbl_804E67B4:
/* 804E67B4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E67B8  38 80 00 01 */	li r4, 1
/* 804E67BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E67C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E67C4  40 82 00 18 */	bne lbl_804E67DC
/* 804E67C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E67CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E67D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E67D4  41 82 00 08 */	beq lbl_804E67DC
/* 804E67D8  38 80 00 00 */	li r4, 0
lbl_804E67DC:
/* 804E67DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E67E0  41 82 02 34 */	beq lbl_804E6A14
/* 804E67E4  7F C3 F3 78 */	mr r3, r30
/* 804E67E8  38 9E 07 38 */	addi r4, r30, 0x738
/* 804E67EC  4B FF F4 0D */	bl other_bg_check2__FP10e_dn_classP4cXyz
/* 804E67F0  2C 03 00 00 */	cmpwi r3, 0
/* 804E67F4  41 82 00 30 */	beq lbl_804E6824
/* 804E67F8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E67FC  4B D8 11 58 */	b cM_rndF__Ff
/* 804E6800  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804E6804  EC 00 08 2A */	fadds f0, f0, f1
/* 804E6808  FC 00 00 1E */	fctiwz f0, f0
/* 804E680C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6810  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6814  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6818  38 00 00 04 */	li r0, 4
/* 804E681C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6820  48 00 01 F4 */	b lbl_804E6A14
lbl_804E6824:
/* 804E6824  38 00 00 0A */	li r0, 0xa
/* 804E6828  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E682C  38 00 00 00 */	li r0, 0
/* 804E6830  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6834  48 00 01 E0 */	b lbl_804E6A14
lbl_804E6838:
/* 804E6838  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E683C  2C 00 00 00 */	cmpwi r0, 0
/* 804E6840  40 82 01 D4 */	bne lbl_804E6A14
/* 804E6844  38 00 00 0A */	li r0, 0xa
/* 804E6848  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E684C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6850  4B D8 11 04 */	b cM_rndF__Ff
/* 804E6854  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E6858  EC 00 08 2A */	fadds f0, f0, f1
/* 804E685C  FC 00 00 1E */	fctiwz f0, f0
/* 804E6860  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6864  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6868  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E686C  7F C3 F3 78 */	mr r3, r30
/* 804E6870  38 80 00 21 */	li r4, 0x21
/* 804E6874  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E6878  38 A0 00 02 */	li r5, 2
/* 804E687C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804E6880  4B FF EA 51 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6884  48 00 01 90 */	b lbl_804E6A14
lbl_804E6888:
/* 804E6888  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E688C  2C 00 00 00 */	cmpwi r0, 0
/* 804E6890  40 82 01 84 */	bne lbl_804E6A14
/* 804E6894  38 80 00 15 */	li r4, 0x15
/* 804E6898  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E689C  38 A0 00 00 */	li r5, 0
/* 804E68A0  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804E68A4  4B FF EA 2D */	bl anm_init__FP10e_dn_classifUcf
/* 804E68A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003F@ha */
/* 804E68AC  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0007003F@l */
/* 804E68B0  90 01 00 08 */	stw r0, 8(r1)
/* 804E68B4  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E68B8  38 81 00 08 */	addi r4, r1, 8
/* 804E68BC  38 A0 FF FF */	li r5, -1
/* 804E68C0  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E68C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E68C8  7D 89 03 A6 */	mtctr r12
/* 804E68CC  4E 80 04 21 */	bctrl 
/* 804E68D0  38 00 00 06 */	li r0, 6
/* 804E68D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E68D8  48 00 01 3C */	b lbl_804E6A14
lbl_804E68DC:
/* 804E68DC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E68E0  38 80 00 01 */	li r4, 1
/* 804E68E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E68E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E68EC  40 82 00 18 */	bne lbl_804E6904
/* 804E68F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E68F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E68F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E68FC  41 82 00 08 */	beq lbl_804E6904
/* 804E6900  38 80 00 00 */	li r4, 0
lbl_804E6904:
/* 804E6904  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E6908  41 82 01 0C */	beq lbl_804E6A14
/* 804E690C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6910  4B D8 10 44 */	b cM_rndF__Ff
/* 804E6914  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804E6918  EC 00 08 2A */	fadds f0, f0, f1
/* 804E691C  FC 00 00 1E */	fctiwz f0, f0
/* 804E6920  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6924  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6928  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E692C  38 00 00 07 */	li r0, 7
/* 804E6930  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6934  48 00 00 E0 */	b lbl_804E6A14
lbl_804E6938:
/* 804E6938  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E693C  2C 00 00 00 */	cmpwi r0, 0
/* 804E6940  40 82 00 D4 */	bne lbl_804E6A14
/* 804E6944  38 00 00 0A */	li r0, 0xa
/* 804E6948  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E694C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804E6950  4B D8 10 04 */	b cM_rndF__Ff
/* 804E6954  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E6958  EC 00 08 2A */	fadds f0, f0, f1
/* 804E695C  FC 00 00 1E */	fctiwz f0, f0
/* 804E6960  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6964  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6968  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E696C  7F C3 F3 78 */	mr r3, r30
/* 804E6970  38 80 00 22 */	li r4, 0x22
/* 804E6974  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E6978  38 A0 00 02 */	li r5, 2
/* 804E697C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 804E6980  4B FF E9 51 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6984  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804E6988  4B D8 0F CC */	b cM_rndF__Ff
/* 804E698C  FC 00 08 1E */	fctiwz f0, f1
/* 804E6990  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E6994  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E6998  7C 00 07 34 */	extsh r0, r0
/* 804E699C  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804E69A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804E69A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804E69A8  3C 00 43 30 */	lis r0, 0x4330
/* 804E69AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804E69B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804E69B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804E69B8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E69BC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804E69C0  48 00 00 54 */	b lbl_804E6A14
lbl_804E69C4:
/* 804E69C4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E69C8  38 80 00 01 */	li r4, 1
/* 804E69CC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E69D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E69D4  40 82 00 18 */	bne lbl_804E69EC
/* 804E69D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E69DC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E69E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E69E4  41 82 00 08 */	beq lbl_804E69EC
/* 804E69E8  38 80 00 00 */	li r4, 0
lbl_804E69EC:
/* 804E69EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E69F0  41 82 00 24 */	beq lbl_804E6A14
/* 804E69F4  38 00 00 00 */	li r0, 0
/* 804E69F8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E69FC  48 00 00 18 */	b lbl_804E6A14
lbl_804E6A00:
/* 804E6A00  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E6A04  2C 00 00 00 */	cmpwi r0, 0
/* 804E6A08  40 82 00 0C */	bne lbl_804E6A14
/* 804E6A0C  38 00 00 00 */	li r0, 0
/* 804E6A10  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6A14:
/* 804E6A14  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 804E6A18  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804E6A1C  40 82 00 58 */	bne lbl_804E6A74
/* 804E6A20  7F C3 F3 78 */	mr r3, r30
/* 804E6A24  C0 3E 06 D8 */	lfs f1, 0x6d8(r30)
/* 804E6A28  38 80 40 00 */	li r4, 0x4000
/* 804E6A2C  4B FF F8 39 */	bl pl_check__FP10e_dn_classfs
/* 804E6A30  2C 03 00 00 */	cmpwi r3, 0
/* 804E6A34  41 82 00 20 */	beq lbl_804E6A54
/* 804E6A38  38 00 00 03 */	li r0, 3
/* 804E6A3C  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E6A40  38 00 FF F6 */	li r0, -10
/* 804E6A44  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6A48  38 00 00 3C */	li r0, 0x3c
/* 804E6A4C  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6A50  48 00 00 24 */	b lbl_804E6A74
lbl_804E6A54:
/* 804E6A54  7F C3 F3 78 */	mr r3, r30
/* 804E6A58  4B FF F7 81 */	bl bomb_view_check__FP10e_dn_class
/* 804E6A5C  28 03 00 00 */	cmplwi r3, 0
/* 804E6A60  41 82 00 14 */	beq lbl_804E6A74
/* 804E6A64  38 00 00 0B */	li r0, 0xb
/* 804E6A68  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E6A6C  38 00 00 00 */	li r0, 0
/* 804E6A70  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6A74:
/* 804E6A74  39 61 00 50 */	addi r11, r1, 0x50
/* 804E6A78  4B E7 B7 B0 */	b _restgpr_29
/* 804E6A7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E6A80  7C 08 03 A6 */	mtlr r0
/* 804E6A84  38 21 00 50 */	addi r1, r1, 0x50
/* 804E6A88  4E 80 00 20 */	blr 
