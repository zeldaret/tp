lbl_805AA828:
/* 805AA828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA82C  7C 08 02 A6 */	mflr r0
/* 805AA830  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AA834  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AA838  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AA83C  7C 7E 1B 78 */	mr r30, r3
/* 805AA840  3C 60 80 5B */	lis r3, lit_3769@ha
/* 805AA844  3B E3 AF 74 */	addi r31, r3, lit_3769@l
/* 805AA848  80 1E 06 3C */	lwz r0, 0x63c(r30)
/* 805AA84C  2C 00 00 00 */	cmpwi r0, 0
/* 805AA850  40 82 00 EC */	bne lbl_805AA93C
/* 805AA854  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805AA858  4B CB D1 34 */	b cM_rndFX__Ff
/* 805AA85C  FC 00 08 1E */	fctiwz f0, f1
/* 805AA860  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AA864  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AA868  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805AA86C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805AA870  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805AA874  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AA878  7C 64 02 14 */	add r3, r4, r0
/* 805AA87C  C0 03 00 04 */	lfs f0, 4(r3)
/* 805AA880  EC 41 00 32 */	fmuls f2, f1, f0
/* 805AA884  7C 04 04 2E */	lfsx f0, r4, r0
/* 805AA888  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AA88C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 805AA890  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805AA894  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805AA898  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 805AA89C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AA8A0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805AA8A4  7C 65 1B 78 */	mr r5, r3
/* 805AA8A8  4B D9 C7 E8 */	b PSVECAdd
/* 805AA8AC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AA8B0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805AA8B4  4B CC 63 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AA8B8  38 03 40 00 */	addi r0, r3, 0x4000
/* 805AA8BC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805AA8C0  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AA8C4  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AA8C8  38 80 00 04 */	li r4, 4
/* 805AA8CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AA8D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AA8D4  3C A5 00 02 */	addis r5, r5, 2
/* 805AA8D8  38 C0 00 80 */	li r6, 0x80
/* 805AA8DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AA8E0  4B A9 1A 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AA8E4  7C 64 1B 78 */	mr r4, r3
/* 805AA8E8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AA8EC  38 A0 00 02 */	li r5, 2
/* 805AA8F0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805AA8F4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AA8F8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805AA8FC  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 805AA900  4B A6 65 70 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AA904  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805AA908  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805AA90C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805AA910  4B CB D0 7C */	b cM_rndFX__Ff
/* 805AA914  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805AA918  EC 00 08 2A */	fadds f0, f0, f1
/* 805AA91C  FC 00 00 1E */	fctiwz f0, f0
/* 805AA920  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AA924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA928  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 805AA92C  80 7E 06 3C */	lwz r3, 0x63c(r30)
/* 805AA930  38 03 00 01 */	addi r0, r3, 1
/* 805AA934  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 805AA938  48 00 02 A8 */	b lbl_805AABE0
lbl_805AA93C:
/* 805AA93C  2C 00 FF FF */	cmpwi r0, -1
/* 805AA940  41 82 02 A0 */	beq lbl_805AABE0
/* 805AA944  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AA948  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805AA94C  4B CC 62 B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AA950  38 03 40 00 */	addi r0, r3, 0x4000
/* 805AA954  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805AA958  7F C3 F3 78 */	mr r3, r30
/* 805AA95C  38 80 00 00 */	li r4, 0
/* 805AA960  4B A6 FD 6C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AA964  80 1E 06 3C */	lwz r0, 0x63c(r30)
/* 805AA968  2C 00 00 01 */	cmpwi r0, 1
/* 805AA96C  40 82 01 60 */	bne lbl_805AAACC
/* 805AA970  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 805AA974  38 80 00 00 */	li r4, 0
/* 805AA978  38 A0 00 20 */	li r5, 0x20
/* 805AA97C  4B CC 62 14 */	b cLib_chaseAngleS__FPsss
/* 805AA980  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AA984  38 80 00 01 */	li r4, 1
/* 805AA988  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AA98C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AA990  40 82 00 18 */	bne lbl_805AA9A8
/* 805AA994  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805AA998  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AA99C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AA9A0  41 82 00 08 */	beq lbl_805AA9A8
/* 805AA9A4  38 80 00 00 */	li r4, 0
lbl_805AA9A8:
/* 805AA9A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805AA9AC  41 82 00 48 */	beq lbl_805AA9F4
/* 805AA9B0  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AA9B4  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AA9B8  38 80 00 04 */	li r4, 4
/* 805AA9BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AA9C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AA9C4  3C A5 00 02 */	addis r5, r5, 2
/* 805AA9C8  38 C0 00 80 */	li r6, 0x80
/* 805AA9CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AA9D0  4B A9 19 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AA9D4  7C 64 1B 78 */	mr r4, r3
/* 805AA9D8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AA9DC  38 A0 00 02 */	li r5, 2
/* 805AA9E0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AA9E4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AA9E8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805AA9EC  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 805AA9F0  4B A6 64 80 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_805AA9F4:
/* 805AA9F4  A0 1E 06 40 */	lhz r0, 0x640(r30)
/* 805AA9F8  28 00 00 00 */	cmplwi r0, 0
/* 805AA9FC  40 82 01 E4 */	bne lbl_805AABE0
/* 805AAA00  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAA04  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AAA08  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805AAA0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AAA10  4C 41 13 82 */	cror 2, 1, 2
/* 805AAA14  40 82 01 CC */	bne lbl_805AABE0
/* 805AAA18  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805AAA1C  4B CB CF 38 */	b cM_rndF__Ff
/* 805AAA20  FC 00 08 1E */	fctiwz f0, f1
/* 805AAA24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AAA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAA2C  2C 00 00 00 */	cmpwi r0, 0
/* 805AAA30  41 82 00 28 */	beq lbl_805AAA58
/* 805AAA34  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805AAA38  4B CB CF 54 */	b cM_rndFX__Ff
/* 805AAA3C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805AAA40  EC 00 08 2A */	fadds f0, f0, f1
/* 805AAA44  FC 00 00 1E */	fctiwz f0, f0
/* 805AAA48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AAA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAA50  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 805AAA54  48 00 01 8C */	b lbl_805AABE0
lbl_805AAA58:
/* 805AAA58  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AAA5C  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AAA60  38 80 00 05 */	li r4, 5
/* 805AAA64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AAA68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AAA6C  3C A5 00 02 */	addis r5, r5, 2
/* 805AAA70  38 C0 00 80 */	li r6, 0x80
/* 805AAA74  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AAA78  4B A9 18 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AAA7C  7C 64 1B 78 */	mr r4, r3
/* 805AAA80  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAA84  38 A0 00 00 */	li r5, 0
/* 805AAA88  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AAA8C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AAA90  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805AAA94  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 805AAA98  4B A6 63 D8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AAA9C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805AAAA0  4B CB CE EC */	b cM_rndFX__Ff
/* 805AAAA4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805AAAA8  EC 00 08 2A */	fadds f0, f0, f1
/* 805AAAAC  FC 00 00 1E */	fctiwz f0, f0
/* 805AAAB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AAAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAAB8  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 805AAABC  80 7E 06 3C */	lwz r3, 0x63c(r30)
/* 805AAAC0  38 03 00 01 */	addi r0, r3, 1
/* 805AAAC4  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 805AAAC8  48 00 01 18 */	b lbl_805AABE0
lbl_805AAACC:
/* 805AAACC  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 805AAAD0  38 80 10 00 */	li r4, 0x1000
/* 805AAAD4  38 A0 00 20 */	li r5, 0x20
/* 805AAAD8  4B CC 60 B8 */	b cLib_chaseAngleS__FPsss
/* 805AAADC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAAE0  38 80 00 01 */	li r4, 1
/* 805AAAE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AAAE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AAAEC  40 82 00 18 */	bne lbl_805AAB04
/* 805AAAF0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805AAAF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AAAF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AAAFC  41 82 00 08 */	beq lbl_805AAB04
/* 805AAB00  38 80 00 00 */	li r4, 0
lbl_805AAB04:
/* 805AAB04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805AAB08  41 82 00 48 */	beq lbl_805AAB50
/* 805AAB0C  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AAB10  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AAB14  38 80 00 06 */	li r4, 6
/* 805AAB18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AAB1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AAB20  3C A5 00 02 */	addis r5, r5, 2
/* 805AAB24  38 C0 00 80 */	li r6, 0x80
/* 805AAB28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AAB2C  4B A9 17 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AAB30  7C 64 1B 78 */	mr r4, r3
/* 805AAB34  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAB38  38 A0 00 02 */	li r5, 2
/* 805AAB3C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AAB40  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AAB44  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805AAB48  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 805AAB4C  4B A6 63 24 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_805AAB50:
/* 805AAB50  A0 1E 06 40 */	lhz r0, 0x640(r30)
/* 805AAB54  28 00 00 00 */	cmplwi r0, 0
/* 805AAB58  40 82 00 88 */	bne lbl_805AABE0
/* 805AAB5C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAB60  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AAB64  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805AAB68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AAB6C  4C 41 13 82 */	cror 2, 1, 2
/* 805AAB70  40 82 00 70 */	bne lbl_805AABE0
/* 805AAB74  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AAB78  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AAB7C  38 80 00 07 */	li r4, 7
/* 805AAB80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AAB84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AAB88  3C A5 00 02 */	addis r5, r5, 2
/* 805AAB8C  38 C0 00 80 */	li r6, 0x80
/* 805AAB90  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AAB94  4B A9 17 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AAB98  7C 64 1B 78 */	mr r4, r3
/* 805AAB9C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AABA0  38 A0 00 00 */	li r5, 0
/* 805AABA4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AABA8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AABAC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805AABB0  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 805AABB4  4B A6 62 BC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AABB8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805AABBC  4B CB CD D0 */	b cM_rndFX__Ff
/* 805AABC0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805AABC4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AABC8  FC 00 00 1E */	fctiwz f0, f0
/* 805AABCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AABD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AABD4  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 805AABD8  38 00 00 01 */	li r0, 1
/* 805AABDC  90 1E 06 3C */	stw r0, 0x63c(r30)
lbl_805AABE0:
/* 805AABE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AABE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AABE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AABEC  7C 08 03 A6 */	mtlr r0
/* 805AABF0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AABF4  4E 80 00 20 */	blr 
