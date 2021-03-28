lbl_80A1E578:
/* 80A1E578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1E57C  7C 08 02 A6 */	mflr r0
/* 80A1E580  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1E584  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A1E588  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A1E58C  7C 7F 1B 78 */	mr r31, r3
/* 80A1E590  3C 80 80 A2 */	lis r4, lit_3908@ha
/* 80A1E594  3B C4 10 80 */	addi r30, r4, lit_3908@l
/* 80A1E598  A8 83 14 06 */	lha r4, 0x1406(r3)
/* 80A1E59C  38 04 00 01 */	addi r0, r4, 1
/* 80A1E5A0  28 00 00 06 */	cmplwi r0, 6
/* 80A1E5A4  41 81 01 CC */	bgt lbl_80A1E770
/* 80A1E5A8  3C 80 80 A2 */	lis r4, lit_5636@ha
/* 80A1E5AC  38 84 16 44 */	addi r4, r4, lit_5636@l
/* 80A1E5B0  54 00 10 3A */	slwi r0, r0, 2
/* 80A1E5B4  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A1E5B8  7C 09 03 A6 */	mtctr r0
/* 80A1E5BC  4E 80 04 20 */	bctr 
lbl_80A1E5C0:
/* 80A1E5C0  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1E5C4  64 00 00 08 */	oris r0, r0, 8
/* 80A1E5C8  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1E5CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1E5D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1E5D4  38 63 09 78 */	addi r3, r3, 0x978
/* 80A1E5D8  38 80 00 3C */	li r4, 0x3c
/* 80A1E5DC  4B 61 65 BC */	b onSwitch__12dSv_danBit_cFi
/* 80A1E5E0  7F E3 FB 78 */	mr r3, r31
/* 80A1E5E4  48 00 01 A9 */	bl srchWolfTag__15daNpcKasiHana_cFv
/* 80A1E5E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A1E5EC  41 82 01 84 */	beq lbl_80A1E770
/* 80A1E5F0  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1E5F4  4B 73 23 0C */	b initialize__13daNpcF_Path_cFv
/* 80A1E5F8  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1E5FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A1E600  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80A1E604  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A1E608  7C 05 07 74 */	extsb r5, r0
/* 80A1E60C  38 C0 00 00 */	li r6, 0
/* 80A1E610  4B 73 23 4C */	b setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A1E614  7F E3 FB 78 */	mr r3, r31
/* 80A1E618  48 00 02 AD */	bl getWolfPathNearIdx__15daNpcKasiHana_cFv
/* 80A1E61C  B0 7F 0C 94 */	sth r3, 0xc94(r31)
/* 80A1E620  38 00 00 01 */	li r0, 1
/* 80A1E624  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E628  48 00 01 48 */	b lbl_80A1E770
lbl_80A1E62C:
/* 80A1E62C  38 80 10 00 */	li r4, 0x1000
/* 80A1E630  48 00 0B 69 */	bl _turn_to_link__15daNpcKasiHana_cFs
/* 80A1E634  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E638  41 82 01 38 */	beq lbl_80A1E770
/* 80A1E63C  7F E3 FB 78 */	mr r3, r31
/* 80A1E640  38 80 00 0A */	li r4, 0xa
/* 80A1E644  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A1E648  38 A0 00 00 */	li r5, 0
/* 80A1E64C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A1E650  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1E654  7D 89 03 A6 */	mtctr r12
/* 80A1E658  4E 80 04 21 */	bctrl 
/* 80A1E65C  38 00 00 03 */	li r0, 3
/* 80A1E660  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E664  48 00 01 0C */	b lbl_80A1E770
lbl_80A1E668:
/* 80A1E668  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A1E66C  38 80 00 01 */	li r4, 1
/* 80A1E670  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A1E674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A1E678  40 82 00 18 */	bne lbl_80A1E690
/* 80A1E67C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A1E680  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A1E684  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A1E688  41 82 00 08 */	beq lbl_80A1E690
/* 80A1E68C  38 80 00 00 */	li r4, 0
lbl_80A1E690:
/* 80A1E690  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A1E694  41 82 00 DC */	beq lbl_80A1E770
/* 80A1E698  7F E3 FB 78 */	mr r3, r31
/* 80A1E69C  38 80 00 09 */	li r4, 9
/* 80A1E6A0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A1E6A4  38 A0 00 00 */	li r5, 0
/* 80A1E6A8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A1E6AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1E6B0  7D 89 03 A6 */	mtctr r12
/* 80A1E6B4  4E 80 04 21 */	bctrl 
/* 80A1E6B8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80A1E6BC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1E6C0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D3@ha */
/* 80A1E6C4  38 03 01 D3 */	addi r0, r3, 0x01D3 /* 0x000501D3@l */
/* 80A1E6C8  90 01 00 08 */	stw r0, 8(r1)
/* 80A1E6CC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A1E6D0  38 81 00 08 */	addi r4, r1, 8
/* 80A1E6D4  38 A0 FF FF */	li r5, -1
/* 80A1E6D8  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 80A1E6DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A1E6E0  7D 89 03 A6 */	mtctr r12
/* 80A1E6E4  4E 80 04 21 */	bctrl 
/* 80A1E6E8  38 00 00 04 */	li r0, 4
/* 80A1E6EC  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E6F0  48 00 00 80 */	b lbl_80A1E770
lbl_80A1E6F4:
/* 80A1E6F4  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80A1E6F8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A1E6FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A1E700  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A1E704  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1E708  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A1E70C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1E710  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A1E714  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1E718  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1E71C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A1E720  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A1E724  4B 73 26 BC */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A1E728  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E72C  41 82 00 18 */	beq lbl_80A1E744
/* 80A1E730  38 00 00 01 */	li r0, 1
/* 80A1E734  98 1F 14 43 */	stb r0, 0x1443(r31)
/* 80A1E738  38 00 00 05 */	li r0, 5
/* 80A1E73C  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E740  48 00 00 30 */	b lbl_80A1E770
lbl_80A1E744:
/* 80A1E744  7F E3 FB 78 */	mr r3, r31
/* 80A1E748  38 81 00 18 */	addi r4, r1, 0x18
/* 80A1E74C  38 A0 03 20 */	li r5, 0x320
/* 80A1E750  48 00 0A 95 */	bl _turn_pos__15daNpcKasiHana_cFRC4cXyzs
/* 80A1E754  48 00 00 1C */	b lbl_80A1E770
lbl_80A1E758:
/* 80A1E758  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1E75C  4B FF D1 29 */	bl chkEscape__15daNpcKasi_Mng_cFv
/* 80A1E760  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E764  41 82 00 0C */	beq lbl_80A1E770
/* 80A1E768  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1E76C  4B FF D5 85 */	bl deleteAllMember__15daNpcKasi_Mng_cFv
lbl_80A1E770:
/* 80A1E770  38 60 00 01 */	li r3, 1
/* 80A1E774  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A1E778  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A1E77C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1E780  7C 08 03 A6 */	mtlr r0
/* 80A1E784  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1E788  4E 80 00 20 */	blr 
