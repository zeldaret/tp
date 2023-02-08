lbl_8051D88C:
/* 8051D88C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051D890  7C 08 02 A6 */	mflr r0
/* 8051D894  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051D898  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8051D89C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8051D8A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8051D8A4  4B E4 49 35 */	bl _savegpr_28
/* 8051D8A8  7C 7C 1B 78 */	mr r28, r3
/* 8051D8AC  7C 9D 23 78 */	mr r29, r4
/* 8051D8B0  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 8051D8B4  3B E3 30 28 */	addi r31, r3, lit_3999@l /* 0x80523028@l */
/* 8051D8B8  4B B3 D2 39 */	bl dKyw_get_wind_pow__Fv
/* 8051D8BC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8051D8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051D8C4  4C 41 13 82 */	cror 2, 1, 2
/* 8051D8C8  41 82 01 38 */	beq lbl_8051DA00
/* 8051D8CC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8051D8D0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8051D8D4  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051D8D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8051D8DC  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 8051D8E0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8051D8E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051D8E8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8051D8EC  D0 41 00 08 */	stfs f2, 8(r1)
/* 8051D8F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051D8F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8051D8F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8051D8FC  38 61 00 08 */	addi r3, r1, 8
/* 8051D900  4B E2 98 39 */	bl PSVECSquareMag
/* 8051D904  FF E0 08 90 */	fmr f31, f1
/* 8051D908  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8051D90C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051D910  41 81 00 F0 */	bgt lbl_8051DA00
/* 8051D914  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8051D918  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8051D91C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051D920  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8051D924  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8051D928  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8051D92C  4B D4 9D 49 */	bl cM_atan2s__Fff
/* 8051D930  7C 7E 1B 78 */	mr r30, r3
/* 8051D934  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051D938  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051D93C  40 81 00 0C */	ble lbl_8051D948
/* 8051D940  FC 00 F8 34 */	frsqrte f0, f31
/* 8051D944  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_8051D948:
/* 8051D948  88 1C 00 02 */	lbz r0, 2(r28)
/* 8051D94C  7C 04 07 74 */	extsb r4, r0
/* 8051D950  2C 04 00 10 */	cmpwi r4, 0x10
/* 8051D954  40 80 00 48 */	bge lbl_8051D99C
/* 8051D958  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051D95C  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l /* 0x80450DB0@l */
/* 8051D960  80 63 00 00 */	lwz r3, 0(r3)
/* 8051D964  48 00 2F 35 */	bl newAnm__15dGrass_packet_cFv
/* 8051D968  2C 03 00 00 */	cmpwi r3, 0
/* 8051D96C  41 80 00 94 */	blt lbl_8051DA00
/* 8051D970  98 7C 00 02 */	stb r3, 2(r28)
/* 8051D974  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051D978  80 83 0D B0 */	lwz r4, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
/* 8051D97C  88 1C 00 02 */	lbz r0, 2(r28)
/* 8051D980  7C 00 07 74 */	extsb r0, r0
/* 8051D984  1C 60 00 38 */	mulli r3, r0, 0x38
/* 8051D988  3C 63 00 02 */	addis r3, r3, 2
/* 8051D98C  38 63 BD 64 */	addi r3, r3, -17052
/* 8051D990  7C 64 1A 14 */	add r3, r4, r3
/* 8051D994  7C 7D 1B 78 */	mr r29, r3
/* 8051D998  48 00 00 20 */	b lbl_8051D9B8
lbl_8051D99C:
/* 8051D99C  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051D9A0  80 03 0D B0 */	lwz r0, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
/* 8051D9A4  1C 64 00 38 */	mulli r3, r4, 0x38
/* 8051D9A8  3C 63 00 02 */	addis r3, r3, 2
/* 8051D9AC  38 63 BD 64 */	addi r3, r3, -17052
/* 8051D9B0  7C 60 1A 14 */	add r3, r0, r3
/* 8051D9B4  7C 7D 1B 78 */	mr r29, r3
lbl_8051D9B8:
/* 8051D9B8  38 7D 00 02 */	addi r3, r29, 2
/* 8051D9BC  7F C4 F3 78 */	mr r4, r30
/* 8051D9C0  38 A0 00 14 */	li r5, 0x14
/* 8051D9C4  38 C0 0F A0 */	li r6, 0xfa0
/* 8051D9C8  38 E0 00 01 */	li r7, 1
/* 8051D9CC  4B D5 2B 75 */	bl cLib_addCalcAngleS__FPsssss
/* 8051D9D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8051D9D4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8051D9D8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8051D9DC  4B D4 9C 99 */	bl cM_atan2s__Fff
/* 8051D9E0  7C 64 1B 78 */	mr r4, r3
/* 8051D9E4  38 7D 00 04 */	addi r3, r29, 4
/* 8051D9E8  38 A0 00 0A */	li r5, 0xa
/* 8051D9EC  38 C0 0F A0 */	li r6, 0xfa0
/* 8051D9F0  38 E0 00 01 */	li r7, 1
/* 8051D9F4  4B D5 2B 4D */	bl cLib_addCalcAngleS__FPsssss
/* 8051D9F8  38 00 00 02 */	li r0, 2
/* 8051D9FC  98 1D 00 00 */	stb r0, 0(r29)
lbl_8051DA00:
/* 8051DA00  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8051DA04  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8051DA08  39 61 00 30 */	addi r11, r1, 0x30
/* 8051DA0C  4B E4 48 19 */	bl _restgpr_28
/* 8051DA10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051DA14  7C 08 03 A6 */	mtlr r0
/* 8051DA18  38 21 00 40 */	addi r1, r1, 0x40
/* 8051DA1C  4E 80 00 20 */	blr 
