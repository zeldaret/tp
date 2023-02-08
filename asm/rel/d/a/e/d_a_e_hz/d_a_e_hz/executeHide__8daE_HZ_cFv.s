lbl_806EB818:
/* 806EB818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806EB81C  7C 08 02 A6 */	mflr r0
/* 806EB820  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EB824  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806EB828  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806EB82C  7C 7E 1B 78 */	mr r30, r3
/* 806EB830  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EB834  3B E4 08 60 */	addi r31, r4, lit_3966@l /* 0x806F0860@l */
/* 806EB838  38 A0 00 00 */	li r5, 0
/* 806EB83C  98 A3 05 66 */	stb r5, 0x566(r3)
/* 806EB840  38 80 00 01 */	li r4, 1
/* 806EB844  98 83 06 E5 */	stb r4, 0x6e5(r3)
/* 806EB848  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EB84C  2C 00 00 03 */	cmpwi r0, 3
/* 806EB850  41 82 01 DC */	beq lbl_806EBA2C
/* 806EB854  40 80 00 1C */	bge lbl_806EB870
/* 806EB858  2C 00 00 01 */	cmpwi r0, 1
/* 806EB85C  41 82 00 F0 */	beq lbl_806EB94C
/* 806EB860  40 80 01 58 */	bge lbl_806EB9B8
/* 806EB864  2C 00 00 00 */	cmpwi r0, 0
/* 806EB868  40 80 00 18 */	bge lbl_806EB880
/* 806EB86C  48 00 04 C0 */	b lbl_806EBD2C
lbl_806EB870:
/* 806EB870  2C 00 00 05 */	cmpwi r0, 5
/* 806EB874  41 82 02 A0 */	beq lbl_806EBB14
/* 806EB878  40 80 04 B4 */	bge lbl_806EBD2C
/* 806EB87C  48 00 02 40 */	b lbl_806EBABC
lbl_806EB880:
/* 806EB880  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EB884  60 00 00 01 */	ori r0, r0, 1
/* 806EB888  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EB88C  3C 00 00 01 */	lis r0, 1
/* 806EB890  90 1E 0D 34 */	stw r0, 0xd34(r30)
/* 806EB894  98 BE 06 E4 */	stb r5, 0x6e4(r30)
/* 806EB898  38 80 00 00 */	li r4, 0
/* 806EB89C  4B FF F8 09 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EB8A0  80 1E 0E E0 */	lwz r0, 0xee0(r30)
/* 806EB8A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EB8A8  90 1E 0E E0 */	stw r0, 0xee0(r30)
/* 806EB8AC  80 1E 10 18 */	lwz r0, 0x1018(r30)
/* 806EB8B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EB8B4  90 1E 10 18 */	stw r0, 0x1018(r30)
/* 806EB8B8  38 00 00 00 */	li r0, 0
/* 806EB8BC  98 1E 0E FE */	stb r0, 0xefe(r30)
/* 806EB8C0  98 1E 10 36 */	stb r0, 0x1036(r30)
/* 806EB8C4  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806EB8C8  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB8CC  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 806EB8D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806EB8D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EB8D8  40 82 00 30 */	bne lbl_806EB908
/* 806EB8DC  38 00 00 03 */	li r0, 3
/* 806EB8E0  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB8E4  7F C3 F3 78 */	mr r3, r30
/* 806EB8E8  38 80 00 0D */	li r4, 0xd
/* 806EB8EC  38 A0 00 00 */	li r5, 0
/* 806EB8F0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EB8F4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806EB8F8  4B FF ED 99 */	bl setBck__8daE_HZ_cFiUcff
/* 806EB8FC  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 806EB900  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EB904  48 00 00 24 */	b lbl_806EB928
lbl_806EB908:
/* 806EB908  38 00 00 01 */	li r0, 1
/* 806EB90C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB910  7F C3 F3 78 */	mr r3, r30
/* 806EB914  38 80 00 10 */	li r4, 0x10
/* 806EB918  38 A0 00 02 */	li r5, 2
/* 806EB91C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EB920  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EB924  4B FF ED 6D */	bl setBck__8daE_HZ_cFiUcff
lbl_806EB928:
/* 806EB928  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EB92C  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EB930  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EB934  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806EB938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EB93C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EB940  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806EB944  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EB948  48 00 03 E4 */	b lbl_806EBD2C
lbl_806EB94C:
/* 806EB94C  C0 3E 06 A4 */	lfs f1, 0x6a4(r30)
/* 806EB950  3C 80 80 6F */	lis r4, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EB954  38 84 0B 7C */	addi r4, r4, l_HIO@l /* 0x806F0B7C@l */
/* 806EB958  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 806EB95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EB960  40 81 00 0C */	ble lbl_806EB96C
/* 806EB964  3B E0 02 00 */	li r31, 0x200
/* 806EB968  48 00 00 2C */	b lbl_806EB994
lbl_806EB96C:
/* 806EB96C  3B E0 08 00 */	li r31, 0x800
/* 806EB970  4B FF FE 41 */	bl getHideSpeed__8daE_HZ_cFv
/* 806EB974  FC 40 08 90 */	fmr f2, f1
/* 806EB978  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806EB97C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 806EB980  4B B8 4D C1 */	bl cLib_chaseF__FPfff
/* 806EB984  2C 03 00 00 */	cmpwi r3, 0
/* 806EB988  41 82 00 0C */	beq lbl_806EB994
/* 806EB98C  A8 1E 06 B2 */	lha r0, 0x6b2(r30)
/* 806EB990  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_806EB994:
/* 806EB994  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806EB998  A8 9E 06 B2 */	lha r4, 0x6b2(r30)
/* 806EB99C  7F E5 FB 78 */	mr r5, r31
/* 806EB9A0  4B B8 51 F1 */	bl cLib_chaseAngleS__FPsss
/* 806EB9A4  2C 03 00 00 */	cmpwi r3, 0
/* 806EB9A8  41 82 03 84 */	beq lbl_806EBD2C
/* 806EB9AC  38 00 00 02 */	li r0, 2
/* 806EB9B0  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB9B4  48 00 03 78 */	b lbl_806EBD2C
lbl_806EB9B8:
/* 806EB9B8  C0 3E 06 A4 */	lfs f1, 0x6a4(r30)
/* 806EB9BC  3C 80 80 6F */	lis r4, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EB9C0  38 84 0B 7C */	addi r4, r4, l_HIO@l /* 0x806F0B7C@l */
/* 806EB9C4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 806EB9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EB9CC  40 81 00 0C */	ble lbl_806EB9D8
/* 806EB9D0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 806EB9D4  48 00 00 0C */	b lbl_806EB9E0
lbl_806EB9D8:
/* 806EB9D8  4B FF FD D9 */	bl getHideSpeed__8daE_HZ_cFv
/* 806EB9DC  FC 40 08 90 */	fmr f2, f1
lbl_806EB9E0:
/* 806EB9E0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806EB9E4  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 806EB9E8  4B B8 4D 59 */	bl cLib_chaseF__FPfff
/* 806EB9EC  2C 03 00 00 */	cmpwi r3, 0
/* 806EB9F0  41 82 03 3C */	beq lbl_806EBD2C
/* 806EB9F4  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806EB9F8  2C 00 00 00 */	cmpwi r0, 0
/* 806EB9FC  40 82 03 30 */	bne lbl_806EBD2C
/* 806EBA00  38 00 00 03 */	li r0, 3
/* 806EBA04  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EBA08  7F C3 F3 78 */	mr r3, r30
/* 806EBA0C  38 80 00 0D */	li r4, 0xd
/* 806EBA10  38 A0 00 00 */	li r5, 0
/* 806EBA14  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EBA18  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806EBA1C  4B FF EC 75 */	bl setBck__8daE_HZ_cFiUcff
/* 806EBA20  7F C3 F3 78 */	mr r3, r30
/* 806EBA24  4B FF F8 C5 */	bl setCloseSmokeEffect__8daE_HZ_cFv
/* 806EBA28  48 00 03 04 */	b lbl_806EBD2C
lbl_806EBA2C:
/* 806EBA2C  4B FF F4 B1 */	bl checkAttackStart__8daE_HZ_cFv
/* 806EBA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EBA34  41 82 00 54 */	beq lbl_806EBA88
/* 806EBA38  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 806EBA3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EBA40  41 82 00 10 */	beq lbl_806EBA50
/* 806EBA44  38 00 00 04 */	li r0, 4
/* 806EBA48  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EBA4C  48 00 00 28 */	b lbl_806EBA74
lbl_806EBA50:
/* 806EBA50  38 00 00 05 */	li r0, 5
/* 806EBA54  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EBA58  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EBA5C  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EBA60  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806EBA64  FC 00 00 1E */	fctiwz f0, f0
/* 806EBA68  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806EBA6C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806EBA70  B0 1E 06 DC */	sth r0, 0x6dc(r30)
lbl_806EBA74:
/* 806EBA74  A8 7E 06 B0 */	lha r3, 0x6b0(r30)
/* 806EBA78  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EBA7C  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EBA80  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EBA84  48 00 02 A8 */	b lbl_806EBD2C
lbl_806EBA88:
/* 806EBA88  7F C3 F3 78 */	mr r3, r30
/* 806EBA8C  4B FF F0 DD */	bl checkHideStart__8daE_HZ_cFv
/* 806EBA90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EBA94  40 82 02 98 */	bne lbl_806EBD2C
/* 806EBA98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EBA9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EBAA0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806EBAA4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806EBAA8  40 82 02 84 */	bne lbl_806EBD2C
/* 806EBAAC  7F C3 F3 78 */	mr r3, r30
/* 806EBAB0  38 80 00 00 */	li r4, 0
/* 806EBAB4  4B FF F0 29 */	bl setActionMode__8daE_HZ_cFi
/* 806EBAB8  48 00 02 74 */	b lbl_806EBD2C
lbl_806EBABC:
/* 806EBABC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 806EBAC0  28 00 00 02 */	cmplwi r0, 2
/* 806EBAC4  41 82 00 24 */	beq lbl_806EBAE8
/* 806EBAC8  38 80 00 02 */	li r4, 2
/* 806EBACC  38 A0 00 00 */	li r5, 0
/* 806EBAD0  38 C0 00 00 */	li r6, 0
/* 806EBAD4  4B 92 FE 35 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806EBAD8  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 806EBADC  60 00 00 02 */	ori r0, r0, 2
/* 806EBAE0  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 806EBAE4  48 00 02 48 */	b lbl_806EBD2C
lbl_806EBAE8:
/* 806EBAE8  98 9E 06 ED */	stb r4, 0x6ed(r30)
/* 806EBAEC  38 00 00 05 */	li r0, 5
/* 806EBAF0  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EBAF4  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EBAF8  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EBAFC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806EBB00  FC 00 00 1E */	fctiwz f0, f0
/* 806EBB04  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806EBB08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806EBB0C  B0 1E 06 DC */	sth r0, 0x6dc(r30)
/* 806EBB10  48 00 02 1C */	b lbl_806EBD2C
lbl_806EBB14:
/* 806EBB14  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806EBB18  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806EBB1C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806EBB20  EC 21 00 2A */	fadds f1, f1, f0
/* 806EBB24  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806EBB28  4B B8 4C 19 */	bl cLib_chaseF__FPfff
/* 806EBB2C  A8 1E 06 DC */	lha r0, 0x6dc(r30)
/* 806EBB30  2C 00 00 02 */	cmpwi r0, 2
/* 806EBB34  40 82 00 6C */	bne lbl_806EBBA0
/* 806EBB38  88 1E 06 ED */	lbz r0, 0x6ed(r30)
/* 806EBB3C  28 00 00 00 */	cmplwi r0, 0
/* 806EBB40  41 82 01 EC */	beq lbl_806EBD2C
/* 806EBB44  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806EBB48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EBB4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EBB50  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806EBB54  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806EBB58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806EBB5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EBB60  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806EBB64  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806EBB68  38 81 00 08 */	addi r4, r1, 8
/* 806EBB6C  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 806EBB70  38 C0 00 00 */	li r6, 0
/* 806EBB74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806EBB78  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806EBB7C  7D 89 03 A6 */	mtctr r12
/* 806EBB80  4E 80 04 21 */	bctrl 
/* 806EBB84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EBB88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EBB8C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806EBB90  4B 95 68 D9 */	bl reset__14dEvt_control_cFv
/* 806EBB94  38 00 00 00 */	li r0, 0
/* 806EBB98  98 1E 06 ED */	stb r0, 0x6ed(r30)
/* 806EBB9C  48 00 01 90 */	b lbl_806EBD2C
lbl_806EBBA0:
/* 806EBBA0  2C 00 00 01 */	cmpwi r0, 1
/* 806EBBA4  40 82 01 88 */	bne lbl_806EBD2C
/* 806EBBA8  38 80 00 00 */	li r4, 0
/* 806EBBAC  98 9E 06 E5 */	stb r4, 0x6e5(r30)
/* 806EBBB0  88 7E 06 E9 */	lbz r3, 0x6e9(r30)
/* 806EBBB4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 806EBBB8  41 82 00 60 */	beq lbl_806EBC18
/* 806EBBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EBBC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EBBC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806EBBC8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 806EBBCC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806EBBD0  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 806EBBD4  38 A0 00 01 */	li r5, 1
/* 806EBBD8  38 C0 00 00 */	li r6, 0
/* 806EBBDC  38 E0 00 00 */	li r7, 0
/* 806EBBE0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806EBBE4  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 806EBBE8  7D 89 03 A6 */	mtctr r12
/* 806EBBEC  4E 80 04 21 */	bctrl 
/* 806EBBF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EBBF4  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EBBF8  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EBBFC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 806EBC00  EC 01 00 2A */	fadds f0, f1, f0
/* 806EBC04  FC 00 00 1E */	fctiwz f0, f0
/* 806EBC08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806EBC0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806EBC10  B0 1E 06 E2 */	sth r0, 0x6e2(r30)
/* 806EBC14  48 00 01 04 */	b lbl_806EBD18
lbl_806EBC18:
/* 806EBC18  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 806EBC1C  41 82 00 80 */	beq lbl_806EBC9C
/* 806EBC20  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC24  28 03 00 00 */	cmplwi r3, 0
/* 806EBC28  41 82 00 F0 */	beq lbl_806EBD18
/* 806EBC2C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806EBC30  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806EBC34  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC38  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 806EBC3C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806EBC40  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 806EBC44  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806EBC48  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 806EBC4C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806EBC50  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806EBC54  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC58  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 806EBC5C  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 806EBC60  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806EBC64  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 806EBC68  D0 23 05 00 */	stfs f1, 0x500(r3)
/* 806EBC6C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EBC70  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC74  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 806EBC78  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EBC7C  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC80  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 806EBC84  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 806EBC88  38 80 00 00 */	li r4, 0
/* 806EBC8C  4B D8 87 BD */	bl mode_init_drop__12daObjCarry_cFUc
/* 806EBC90  38 00 00 00 */	li r0, 0
/* 806EBC94  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806EBC98  48 00 00 80 */	b lbl_806EBD18
lbl_806EBC9C:
/* 806EBC9C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 806EBCA0  41 82 00 78 */	beq lbl_806EBD18
/* 806EBCA4  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 806EBCA8  28 03 00 00 */	cmplwi r3, 0
/* 806EBCAC  41 82 00 6C */	beq lbl_806EBD18
/* 806EBCB0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 806EBCB4  28 00 00 00 */	cmplwi r0, 0
/* 806EBCB8  41 82 00 60 */	beq lbl_806EBD18
/* 806EBCBC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806EBCC0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806EBCC4  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 806EBCC8  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 806EBCCC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806EBCD0  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 806EBCD4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806EBCD8  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 806EBCDC  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806EBCE0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806EBCE4  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 806EBCE8  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 806EBCEC  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 806EBCF0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806EBCF4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 806EBCF8  D0 23 05 00 */	stfs f1, 0x500(r3)
/* 806EBCFC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EBD00  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 806EBD04  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 806EBD08  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EBD0C  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 806EBD10  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 806EBD14  90 9E 06 70 */	stw r4, 0x670(r30)
lbl_806EBD18:
/* 806EBD18  38 00 00 00 */	li r0, 0
/* 806EBD1C  98 1E 06 E9 */	stb r0, 0x6e9(r30)
/* 806EBD20  7F C3 F3 78 */	mr r3, r30
/* 806EBD24  38 80 00 02 */	li r4, 2
/* 806EBD28  4B FF ED B5 */	bl setActionMode__8daE_HZ_cFi
lbl_806EBD2C:
/* 806EBD2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806EBD30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806EBD34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806EBD38  7C 08 03 A6 */	mtlr r0
/* 806EBD3C  38 21 00 30 */	addi r1, r1, 0x30
/* 806EBD40  4E 80 00 20 */	blr 
