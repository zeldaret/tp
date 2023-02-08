lbl_8059FA68:
/* 8059FA68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8059FA6C  7C 08 02 A6 */	mflr r0
/* 8059FA70  90 01 00 54 */	stw r0, 0x54(r1)
/* 8059FA74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8059FA78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8059FA7C  39 61 00 40 */	addi r11, r1, 0x40
/* 8059FA80  4B DC 27 5D */	bl _savegpr_29
/* 8059FA84  7C 7D 1B 78 */	mr r29, r3
/* 8059FA88  3C 60 80 5A */	lis r3, lit_3769@ha /* 0x805A1158@ha */
/* 8059FA8C  3B E3 11 58 */	addi r31, r3, lit_3769@l /* 0x805A1158@l */
/* 8059FA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059FA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059FA98  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8059FA9C  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 8059FAA0  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 8059FAA4  2C 00 00 02 */	cmpwi r0, 2
/* 8059FAA8  41 82 01 70 */	beq lbl_8059FC18
/* 8059FAAC  40 80 00 18 */	bge lbl_8059FAC4
/* 8059FAB0  2C 00 00 01 */	cmpwi r0, 1
/* 8059FAB4  40 80 00 48 */	bge lbl_8059FAFC
/* 8059FAB8  2C 00 FF FF */	cmpwi r0, -1
/* 8059FABC  40 80 00 20 */	bge lbl_8059FADC
/* 8059FAC0  48 00 02 84 */	b lbl_8059FD44
lbl_8059FAC4:
/* 8059FAC4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8059FAC8  41 82 02 1C */	beq lbl_8059FCE4
/* 8059FACC  40 80 02 78 */	bge lbl_8059FD44
/* 8059FAD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8059FAD4  40 80 01 C0 */	bge lbl_8059FC94
/* 8059FAD8  48 00 02 6C */	b lbl_8059FD44
lbl_8059FADC:
/* 8059FADC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8059FAE0  4B CC 7E 75 */	bl cM_rndF__Ff
/* 8059FAE4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8059FAE8  EC 00 08 2A */	fadds f0, f0, f1
/* 8059FAEC  FC 00 00 1E */	fctiwz f0, f0
/* 8059FAF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8059FAF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059FAF8  B0 1D 06 00 */	sth r0, 0x600(r29)
lbl_8059FAFC:
/* 8059FAFC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059FB00  4B CC 7E 55 */	bl cM_rndF__Ff
/* 8059FB04  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8059FB08  EC 00 08 2A */	fadds f0, f0, f1
/* 8059FB0C  FC 00 00 1E */	fctiwz f0, f0
/* 8059FB10  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8059FB14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059FB18  B0 1D 06 02 */	sth r0, 0x602(r29)
/* 8059FB1C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8059FB20  4B CC 7E 35 */	bl cM_rndF__Ff
/* 8059FB24  FC 00 08 1E */	fctiwz f0, f1
/* 8059FB28  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8059FB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FB30  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 8059FB34  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8059FB38  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8059FB3C  3C 00 43 30 */	lis r0, 0x4330
/* 8059FB40  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059FB44  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8059FB48  EC 20 10 28 */	fsubs f1, f0, f2
/* 8059FB4C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8059FB50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FB54  40 80 00 0C */	bge lbl_8059FB60
/* 8059FB58  38 80 00 00 */	li r4, 0
/* 8059FB5C  48 00 00 50 */	b lbl_8059FBAC
lbl_8059FB60:
/* 8059FB60  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8059FB64  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059FB68  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8059FB6C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8059FB70  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8059FB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FB78  40 80 00 0C */	bge lbl_8059FB84
/* 8059FB7C  38 80 00 01 */	li r4, 1
/* 8059FB80  48 00 00 2C */	b lbl_8059FBAC
lbl_8059FB84:
/* 8059FB84  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8059FB88  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059FB8C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8059FB90  EC 20 10 28 */	fsubs f1, f0, f2
/* 8059FB94  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8059FB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FB9C  40 80 00 0C */	bge lbl_8059FBA8
/* 8059FBA0  38 80 00 02 */	li r4, 2
/* 8059FBA4  48 00 00 08 */	b lbl_8059FBAC
lbl_8059FBA8:
/* 8059FBA8  38 80 00 03 */	li r4, 3
lbl_8059FBAC:
/* 8059FBAC  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 8059FBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8059FBB4  40 82 00 30 */	bne lbl_8059FBE4
/* 8059FBB8  7F A3 EB 78 */	mr r3, r29
/* 8059FBBC  54 80 10 3A */	slwi r0, r4, 2
/* 8059FBC0  3C 80 80 5A */	lis r4, wait_bck@ha /* 0x805A11E8@ha */
/* 8059FBC4  38 84 11 E8 */	addi r4, r4, wait_bck@l /* 0x805A11E8@l */
/* 8059FBC8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059FBCC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8059FBD0  38 A0 00 02 */	li r5, 2
/* 8059FBD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8059FBD8  38 C0 FF FF */	li r6, -1
/* 8059FBDC  4B FF FA FD */	bl anm_init__FP8sq_classifUcfi
/* 8059FBE0  48 00 00 2C */	b lbl_8059FC0C
lbl_8059FBE4:
/* 8059FBE4  7F A3 EB 78 */	mr r3, r29
/* 8059FBE8  54 80 10 3A */	slwi r0, r4, 2
/* 8059FBEC  3C 80 80 5A */	lis r4, wait_bck@ha /* 0x805A11E8@ha */
/* 8059FBF0  38 84 11 E8 */	addi r4, r4, wait_bck@l /* 0x805A11E8@l */
/* 8059FBF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059FBF8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8059FBFC  38 A0 00 02 */	li r5, 2
/* 8059FC00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8059FC04  38 C0 FF FF */	li r6, -1
/* 8059FC08  4B FF FA D1 */	bl anm_init__FP8sq_classifUcfi
lbl_8059FC0C:
/* 8059FC0C  38 00 00 02 */	li r0, 2
/* 8059FC10  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8059FC14  48 00 01 30 */	b lbl_8059FD44
lbl_8059FC18:
/* 8059FC18  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 8059FC1C  2C 00 00 00 */	cmpwi r0, 0
/* 8059FC20  41 82 00 10 */	beq lbl_8059FC30
/* 8059FC24  A8 1D 06 00 */	lha r0, 0x600(r29)
/* 8059FC28  2C 00 00 00 */	cmpwi r0, 0
/* 8059FC2C  40 82 01 18 */	bne lbl_8059FD44
lbl_8059FC30:
/* 8059FC30  A8 1D 06 00 */	lha r0, 0x600(r29)
/* 8059FC34  2C 00 00 00 */	cmpwi r0, 0
/* 8059FC38  41 82 00 14 */	beq lbl_8059FC4C
/* 8059FC3C  A8 7D 05 FA */	lha r3, 0x5fa(r29)
/* 8059FC40  38 03 FF FF */	addi r0, r3, -1
/* 8059FC44  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8059FC48  48 00 00 FC */	b lbl_8059FD44
lbl_8059FC4C:
/* 8059FC4C  38 00 00 0A */	li r0, 0xa
/* 8059FC50  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8059FC54  7F A3 EB 78 */	mr r3, r29
/* 8059FC58  4B FF FC A9 */	bl way_bg_check__FP8sq_class
/* 8059FC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8059FC60  41 82 00 10 */	beq lbl_8059FC70
/* 8059FC64  7F A3 EB 78 */	mr r3, r29
/* 8059FC68  4B FF FD 95 */	bl turn_set__FP8sq_class
/* 8059FC6C  48 00 00 D8 */	b lbl_8059FD44
lbl_8059FC70:
/* 8059FC70  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8059FC74  4B CC 7D 19 */	bl cM_rndFX__Ff
/* 8059FC78  FC 00 08 1E */	fctiwz f0, f1
/* 8059FC7C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8059FC80  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8059FC84  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8059FC88  7C 00 1A 14 */	add r0, r0, r3
/* 8059FC8C  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8059FC90  48 00 00 B4 */	b lbl_8059FD44
lbl_8059FC94:
/* 8059FC94  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8059FC98  4B CC 7C BD */	bl cM_rndF__Ff
/* 8059FC9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8059FCA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8059FCA4  FC 00 00 1E */	fctiwz f0, f0
/* 8059FCA8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8059FCAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8059FCB0  B0 1D 06 00 */	sth r0, 0x600(r29)
/* 8059FCB4  7F A3 EB 78 */	mr r3, r29
/* 8059FCB8  38 80 00 07 */	li r4, 7
/* 8059FCBC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8059FCC0  38 A0 00 02 */	li r5, 2
/* 8059FCC4  3C C0 80 5A */	lis r6, l_HIO@ha /* 0x805A1340@ha */
/* 8059FCC8  38 C6 13 40 */	addi r6, r6, l_HIO@l /* 0x805A1340@l */
/* 8059FCCC  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 8059FCD0  38 C0 FF FF */	li r6, -1
/* 8059FCD4  4B FF FA 05 */	bl anm_init__FP8sq_classifUcfi
/* 8059FCD8  A8 7D 05 FA */	lha r3, 0x5fa(r29)
/* 8059FCDC  38 03 00 01 */	addi r0, r3, 1
/* 8059FCE0  B0 1D 05 FA */	sth r0, 0x5fa(r29)
lbl_8059FCE4:
/* 8059FCE4  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A1340@ha */
/* 8059FCE8  38 63 13 40 */	addi r3, r3, l_HIO@l /* 0x805A1340@l */
/* 8059FCEC  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8059FCF0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8059FCF4  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 8059FCF8  38 A0 00 04 */	li r5, 4
/* 8059FCFC  38 C0 20 00 */	li r6, 0x2000
/* 8059FD00  4B CD 09 09 */	bl cLib_addCalcAngleS2__FPssss
/* 8059FD04  A8 1D 06 00 */	lha r0, 0x600(r29)
/* 8059FD08  2C 00 00 00 */	cmpwi r0, 0
/* 8059FD0C  40 82 00 10 */	bne lbl_8059FD1C
/* 8059FD10  38 00 00 00 */	li r0, 0
/* 8059FD14  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8059FD18  48 00 00 2C */	b lbl_8059FD44
lbl_8059FD1C:
/* 8059FD1C  A8 1D 06 04 */	lha r0, 0x604(r29)
/* 8059FD20  2C 00 00 00 */	cmpwi r0, 0
/* 8059FD24  40 82 00 20 */	bne lbl_8059FD44
/* 8059FD28  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 8059FD2C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8059FD30  41 82 00 14 */	beq lbl_8059FD44
/* 8059FD34  7F A3 EB 78 */	mr r3, r29
/* 8059FD38  4B FF FC C5 */	bl turn_set__FP8sq_class
/* 8059FD3C  38 00 00 14 */	li r0, 0x14
/* 8059FD40  B0 1D 06 04 */	sth r0, 0x604(r29)
lbl_8059FD44:
/* 8059FD44  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8059FD48  FC 20 F8 90 */	fmr f1, f31
/* 8059FD4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8059FD50  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 8059FD54  4B CC FC E9 */	bl cLib_addCalc2__FPffff
/* 8059FD58  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8059FD5C  FC 00 02 10 */	fabs f0, f0
/* 8059FD60  FC 20 00 18 */	frsp f1, f0
/* 8059FD64  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8059FD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FD6C  40 80 00 18 */	bge lbl_8059FD84
/* 8059FD70  A8 1D 06 0A */	lha r0, 0x60a(r29)
/* 8059FD74  2C 00 00 00 */	cmpwi r0, 0
/* 8059FD78  40 82 00 0C */	bne lbl_8059FD84
/* 8059FD7C  38 00 00 01 */	li r0, 1
/* 8059FD80  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_8059FD84:
/* 8059FD84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059FD88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059FD8C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8059FD90  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8059FD94  41 82 00 0C */	beq lbl_8059FDA0
/* 8059FD98  38 00 00 1E */	li r0, 0x1e
/* 8059FD9C  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_8059FDA0:
/* 8059FDA0  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 8059FDA4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8059FDA8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8059FDAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8059FDB0  C0 5E 05 40 */	lfs f2, 0x540(r30)
/* 8059FDB4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8059FDB8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8059FDBC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8059FDC0  4B CC 78 B5 */	bl cM_atan2s__Fff
/* 8059FDC4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8059FDC8  7C 03 00 50 */	subf r0, r3, r0
/* 8059FDCC  7C 00 07 35 */	extsh. r0, r0
/* 8059FDD0  40 80 00 0C */	bge lbl_8059FDDC
/* 8059FDD4  7C 00 00 D0 */	neg r0, r0
/* 8059FDD8  7C 00 07 34 */	extsh r0, r0
lbl_8059FDDC:
/* 8059FDDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8059FDE0  28 00 40 00 */	cmplwi r0, 0x4000
/* 8059FDE4  40 80 00 0C */	bge lbl_8059FDF0
/* 8059FDE8  38 00 00 00 */	li r0, 0
/* 8059FDEC  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_8059FDF0:
/* 8059FDF0  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A1340@ha */
/* 8059FDF4  38 63 13 40 */	addi r3, r3, l_HIO@l /* 0x805A1340@l */
/* 8059FDF8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8059FDFC  28 00 00 00 */	cmplwi r0, 0
/* 8059FE00  41 82 00 30 */	beq lbl_8059FE30
/* 8059FE04  A8 1D 06 0A */	lha r0, 0x60a(r29)
/* 8059FE08  2C 00 00 00 */	cmpwi r0, 0
/* 8059FE0C  40 82 00 24 */	bne lbl_8059FE30
/* 8059FE10  C0 3D 05 D4 */	lfs f1, 0x5d4(r29)
/* 8059FE14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8059FE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FE1C  40 80 00 14 */	bge lbl_8059FE30
/* 8059FE20  38 00 00 01 */	li r0, 1
/* 8059FE24  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
/* 8059FE28  38 00 00 00 */	li r0, 0
/* 8059FE2C  B0 1D 05 FA */	sth r0, 0x5fa(r29)
lbl_8059FE30:
/* 8059FE30  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8059FE34  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8059FE38  39 61 00 40 */	addi r11, r1, 0x40
/* 8059FE3C  4B DC 23 ED */	bl _restgpr_29
/* 8059FE40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8059FE44  7C 08 03 A6 */	mtlr r0
/* 8059FE48  38 21 00 50 */	addi r1, r1, 0x50
/* 8059FE4C  4E 80 00 20 */	blr 
