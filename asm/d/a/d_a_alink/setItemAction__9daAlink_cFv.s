lbl_800BA914:
/* 800BA914  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800BA918  7C 08 02 A6 */	mflr r0
/* 800BA91C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BA920  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800BA924  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800BA928  39 61 00 30 */	addi r11, r1, 0x30
/* 800BA92C  48 2A 78 B1 */	bl _savegpr_29
/* 800BA930  7C 7D 1B 78 */	mr r29, r3
/* 800BA934  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800BA938  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 800BA93C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800BA940  28 00 00 42 */	cmplwi r0, 0x42
/* 800BA944  40 82 00 08 */	bne lbl_800BA94C
/* 800BA948  48 05 7C E1 */	bl checkIronBallDelete__9daAlink_cFv
lbl_800BA94C:
/* 800BA94C  3B DD 20 48 */	addi r30, r29, 0x2048
/* 800BA950  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 800BA954  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800BA958  40 82 00 E8 */	bne lbl_800BAA40
/* 800BA95C  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800BA960  41 82 00 E0 */	beq lbl_800BAA40
/* 800BA964  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800BA968  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BA96C  41 82 00 D4 */	beq lbl_800BAA40
/* 800BA970  80 9D 31 A0 */	lwz r4, 0x31a0(r29)
/* 800BA974  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800BA978  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800BA97C  7C 80 00 39 */	and. r0, r4, r0
/* 800BA980  40 82 00 C0 */	bne lbl_800BAA40
/* 800BA984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BA988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BA98C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BA990  38 9D 1A 60 */	addi r4, r29, 0x1a60
/* 800BA994  4B FB 9C CD */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800BA998  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA99C  41 82 00 A4 */	beq lbl_800BAA40
/* 800BA9A0  38 7D 1A 60 */	addi r3, r29, 0x1a60
/* 800BA9A4  4B F7 71 AD */	bl checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo
/* 800BA9A8  2C 03 00 00 */	cmpwi r3, 0
/* 800BA9AC  41 82 00 94 */	beq lbl_800BAA40
/* 800BA9B0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BA9B4  60 00 10 00 */	ori r0, r0, 0x1000
/* 800BA9B8  90 1D 05 70 */	stw r0, 0x570(r29)
/* 800BA9BC  7F A3 EB 78 */	mr r3, r29
/* 800BA9C0  38 9D 1A 60 */	addi r4, r29, 0x1a60
/* 800BA9C4  38 A0 00 01 */	li r5, 1
/* 800BA9C8  48 02 7E 41 */	bl setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi
/* 800BA9CC  38 7D 2C A8 */	addi r3, r29, 0x2ca8
/* 800BA9D0  38 80 00 01 */	li r4, 1
/* 800BA9D4  48 20 91 19 */	bl setMagnetized__14Z2CreatureLinkFb
/* 800BA9D8  7F A3 EB 78 */	mr r3, r29
/* 800BA9DC  48 00 05 A5 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800BA9E0  2C 03 00 00 */	cmpwi r3, 0
/* 800BA9E4  41 82 00 24 */	beq lbl_800BAA08
/* 800BA9E8  7F A3 EB 78 */	mr r3, r29
/* 800BA9EC  48 02 3F FD */	bl checkBowAnime__9daAlink_cCFv
/* 800BA9F0  2C 03 00 00 */	cmpwi r3, 0
/* 800BA9F4  40 82 00 14 */	bne lbl_800BAA08
/* 800BA9F8  7F A3 EB 78 */	mr r3, r29
/* 800BA9FC  38 80 00 02 */	li r4, 2
/* 800BAA00  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAA04  4B FF 2D 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800BAA08:
/* 800BAA08  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800BAA0C  28 03 01 03 */	cmplwi r3, 0x103
/* 800BAA10  41 82 00 20 */	beq lbl_800BAA30
/* 800BAA14  48 0A 41 7D */	bl checkBowItem__9daPy_py_cFi
/* 800BAA18  2C 03 00 00 */	cmpwi r3, 0
/* 800BAA1C  40 82 00 14 */	bne lbl_800BAA30
/* 800BAA20  7F A3 EB 78 */	mr r3, r29
/* 800BAA24  38 80 00 00 */	li r4, 0
/* 800BAA28  38 A0 00 00 */	li r5, 0
/* 800BAA2C  48 00 68 B1 */	bl deleteEquipItem__9daAlink_cFii
lbl_800BAA30:
/* 800BAA30  7F A3 EB 78 */	mr r3, r29
/* 800BAA34  48 05 5E 0D */	bl offKandelaarModel__9daAlink_cFv
/* 800BAA38  7F A3 EB 78 */	mr r3, r29
/* 800BAA3C  48 02 A1 99 */	bl freeGrabItem__9daAlink_cFv
lbl_800BAA40:
/* 800BAA40  7F A3 EB 78 */	mr r3, r29
/* 800BAA44  48 02 92 29 */	bl checkGrabAnime__9daAlink_cCFv
/* 800BAA48  2C 03 00 00 */	cmpwi r3, 0
/* 800BAA4C  41 82 00 10 */	beq lbl_800BAA5C
/* 800BAA50  7F A3 EB 78 */	mr r3, r29
/* 800BAA54  48 02 A3 99 */	bl setGrabUpperSpeedRate__9daAlink_cFv
/* 800BAA58  48 00 04 90 */	b lbl_800BAEE8
lbl_800BAA5C:
/* 800BAA5C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAA60  28 00 02 02 */	cmplwi r0, 0x202
/* 800BAA64  40 82 00 34 */	bne lbl_800BAA98
/* 800BAA68  7F A3 EB 78 */	mr r3, r29
/* 800BAA6C  48 02 69 09 */	bl getCopyRodControllActor__9daAlink_cFv
/* 800BAA70  28 03 00 00 */	cmplwi r3, 0
/* 800BAA74  40 82 00 18 */	bne lbl_800BAA8C
/* 800BAA78  7F A3 EB 78 */	mr r3, r29
/* 800BAA7C  38 80 00 02 */	li r4, 2
/* 800BAA80  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAA84  4B FF 2C A1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BAA88  48 00 04 60 */	b lbl_800BAEE8
lbl_800BAA8C:
/* 800BAA8C  7F A3 EB 78 */	mr r3, r29
/* 800BAA90  48 02 6B 6D */	bl setCopyRodControllUpperSpeedRate__9daAlink_cFv
/* 800BAA94  48 00 04 54 */	b lbl_800BAEE8
lbl_800BAA98:
/* 800BAA98  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BAA9C  28 00 00 52 */	cmplwi r0, 0x52
/* 800BAAA0  40 82 00 6C */	bne lbl_800BAB0C
/* 800BAAA4  7F C3 F3 78 */	mr r3, r30
/* 800BAAA8  48 0A 3A 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BAAAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAAB0  40 82 00 28 */	bne lbl_800BAAD8
/* 800BAAB4  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800BAAB8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BAABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BAAC0  40 81 00 2C */	ble lbl_800BAAEC
/* 800BAAC4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800BAAC8  38 7F 10 70 */	addi r3, r31, 0x1070
/* 800BAACC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800BAAD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BAAD4  40 81 00 18 */	ble lbl_800BAAEC
lbl_800BAAD8:
/* 800BAAD8  7F A3 EB 78 */	mr r3, r29
/* 800BAADC  38 80 00 02 */	li r4, 2
/* 800BAAE0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAAE4  4B FF 2C 41 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BAAE8  48 00 04 00 */	b lbl_800BAEE8
lbl_800BAAEC:
/* 800BAAEC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800BAAF0  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800BAAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BAAF8  4C 41 13 82 */	cror 2, 1, 2
/* 800BAAFC  40 82 03 EC */	bne lbl_800BAEE8
/* 800BAB00  38 00 00 06 */	li r0, 6
/* 800BAB04  98 1D 2F 97 */	stb r0, 0x2f97(r29)
/* 800BAB08  48 00 03 E0 */	b lbl_800BAEE8
lbl_800BAB0C:
/* 800BAB0C  7F A3 EB 78 */	mr r3, r29
/* 800BAB10  48 02 59 9D */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800BAB14  2C 03 00 00 */	cmpwi r3, 0
/* 800BAB18  41 82 00 6C */	beq lbl_800BAB84
/* 800BAB1C  7F C3 F3 78 */	mr r3, r30
/* 800BAB20  48 0A 39 AD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BAB24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAB28  40 82 00 28 */	bne lbl_800BAB50
/* 800BAB2C  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800BAB30  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BAB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BAB38  40 81 00 2C */	ble lbl_800BAB64
/* 800BAB3C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800BAB40  38 7F 10 70 */	addi r3, r31, 0x1070
/* 800BAB44  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800BAB48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BAB4C  40 81 00 18 */	ble lbl_800BAB64
lbl_800BAB50:
/* 800BAB50  7F A3 EB 78 */	mr r3, r29
/* 800BAB54  38 80 00 02 */	li r4, 2
/* 800BAB58  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAB5C  4B FF 2B C9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BAB60  48 00 03 88 */	b lbl_800BAEE8
lbl_800BAB64:
/* 800BAB64  7F C3 F3 78 */	mr r3, r30
/* 800BAB68  C0 22 95 88 */	lfs f1, lit_24680(r2)
/* 800BAB6C  48 26 D8 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 800BAB70  2C 03 00 00 */	cmpwi r3, 0
/* 800BAB74  41 82 03 74 */	beq lbl_800BAEE8
/* 800BAB78  7F A3 EB 78 */	mr r3, r29
/* 800BAB7C  48 02 5B 3D */	bl throwBoomerang__9daAlink_cFv
/* 800BAB80  48 00 03 68 */	b lbl_800BAEE8
lbl_800BAB84:
/* 800BAB84  38 60 00 00 */	li r3, 0
/* 800BAB88  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800BAB8C  28 00 00 46 */	cmplwi r0, 0x46
/* 800BAB90  40 82 00 14 */	bne lbl_800BABA4
/* 800BAB94  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAB98  28 00 00 53 */	cmplwi r0, 0x53
/* 800BAB9C  40 82 00 08 */	bne lbl_800BABA4
/* 800BABA0  38 60 00 01 */	li r3, 1
lbl_800BABA4:
/* 800BABA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BABA8  41 82 00 6C */	beq lbl_800BAC14
/* 800BABAC  7F C3 F3 78 */	mr r3, r30
/* 800BABB0  48 0A 39 1D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BABB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BABB8  40 82 00 28 */	bne lbl_800BABE0
/* 800BABBC  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800BABC0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BABC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BABC8  40 81 00 2C */	ble lbl_800BABF4
/* 800BABCC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800BABD0  38 7F 10 70 */	addi r3, r31, 0x1070
/* 800BABD4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800BABD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BABDC  40 81 00 18 */	ble lbl_800BABF4
lbl_800BABE0:
/* 800BABE0  7F A3 EB 78 */	mr r3, r29
/* 800BABE4  38 80 00 02 */	li r4, 2
/* 800BABE8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BABEC  4B FF 2B 39 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BABF0  48 00 02 F8 */	b lbl_800BAEE8
lbl_800BABF4:
/* 800BABF4  7F C3 F3 78 */	mr r3, r30
/* 800BABF8  C0 22 96 00 */	lfs f1, lit_30895(r2)
/* 800BABFC  48 26 D8 31 */	bl checkPass__12J3DFrameCtrlFf
/* 800BAC00  2C 03 00 00 */	cmpwi r3, 0
/* 800BAC04  41 82 02 E4 */	beq lbl_800BAEE8
/* 800BAC08  7F A3 EB 78 */	mr r3, r29
/* 800BAC0C  48 02 6D 11 */	bl throwCopyRod__9daAlink_cFv
/* 800BAC10  48 00 02 D8 */	b lbl_800BAEE8
lbl_800BAC14:
/* 800BAC14  7F A3 EB 78 */	mr r3, r29
/* 800BAC18  4B FF E7 29 */	bl checkEquipAnime__9daAlink_cCFv
/* 800BAC1C  2C 03 00 00 */	cmpwi r3, 0
/* 800BAC20  41 82 01 18 */	beq lbl_800BAD38
/* 800BAC24  7F A3 EB 78 */	mr r3, r29
/* 800BAC28  48 01 62 71 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800BAC2C  2C 03 00 00 */	cmpwi r3, 0
/* 800BAC30  41 82 00 14 */	beq lbl_800BAC44
/* 800BAC34  C0 22 98 BC */	lfs f1, lit_68956(r2)
/* 800BAC38  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800BAC3C  EF E1 00 2A */	fadds f31, f1, f0
/* 800BAC40  48 00 00 1C */	b lbl_800BAC5C
lbl_800BAC44:
/* 800BAC44  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAC48  28 00 02 45 */	cmplwi r0, 0x245
/* 800BAC4C  40 82 00 0C */	bne lbl_800BAC58
/* 800BAC50  C3 E2 93 74 */	lfs f31, lit_8502(r2)
/* 800BAC54  48 00 00 08 */	b lbl_800BAC5C
lbl_800BAC58:
/* 800BAC58  C3 E2 93 44 */	lfs f31, lit_7977(r2)
lbl_800BAC5C:
/* 800BAC5C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800BAC60  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BAC64  41 82 00 84 */	beq lbl_800BACE8
/* 800BAC68  7F A3 EB 78 */	mr r3, r29
/* 800BAC6C  48 01 62 2D */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800BAC70  2C 03 00 00 */	cmpwi r3, 0
/* 800BAC74  41 82 00 0C */	beq lbl_800BAC80
/* 800BAC78  C0 82 98 BC */	lfs f4, lit_68956(r2)
/* 800BAC7C  48 00 00 1C */	b lbl_800BAC98
lbl_800BAC80:
/* 800BAC80  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAC84  28 00 02 45 */	cmplwi r0, 0x245
/* 800BAC88  40 82 00 0C */	bne lbl_800BAC94
/* 800BAC8C  C0 82 93 74 */	lfs f4, lit_8502(r2)
/* 800BAC90  48 00 00 08 */	b lbl_800BAC98
lbl_800BAC94:
/* 800BAC94  C0 82 93 44 */	lfs f4, lit_7977(r2)
lbl_800BAC98:
/* 800BAC98  C0 1D 1F 50 */	lfs f0, 0x1f50(r29)
/* 800BAC9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800BACA0  A8 1E 00 08 */	lha r0, 8(r30)
/* 800BACA4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800BACA8  FC 00 02 10 */	fabs f0, f0
/* 800BACAC  FC 60 00 18 */	frsp f3, f0
/* 800BACB0  38 61 00 08 */	addi r3, r1, 8
/* 800BACB4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800BACB8  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800BACBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800BACC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BACC4  3C 00 43 30 */	lis r0, 0x4330
/* 800BACC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BACCC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800BACD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 800BACD4  EC 00 20 28 */	fsubs f0, f0, f4
/* 800BACD8  EC 43 00 24 */	fdivs f2, f3, f0
/* 800BACDC  48 1B 5A 65 */	bl cLib_chaseF__FPfff
/* 800BACE0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800BACE4  D0 1D 1F 50 */	stfs f0, 0x1f50(r29)
lbl_800BACE8:
/* 800BACE8  7F C3 F3 78 */	mr r3, r30
/* 800BACEC  48 0A 37 E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BACF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BACF4  41 82 00 24 */	beq lbl_800BAD18
/* 800BACF8  7F A3 EB 78 */	mr r3, r29
/* 800BACFC  38 80 00 02 */	li r4, 2
/* 800BAD00  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAD04  4B FF 2A 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BAD08  7F A3 EB 78 */	mr r3, r29
/* 800BAD0C  38 80 00 01 */	li r4, 1
/* 800BAD10  48 03 41 4D */	bl setHorseSwordUp__9daAlink_cFi
/* 800BAD14  48 00 01 D4 */	b lbl_800BAEE8
lbl_800BAD18:
/* 800BAD18  7F C3 F3 78 */	mr r3, r30
/* 800BAD1C  FC 20 F8 90 */	fmr f1, f31
/* 800BAD20  48 26 D7 0D */	bl checkPass__12J3DFrameCtrlFf
/* 800BAD24  2C 03 00 00 */	cmpwi r3, 0
/* 800BAD28  41 82 01 C0 */	beq lbl_800BAEE8
/* 800BAD2C  7F A3 EB 78 */	mr r3, r29
/* 800BAD30  4B FF F9 71 */	bl commonChangeItem__9daAlink_cFv
/* 800BAD34  48 00 01 B4 */	b lbl_800BAEE8
lbl_800BAD38:
/* 800BAD38  7F A3 EB 78 */	mr r3, r29
/* 800BAD3C  48 01 61 91 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800BAD40  2C 03 00 00 */	cmpwi r3, 0
/* 800BAD44  41 82 01 68 */	beq lbl_800BAEAC
/* 800BAD48  38 7F 08 34 */	addi r3, r31, 0x834
/* 800BAD4C  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800BAD50  B0 1D 30 7E */	sth r0, 0x307e(r29)
/* 800BAD54  7F C3 F3 78 */	mr r3, r30
/* 800BAD58  48 0A 37 75 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BAD5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAD60  41 82 00 24 */	beq lbl_800BAD84
/* 800BAD64  7F A3 EB 78 */	mr r3, r29
/* 800BAD68  38 80 00 02 */	li r4, 2
/* 800BAD6C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BAD70  4B FF 29 B5 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800BAD74  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800BAD78  64 00 08 00 */	oris r0, r0, 0x800
/* 800BAD7C  90 1D 05 80 */	stw r0, 0x580(r29)
/* 800BAD80  48 00 01 68 */	b lbl_800BAEE8
lbl_800BAD84:
/* 800BAD84  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAD88  28 00 00 80 */	cmplwi r0, 0x80
/* 800BAD8C  40 82 00 0C */	bne lbl_800BAD98
/* 800BAD90  38 7F 06 98 */	addi r3, r31, 0x698
/* 800BAD94  48 00 00 1C */	b lbl_800BADB0
lbl_800BAD98:
/* 800BAD98  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BAD9C  28 00 00 81 */	cmplwi r0, 0x81
/* 800BADA0  40 82 00 0C */	bne lbl_800BADAC
/* 800BADA4  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 800BADA8  48 00 00 08 */	b lbl_800BADB0
lbl_800BADAC:
/* 800BADAC  38 7F 06 D0 */	addi r3, r31, 0x6d0
lbl_800BADB0:
/* 800BADB0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800BADB4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800BADB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BADBC  4C 41 13 82 */	cror 2, 1, 2
/* 800BADC0  40 82 00 38 */	bne lbl_800BADF8
/* 800BADC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800BADC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BADCC  40 80 00 2C */	bge lbl_800BADF8
/* 800BADD0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BADD4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BADD8  40 82 00 14 */	bne lbl_800BADEC
/* 800BADDC  7F A3 EB 78 */	mr r3, r29
/* 800BADE0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020002@ha */
/* 800BADE4  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00020002@l */
/* 800BADE8  48 00 43 05 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800BADEC:
/* 800BADEC  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800BADF0  60 00 00 02 */	ori r0, r0, 2
/* 800BADF4  90 1D 05 80 */	stw r0, 0x580(r29)
lbl_800BADF8:
/* 800BADF8  7F A3 EB 78 */	mr r3, r29
/* 800BADFC  4B FE CC 61 */	bl checkDashAnime__9daAlink_cCFv
/* 800BAE00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAE04  40 82 00 20 */	bne lbl_800BAE24
/* 800BAE08  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BAE0C  28 00 00 AC */	cmplwi r0, 0xac
/* 800BAE10  41 82 00 14 */	beq lbl_800BAE24
/* 800BAE14  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800BAE18  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800BAE1C  90 1D 05 78 */	stw r0, 0x578(r29)
/* 800BAE20  48 00 00 2C */	b lbl_800BAE4C
lbl_800BAE24:
/* 800BAE24  88 1D 2F CE */	lbz r0, 0x2fce(r29)
/* 800BAE28  28 00 00 00 */	cmplwi r0, 0
/* 800BAE2C  40 82 00 20 */	bne lbl_800BAE4C
/* 800BAE30  7F A3 EB 78 */	mr r3, r29
/* 800BAE34  4B FF 78 85 */	bl swordSwingTrigger__9daAlink_cFv
/* 800BAE38  2C 03 00 00 */	cmpwi r3, 0
/* 800BAE3C  41 82 00 10 */	beq lbl_800BAE4C
/* 800BAE40  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800BAE44  60 00 00 02 */	ori r0, r0, 2
/* 800BAE48  90 1D 05 78 */	stw r0, 0x578(r29)
lbl_800BAE4C:
/* 800BAE4C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800BAE50  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800BAE54  90 1D 05 78 */	stw r0, 0x578(r29)
/* 800BAE58  7F A3 EB 78 */	mr r3, r29
/* 800BAE5C  38 80 00 08 */	li r4, 8
/* 800BAE60  4B FF 77 89 */	bl itemButtonCheck__9daAlink_cFUc
/* 800BAE64  2C 03 00 00 */	cmpwi r3, 0
/* 800BAE68  41 82 00 38 */	beq lbl_800BAEA0
/* 800BAE6C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800BAE70  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800BAE74  40 82 00 2C */	bne lbl_800BAEA0
/* 800BAE78  88 7D 2F B7 */	lbz r3, 0x2fb7(r29)
/* 800BAE7C  28 03 00 03 */	cmplwi r3, 3
/* 800BAE80  40 80 00 10 */	bge lbl_800BAE90
/* 800BAE84  38 03 00 01 */	addi r0, r3, 1
/* 800BAE88  98 1D 2F B7 */	stb r0, 0x2fb7(r29)
/* 800BAE8C  48 00 00 5C */	b lbl_800BAEE8
lbl_800BAE90:
/* 800BAE90  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800BAE94  60 00 00 04 */	ori r0, r0, 4
/* 800BAE98  90 1D 05 78 */	stw r0, 0x578(r29)
/* 800BAE9C  48 00 00 4C */	b lbl_800BAEE8
lbl_800BAEA0:
/* 800BAEA0  38 00 00 00 */	li r0, 0
/* 800BAEA4  98 1D 2F B7 */	stb r0, 0x2fb7(r29)
/* 800BAEA8  48 00 00 40 */	b lbl_800BAEE8
lbl_800BAEAC:
/* 800BAEAC  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BAEB0  28 00 00 83 */	cmplwi r0, 0x83
/* 800BAEB4  40 82 00 34 */	bne lbl_800BAEE8
/* 800BAEB8  7F A3 EB 78 */	mr r3, r29
/* 800BAEBC  38 80 00 08 */	li r4, 8
/* 800BAEC0  4B FF 77 29 */	bl itemButtonCheck__9daAlink_cFUc
/* 800BAEC4  2C 03 00 00 */	cmpwi r3, 0
/* 800BAEC8  40 82 00 20 */	bne lbl_800BAEE8
/* 800BAECC  7F C3 F3 78 */	mr r3, r30
/* 800BAED0  48 0A 35 FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800BAED4  7C 60 1B 78 */	mr r0, r3
/* 800BAED8  7F A3 EB 78 */	mr r3, r29
/* 800BAEDC  38 80 00 01 */	li r4, 1
/* 800BAEE0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 800BAEE4  48 01 6F 39 */	bl setCutDash__9daAlink_cFii
lbl_800BAEE8:
/* 800BAEE8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800BAEEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800BAEF0  39 61 00 30 */	addi r11, r1, 0x30
/* 800BAEF4  48 2A 73 35 */	bl _restgpr_29
/* 800BAEF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800BAEFC  7C 08 03 A6 */	mtlr r0
/* 800BAF00  38 21 00 40 */	addi r1, r1, 0x40
/* 800BAF04  4E 80 00 20 */	blr 
