lbl_80C7FA54:
/* 80C7FA54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7FA58  7C 08 02 A6 */	mflr r0
/* 80C7FA5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7FA60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C7FA64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C7FA68  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7FA6C  4B 6E 27 6C */	b _savegpr_28
/* 80C7FA70  7C 7E 1B 78 */	mr r30, r3
/* 80C7FA74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C7FA78  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80C7FA7C  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80C7FA80  48 00 01 25 */	bl getSearchDistance__12daObjLv6Bm_cFv
/* 80C7FA84  FF E0 08 90 */	fmr f31, f1
/* 80C7FA88  3B E0 FF FF */	li r31, -1
/* 80C7FA8C  38 00 00 00 */	li r0, 0
/* 80C7FA90  98 1E 0A 15 */	stb r0, 0xa15(r30)
/* 80C7FA94  7F C3 F3 78 */	mr r3, r30
/* 80C7FA98  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7FA9C  4B 39 AE C8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7FAA0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C7FAA4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C7FAA8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C7FAAC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C7FAB0  40 81 00 0C */	ble lbl_80C7FABC
/* 80C7FAB4  38 60 FF FF */	li r3, -1
/* 80C7FAB8  48 00 00 CC */	b lbl_80C7FB84
lbl_80C7FABC:
/* 80C7FABC  FC 00 02 10 */	fabs f0, f0
/* 80C7FAC0  FC 80 00 18 */	frsp f4, f0
/* 80C7FAC4  3C 60 80 C8 */	lis r3, l_eye_offset@ha
/* 80C7FAC8  38 63 1C 2C */	addi r3, r3, l_eye_offset@l
/* 80C7FACC  C0 63 00 04 */	lfs f3, 4(r3)
/* 80C7FAD0  3C 60 80 C8 */	lis r3, lit_3855@ha
/* 80C7FAD4  C0 43 1C 48 */	lfs f2, lit_3855@l(r3)
/* 80C7FAD8  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80C7FADC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C7FAE0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7FAE4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80C7FAE8  40 81 00 0C */	ble lbl_80C7FAF4
/* 80C7FAEC  38 60 FF FF */	li r3, -1
/* 80C7FAF0  48 00 00 94 */	b lbl_80C7FB84
lbl_80C7FAF4:
/* 80C7FAF4  7F C3 F3 78 */	mr r3, r30
/* 80C7FAF8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7FAFC  4B 39 AC 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7FB00  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80C7FB04  A8 1E 09 C2 */	lha r0, 0x9c2(r30)
/* 80C7FB08  7C 00 18 50 */	subf r0, r0, r3
/* 80C7FB0C  7C 04 00 50 */	subf r0, r4, r0
/* 80C7FB10  7C 03 07 34 */	extsh r3, r0
/* 80C7FB14  4B 6E 55 BC */	b abs
/* 80C7FB18  7C 60 07 34 */	extsh r0, r3
/* 80C7FB1C  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 80C7FB20  40 80 00 08 */	bge lbl_80C7FB28
/* 80C7FB24  3B E0 00 00 */	li r31, 0
lbl_80C7FB28:
/* 80C7FB28  7F E0 07 75 */	extsb. r0, r31
/* 80C7FB2C  40 82 00 54 */	bne lbl_80C7FB80
/* 80C7FB30  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80C7FB34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C7FB38  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80C7FB3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C7FB40  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80C7FB44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C7FB48  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80C7FB4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C7FB50  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80C7FB54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7FB58  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80C7FB5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7FB60  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7FB64  38 81 00 08 */	addi r4, r1, 8
/* 80C7FB68  7F C5 F3 78 */	mr r5, r30
/* 80C7FB6C  4B 39 E0 FC */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C7FB70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7FB74  41 82 00 0C */	beq lbl_80C7FB80
/* 80C7FB78  38 00 00 01 */	li r0, 1
/* 80C7FB7C  98 1E 0A 15 */	stb r0, 0xa15(r30)
lbl_80C7FB80:
/* 80C7FB80  7F E3 FB 78 */	mr r3, r31
lbl_80C7FB84:
/* 80C7FB84  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C7FB88  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C7FB8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7FB90  4B 6E 26 94 */	b _restgpr_28
/* 80C7FB94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7FB98  7C 08 03 A6 */	mtlr r0
/* 80C7FB9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7FBA0  4E 80 00 20 */	blr 
