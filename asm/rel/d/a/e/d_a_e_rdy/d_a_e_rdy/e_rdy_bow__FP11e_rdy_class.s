lbl_8076E81C:
/* 8076E81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8076E820  7C 08 02 A6 */	mflr r0
/* 8076E824  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076E828  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8076E82C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8076E830  7C 7E 1B 78 */	mr r30, r3
/* 8076E834  3C 80 80 78 */	lis r4, lit_4018@ha
/* 8076E838  3B E4 9D FC */	addi r31, r4, lit_4018@l
/* 8076E83C  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 8076E840  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8076E844  FC 00 00 1E */	fctiwz f0, f0
/* 8076E848  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076E84C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8076E850  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8076E854  2C 00 00 02 */	cmpwi r0, 2
/* 8076E858  41 82 01 48 */	beq lbl_8076E9A0
/* 8076E85C  40 80 00 14 */	bge lbl_8076E870
/* 8076E860  2C 00 00 00 */	cmpwi r0, 0
/* 8076E864  41 82 00 18 */	beq lbl_8076E87C
/* 8076E868  40 80 00 7C */	bge lbl_8076E8E4
/* 8076E86C  48 00 02 B4 */	b lbl_8076EB20
lbl_8076E870:
/* 8076E870  2C 00 00 04 */	cmpwi r0, 4
/* 8076E874  40 80 02 AC */	bge lbl_8076EB20
/* 8076E878  48 00 01 E4 */	b lbl_8076EA5C
lbl_8076E87C:
/* 8076E87C  38 80 00 45 */	li r4, 0x45
/* 8076E880  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076E884  38 A0 00 00 */	li r5, 0
/* 8076E888  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E88C  4B FF D5 F5 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E890  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 8076E894  38 80 00 08 */	li r4, 8
/* 8076E898  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076E89C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076E8A0  3C A5 00 02 */	addis r5, r5, 2
/* 8076E8A4  38 C0 00 80 */	li r6, 0x80
/* 8076E8A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076E8AC  4B 8C DA 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076E8B0  7C 64 1B 78 */	mr r4, r3
/* 8076E8B4  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 8076E8B8  38 A0 00 00 */	li r5, 0
/* 8076E8BC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076E8C0  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8076E8C4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076E8C8  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076E8CC  4B 8A 25 A4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076E8D0  38 00 00 01 */	li r0, 1
/* 8076E8D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E8D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076E8DC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8076E8E0  48 00 02 40 */	b lbl_8076EB20
lbl_8076E8E4:
/* 8076E8E4  38 00 00 04 */	li r0, 4
/* 8076E8E8  98 1E 0A 98 */	stb r0, 0xa98(r30)
/* 8076E8EC  2C 04 00 0A */	cmpwi r4, 0xa
/* 8076E8F0  41 80 00 0C */	blt lbl_8076E8FC
/* 8076E8F4  38 00 00 01 */	li r0, 1
/* 8076E8F8  98 1E 0A 72 */	stb r0, 0xa72(r30)
lbl_8076E8FC:
/* 8076E8FC  2C 04 00 14 */	cmpwi r4, 0x14
/* 8076E900  40 82 00 2C */	bne lbl_8076E92C
/* 8076E904  3C 00 00 08 */	lis r0, 8
/* 8076E908  90 01 00 08 */	stw r0, 8(r1)
/* 8076E90C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8076E910  38 81 00 08 */	addi r4, r1, 8
/* 8076E914  38 A0 00 00 */	li r5, 0
/* 8076E918  38 C0 FF FF */	li r6, -1
/* 8076E91C  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8076E920  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8076E924  7D 89 03 A6 */	mtctr r12
/* 8076E928  4E 80 04 21 */	bctrl 
lbl_8076E92C:
/* 8076E92C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E930  38 80 00 01 */	li r4, 1
/* 8076E934  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076E938  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076E93C  40 82 00 18 */	bne lbl_8076E954
/* 8076E940  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076E944  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076E948  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076E94C  41 82 00 08 */	beq lbl_8076E954
/* 8076E950  38 80 00 00 */	li r4, 0
lbl_8076E954:
/* 8076E954  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076E958  41 82 01 C8 */	beq lbl_8076EB20
/* 8076E95C  7F C3 F3 78 */	mr r3, r30
/* 8076E960  38 80 00 46 */	li r4, 0x46
/* 8076E964  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8076E968  38 A0 00 02 */	li r5, 2
/* 8076E96C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E970  4B FF D5 11 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E974  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076E978  4B AF 8F DC */	b cM_rndF__Ff
/* 8076E97C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8076E980  EC 00 08 2A */	fadds f0, f0, f1
/* 8076E984  FC 00 00 1E */	fctiwz f0, f0
/* 8076E988  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076E98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076E990  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 8076E994  38 00 00 02 */	li r0, 2
/* 8076E998  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E99C  48 00 01 84 */	b lbl_8076EB20
lbl_8076E9A0:
/* 8076E9A0  38 00 00 04 */	li r0, 4
/* 8076E9A4  98 1E 0A 98 */	stb r0, 0xa98(r30)
/* 8076E9A8  A8 1E 0A 60 */	lha r0, 0xa60(r30)
/* 8076E9AC  2C 00 00 00 */	cmpwi r0, 0
/* 8076E9B0  40 82 00 A0 */	bne lbl_8076EA50
/* 8076E9B4  88 1E 0A 74 */	lbz r0, 0xa74(r30)
/* 8076E9B8  7C 00 07 75 */	extsb. r0, r0
/* 8076E9BC  40 82 00 84 */	bne lbl_8076EA40
/* 8076E9C0  4B AC 98 6C */	b getStatus__12dMsgObject_cFv
/* 8076E9C4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8076E9C8  20 60 00 01 */	subfic r3, r0, 1
/* 8076E9CC  30 03 FF FF */	addic r0, r3, -1
/* 8076E9D0  7C 00 19 10 */	subfe r0, r0, r3
/* 8076E9D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8076E9D8  40 82 00 68 */	bne lbl_8076EA40
/* 8076E9DC  7F C3 F3 78 */	mr r3, r30
/* 8076E9E0  38 80 00 44 */	li r4, 0x44
/* 8076E9E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076E9E8  38 A0 00 00 */	li r5, 0
/* 8076E9EC  FC 40 08 90 */	fmr f2, f1
/* 8076E9F0  4B FF D4 91 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E9F4  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 8076E9F8  38 80 00 0B */	li r4, 0xb
/* 8076E9FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076EA00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076EA04  3C A5 00 02 */	addis r5, r5, 2
/* 8076EA08  38 C0 00 80 */	li r6, 0x80
/* 8076EA0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076EA10  4B 8C D8 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076EA14  7C 64 1B 78 */	mr r4, r3
/* 8076EA18  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 8076EA1C  38 A0 00 00 */	li r5, 0
/* 8076EA20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076EA24  FC 40 08 90 */	fmr f2, f1
/* 8076EA28  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076EA2C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076EA30  4B 8A 24 40 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076EA34  38 00 00 03 */	li r0, 3
/* 8076EA38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076EA3C  48 00 00 14 */	b lbl_8076EA50
lbl_8076EA40:
/* 8076EA40  38 00 00 05 */	li r0, 5
/* 8076EA44  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 8076EA48  38 00 00 00 */	li r0, 0
/* 8076EA4C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8076EA50:
/* 8076EA50  38 00 00 01 */	li r0, 1
/* 8076EA54  98 1E 0A 72 */	stb r0, 0xa72(r30)
/* 8076EA58  48 00 00 C8 */	b lbl_8076EB20
lbl_8076EA5C:
/* 8076EA5C  2C 04 00 03 */	cmpwi r4, 3
/* 8076EA60  41 81 00 14 */	bgt lbl_8076EA74
/* 8076EA64  38 00 00 01 */	li r0, 1
/* 8076EA68  98 1E 0A 72 */	stb r0, 0xa72(r30)
/* 8076EA6C  38 00 00 04 */	li r0, 4
/* 8076EA70  98 1E 0A 98 */	stb r0, 0xa98(r30)
lbl_8076EA74:
/* 8076EA74  2C 04 00 02 */	cmpwi r4, 2
/* 8076EA78  40 82 00 0C */	bne lbl_8076EA84
/* 8076EA7C  38 00 00 01 */	li r0, 1
/* 8076EA80  98 1E 0A 73 */	stb r0, 0xa73(r30)
lbl_8076EA84:
/* 8076EA84  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076EA88  38 80 00 01 */	li r4, 1
/* 8076EA8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076EA90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076EA94  40 82 00 18 */	bne lbl_8076EAAC
/* 8076EA98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076EA9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076EAA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076EAA4  41 82 00 08 */	beq lbl_8076EAAC
/* 8076EAA8  38 80 00 00 */	li r4, 0
lbl_8076EAAC:
/* 8076EAAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076EAB0  41 82 00 70 */	beq lbl_8076EB20
/* 8076EAB4  A8 1E 0A 62 */	lha r0, 0xa62(r30)
/* 8076EAB8  2C 00 00 00 */	cmpwi r0, 0
/* 8076EABC  40 82 00 5C */	bne lbl_8076EB18
/* 8076EAC0  C0 5E 0A 48 */	lfs f2, 0xa48(r30)
/* 8076EAC4  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8076EAC8  38 63 A8 84 */	addi r3, r3, l_HIO@l
/* 8076EACC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8076EAD0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8076EAD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8076EAD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8076EADC  41 80 00 0C */	blt lbl_8076EAE8
/* 8076EAE0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8076EAE4  40 81 00 34 */	ble lbl_8076EB18
lbl_8076EAE8:
/* 8076EAE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8076EAEC  40 80 00 18 */	bge lbl_8076EB04
/* 8076EAF0  7F C3 F3 78 */	mr r3, r30
/* 8076EAF4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8076EAF8  4B FF E3 19 */	bl way_bg_check__FP11e_rdy_classf
/* 8076EAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8076EB00  40 82 00 0C */	bne lbl_8076EB0C
lbl_8076EB04:
/* 8076EB04  38 00 00 05 */	li r0, 5
/* 8076EB08  B0 1E 0A 42 */	sth r0, 0xa42(r30)
lbl_8076EB0C:
/* 8076EB0C  38 00 00 00 */	li r0, 0
/* 8076EB10  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076EB14  48 00 00 0C */	b lbl_8076EB20
lbl_8076EB18:
/* 8076EB18  38 00 00 00 */	li r0, 0
/* 8076EB1C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8076EB20:
/* 8076EB20  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8076EB24  A8 9E 0A 4C */	lha r4, 0xa4c(r30)
/* 8076EB28  38 A0 00 04 */	li r5, 4
/* 8076EB2C  38 C0 10 00 */	li r6, 0x1000
/* 8076EB30  4B B0 1A D8 */	b cLib_addCalcAngleS2__FPssss
/* 8076EB34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8076EB38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8076EB3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076EB40  7C 08 03 A6 */	mtlr r0
/* 8076EB44  38 21 00 20 */	addi r1, r1, 0x20
/* 8076EB48  4E 80 00 20 */	blr 
