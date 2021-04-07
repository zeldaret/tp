lbl_800F8DBC:
/* 800F8DBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800F8DC0  7C 08 02 A6 */	mflr r0
/* 800F8DC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800F8DC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800F8DCC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800F8DD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800F8DD4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800F8DD8  7C 7F 1B 78 */	mr r31, r3
/* 800F8DDC  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800F8DE0  3B C3 D6 58 */	addi r30, r3, lit_3757@l /* 0x8038D658@l */
/* 800F8DE4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800F8DE8  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 800F8DEC  38 FE 09 C4 */	addi r7, r30, 0x9c4
/* 800F8DF0  A8 A7 00 28 */	lha r5, 0x28(r7)
/* 800F8DF4  A8 C7 00 2A */	lha r6, 0x2a(r7)
/* 800F8DF8  A8 E7 00 2C */	lha r7, 0x2c(r7)
/* 800F8DFC  48 17 77 45 */	bl cLib_addCalcAngleS__FPsssss
/* 800F8E00  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F8E04  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F8E08  7C 03 00 00 */	cmpw r3, r0
/* 800F8E0C  41 82 00 DC */	beq lbl_800F8EE8
/* 800F8E10  7C 00 18 50 */	subf r0, r0, r3
/* 800F8E14  7C 00 07 35 */	extsh. r0, r0
/* 800F8E18  40 81 00 30 */	ble lbl_800F8E48
/* 800F8E1C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800F8E20  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8E24  38 9E 24 B0 */	addi r4, r30, 0x24b0
/* 800F8E28  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F8E2C  48 24 DF 41 */	bl PSMTXMultVec
/* 800F8E30  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800F8E34  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8E38  38 9E 24 98 */	addi r4, r30, 0x2498
/* 800F8E3C  38 A1 00 08 */	addi r5, r1, 8
/* 800F8E40  48 24 DF 2D */	bl PSMTXMultVec
/* 800F8E44  48 00 00 2C */	b lbl_800F8E70
lbl_800F8E48:
/* 800F8E48  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800F8E4C  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8E50  38 9E 24 BC */	addi r4, r30, 0x24bc
/* 800F8E54  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F8E58  48 24 DF 15 */	bl PSMTXMultVec
/* 800F8E5C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800F8E60  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8E64  38 9E 24 A4 */	addi r4, r30, 0x24a4
/* 800F8E68  38 A1 00 08 */	addi r5, r1, 8
/* 800F8E6C  48 24 DF 01 */	bl PSMTXMultVec
lbl_800F8E70:
/* 800F8E70  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800F8E74  38 81 00 20 */	addi r4, r1, 0x20
/* 800F8E78  48 16 EE B1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800F8E7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800F8E80  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F8E84  EF E1 00 28 */	fsubs f31, f1, f0
/* 800F8E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8E90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F8E94  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800F8E98  4B F7 B6 09 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800F8E9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F8EA0  EC 41 00 28 */	fsubs f2, f1, f0
/* 800F8EA4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800F8EA8  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F8EAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F8EB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F8EB4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800F8EB8  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 800F8EBC  38 61 00 14 */	addi r3, r1, 0x14
/* 800F8EC0  48 16 E2 91 */	bl atan2sY_XZ__4cXyzCFv
/* 800F8EC4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800F8EC8  48 17 7F 5D */	bl cLib_distanceAngleS__Fss
/* 800F8ECC  2C 03 08 00 */	cmpwi r3, 0x800
/* 800F8ED0  40 81 00 10 */	ble lbl_800F8EE0
/* 800F8ED4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F8ED8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800F8EDC  48 00 00 0C */	b lbl_800F8EE8
lbl_800F8EE0:
/* 800F8EE0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F8EE4  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800F8EE8:
/* 800F8EE8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800F8EEC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800F8EF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800F8EF4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800F8EF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800F8EFC  7C 08 03 A6 */	mtlr r0
/* 800F8F00  38 21 00 50 */	addi r1, r1, 0x50
/* 800F8F04  4E 80 00 20 */	blr 
