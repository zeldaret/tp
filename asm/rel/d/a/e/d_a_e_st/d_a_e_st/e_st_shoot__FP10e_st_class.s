lbl_8079FA18:
/* 8079FA18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079FA1C  7C 08 02 A6 */	mflr r0
/* 8079FA20  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079FA24  39 61 00 40 */	addi r11, r1, 0x40
/* 8079FA28  4B BC 27 AD */	bl _savegpr_27
/* 8079FA2C  7C 7E 1B 78 */	mr r30, r3
/* 8079FA30  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 8079FA34  3B E4 68 24 */	addi r31, r4, lit_3903@l /* 0x807A6824@l */
/* 8079FA38  A8 03 06 80 */	lha r0, 0x680(r3)
/* 8079FA3C  2C 00 00 01 */	cmpwi r0, 1
/* 8079FA40  41 82 00 50 */	beq lbl_8079FA90
/* 8079FA44  40 80 00 10 */	bge lbl_8079FA54
/* 8079FA48  2C 00 00 00 */	cmpwi r0, 0
/* 8079FA4C  40 80 00 14 */	bge lbl_8079FA60
/* 8079FA50  48 00 01 D0 */	b lbl_8079FC20
lbl_8079FA54:
/* 8079FA54  2C 00 00 03 */	cmpwi r0, 3
/* 8079FA58  40 80 01 C8 */	bge lbl_8079FC20
/* 8079FA5C  48 00 01 54 */	b lbl_8079FBB0
lbl_8079FA60:
/* 8079FA60  38 80 00 04 */	li r4, 4
/* 8079FA64  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8079FA68  38 A0 00 00 */	li r5, 0
/* 8079FA6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079FA70  4B FF E3 DD */	bl anm_init__FP10e_st_classifUcf
/* 8079FA74  38 00 00 01 */	li r0, 1
/* 8079FA78  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079FA7C  38 00 00 00 */	li r0, 0
/* 8079FA80  98 1E 0F 84 */	stb r0, 0xf84(r30)
/* 8079FA84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079FA88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8079FA8C  48 00 01 94 */	b lbl_8079FC20
lbl_8079FA90:
/* 8079FA90  4B FF F9 9D */	bl pl_angle_get__FP10e_st_class
/* 8079FA94  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 8079FA98  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8079FA9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8079FAA0  FC 00 00 1E */	fctiwz f0, f0
/* 8079FAA4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079FAA8  83 81 00 1C */	lwz r28, 0x1c(r1)
/* 8079FAAC  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 8079FAB0  41 80 00 68 */	blt lbl_8079FB18
/* 8079FAB4  2C 1C 00 2A */	cmpwi r28, 0x2a
/* 8079FAB8  41 81 00 60 */	bgt lbl_8079FB18
/* 8079FABC  3B 60 00 00 */	li r27, 0
/* 8079FAC0  3B A0 00 00 */	li r29, 0
lbl_8079FAC4:
/* 8079FAC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8079FAC8  7C 07 07 74 */	extsb r7, r0
/* 8079FACC  93 A1 00 08 */	stw r29, 8(r1)
/* 8079FAD0  38 60 01 C0 */	li r3, 0x1c0
/* 8079FAD4  28 1E 00 00 */	cmplwi r30, 0
/* 8079FAD8  41 82 00 0C */	beq lbl_8079FAE4
/* 8079FADC  80 9E 00 04 */	lwz r4, 4(r30)
/* 8079FAE0  48 00 00 08 */	b lbl_8079FAE8
lbl_8079FAE4:
/* 8079FAE4  38 80 FF FF */	li r4, -1
lbl_8079FAE8:
/* 8079FAE8  88 BE 0F 84 */	lbz r5, 0xf84(r30)
/* 8079FAEC  38 DE 07 04 */	addi r6, r30, 0x704
/* 8079FAF0  39 00 00 00 */	li r8, 0
/* 8079FAF4  39 20 00 00 */	li r9, 0
/* 8079FAF8  39 40 FF FF */	li r10, -1
/* 8079FAFC  4B 87 A3 F5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8079FB00  88 7E 0F 84 */	lbz r3, 0xf84(r30)
/* 8079FB04  38 03 00 01 */	addi r0, r3, 1
/* 8079FB08  98 1E 0F 84 */	stb r0, 0xf84(r30)
/* 8079FB0C  3B 7B 00 01 */	addi r27, r27, 1
/* 8079FB10  2C 1B 00 05 */	cmpwi r27, 5
/* 8079FB14  41 80 FF B0 */	blt lbl_8079FAC4
lbl_8079FB18:
/* 8079FB18  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 8079FB1C  41 80 00 38 */	blt lbl_8079FB54
/* 8079FB20  2C 1C 00 37 */	cmpwi r28, 0x37
/* 8079FB24  41 81 00 30 */	bgt lbl_8079FB54
/* 8079FB28  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A6@ha */
/* 8079FB2C  38 03 00 A6 */	addi r0, r3, 0x00A6 /* 0x000700A6@l */
/* 8079FB30  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079FB34  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8079FB38  38 81 00 10 */	addi r4, r1, 0x10
/* 8079FB3C  38 A0 00 00 */	li r5, 0
/* 8079FB40  38 C0 FF FF */	li r6, -1
/* 8079FB44  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8079FB48  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8079FB4C  7D 89 03 A6 */	mtctr r12
/* 8079FB50  4E 80 04 21 */	bctrl 
lbl_8079FB54:
/* 8079FB54  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8079FB58  38 80 00 01 */	li r4, 1
/* 8079FB5C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8079FB60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8079FB64  40 82 00 18 */	bne lbl_8079FB7C
/* 8079FB68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079FB6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8079FB70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8079FB74  41 82 00 08 */	beq lbl_8079FB7C
/* 8079FB78  38 80 00 00 */	li r4, 0
lbl_8079FB7C:
/* 8079FB7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8079FB80  41 82 00 A0 */	beq lbl_8079FC20
/* 8079FB84  7F C3 F3 78 */	mr r3, r30
/* 8079FB88  38 80 00 23 */	li r4, 0x23
/* 8079FB8C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8079FB90  38 A0 00 02 */	li r5, 2
/* 8079FB94  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079FB98  4B FF E2 B5 */	bl anm_init__FP10e_st_classifUcf
/* 8079FB9C  38 00 00 02 */	li r0, 2
/* 8079FBA0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079FBA4  38 00 00 28 */	li r0, 0x28
/* 8079FBA8  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 8079FBAC  48 00 00 74 */	b lbl_8079FC20
lbl_8079FBB0:
/* 8079FBB0  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 8079FBB4  2C 00 00 00 */	cmpwi r0, 0
/* 8079FBB8  40 82 00 68 */	bne lbl_8079FC20
/* 8079FBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079FBC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079FBC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8079FBC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8079FBCC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8079FBD0  41 82 00 24 */	beq lbl_8079FBF4
/* 8079FBD4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8079FBD8  28 00 00 01 */	cmplwi r0, 1
/* 8079FBDC  40 82 00 18 */	bne lbl_8079FBF4
/* 8079FBE0  38 00 00 0F */	li r0, 0xf
/* 8079FBE4  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079FBE8  38 00 00 00 */	li r0, 0
/* 8079FBEC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079FBF0  48 00 00 30 */	b lbl_8079FC20
lbl_8079FBF4:
/* 8079FBF4  38 00 00 00 */	li r0, 0
/* 8079FBF8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079FBFC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079FC00  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8079FC04  4B AC 7D 51 */	bl cM_rndF__Ff
/* 8079FC08  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8079FC0C  EC 00 08 2A */	fadds f0, f0, f1
/* 8079FC10  FC 00 00 1E */	fctiwz f0, f0
/* 8079FC14  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079FC18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8079FC1C  B0 1E 06 84 */	sth r0, 0x684(r30)
lbl_8079FC20:
/* 8079FC20  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8079FC24  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8079FC28  38 A0 00 04 */	li r5, 4
/* 8079FC2C  38 C0 10 00 */	li r6, 0x1000
/* 8079FC30  4B AD 09 D9 */	bl cLib_addCalcAngleS2__FPssss
/* 8079FC34  39 61 00 40 */	addi r11, r1, 0x40
/* 8079FC38  4B BC 25 E9 */	bl _restgpr_27
/* 8079FC3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079FC40  7C 08 03 A6 */	mtlr r0
/* 8079FC44  38 21 00 40 */	addi r1, r1, 0x40
/* 8079FC48  4E 80 00 20 */	blr 
