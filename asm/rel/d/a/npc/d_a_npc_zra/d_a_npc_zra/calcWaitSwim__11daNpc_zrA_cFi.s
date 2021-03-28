lbl_80B825FC:
/* 80B825FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B82600  7C 08 02 A6 */	mflr r0
/* 80B82604  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B82608  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8260C  4B 7D FB CC */	b _savegpr_28
/* 80B82610  7C 7C 1B 78 */	mr r28, r3
/* 80B82614  7C 9D 23 78 */	mr r29, r4
/* 80B82618  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B8261C  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B82620  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80B82624  38 80 00 00 */	li r4, 0
/* 80B82628  3B DF 00 00 */	addi r30, r31, 0
/* 80B8262C  A8 BE 00 74 */	lha r5, 0x74(r30)
/* 80B82630  4B 6E E5 60 */	b cLib_chaseAngleS__FPsss
/* 80B82634  38 7C 04 E0 */	addi r3, r28, 0x4e0
/* 80B82638  38 80 00 00 */	li r4, 0
/* 80B8263C  A8 BE 00 74 */	lha r5, 0x74(r30)
/* 80B82640  4B 6E E5 50 */	b cLib_chaseAngleS__FPsss
/* 80B82644  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B82648  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B8264C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B82650  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B82654  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82658  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B8265C  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 80B82660  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B82664  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B82668  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B8266C  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 80B82670  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B82674  38 7C 15 24 */	addi r3, r28, 0x1524
/* 80B82678  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8267C  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80B82680  4B 6E E0 C0 */	b cLib_chaseF__FPfff
/* 80B82684  38 7C 15 6C */	addi r3, r28, 0x156c
/* 80B82688  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B8268C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B82690  EC 40 08 28 */	fsubs f2, f0, f1
/* 80B82694  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B82698  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B8269C  4B 6E E0 A4 */	b cLib_chaseF__FPfff
/* 80B826A0  7F 83 E3 78 */	mr r3, r28
/* 80B826A4  4B FF FC 5D */	bl calcModulation__11daNpc_zrA_cFv
/* 80B826A8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B826AC  41 82 00 2C */	beq lbl_80B826D8
/* 80B826B0  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B826B4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B826B8  41 82 00 20 */	beq lbl_80B826D8
/* 80B826BC  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80B826C0  C0 3C 07 9C */	lfs f1, 0x79c(r28)
/* 80B826C4  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80B826C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B826CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B826D0  40 81 00 08 */	ble lbl_80B826D8
/* 80B826D4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80B826D8:
/* 80B826D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B826DC  4B 7D FB 48 */	b _restgpr_28
/* 80B826E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B826E4  7C 08 03 A6 */	mtlr r0
/* 80B826E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B826EC  4E 80 00 20 */	blr 
