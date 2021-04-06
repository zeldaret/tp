lbl_8076E418:
/* 8076E418  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076E41C  7C 08 02 A6 */	mflr r0
/* 8076E420  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076E424  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8076E428  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8076E42C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8076E430  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8076E434  39 61 00 20 */	addi r11, r1, 0x20
/* 8076E438  4B BF 3D A1 */	bl _savegpr_28
/* 8076E43C  7C 7C 1B 78 */	mr r28, r3
/* 8076E440  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 8076E444  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 8076E448  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076E44C  3C 80 80 78 */	lis r4, l_HIO@ha /* 0x8077A884@ha */
/* 8076E450  38 84 A8 84 */	addi r4, r4, l_HIO@l /* 0x8077A884@l */
/* 8076E454  C3 C4 00 14 */	lfs f30, 0x14(r4)
/* 8076E458  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076E45C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076E460  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8076E464  4B 8A C2 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8076E468  7C 7E 1B 78 */	mr r30, r3
/* 8076E46C  3B A0 00 00 */	li r29, 0
/* 8076E470  A8 7C 05 B4 */	lha r3, 0x5b4(r28)
/* 8076E474  38 03 00 14 */	addi r0, r3, 0x14
/* 8076E478  28 00 00 16 */	cmplwi r0, 0x16
/* 8076E47C  41 81 02 00 */	bgt lbl_8076E67C
/* 8076E480  3C 60 80 78 */	lis r3, lit_5218@ha /* 0x8077A17C@ha */
/* 8076E484  38 63 A1 7C */	addi r3, r3, lit_5218@l /* 0x8077A17C@l */
/* 8076E488  54 00 10 3A */	slwi r0, r0, 2
/* 8076E48C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8076E490  7C 09 03 A6 */	mtctr r0
/* 8076E494  4E 80 04 20 */	bctr 
lbl_8076E498:
/* 8076E498  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8076E49C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8076E4A0  FC 00 00 1E */	fctiwz f0, f0
/* 8076E4A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076E4A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076E4AC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8076E4B0  40 82 00 0C */	bne lbl_8076E4BC
/* 8076E4B4  38 00 00 00 */	li r0, 0
/* 8076E4B8  98 1C 05 BB */	stb r0, 0x5bb(r28)
lbl_8076E4BC:
/* 8076E4BC  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8076E4C0  38 80 00 01 */	li r4, 1
/* 8076E4C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076E4C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076E4CC  40 82 00 18 */	bne lbl_8076E4E4
/* 8076E4D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076E4D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076E4D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076E4DC  41 82 00 08 */	beq lbl_8076E4E4
/* 8076E4E0  38 80 00 00 */	li r4, 0
lbl_8076E4E4:
/* 8076E4E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076E4E8  41 82 01 94 */	beq lbl_8076E67C
/* 8076E4EC  38 00 00 00 */	li r0, 0
/* 8076E4F0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E4F4  48 00 01 88 */	b lbl_8076E67C
lbl_8076E4F8:
/* 8076E4F8  7F 83 E3 78 */	mr r3, r28
/* 8076E4FC  38 80 00 4C */	li r4, 0x4c
/* 8076E500  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076E504  38 A0 00 02 */	li r5, 2
/* 8076E508  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E50C  4B FF D9 75 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E510  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076E514  4B AF 94 41 */	bl cM_rndF__Ff
/* 8076E518  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8076E51C  EC 00 08 2A */	fadds f0, f0, f1
/* 8076E520  FC 00 00 1E */	fctiwz f0, f0
/* 8076E524  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076E528  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076E52C  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 8076E530  38 00 FF F7 */	li r0, -9
/* 8076E534  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E538  48 00 01 44 */	b lbl_8076E67C
lbl_8076E53C:
/* 8076E53C  38 00 00 01 */	li r0, 1
/* 8076E540  98 1C 0A 98 */	stb r0, 0xa98(r28)
/* 8076E544  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 8076E548  2C 00 00 00 */	cmpwi r0, 0
/* 8076E54C  40 82 01 30 */	bne lbl_8076E67C
/* 8076E550  38 00 00 00 */	li r0, 0
/* 8076E554  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E558  48 00 01 24 */	b lbl_8076E67C
lbl_8076E55C:
/* 8076E55C  88 1C 05 BB */	lbz r0, 0x5bb(r28)
/* 8076E560  7C 00 07 75 */	extsb. r0, r0
/* 8076E564  41 82 00 28 */	beq lbl_8076E58C
/* 8076E568  7F 83 E3 78 */	mr r3, r28
/* 8076E56C  38 80 00 04 */	li r4, 4
/* 8076E570  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8076E574  38 A0 00 00 */	li r5, 0
/* 8076E578  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E57C  4B FF D9 05 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E580  38 00 FF EC */	li r0, -20
/* 8076E584  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E588  48 00 00 F4 */	b lbl_8076E67C
lbl_8076E58C:
/* 8076E58C  7F 83 E3 78 */	mr r3, r28
/* 8076E590  38 80 00 3E */	li r4, 0x3e
/* 8076E594  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076E598  38 A0 00 02 */	li r5, 2
/* 8076E59C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E5A0  4B FF D8 E1 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E5A4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076E5A8  4B AF 93 AD */	bl cM_rndF__Ff
/* 8076E5AC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8076E5B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8076E5B4  FC 00 00 1E */	fctiwz f0, f0
/* 8076E5B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076E5BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076E5C0  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 8076E5C4  C0 7C 0A 48 */	lfs f3, 0xa48(r28)
/* 8076E5C8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076E5CC  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076E5D0  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 8076E5D4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076E5D8  EC 02 08 28 */	fsubs f0, f2, f1
/* 8076E5DC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8076E5E0  40 80 00 10 */	bge lbl_8076E5F0
/* 8076E5E4  38 00 00 01 */	li r0, 1
/* 8076E5E8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E5EC  48 00 00 90 */	b lbl_8076E67C
lbl_8076E5F0:
/* 8076E5F0  EC 01 10 2A */	fadds f0, f1, f2
/* 8076E5F4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8076E5F8  40 81 00 10 */	ble lbl_8076E608
/* 8076E5FC  38 00 00 02 */	li r0, 2
/* 8076E600  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E604  48 00 00 78 */	b lbl_8076E67C
lbl_8076E608:
/* 8076E608  3B A0 00 01 */	li r29, 1
/* 8076E60C  48 00 00 70 */	b lbl_8076E67C
lbl_8076E610:
/* 8076E610  FF E0 F0 90 */	fmr f31, f30
/* 8076E614  3F DE 00 01 */	addis r30, r30, 1
/* 8076E618  C0 3C 0A 48 */	lfs f1, 0xa48(r28)
/* 8076E61C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076E620  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076E624  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8076E628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076E62C  3B DE 80 00 */	addi r30, r30, -32768
/* 8076E630  41 81 00 1C */	bgt lbl_8076E64C
/* 8076E634  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 8076E638  2C 00 00 00 */	cmpwi r0, 0
/* 8076E63C  41 82 00 10 */	beq lbl_8076E64C
/* 8076E640  80 1C 0C 40 */	lwz r0, 0xc40(r28)
/* 8076E644  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8076E648  41 82 00 08 */	beq lbl_8076E650
lbl_8076E64C:
/* 8076E64C  3B A0 00 01 */	li r29, 1
lbl_8076E650:
/* 8076E650  38 00 00 14 */	li r0, 0x14
/* 8076E654  B0 1C 0A 64 */	sth r0, 0xa64(r28)
/* 8076E658  48 00 00 24 */	b lbl_8076E67C
lbl_8076E65C:
/* 8076E65C  FF E0 F0 90 */	fmr f31, f30
/* 8076E660  C0 3C 0A 48 */	lfs f1, 0xa48(r28)
/* 8076E664  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076E668  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076E66C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8076E670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076E674  40 80 00 08 */	bge lbl_8076E67C
/* 8076E678  3B A0 00 01 */	li r29, 1
lbl_8076E67C:
/* 8076E67C  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8076E680  2C 00 00 00 */	cmpwi r0, 0
/* 8076E684  41 80 00 38 */	blt lbl_8076E6BC
/* 8076E688  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8076E68C  7F C4 F3 78 */	mr r4, r30
/* 8076E690  38 A0 00 02 */	li r5, 2
/* 8076E694  38 C0 10 00 */	li r6, 0x1000
/* 8076E698  4B B0 1F 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8076E69C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8076E6A0  7C 1E 00 50 */	subf r0, r30, r0
/* 8076E6A4  7C 00 07 34 */	extsh r0, r0
/* 8076E6A8  2C 00 08 00 */	cmpwi r0, 0x800
/* 8076E6AC  41 81 00 0C */	bgt lbl_8076E6B8
/* 8076E6B0  2C 00 F8 00 */	cmpwi r0, -2048
/* 8076E6B4  40 80 00 08 */	bge lbl_8076E6BC
lbl_8076E6B8:
/* 8076E6B8  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8076E6BC:
/* 8076E6BC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8076E6C0  FC 20 F8 90 */	fmr f1, f31
/* 8076E6C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E6C8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8076E6CC  4B B0 13 71 */	bl cLib_addCalc2__FPffff
/* 8076E6D0  7F 83 E3 78 */	mr r3, r28
/* 8076E6D4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8076E6D8  4B FF EA 85 */	bl move_gake_check__FP11e_rdy_classf
/* 8076E6DC  2C 03 00 00 */	cmpwi r3, 0
/* 8076E6E0  41 82 00 08 */	beq lbl_8076E6E8
/* 8076E6E4  3B A0 00 01 */	li r29, 1
lbl_8076E6E8:
/* 8076E6E8  88 1C 05 BB */	lbz r0, 0x5bb(r28)
/* 8076E6EC  7C 00 07 75 */	extsb. r0, r0
/* 8076E6F0  40 82 00 50 */	bne lbl_8076E740
/* 8076E6F4  7F A0 07 75 */	extsb. r0, r29
/* 8076E6F8  41 82 00 48 */	beq lbl_8076E740
/* 8076E6FC  88 1C 05 B8 */	lbz r0, 0x5b8(r28)
/* 8076E700  28 00 00 03 */	cmplwi r0, 3
/* 8076E704  40 82 00 10 */	bne lbl_8076E714
/* 8076E708  38 00 00 07 */	li r0, 7
/* 8076E70C  B0 1C 0A 42 */	sth r0, 0xa42(r28)
/* 8076E710  48 00 00 0C */	b lbl_8076E71C
lbl_8076E714:
/* 8076E714  38 00 00 06 */	li r0, 6
/* 8076E718  B0 1C 0A 42 */	sth r0, 0xa42(r28)
lbl_8076E71C:
/* 8076E71C  38 00 00 00 */	li r0, 0
/* 8076E720  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E724  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8076E728  4B AF 92 2D */	bl cM_rndF__Ff
/* 8076E72C  FC 00 08 1E */	fctiwz f0, f1
/* 8076E730  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076E734  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076E738  B0 1C 0A 62 */	sth r0, 0xa62(r28)
/* 8076E73C  48 00 00 A4 */	b lbl_8076E7E0
lbl_8076E740:
/* 8076E740  A8 1C 0A 64 */	lha r0, 0xa64(r28)
/* 8076E744  2C 00 00 00 */	cmpwi r0, 0
/* 8076E748  40 82 00 6C */	bne lbl_8076E7B4
/* 8076E74C  7F 83 E3 78 */	mr r3, r28
/* 8076E750  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076E754  C0 1C 0A 50 */	lfs f0, 0xa50(r28)
/* 8076E758  EC 21 00 2A */	fadds f1, f1, f0
/* 8076E75C  38 80 7F FF */	li r4, 0x7fff
/* 8076E760  4B FF E8 A5 */	bl pl_check__FP11e_rdy_classfs
/* 8076E764  2C 03 00 00 */	cmpwi r3, 0
/* 8076E768  40 82 00 4C */	bne lbl_8076E7B4
/* 8076E76C  38 00 00 00 */	li r0, 0
/* 8076E770  B0 1C 0A 42 */	sth r0, 0xa42(r28)
/* 8076E774  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076E778  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076E77C  4B AF 91 D9 */	bl cM_rndF__Ff
/* 8076E780  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076E784  EC 00 08 2A */	fadds f0, f0, f1
/* 8076E788  FC 00 00 1E */	fctiwz f0, f0
/* 8076E78C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076E790  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076E794  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 8076E798  7F 83 E3 78 */	mr r3, r28
/* 8076E79C  38 80 00 1E */	li r4, 0x1e
/* 8076E7A0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076E7A4  38 A0 00 02 */	li r5, 2
/* 8076E7A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E7AC  4B FF D6 D5 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E7B0  48 00 00 30 */	b lbl_8076E7E0
lbl_8076E7B4:
/* 8076E7B4  A8 1C 0A 40 */	lha r0, 0xa40(r28)
/* 8076E7B8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8076E7BC  40 82 00 24 */	bne lbl_8076E7E0
/* 8076E7C0  7F 83 E3 78 */	mr r3, r28
/* 8076E7C4  4B FF E9 51 */	bl bomb_view_check__FP11e_rdy_class
/* 8076E7C8  28 03 00 00 */	cmplwi r3, 0
/* 8076E7CC  41 82 00 14 */	beq lbl_8076E7E0
/* 8076E7D0  38 00 00 13 */	li r0, 0x13
/* 8076E7D4  B0 1C 0A 42 */	sth r0, 0xa42(r28)
/* 8076E7D8  38 00 00 00 */	li r0, 0
/* 8076E7DC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8076E7E0:
/* 8076E7E0  A8 1C 0A 42 */	lha r0, 0xa42(r28)
/* 8076E7E4  2C 00 00 05 */	cmpwi r0, 5
/* 8076E7E8  41 82 00 0C */	beq lbl_8076E7F4
/* 8076E7EC  38 00 00 00 */	li r0, 0
/* 8076E7F0  98 1C 0A 98 */	stb r0, 0xa98(r28)
lbl_8076E7F4:
/* 8076E7F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8076E7F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8076E7FC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8076E800  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8076E804  39 61 00 20 */	addi r11, r1, 0x20
/* 8076E808  4B BF 3A 1D */	bl _restgpr_28
/* 8076E80C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076E810  7C 08 03 A6 */	mtlr r0
/* 8076E814  38 21 00 40 */	addi r1, r1, 0x40
/* 8076E818  4E 80 00 20 */	blr 
