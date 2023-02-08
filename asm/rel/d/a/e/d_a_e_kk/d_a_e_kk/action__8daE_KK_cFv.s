lbl_806FD930:
/* 806FD930  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806FD934  7C 08 02 A6 */	mflr r0
/* 806FD938  90 01 00 84 */	stw r0, 0x84(r1)
/* 806FD93C  39 61 00 80 */	addi r11, r1, 0x80
/* 806FD940  4B C6 48 99 */	bl _savegpr_28
/* 806FD944  7C 7E 1B 78 */	mr r30, r3
/* 806FD948  3C 80 80 70 */	lis r4, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FD94C  3B E4 F5 E8 */	addi r31, r4, lit_3792@l /* 0x806FF5E8@l */
/* 806FD950  3B A0 00 00 */	li r29, 0
/* 806FD954  4B FF D3 39 */	bl damage_check__8daE_KK_cFv
/* 806FD958  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FD95C  28 00 00 0A */	cmplwi r0, 0xa
/* 806FD960  41 81 00 A8 */	bgt lbl_806FDA08
/* 806FD964  3C 60 80 70 */	lis r3, lit_5172@ha /* 0x806FF780@ha */
/* 806FD968  38 63 F7 80 */	addi r3, r3, lit_5172@l /* 0x806FF780@l */
/* 806FD96C  54 00 10 3A */	slwi r0, r0, 2
/* 806FD970  7C 03 00 2E */	lwzx r0, r3, r0
/* 806FD974  7C 09 03 A6 */	mtctr r0
/* 806FD978  4E 80 04 20 */	bctr 
lbl_806FD97C:
/* 806FD97C  7F C3 F3 78 */	mr r3, r30
/* 806FD980  4B FF DE 59 */	bl executeWait__8daE_KK_cFv
/* 806FD984  48 00 00 84 */	b lbl_806FDA08
lbl_806FD988:
/* 806FD988  7F C3 F3 78 */	mr r3, r30
/* 806FD98C  4B FF DF 7D */	bl executeIcicleWait__8daE_KK_cFv
/* 806FD990  48 00 00 78 */	b lbl_806FDA08
lbl_806FD994:
/* 806FD994  7F C3 F3 78 */	mr r3, r30
/* 806FD998  4B FF E1 85 */	bl executeWalk__8daE_KK_cFv
/* 806FD99C  48 00 00 6C */	b lbl_806FDA08
lbl_806FD9A0:
/* 806FD9A0  7F C3 F3 78 */	mr r3, r30
/* 806FD9A4  4B FF E4 F5 */	bl executeSpearThrow__8daE_KK_cFv
/* 806FD9A8  3B A0 00 01 */	li r29, 1
/* 806FD9AC  48 00 00 5C */	b lbl_806FDA08
lbl_806FD9B0:
/* 806FD9B0  7F C3 F3 78 */	mr r3, r30
/* 806FD9B4  4B FF E9 BD */	bl executeBackWalk__8daE_KK_cFv
/* 806FD9B8  48 00 00 50 */	b lbl_806FDA08
lbl_806FD9BC:
/* 806FD9BC  7F C3 F3 78 */	mr r3, r30
/* 806FD9C0  4B FF ED 9D */	bl executeYoroke__8daE_KK_cFv
/* 806FD9C4  48 00 00 44 */	b lbl_806FDA08
lbl_806FD9C8:
/* 806FD9C8  7F C3 F3 78 */	mr r3, r30
/* 806FD9CC  4B FF EF 29 */	bl executeGuard__8daE_KK_cFv
/* 806FD9D0  3B A0 00 01 */	li r29, 1
/* 806FD9D4  48 00 00 34 */	b lbl_806FDA08
lbl_806FD9D8:
/* 806FD9D8  7F C3 F3 78 */	mr r3, r30
/* 806FD9DC  4B FF F0 4D */	bl executeDamage__8daE_KK_cFv
/* 806FD9E0  48 00 00 28 */	b lbl_806FDA08
lbl_806FD9E4:
/* 806FD9E4  7F C3 F3 78 */	mr r3, r30
/* 806FD9E8  4B FF F2 4D */	bl executeAttack__8daE_KK_cFv
/* 806FD9EC  3B A0 00 01 */	li r29, 1
/* 806FD9F0  48 00 00 18 */	b lbl_806FDA08
lbl_806FD9F4:
/* 806FD9F4  7F C3 F3 78 */	mr r3, r30
/* 806FD9F8  4B FF F6 71 */	bl executeDead__8daE_KK_cFv
/* 806FD9FC  48 00 00 0C */	b lbl_806FDA08
lbl_806FDA00:
/* 806FDA00  7F C3 F3 78 */	mr r3, r30
/* 806FDA04  4B FF F8 91 */	bl executeWeaponMove__8daE_KK_cFv
lbl_806FDA08:
/* 806FDA08  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FDA0C  30 1D FF FF */	addic r0, r29, -1
/* 806FDA10  7C 00 E9 10 */	subfe r0, r0, r29
/* 806FDA14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806FDA18  4B BC 41 65 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 806FDA1C  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FDA20  28 00 00 01 */	cmplwi r0, 1
/* 806FDA24  41 82 00 3C */	beq lbl_806FDA60
/* 806FDA28  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FDA2C  2C 00 00 08 */	cmpwi r0, 8
/* 806FDA30  41 82 00 0C */	beq lbl_806FDA3C
/* 806FDA34  38 00 00 01 */	li r0, 1
/* 806FDA38  98 1E 06 7E */	stb r0, 0x67e(r30)
lbl_806FDA3C:
/* 806FDA3C  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FDA40  2C 00 00 04 */	cmpwi r0, 4
/* 806FDA44  41 82 00 1C */	beq lbl_806FDA60
/* 806FDA48  2C 00 00 02 */	cmpwi r0, 2
/* 806FDA4C  41 82 00 14 */	beq lbl_806FDA60
/* 806FDA50  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806FDA54  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806FDA58  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806FDA5C  4B B7 20 25 */	bl cLib_addCalc0__FPfff
lbl_806FDA60:
/* 806FDA60  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FDA64  2C 00 00 0A */	cmpwi r0, 0xa
/* 806FDA68  40 82 00 10 */	bne lbl_806FDA78
/* 806FDA6C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FDA70  2C 00 00 02 */	cmpwi r0, 2
/* 806FDA74  41 80 00 10 */	blt lbl_806FDA84
lbl_806FDA78:
/* 806FDA78  7F C3 F3 78 */	mr r3, r30
/* 806FDA7C  38 9E 09 88 */	addi r4, r30, 0x988
/* 806FDA80  4B 91 CC 4D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_806FDA84:
/* 806FDA84  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FDA88  28 00 00 01 */	cmplwi r0, 1
/* 806FDA8C  41 82 01 A0 */	beq lbl_806FDC2C
/* 806FDA90  7F C3 F3 78 */	mr r3, r30
/* 806FDA94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FDA98  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FDA9C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FDAA0  4B 91 CC 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FDAA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806FDAA8  7C 03 00 50 */	subf r0, r3, r0
/* 806FDAAC  7C 00 00 D0 */	neg r0, r0
/* 806FDAB0  7C 1C 07 34 */	extsh r28, r0
/* 806FDAB4  2C 1C D8 F0 */	cmpwi r28, -10000
/* 806FDAB8  40 80 00 0C */	bge lbl_806FDAC4
/* 806FDABC  3B 80 D8 F0 */	li r28, -10000
/* 806FDAC0  48 00 00 10 */	b lbl_806FDAD0
lbl_806FDAC4:
/* 806FDAC4  2C 1C 27 10 */	cmpwi r28, 0x2710
/* 806FDAC8  40 81 00 08 */	ble lbl_806FDAD0
/* 806FDACC  3B 80 27 10 */	li r28, 0x2710
lbl_806FDAD0:
/* 806FDAD0  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FDAD4  2C 00 00 05 */	cmpwi r0, 5
/* 806FDAD8  41 82 00 2C */	beq lbl_806FDB04
/* 806FDADC  2C 00 00 07 */	cmpwi r0, 7
/* 806FDAE0  41 82 00 24 */	beq lbl_806FDB04
/* 806FDAE4  7F C3 F3 78 */	mr r3, r30
/* 806FDAE8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FDAEC  4B 91 CC F5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FDAF0  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FDAF4  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FDAF8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FDAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FDB00  40 81 00 08 */	ble lbl_806FDB08
lbl_806FDB04:
/* 806FDB04  3B 80 00 00 */	li r28, 0
lbl_806FDB08:
/* 806FDB08  38 7E 07 58 */	addi r3, r30, 0x758
/* 806FDB0C  7F 84 E3 78 */	mr r4, r28
/* 806FDB10  38 A0 00 08 */	li r5, 8
/* 806FDB14  38 C0 04 00 */	li r6, 0x400
/* 806FDB18  4B B7 2A F1 */	bl cLib_addCalcAngleS2__FPssss
/* 806FDB1C  38 7E 07 70 */	addi r3, r30, 0x770
/* 806FDB20  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 806FDB24  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 806FDB28  4B 97 84 31 */	bl SetWall__12dBgS_AcchCirFff
/* 806FDB2C  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 806FDB30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FDB34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FDB38  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 806FDB3C  7F A4 EB 78 */	mr r4, r29
/* 806FDB40  4B 97 8F 6D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806FDB44  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FDB48  2C 00 00 0A */	cmpwi r0, 0xa
/* 806FDB4C  41 82 00 C0 */	beq lbl_806FDC0C
/* 806FDB50  38 61 00 14 */	addi r3, r1, 0x14
/* 806FDB54  4B 97 9A 29 */	bl __ct__11dBgS_GndChkFv
/* 806FDB58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FDB5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FDB60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806FDB64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806FDB68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FDB6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FDB70  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806FDB74  EC 01 00 2A */	fadds f0, f1, f0
/* 806FDB78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FDB7C  38 61 00 14 */	addi r3, r1, 0x14
/* 806FDB80  38 81 00 08 */	addi r4, r1, 8
/* 806FDB84  4B B6 A1 A5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806FDB88  7F A3 EB 78 */	mr r3, r29
/* 806FDB8C  38 81 00 14 */	addi r4, r1, 0x14
/* 806FDB90  4B 97 69 11 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806FDB94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806FDB98  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806FDB9C  FC 00 08 18 */	frsp f0, f1
/* 806FDBA0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 806FDBA4  40 82 00 20 */	bne lbl_806FDBC4
/* 806FDBA8  38 00 00 64 */	li r0, 0x64
/* 806FDBAC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 806FDBB0  7F C3 F3 78 */	mr r3, r30
/* 806FDBB4  38 80 00 0A */	li r4, 0xa
/* 806FDBB8  38 A0 00 02 */	li r5, 2
/* 806FDBBC  4B FF D0 C5 */	bl setActionMode__8daE_KK_cFii
/* 806FDBC0  48 00 00 40 */	b lbl_806FDC00
lbl_806FDBC4:
/* 806FDBC4  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 806FDBC8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806FDBCC  EC 20 10 28 */	fsubs f1, f0, f2
/* 806FDBD0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806FDBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FDBD8  40 81 00 18 */	ble lbl_806FDBF0
/* 806FDBDC  7F C3 F3 78 */	mr r3, r30
/* 806FDBE0  38 80 00 0A */	li r4, 0xa
/* 806FDBE4  38 A0 00 02 */	li r5, 2
/* 806FDBE8  4B FF D0 99 */	bl setActionMode__8daE_KK_cFii
/* 806FDBEC  48 00 00 14 */	b lbl_806FDC00
lbl_806FDBF0:
/* 806FDBF0  80 1E 07 DC */	lwz r0, 0x7dc(r30)
/* 806FDBF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806FDBF8  41 82 00 08 */	beq lbl_806FDC00
/* 806FDBFC  D0 5E 07 60 */	stfs f2, 0x760(r30)
lbl_806FDC00:
/* 806FDC00  38 61 00 14 */	addi r3, r1, 0x14
/* 806FDC04  38 80 FF FF */	li r4, -1
/* 806FDC08  4B 97 99 E9 */	bl __dt__11dBgS_GndChkFv
lbl_806FDC0C:
/* 806FDC0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FDC10  7C 03 07 74 */	extsb r3, r0
/* 806FDC14  4B 92 F4 59 */	bl dComIfGp_getReverb__Fi
/* 806FDC18  7C 65 1B 78 */	mr r5, r3
/* 806FDC1C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FDC20  38 80 00 00 */	li r4, 0
/* 806FDC24  4B 91 34 8D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806FDC28  48 00 00 38 */	b lbl_806FDC60
lbl_806FDC2C:
/* 806FDC2C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806FDC30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FDC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FDC38  40 80 00 28 */	bge lbl_806FDC60
/* 806FDC3C  38 7E 07 70 */	addi r3, r30, 0x770
/* 806FDC40  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FDC44  FC 40 08 90 */	fmr f2, f1
/* 806FDC48  4B 97 83 11 */	bl SetWall__12dBgS_AcchCirFff
/* 806FDC4C  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 806FDC50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FDC54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FDC58  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806FDC5C  4B 97 8E 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_806FDC60:
/* 806FDC60  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FDC64  28 00 00 01 */	cmplwi r0, 1
/* 806FDC68  41 82 00 8C */	beq lbl_806FDCF4
/* 806FDC6C  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FDC70  28 00 00 00 */	cmplwi r0, 0
/* 806FDC74  41 82 00 10 */	beq lbl_806FDC84
/* 806FDC78  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806FDC7C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806FDC80  40 82 00 74 */	bne lbl_806FDCF4
lbl_806FDC84:
/* 806FDC84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FDC88  7C 03 07 74 */	extsb r3, r0
/* 806FDC8C  4B 92 F3 E1 */	bl dComIfGp_getReverb__Fi
/* 806FDC90  7C 65 1B 78 */	mr r5, r3
/* 806FDC94  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FDC98  38 80 00 00 */	li r4, 0
/* 806FDC9C  4B 91 34 15 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806FDCA0  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806FDCA4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806FDCA8  40 82 00 4C */	bne lbl_806FDCF4
/* 806FDCAC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FDCB0  38 80 00 01 */	li r4, 1
/* 806FDCB4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FDCB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FDCBC  40 82 00 18 */	bne lbl_806FDCD4
/* 806FDCC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FDCC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FDCC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FDCCC  41 82 00 08 */	beq lbl_806FDCD4
/* 806FDCD0  38 80 00 00 */	li r4, 0
lbl_806FDCD4:
/* 806FDCD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FDCD8  41 82 00 1C */	beq lbl_806FDCF4
/* 806FDCDC  7F C3 F3 78 */	mr r3, r30
/* 806FDCE0  38 80 00 1D */	li r4, 0x1d
/* 806FDCE4  38 A0 00 00 */	li r5, 0
/* 806FDCE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FDCEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FDCF0  4B FF CE 25 */	bl setWeaponBck__8daE_KK_cFiUcff
lbl_806FDCF4:
/* 806FDCF4  39 61 00 80 */	addi r11, r1, 0x80
/* 806FDCF8  4B C6 45 2D */	bl _restgpr_28
/* 806FDCFC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806FDD00  7C 08 03 A6 */	mtlr r0
/* 806FDD04  38 21 00 80 */	addi r1, r1, 0x80
/* 806FDD08  4E 80 00 20 */	blr 
