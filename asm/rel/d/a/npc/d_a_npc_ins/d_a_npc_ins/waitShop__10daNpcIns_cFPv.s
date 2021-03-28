lbl_80A0F984:
/* 80A0F984  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A0F988  7C 08 02 A6 */	mflr r0
/* 80A0F98C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A0F990  39 61 00 50 */	addi r11, r1, 0x50
/* 80A0F994  4B 95 28 40 */	b _savegpr_27
/* 80A0F998  7C 7D 1B 78 */	mr r29, r3
/* 80A0F99C  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A0F9A0  3B C4 41 9C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A0F9A4  3C 80 80 A1 */	lis r4, l_insectParams@ha
/* 80A0F9A8  3B E4 3D AC */	addi r31, r4, l_insectParams@l
/* 80A0F9AC  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A0F9B0  2C 00 00 02 */	cmpwi r0, 2
/* 80A0F9B4  41 82 00 6C */	beq lbl_80A0FA20
/* 80A0F9B8  40 80 05 6C */	bge lbl_80A0FF24
/* 80A0F9BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A0F9C0  41 82 00 0C */	beq lbl_80A0F9CC
/* 80A0F9C4  48 00 05 60 */	b lbl_80A0FF24
/* 80A0F9C8  48 00 05 5C */	b lbl_80A0FF24
lbl_80A0F9CC:
/* 80A0F9CC  38 80 00 09 */	li r4, 9
/* 80A0F9D0  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0F9D4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A0F9D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0F9DC  7D 89 03 A6 */	mtctr r12
/* 80A0F9E0  4E 80 04 21 */	bctrl 
/* 80A0F9E4  7F A3 EB 78 */	mr r3, r29
/* 80A0F9E8  38 80 00 00 */	li r4, 0
/* 80A0F9EC  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0F9F0  38 A0 00 00 */	li r5, 0
/* 80A0F9F4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A0F9F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0F9FC  7D 89 03 A6 */	mtctr r12
/* 80A0FA00  4E 80 04 21 */	bctrl 
/* 80A0FA04  38 00 00 00 */	li r0, 0
/* 80A0FA08  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A0FA0C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A0FA10  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A0FA14  38 00 00 02 */	li r0, 2
/* 80A0FA18  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A0FA1C  48 00 05 08 */	b lbl_80A0FF24
lbl_80A0FA20:
/* 80A0FA20  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FA24  4B 74 0C C8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A0FA28  28 03 00 00 */	cmplwi r3, 0
/* 80A0FA2C  41 82 00 B0 */	beq lbl_80A0FADC
/* 80A0FA30  7F A3 EB 78 */	mr r3, r29
/* 80A0FA34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A0FA38  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A0FA3C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FA40  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80A0FA44  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A0FA48  4B 74 3F A8 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A0FA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FA50  40 82 00 14 */	bne lbl_80A0FA64
/* 80A0FA54  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FA58  4B 74 0C 88 */	b remove__18daNpcF_ActorMngr_cFv
/* 80A0FA5C  3B 60 00 00 */	li r27, 0
/* 80A0FA60  48 00 00 68 */	b lbl_80A0FAC8
lbl_80A0FA64:
/* 80A0FA64  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FA68  4B 74 0C 84 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A0FA6C  28 03 00 00 */	cmplwi r3, 0
/* 80A0FA70  40 82 00 20 */	bne lbl_80A0FA90
/* 80A0FA74  7F A3 EB 78 */	mr r3, r29
/* 80A0FA78  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FA7C  7F A5 EB 78 */	mr r5, r29
/* 80A0FA80  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A0FA84  4B 74 41 58 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A0FA88  7C 7B 1B 78 */	mr r27, r3
/* 80A0FA8C  48 00 00 1C */	b lbl_80A0FAA8
lbl_80A0FA90:
/* 80A0FA90  7F A3 EB 78 */	mr r3, r29
/* 80A0FA94  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FA98  7F A5 EB 78 */	mr r5, r29
/* 80A0FA9C  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A0FAA0  4B 74 41 3C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A0FAA4  7C 7B 1B 78 */	mr r27, r3
lbl_80A0FAA8:
/* 80A0FAA8  2C 1B 00 00 */	cmpwi r27, 0
/* 80A0FAAC  41 82 00 14 */	beq lbl_80A0FAC0
/* 80A0FAB0  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FAB4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FAB8  4B 74 0C 04 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A0FABC  48 00 00 0C */	b lbl_80A0FAC8
lbl_80A0FAC0:
/* 80A0FAC0  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FAC4  4B 74 0C 1C */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A0FAC8:
/* 80A0FAC8  2C 1B 00 00 */	cmpwi r27, 0
/* 80A0FACC  40 82 00 B8 */	bne lbl_80A0FB84
/* 80A0FAD0  38 00 00 00 */	li r0, 0
/* 80A0FAD4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A0FAD8  48 00 00 AC */	b lbl_80A0FB84
lbl_80A0FADC:
/* 80A0FADC  7F A3 EB 78 */	mr r3, r29
/* 80A0FAE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A0FAE4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A0FAE8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FAEC  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80A0FAF0  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A0FAF4  4B 74 3E FC */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A0FAF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FAFC  40 82 00 14 */	bne lbl_80A0FB10
/* 80A0FB00  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FB04  4B 74 0B DC */	b remove__18daNpcF_ActorMngr_cFv
/* 80A0FB08  3B 60 00 00 */	li r27, 0
/* 80A0FB0C  48 00 00 68 */	b lbl_80A0FB74
lbl_80A0FB10:
/* 80A0FB10  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FB14  4B 74 0B D8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A0FB18  28 03 00 00 */	cmplwi r3, 0
/* 80A0FB1C  40 82 00 20 */	bne lbl_80A0FB3C
/* 80A0FB20  7F A3 EB 78 */	mr r3, r29
/* 80A0FB24  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FB28  7F A5 EB 78 */	mr r5, r29
/* 80A0FB2C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A0FB30  4B 74 40 AC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A0FB34  7C 7B 1B 78 */	mr r27, r3
/* 80A0FB38  48 00 00 1C */	b lbl_80A0FB54
lbl_80A0FB3C:
/* 80A0FB3C  7F A3 EB 78 */	mr r3, r29
/* 80A0FB40  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FB44  7F A5 EB 78 */	mr r5, r29
/* 80A0FB48  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A0FB4C  4B 74 40 90 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A0FB50  7C 7B 1B 78 */	mr r27, r3
lbl_80A0FB54:
/* 80A0FB54  2C 1B 00 00 */	cmpwi r27, 0
/* 80A0FB58  41 82 00 14 */	beq lbl_80A0FB6C
/* 80A0FB5C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FB60  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0FB64  4B 74 0B 58 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A0FB68  48 00 00 0C */	b lbl_80A0FB74
lbl_80A0FB6C:
/* 80A0FB6C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FB70  4B 74 0B 70 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A0FB74:
/* 80A0FB74  2C 1B 00 00 */	cmpwi r27, 0
/* 80A0FB78  41 82 00 0C */	beq lbl_80A0FB84
/* 80A0FB7C  38 00 00 00 */	li r0, 0
/* 80A0FB80  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A0FB84:
/* 80A0FB84  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A0FB88  4B 74 0B 64 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A0FB8C  28 03 00 00 */	cmplwi r3, 0
/* 80A0FB90  41 82 00 1C */	beq lbl_80A0FBAC
/* 80A0FB94  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A0FB98  2C 00 00 02 */	cmpwi r0, 2
/* 80A0FB9C  41 82 01 B8 */	beq lbl_80A0FD54
/* 80A0FBA0  38 00 00 02 */	li r0, 2
/* 80A0FBA4  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80A0FBA8  48 00 01 AC */	b lbl_80A0FD54
lbl_80A0FBAC:
/* 80A0FBAC  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A0FBB0  2C 00 00 00 */	cmpwi r0, 0
/* 80A0FBB4  41 82 00 0C */	beq lbl_80A0FBC0
/* 80A0FBB8  38 00 00 00 */	li r0, 0
/* 80A0FBBC  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
lbl_80A0FBC0:
/* 80A0FBC0  AB 7D 04 B6 */	lha r27, 0x4b6(r29)
/* 80A0FBC4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A0FBC8  7C 1B 00 00 */	cmpw r27, r0
/* 80A0FBCC  41 82 01 88 */	beq lbl_80A0FD54
/* 80A0FBD0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A0FBD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FBD8  40 82 00 D0 */	bne lbl_80A0FCA8
/* 80A0FBDC  C0 5F 03 70 */	lfs f2, 0x370(r31)
/* 80A0FBE0  7C 00 D8 50 */	subf r0, r0, r27
/* 80A0FBE4  7C 00 07 34 */	extsh r0, r0
/* 80A0FBE8  C8 3F 03 78 */	lfd f1, 0x378(r31)
/* 80A0FBEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A0FBF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0FBF4  3C 00 43 30 */	lis r0, 0x4330
/* 80A0FBF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0FBFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A0FC00  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A0FC04  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A0FC08  FC 00 02 10 */	fabs f0, f0
/* 80A0FC0C  FC 00 00 18 */	frsp f0, f0
/* 80A0FC10  FC 00 00 1E */	fctiwz f0, f0
/* 80A0FC14  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A0FC18  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A0FC1C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A0FC20  40 81 00 40 */	ble lbl_80A0FC60
/* 80A0FC24  7F A3 EB 78 */	mr r3, r29
/* 80A0FC28  38 80 00 09 */	li r4, 9
/* 80A0FC2C  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0FC30  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A0FC34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0FC38  7D 89 03 A6 */	mtctr r12
/* 80A0FC3C  4E 80 04 21 */	bctrl 
/* 80A0FC40  7F A3 EB 78 */	mr r3, r29
/* 80A0FC44  38 80 00 0B */	li r4, 0xb
/* 80A0FC48  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0FC4C  38 A0 00 00 */	li r5, 0
/* 80A0FC50  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A0FC54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0FC58  7D 89 03 A6 */	mtctr r12
/* 80A0FC5C  4E 80 04 21 */	bctrl 
lbl_80A0FC60:
/* 80A0FC60  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80A0FC64  38 00 00 00 */	li r0, 0
/* 80A0FC68  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A0FC6C  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A0FC70  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A0FC74  7C 03 00 00 */	cmpw r3, r0
/* 80A0FC78  40 82 00 10 */	bne lbl_80A0FC88
/* 80A0FC7C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A0FC80  38 03 00 01 */	addi r0, r3, 1
/* 80A0FC84  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A0FC88:
/* 80A0FC88  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A0FC8C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A0FC90  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FC94  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A0FC98  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A0FC9C  38 03 00 01 */	addi r0, r3, 1
/* 80A0FCA0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A0FCA4  48 00 00 60 */	b lbl_80A0FD04
lbl_80A0FCA8:
/* 80A0FCA8  2C 03 00 01 */	cmpwi r3, 1
/* 80A0FCAC  40 82 00 58 */	bne lbl_80A0FD04
/* 80A0FCB0  7F A3 EB 78 */	mr r3, r29
/* 80A0FCB4  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A0FCB8  C0 3F 03 74 */	lfs f1, 0x374(r31)
/* 80A0FCBC  38 A0 00 00 */	li r5, 0
/* 80A0FCC0  4B 74 42 34 */	b turn__8daNpcF_cFsfi
/* 80A0FCC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FCC8  41 82 00 2C */	beq lbl_80A0FCF4
/* 80A0FCCC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FCD0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A0FCD4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FCD8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A0FCDC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FCE0  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A0FCE4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A0FCE8  38 03 00 01 */	addi r0, r3, 1
/* 80A0FCEC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A0FCF0  48 00 00 14 */	b lbl_80A0FD04
lbl_80A0FCF4:
/* 80A0FCF4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FCF8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A0FCFC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A0FD00  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A0FD04:
/* 80A0FD04  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A0FD08  2C 00 00 01 */	cmpwi r0, 1
/* 80A0FD0C  40 81 00 48 */	ble lbl_80A0FD54
/* 80A0FD10  7F A3 EB 78 */	mr r3, r29
/* 80A0FD14  38 80 00 09 */	li r4, 9
/* 80A0FD18  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0FD1C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A0FD20  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0FD24  7D 89 03 A6 */	mtctr r12
/* 80A0FD28  4E 80 04 21 */	bctrl 
/* 80A0FD2C  7F A3 EB 78 */	mr r3, r29
/* 80A0FD30  38 80 00 00 */	li r4, 0
/* 80A0FD34  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A0FD38  38 A0 00 00 */	li r5, 0
/* 80A0FD3C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A0FD40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0FD44  7D 89 03 A6 */	mtctr r12
/* 80A0FD48  4E 80 04 21 */	bctrl 
/* 80A0FD4C  38 00 00 00 */	li r0, 0
/* 80A0FD50  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A0FD54:
/* 80A0FD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0FD58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0FD5C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A0FD60  28 00 00 00 */	cmplwi r0, 0
/* 80A0FD64  41 82 01 74 */	beq lbl_80A0FED8
/* 80A0FD68  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A0FD6C  28 00 00 01 */	cmplwi r0, 1
/* 80A0FD70  40 82 00 A8 */	bne lbl_80A0FE18
/* 80A0FD74  80 7E 02 3C */	lwz r3, 0x23c(r30)
/* 80A0FD78  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 80A0FD7C  90 61 00 08 */	stw r3, 8(r1)
/* 80A0FD80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0FD84  80 1E 02 44 */	lwz r0, 0x244(r30)
/* 80A0FD88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0FD8C  38 00 00 03 */	li r0, 3
/* 80A0FD90  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A0FD94  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A0FD98  4B 95 22 80 */	b __ptmf_test
/* 80A0FD9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FDA0  41 82 00 18 */	beq lbl_80A0FDB8
/* 80A0FDA4  7F A3 EB 78 */	mr r3, r29
/* 80A0FDA8  38 80 00 00 */	li r4, 0
/* 80A0FDAC  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A0FDB0  4B 95 22 D4 */	b __ptmf_scall
/* 80A0FDB4  60 00 00 00 */	nop 
lbl_80A0FDB8:
/* 80A0FDB8  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A0FDBC  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A0FDC0  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A0FDC4  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A0FDC8  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A0FDCC  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A0FDD0  38 00 00 00 */	li r0, 0
/* 80A0FDD4  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A0FDD8  80 61 00 08 */	lwz r3, 8(r1)
/* 80A0FDDC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A0FDE0  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A0FDE4  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A0FDE8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A0FDEC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A0FDF0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A0FDF4  4B 95 22 24 */	b __ptmf_test
/* 80A0FDF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FDFC  41 82 01 28 */	beq lbl_80A0FF24
/* 80A0FE00  7F A3 EB 78 */	mr r3, r29
/* 80A0FE04  38 80 00 00 */	li r4, 0
/* 80A0FE08  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A0FE0C  4B 95 22 78 */	b __ptmf_scall
/* 80A0FE10  60 00 00 00 */	nop 
/* 80A0FE14  48 00 01 10 */	b lbl_80A0FF24
lbl_80A0FE18:
/* 80A0FE18  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A0FE1C  80 9E 01 F8 */	lwz r4, 0x1f8(r30)
/* 80A0FE20  38 A0 00 00 */	li r5, 0
/* 80A0FE24  38 C0 00 00 */	li r6, 0
/* 80A0FE28  4B 63 7C F4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A0FE2C  2C 03 FF FF */	cmpwi r3, -1
/* 80A0FE30  41 82 00 F4 */	beq lbl_80A0FF24
/* 80A0FE34  80 7E 02 48 */	lwz r3, 0x248(r30)
/* 80A0FE38  80 1E 02 4C */	lwz r0, 0x24c(r30)
/* 80A0FE3C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A0FE40  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0FE44  80 1E 02 50 */	lwz r0, 0x250(r30)
/* 80A0FE48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0FE4C  38 00 00 03 */	li r0, 3
/* 80A0FE50  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A0FE54  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A0FE58  4B 95 21 C0 */	b __ptmf_test
/* 80A0FE5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FE60  41 82 00 18 */	beq lbl_80A0FE78
/* 80A0FE64  7F A3 EB 78 */	mr r3, r29
/* 80A0FE68  38 80 00 00 */	li r4, 0
/* 80A0FE6C  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A0FE70  4B 95 22 14 */	b __ptmf_scall
/* 80A0FE74  60 00 00 00 */	nop 
lbl_80A0FE78:
/* 80A0FE78  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A0FE7C  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A0FE80  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A0FE84  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A0FE88  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A0FE8C  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A0FE90  38 00 00 00 */	li r0, 0
/* 80A0FE94  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A0FE98  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A0FE9C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A0FEA0  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A0FEA4  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A0FEA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A0FEAC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A0FEB0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A0FEB4  4B 95 21 64 */	b __ptmf_test
/* 80A0FEB8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0FEBC  41 82 00 68 */	beq lbl_80A0FF24
/* 80A0FEC0  7F A3 EB 78 */	mr r3, r29
/* 80A0FEC4  38 80 00 00 */	li r4, 0
/* 80A0FEC8  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A0FECC  4B 95 21 B8 */	b __ptmf_scall
/* 80A0FED0  60 00 00 00 */	nop 
/* 80A0FED4  48 00 00 50 */	b lbl_80A0FF24
lbl_80A0FED8:
/* 80A0FED8  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A0FEDC  28 00 00 00 */	cmplwi r0, 0
/* 80A0FEE0  41 82 00 14 */	beq lbl_80A0FEF4
/* 80A0FEE4  3C 60 80 A1 */	lis r3, stringBase0@ha
/* 80A0FEE8  38 63 41 68 */	addi r3, r3, stringBase0@l
/* 80A0FEEC  38 03 00 0E */	addi r0, r3, 0xe
/* 80A0FEF0  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A0FEF4:
/* 80A0FEF4  7F A3 EB 78 */	mr r3, r29
/* 80A0FEF8  88 9D 0E 20 */	lbz r4, 0xe20(r29)
/* 80A0FEFC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A0FF00  54 00 10 3A */	slwi r0, r0, 2
/* 80A0FF04  38 BE 01 F4 */	addi r5, r30, 0x1f4
/* 80A0FF08  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A0FF0C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A0FF10  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A0FF14  38 E0 00 28 */	li r7, 0x28
/* 80A0FF18  39 00 00 FF */	li r8, 0xff
/* 80A0FF1C  39 20 00 01 */	li r9, 1
/* 80A0FF20  4B 74 39 5C */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A0FF24:
/* 80A0FF24  38 60 00 01 */	li r3, 1
/* 80A0FF28  39 61 00 50 */	addi r11, r1, 0x50
/* 80A0FF2C  4B 95 22 F4 */	b _restgpr_27
/* 80A0FF30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A0FF34  7C 08 03 A6 */	mtlr r0
/* 80A0FF38  38 21 00 50 */	addi r1, r1, 0x50
/* 80A0FF3C  4E 80 00 20 */	blr 
