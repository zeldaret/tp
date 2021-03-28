lbl_80D648B4:
/* 80D648B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D648B8  7C 08 02 A6 */	mflr r0
/* 80D648BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D648C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D648C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D648C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D648CC  3C 60 80 D6 */	lis r3, m_master_id@ha
/* 80D648D0  38 63 4D 94 */	addi r3, r3, m_master_id@l
/* 80D648D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D648D8  41 82 00 0C */	beq lbl_80D648E4
/* 80D648DC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80D648E0  48 00 00 08 */	b lbl_80D648E8
lbl_80D648E4:
/* 80D648E4  38 00 FF FF */	li r0, -1
lbl_80D648E8:
/* 80D648E8  7C 03 00 40 */	cmplw r3, r0
/* 80D648EC  40 82 01 B0 */	bne lbl_80D64A9C
/* 80D648F0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D648F4  28 00 00 00 */	cmplwi r0, 0
/* 80D648F8  41 82 00 40 */	beq lbl_80D64938
/* 80D648FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D64900  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 80D64904  C0 04 11 E4 */	lfs f0, 0x11e4(r4)
/* 80D64908  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 80D6490C  C0 04 11 E8 */	lfs f0, 0x11e8(r4)
/* 80D64910  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80D64914  88 7F 05 81 */	lbz r3, 0x581(r31)
/* 80D64918  38 03 FF FF */	addi r0, r3, -1
/* 80D6491C  98 1F 05 81 */	stb r0, 0x581(r31)
/* 80D64920  88 04 12 C8 */	lbz r0, 0x12c8(r4)
/* 80D64924  98 1F 05 82 */	stb r0, 0x582(r31)
/* 80D64928  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D6492C  C0 03 4D 80 */	lfs f0, lit_3803@l(r3)
/* 80D64930  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D64934  48 00 01 68 */	b lbl_80D64A9C
lbl_80D64938:
/* 80D64938  3B C0 00 00 */	li r30, 0
/* 80D6493C  3C 60 80 D6 */	lis r3, s_waterfall__FPvPv@ha
/* 80D64940  38 63 46 A8 */	addi r3, r3, s_waterfall__FPvPv@l
/* 80D64944  7F E4 FB 78 */	mr r4, r31
/* 80D64948  4B 2B C9 F0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D6494C  28 03 00 00 */	cmplwi r3, 0
/* 80D64950  41 82 00 08 */	beq lbl_80D64958
/* 80D64954  3B C0 00 01 */	li r30, 1
lbl_80D64958:
/* 80D64958  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D6495C  40 82 00 2C */	bne lbl_80D64988
/* 80D64960  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 80D64964  28 00 00 00 */	cmplwi r0, 0
/* 80D64968  40 82 00 20 */	bne lbl_80D64988
/* 80D6496C  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D64970  C0 23 4D 80 */	lfs f1, lit_3803@l(r3)
/* 80D64974  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80D64978  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D6497C  40 82 00 0C */	bne lbl_80D64988
/* 80D64980  38 60 00 01 */	li r3, 1
/* 80D64984  48 00 01 1C */	b lbl_80D64AA0
lbl_80D64988:
/* 80D64988  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 80D6498C  28 03 00 00 */	cmplwi r3, 0
/* 80D64990  40 82 00 0C */	bne lbl_80D6499C
/* 80D64994  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D64998  40 82 00 14 */	bne lbl_80D649AC
lbl_80D6499C:
/* 80D6499C  28 03 00 00 */	cmplwi r3, 0
/* 80D649A0  41 82 00 24 */	beq lbl_80D649C4
/* 80D649A4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D649A8  40 82 00 1C */	bne lbl_80D649C4
lbl_80D649AC:
/* 80D649AC  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D649B0  C0 23 4D 80 */	lfs f1, lit_3803@l(r3)
/* 80D649B4  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80D649B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D649BC  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D649C0  9B DF 05 80 */	stb r30, 0x580(r31)
lbl_80D649C4:
/* 80D649C4  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D649C8  3C 80 80 D6 */	lis r4, lit_3803@ha
/* 80D649CC  C0 24 4D 80 */	lfs f1, lit_3803@l(r4)
/* 80D649D0  3C 80 80 D6 */	lis r4, l_HIO@ha
/* 80D649D4  38 84 4E 10 */	addi r4, r4, l_HIO@l
/* 80D649D8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D649DC  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D649E0  4B 50 BD 60 */	b cLib_chaseF__FPfff
/* 80D649E4  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 80D649E8  28 00 00 00 */	cmplwi r0, 0
/* 80D649EC  40 82 00 18 */	bne lbl_80D64A04
/* 80D649F0  38 60 00 07 */	li r3, 7
/* 80D649F4  88 9F 05 82 */	lbz r4, 0x582(r31)
/* 80D649F8  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80D649FC  4B 44 3E 10 */	b dKy_custom_colset__FUcUcf
/* 80D64A00  48 00 00 14 */	b lbl_80D64A14
lbl_80D64A04:
/* 80D64A04  88 7F 05 82 */	lbz r3, 0x582(r31)
/* 80D64A08  38 80 00 07 */	li r4, 7
/* 80D64A0C  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80D64A10  4B 44 3D FC */	b dKy_custom_colset__FUcUcf
lbl_80D64A14:
/* 80D64A14  3C 60 80 D6 */	lis r3, l_HIO@ha
/* 80D64A18  38 63 4E 10 */	addi r3, r3, l_HIO@l
/* 80D64A1C  88 03 00 05 */	lbz r0, 5(r3)
/* 80D64A20  28 00 00 00 */	cmplwi r0, 0
/* 80D64A24  41 82 00 78 */	beq lbl_80D64A9C
/* 80D64A28  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 80D64A2C  28 00 00 00 */	cmplwi r0, 0
/* 80D64A30  41 82 00 1C */	beq lbl_80D64A4C
/* 80D64A34  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D64A38  C0 03 4D 80 */	lfs f0, lit_3803@l(r3)
/* 80D64A3C  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80D64A40  EC 40 08 28 */	fsubs f2, f0, f1
/* 80D64A44  FC 60 08 90 */	fmr f3, f1
/* 80D64A48  48 00 00 18 */	b lbl_80D64A60
lbl_80D64A4C:
/* 80D64A4C  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80D64A50  FC 40 08 90 */	fmr f2, f1
/* 80D64A54  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D64A58  C0 03 4D 80 */	lfs f0, lit_3803@l(r3)
/* 80D64A5C  EC 60 08 28 */	fsubs f3, f0, f1
lbl_80D64A60:
/* 80D64A60  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80D64A64  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80D64A68  3C 60 80 D6 */	lis r3, l_HIO@ha
/* 80D64A6C  38 63 4E 10 */	addi r3, r3, l_HIO@l
/* 80D64A70  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D64A74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D64A78  EC 21 00 2A */	fadds f1, f1, f0
/* 80D64A7C  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 80D64A80  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80D64A84  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D64A88  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D64A8C  EC 42 00 2A */	fadds f2, f2, f0
/* 80D64A90  3C 60 80 D6 */	lis r3, lit_3803@ha
/* 80D64A94  C0 63 4D 80 */	lfs f3, lit_3803@l(r3)
/* 80D64A98  4B 44 36 38 */	b dKy_fog_startendz_set__Ffff
lbl_80D64A9C:
/* 80D64A9C  38 60 00 01 */	li r3, 1
lbl_80D64AA0:
/* 80D64AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D64AA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D64AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64AAC  7C 08 03 A6 */	mtlr r0
/* 80D64AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64AB4  4E 80 00 20 */	blr 
