lbl_8072F914:
/* 8072F914  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8072F918  7C 08 02 A6 */	mflr r0
/* 8072F91C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8072F920  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8072F924  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8072F928  39 61 00 60 */	addi r11, r1, 0x60
/* 8072F92C  4B C3 28 A4 */	b _savegpr_26
/* 8072F930  7C 7B 1B 78 */	mr r27, r3
/* 8072F934  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072F938  3B A4 5B 28 */	addi r29, r4, lit_3911@l
/* 8072F93C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8072F940  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8072F944  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072F948  4B 8E AD C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072F94C  7C 7C 1B 78 */	mr r28, r3
/* 8072F950  7F 63 DB 78 */	mr r3, r27
/* 8072F954  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072F958  4B 8E AE 88 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072F95C  FF E0 08 90 */	fmr f31, f1
/* 8072F960  80 1B 06 B0 */	lwz r0, 0x6b0(r27)
/* 8072F964  2C 00 00 03 */	cmpwi r0, 3
/* 8072F968  41 80 00 14 */	blt lbl_8072F97C
/* 8072F96C  7F 63 DB 78 */	mr r3, r27
/* 8072F970  4B FF D4 39 */	bl setWatchMode__8daE_OC_cFv
/* 8072F974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F978  40 82 09 50 */	bne lbl_807302C8
lbl_8072F97C:
/* 8072F97C  80 1B 06 B4 */	lwz r0, 0x6b4(r27)
/* 8072F980  2C 00 00 02 */	cmpwi r0, 2
/* 8072F984  40 82 00 2C */	bne lbl_8072F9B0
/* 8072F988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072F98C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072F990  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8072F994  28 00 00 00 */	cmplwi r0, 0
/* 8072F998  40 82 00 18 */	bne lbl_8072F9B0
/* 8072F99C  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8072F9A0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8072F9A4  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8072F9A8  38 00 00 00 */	li r0, 0
/* 8072F9AC  90 1B 06 B4 */	stw r0, 0x6b4(r27)
lbl_8072F9B0:
/* 8072F9B0  B3 9B 06 D4 */	sth r28, 0x6d4(r27)
/* 8072F9B4  80 1B 06 B0 */	lwz r0, 0x6b0(r27)
/* 8072F9B8  2C 00 00 04 */	cmpwi r0, 4
/* 8072F9BC  41 82 02 8C */	beq lbl_8072FC48
/* 8072F9C0  40 80 00 18 */	bge lbl_8072F9D8
/* 8072F9C4  2C 00 00 03 */	cmpwi r0, 3
/* 8072F9C8  40 80 01 BC */	bge lbl_8072FB84
/* 8072F9CC  2C 00 00 00 */	cmpwi r0, 0
/* 8072F9D0  40 80 00 18 */	bge lbl_8072F9E8
/* 8072F9D4  48 00 08 F4 */	b lbl_807302C8
lbl_8072F9D8:
/* 8072F9D8  2C 00 00 06 */	cmpwi r0, 6
/* 8072F9DC  41 82 08 64 */	beq lbl_80730240
/* 8072F9E0  40 80 08 E8 */	bge lbl_807302C8
/* 8072F9E4  48 00 08 0C */	b lbl_807301F0
lbl_8072F9E8:
/* 8072F9E8  38 00 00 00 */	li r0, 0
/* 8072F9EC  98 1B 06 DE */	stb r0, 0x6de(r27)
/* 8072F9F0  80 7B 06 B0 */	lwz r3, 0x6b0(r27)
/* 8072F9F4  2C 03 00 00 */	cmpwi r3, 0
/* 8072F9F8  40 82 00 74 */	bne lbl_8072FA6C
/* 8072F9FC  B0 1B 06 C0 */	sth r0, 0x6c0(r27)
/* 8072FA00  A8 7B 06 C0 */	lha r3, 0x6c0(r27)
/* 8072FA04  38 03 00 14 */	addi r0, r3, 0x14
/* 8072FA08  B0 1B 06 C2 */	sth r0, 0x6c2(r27)
/* 8072FA0C  7F 63 DB 78 */	mr r3, r27
/* 8072FA10  38 80 00 1C */	li r4, 0x1c
/* 8072FA14  4B FF E9 09 */	bl checkBck__8daE_OC_cFi
/* 8072FA18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FA1C  40 82 00 44 */	bne lbl_8072FA60
/* 8072FA20  7F 63 DB 78 */	mr r3, r27
/* 8072FA24  38 80 00 1C */	li r4, 0x1c
/* 8072FA28  38 A0 00 02 */	li r5, 2
/* 8072FA2C  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FA30  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FA34  4B FF E8 41 */	bl setBck__8daE_OC_cFiUcff
/* 8072FA38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 8072FA3C  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 8072FA40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072FA44  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FA48  38 81 00 34 */	addi r4, r1, 0x34
/* 8072FA4C  38 A0 FF FF */	li r5, -1
/* 8072FA50  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FA54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FA58  7D 89 03 A6 */	mtctr r12
/* 8072FA5C  4E 80 04 21 */	bctrl 
lbl_8072FA60:
/* 8072FA60  38 00 00 01 */	li r0, 1
/* 8072FA64  98 1B 06 DE */	stb r0, 0x6de(r27)
/* 8072FA68  48 00 01 0C */	b lbl_8072FB74
lbl_8072FA6C:
/* 8072FA6C  2C 03 00 01 */	cmpwi r3, 1
/* 8072FA70  40 82 00 A4 */	bne lbl_8072FB14
/* 8072FA74  88 1B 06 E2 */	lbz r0, 0x6e2(r27)
/* 8072FA78  28 00 00 00 */	cmplwi r0, 0
/* 8072FA7C  41 82 00 24 */	beq lbl_8072FAA0
/* 8072FA80  3C 60 80 73 */	lis r3, l_HIO@ha
/* 8072FA84  38 63 60 60 */	addi r3, r3, l_HIO@l
/* 8072FA88  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8072FA8C  FC 00 00 1E */	fctiwz f0, f0
/* 8072FA90  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8072FA94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072FA98  B0 1B 06 C0 */	sth r0, 0x6c0(r27)
/* 8072FA9C  48 00 00 24 */	b lbl_8072FAC0
lbl_8072FAA0:
/* 8072FAA0  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 8072FAA4  4B B3 7E B0 */	b cM_rndF__Ff
/* 8072FAA8  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 8072FAAC  EC 00 08 2A */	fadds f0, f0, f1
/* 8072FAB0  FC 00 00 1E */	fctiwz f0, f0
/* 8072FAB4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8072FAB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072FABC  B0 1B 06 C0 */	sth r0, 0x6c0(r27)
lbl_8072FAC0:
/* 8072FAC0  38 00 00 00 */	li r0, 0
/* 8072FAC4  98 1B 06 E2 */	stb r0, 0x6e2(r27)
/* 8072FAC8  38 00 00 96 */	li r0, 0x96
/* 8072FACC  B0 1B 06 CA */	sth r0, 0x6ca(r27)
/* 8072FAD0  7F 63 DB 78 */	mr r3, r27
/* 8072FAD4  38 80 00 0D */	li r4, 0xd
/* 8072FAD8  38 A0 00 00 */	li r5, 0
/* 8072FADC  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FAE0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FAE4  4B FF E7 91 */	bl setBck__8daE_OC_cFiUcff
/* 8072FAE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017E@ha */
/* 8072FAEC  38 03 01 7E */	addi r0, r3, 0x017E /* 0x0007017E@l */
/* 8072FAF0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8072FAF4  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FAF8  38 81 00 30 */	addi r4, r1, 0x30
/* 8072FAFC  38 A0 FF FF */	li r5, -1
/* 8072FB00  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FB04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FB08  7D 89 03 A6 */	mtctr r12
/* 8072FB0C  4E 80 04 21 */	bctrl 
/* 8072FB10  48 00 00 64 */	b lbl_8072FB74
lbl_8072FB14:
/* 8072FB14  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FB18  4B B3 7E 3C */	b cM_rndF__Ff
/* 8072FB1C  C0 5D 00 E4 */	lfs f2, 0xe4(r29)
/* 8072FB20  EC 02 08 2A */	fadds f0, f2, f1
/* 8072FB24  FC 00 00 1E */	fctiwz f0, f0
/* 8072FB28  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8072FB2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072FB30  B0 1B 06 C0 */	sth r0, 0x6c0(r27)
/* 8072FB34  7F 63 DB 78 */	mr r3, r27
/* 8072FB38  38 80 00 0D */	li r4, 0xd
/* 8072FB3C  38 A0 00 00 */	li r5, 0
/* 8072FB40  FC 20 10 90 */	fmr f1, f2
/* 8072FB44  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FB48  4B FF E7 2D */	bl setBck__8daE_OC_cFiUcff
/* 8072FB4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017E@ha */
/* 8072FB50  38 03 01 7E */	addi r0, r3, 0x017E /* 0x0007017E@l */
/* 8072FB54  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8072FB58  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FB5C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8072FB60  38 A0 FF FF */	li r5, -1
/* 8072FB64  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FB68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FB6C  7D 89 03 A6 */	mtctr r12
/* 8072FB70  4E 80 04 21 */	bctrl 
lbl_8072FB74:
/* 8072FB74  38 00 00 03 */	li r0, 3
/* 8072FB78  90 1B 06 B0 */	stw r0, 0x6b0(r27)
/* 8072FB7C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8072FB80  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_8072FB84:
/* 8072FB84  A8 1B 06 C0 */	lha r0, 0x6c0(r27)
/* 8072FB88  2C 00 00 00 */	cmpwi r0, 0
/* 8072FB8C  40 82 07 3C */	bne lbl_807302C8
/* 8072FB90  88 1B 06 DE */	lbz r0, 0x6de(r27)
/* 8072FB94  28 00 00 00 */	cmplwi r0, 0
/* 8072FB98  40 82 00 10 */	bne lbl_8072FBA8
/* 8072FB9C  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8072FBA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FBA4  40 80 00 50 */	bge lbl_8072FBF4
lbl_8072FBA8:
/* 8072FBA8  7F 63 DB 78 */	mr r3, r27
/* 8072FBAC  38 80 00 1E */	li r4, 0x1e
/* 8072FBB0  38 A0 00 02 */	li r5, 2
/* 8072FBB4  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FBB8  C0 5D 01 08 */	lfs f2, 0x108(r29)
/* 8072FBBC  4B FF E6 B9 */	bl setBck__8daE_OC_cFiUcff
/* 8072FBC0  38 00 00 01 */	li r0, 1
/* 8072FBC4  98 1B 06 DE */	stb r0, 0x6de(r27)
/* 8072FBC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018E@ha */
/* 8072FBCC  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0007018E@l */
/* 8072FBD0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8072FBD4  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FBD8  38 81 00 28 */	addi r4, r1, 0x28
/* 8072FBDC  38 A0 FF FF */	li r5, -1
/* 8072FBE0  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FBE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FBE8  7D 89 03 A6 */	mtctr r12
/* 8072FBEC  4E 80 04 21 */	bctrl 
/* 8072FBF0  48 00 00 44 */	b lbl_8072FC34
lbl_8072FBF4:
/* 8072FBF4  7F 63 DB 78 */	mr r3, r27
/* 8072FBF8  38 80 00 0B */	li r4, 0xb
/* 8072FBFC  38 A0 00 02 */	li r5, 2
/* 8072FC00  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FC04  C0 5D 01 0C */	lfs f2, 0x10c(r29)
/* 8072FC08  4B FF E6 6D */	bl setBck__8daE_OC_cFiUcff
/* 8072FC0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017F@ha */
/* 8072FC10  38 03 01 7F */	addi r0, r3, 0x017F /* 0x0007017F@l */
/* 8072FC14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072FC18  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FC1C  38 81 00 24 */	addi r4, r1, 0x24
/* 8072FC20  38 A0 FF FF */	li r5, -1
/* 8072FC24  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FC28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FC2C  7D 89 03 A6 */	mtctr r12
/* 8072FC30  4E 80 04 21 */	bctrl 
lbl_8072FC34:
/* 8072FC34  38 00 00 04 */	li r0, 4
/* 8072FC38  90 1B 06 B0 */	stw r0, 0x6b0(r27)
/* 8072FC3C  38 00 00 1E */	li r0, 0x1e
/* 8072FC40  B0 1B 06 C0 */	sth r0, 0x6c0(r27)
/* 8072FC44  48 00 06 84 */	b lbl_807302C8
lbl_8072FC48:
/* 8072FC48  7F 63 DB 78 */	mr r3, r27
/* 8072FC4C  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 8072FC50  4B FF DC 2D */	bl checkBeforeFloorBg__8daE_OC_cFf
/* 8072FC54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FC58  41 82 00 38 */	beq lbl_8072FC90
/* 8072FC5C  88 1B 06 E3 */	lbz r0, 0x6e3(r27)
/* 8072FC60  28 00 00 00 */	cmplwi r0, 0
/* 8072FC64  41 82 00 18 */	beq lbl_8072FC7C
/* 8072FC68  7F 63 DB 78 */	mr r3, r27
/* 8072FC6C  38 80 00 10 */	li r4, 0x10
/* 8072FC70  38 A0 00 00 */	li r5, 0
/* 8072FC74  4B FF E0 49 */	bl setActionMode__8daE_OC_cFii
/* 8072FC78  48 00 06 50 */	b lbl_807302C8
lbl_8072FC7C:
/* 8072FC7C  7F 63 DB 78 */	mr r3, r27
/* 8072FC80  38 80 00 0F */	li r4, 0xf
/* 8072FC84  38 A0 00 00 */	li r5, 0
/* 8072FC88  4B FF E0 35 */	bl setActionMode__8daE_OC_cFii
/* 8072FC8C  48 00 06 3C */	b lbl_807302C8
lbl_8072FC90:
/* 8072FC90  38 00 00 01 */	li r0, 1
/* 8072FC94  98 1B 06 EA */	stb r0, 0x6ea(r27)
/* 8072FC98  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8072FC9C  7F 84 E3 78 */	mr r4, r28
/* 8072FCA0  4B B4 11 84 */	b cLib_distanceAngleS__Fss
/* 8072FCA4  7C 60 07 34 */	extsh r0, r3
/* 8072FCA8  2C 00 04 00 */	cmpwi r0, 0x400
/* 8072FCAC  41 80 00 1C */	blt lbl_8072FCC8
/* 8072FCB0  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8072FCB4  7F 84 E3 78 */	mr r4, r28
/* 8072FCB8  38 A0 00 04 */	li r5, 4
/* 8072FCBC  38 C0 08 00 */	li r6, 0x800
/* 8072FCC0  38 E0 01 00 */	li r7, 0x100
/* 8072FCC4  4B B4 08 7C */	b cLib_addCalcAngleS__FPsssss
lbl_8072FCC8:
/* 8072FCC8  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8072FCCC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8072FCD0  A8 1B 06 CE */	lha r0, 0x6ce(r27)
/* 8072FCD4  2C 00 00 00 */	cmpwi r0, 0
/* 8072FCD8  41 82 00 10 */	beq lbl_8072FCE8
/* 8072FCDC  A8 1B 06 DA */	lha r0, 0x6da(r27)
/* 8072FCE0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8072FCE4  48 00 00 1C */	b lbl_8072FD00
lbl_8072FCE8:
/* 8072FCE8  7F 63 DB 78 */	mr r3, r27
/* 8072FCEC  4B FF D9 55 */	bl checkBeforeBgFind__8daE_OC_cFv
/* 8072FCF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FCF4  41 82 00 0C */	beq lbl_8072FD00
/* 8072FCF8  38 00 00 14 */	li r0, 0x14
/* 8072FCFC  B0 1B 06 CE */	sth r0, 0x6ce(r27)
lbl_8072FD00:
/* 8072FD00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072FD04  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8072FD08  3B 5F 4F AD */	addi r26, r31, 0x4fad
/* 8072FD0C  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8072FD10  28 00 00 00 */	cmplwi r0, 0
/* 8072FD14  40 82 02 58 */	bne lbl_8072FF6C
/* 8072FD18  A8 1B 06 C2 */	lha r0, 0x6c2(r27)
/* 8072FD1C  2C 00 00 00 */	cmpwi r0, 0
/* 8072FD20  40 82 00 90 */	bne lbl_8072FDB0
/* 8072FD24  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8072FD28  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FD2C  40 80 00 18 */	bge lbl_8072FD44
/* 8072FD30  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FD34  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 8072FD38  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FD3C  4B B4 0A 04 */	b cLib_chaseF__FPfff
/* 8072FD40  48 00 00 14 */	b lbl_8072FD54
lbl_8072FD44:
/* 8072FD44  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FD48  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 8072FD4C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FD50  4B B4 09 F0 */	b cLib_chaseF__FPfff
lbl_8072FD54:
/* 8072FD54  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8072FD58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FD5C  40 80 04 44 */	bge lbl_807301A0
/* 8072FD60  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 8072FD64  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FD68  40 81 04 38 */	ble lbl_807301A0
/* 8072FD6C  7F 63 DB 78 */	mr r3, r27
/* 8072FD70  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072FD74  4B 8E A9 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072FD78  7C 63 07 34 */	extsh r3, r3
/* 8072FD7C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8072FD80  7C 63 00 50 */	subf r3, r3, r0
/* 8072FD84  4B C3 53 4C */	b abs
/* 8072FD88  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8072FD8C  40 80 05 3C */	bge lbl_807302C8
/* 8072FD90  88 1A 00 00 */	lbz r0, 0(r26)
/* 8072FD94  28 00 00 00 */	cmplwi r0, 0
/* 8072FD98  40 82 05 30 */	bne lbl_807302C8
/* 8072FD9C  7F 63 DB 78 */	mr r3, r27
/* 8072FDA0  38 80 00 04 */	li r4, 4
/* 8072FDA4  38 A0 00 00 */	li r5, 0
/* 8072FDA8  4B FF DF 15 */	bl setActionMode__8daE_OC_cFii
/* 8072FDAC  48 00 05 1C */	b lbl_807302C8
lbl_8072FDB0:
/* 8072FDB0  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8072FDB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FDB8  40 80 00 24 */	bge lbl_8072FDDC
/* 8072FDBC  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 8072FDC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FDC4  40 81 00 18 */	ble lbl_8072FDDC
/* 8072FDC8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FDCC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8072FDD0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FDD4  4B B4 09 6C */	b cLib_chaseF__FPfff
/* 8072FDD8  48 00 00 34 */	b lbl_8072FE0C
lbl_8072FDDC:
/* 8072FDDC  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8072FDE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FDE4  40 80 00 18 */	bge lbl_8072FDFC
/* 8072FDE8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FDEC  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 8072FDF0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FDF4  4B B4 09 4C */	b cLib_chaseF__FPfff
/* 8072FDF8  48 00 00 14 */	b lbl_8072FE0C
lbl_8072FDFC:
/* 8072FDFC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FE00  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 8072FE04  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FE08  4B B4 09 38 */	b cLib_chaseF__FPfff
lbl_8072FE0C:
/* 8072FE0C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8072FE10  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8072FE14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072FE18  40 80 00 70 */	bge lbl_8072FE88
/* 8072FE1C  7F 63 DB 78 */	mr r3, r27
/* 8072FE20  38 80 00 1C */	li r4, 0x1c
/* 8072FE24  4B FF E4 F9 */	bl checkBck__8daE_OC_cFi
/* 8072FE28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FE2C  41 82 00 18 */	beq lbl_8072FE44
/* 8072FE30  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8072FE34  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8072FE38  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8072FE3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8072FE40  41 82 03 60 */	beq lbl_807301A0
lbl_8072FE44:
/* 8072FE44  7F 63 DB 78 */	mr r3, r27
/* 8072FE48  38 80 00 1C */	li r4, 0x1c
/* 8072FE4C  38 A0 00 02 */	li r5, 2
/* 8072FE50  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FE54  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FE58  4B FF E4 1D */	bl setBck__8daE_OC_cFiUcff
/* 8072FE5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 8072FE60  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 8072FE64  90 01 00 20 */	stw r0, 0x20(r1)
/* 8072FE68  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FE6C  38 81 00 20 */	addi r4, r1, 0x20
/* 8072FE70  38 A0 FF FF */	li r5, -1
/* 8072FE74  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FE78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FE7C  7D 89 03 A6 */	mtctr r12
/* 8072FE80  4E 80 04 21 */	bctrl 
/* 8072FE84  48 00 03 1C */	b lbl_807301A0
lbl_8072FE88:
/* 8072FE88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8072FE8C  40 82 00 74 */	bne lbl_8072FF00
/* 8072FE90  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8072FE94  7F 84 E3 78 */	mr r4, r28
/* 8072FE98  4B B4 0F 8C */	b cLib_distanceAngleS__Fss
/* 8072FE9C  7C 60 07 34 */	extsh r0, r3
/* 8072FEA0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8072FEA4  40 80 00 5C */	bge lbl_8072FF00
/* 8072FEA8  7F 63 DB 78 */	mr r3, r27
/* 8072FEAC  38 80 00 1C */	li r4, 0x1c
/* 8072FEB0  4B FF E4 6D */	bl checkBck__8daE_OC_cFi
/* 8072FEB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FEB8  40 82 02 E8 */	bne lbl_807301A0
/* 8072FEBC  7F 63 DB 78 */	mr r3, r27
/* 8072FEC0  38 80 00 1C */	li r4, 0x1c
/* 8072FEC4  38 A0 00 02 */	li r5, 2
/* 8072FEC8  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FECC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FED0  4B FF E3 A5 */	bl setBck__8daE_OC_cFiUcff
/* 8072FED4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 8072FED8  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 8072FEDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8072FEE0  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FEE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8072FEE8  38 A0 FF FF */	li r5, -1
/* 8072FEEC  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FEF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FEF4  7D 89 03 A6 */	mtctr r12
/* 8072FEF8  4E 80 04 21 */	bctrl 
/* 8072FEFC  48 00 02 A4 */	b lbl_807301A0
lbl_8072FF00:
/* 8072FF00  7F 63 DB 78 */	mr r3, r27
/* 8072FF04  38 80 00 1E */	li r4, 0x1e
/* 8072FF08  4B FF E4 15 */	bl checkBck__8daE_OC_cFi
/* 8072FF0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FF10  41 82 00 18 */	beq lbl_8072FF28
/* 8072FF14  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8072FF18  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8072FF1C  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8072FF20  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8072FF24  41 82 02 7C */	beq lbl_807301A0
lbl_8072FF28:
/* 8072FF28  7F 63 DB 78 */	mr r3, r27
/* 8072FF2C  38 80 00 1E */	li r4, 0x1e
/* 8072FF30  38 A0 00 02 */	li r5, 2
/* 8072FF34  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8072FF38  C0 5D 01 08 */	lfs f2, 0x108(r29)
/* 8072FF3C  4B FF E3 39 */	bl setBck__8daE_OC_cFiUcff
/* 8072FF40  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018E@ha */
/* 8072FF44  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0007018E@l */
/* 8072FF48  90 01 00 18 */	stw r0, 0x18(r1)
/* 8072FF4C  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8072FF50  38 81 00 18 */	addi r4, r1, 0x18
/* 8072FF54  38 A0 FF FF */	li r5, -1
/* 8072FF58  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8072FF5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072FF60  7D 89 03 A6 */	mtctr r12
/* 8072FF64  4E 80 04 21 */	bctrl 
/* 8072FF68  48 00 02 38 */	b lbl_807301A0
lbl_8072FF6C:
/* 8072FF6C  38 00 00 14 */	li r0, 0x14
/* 8072FF70  B0 1B 06 C2 */	sth r0, 0x6c2(r27)
/* 8072FF74  80 1B 07 74 */	lwz r0, 0x774(r27)
/* 8072FF78  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8072FF7C  41 82 00 0C */	beq lbl_8072FF88
/* 8072FF80  38 00 00 05 */	li r0, 5
/* 8072FF84  B0 1B 06 C4 */	sth r0, 0x6c4(r27)
lbl_8072FF88:
/* 8072FF88  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8072FF8C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8072FF90  40 80 00 24 */	bge lbl_8072FFB4
/* 8072FF94  A8 1B 06 C4 */	lha r0, 0x6c4(r27)
/* 8072FF98  2C 00 00 00 */	cmpwi r0, 0
/* 8072FF9C  40 82 00 18 */	bne lbl_8072FFB4
/* 8072FFA0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FFA4  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 8072FFA8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FFAC  4B B4 07 94 */	b cLib_chaseF__FPfff
/* 8072FFB0  48 00 00 14 */	b lbl_8072FFC4
lbl_8072FFB4:
/* 8072FFB4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8072FFB8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8072FFBC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8072FFC0  4B B4 07 80 */	b cLib_chaseF__FPfff
lbl_8072FFC4:
/* 8072FFC4  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8072FFC8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8072FFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072FFD0  40 80 00 70 */	bge lbl_80730040
/* 8072FFD4  7F 63 DB 78 */	mr r3, r27
/* 8072FFD8  38 80 00 1E */	li r4, 0x1e
/* 8072FFDC  4B FF E3 41 */	bl checkBck__8daE_OC_cFi
/* 8072FFE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072FFE4  41 82 00 18 */	beq lbl_8072FFFC
/* 8072FFE8  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8072FFEC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8072FFF0  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 8072FFF4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8072FFF8  41 82 01 28 */	beq lbl_80730120
lbl_8072FFFC:
/* 8072FFFC  7F 63 DB 78 */	mr r3, r27
/* 80730000  38 80 00 1E */	li r4, 0x1e
/* 80730004  38 A0 00 02 */	li r5, 2
/* 80730008  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8073000C  C0 5D 00 BC */	lfs f2, 0xbc(r29)
/* 80730010  4B FF E2 65 */	bl setBck__8daE_OC_cFiUcff
/* 80730014  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018E@ha */
/* 80730018  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0007018E@l */
/* 8073001C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80730020  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 80730024  38 81 00 14 */	addi r4, r1, 0x14
/* 80730028  38 A0 FF FF */	li r5, -1
/* 8073002C  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 80730030  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730034  7D 89 03 A6 */	mtctr r12
/* 80730038  4E 80 04 21 */	bctrl 
/* 8073003C  48 00 00 E4 */	b lbl_80730120
lbl_80730040:
/* 80730040  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80730044  40 82 00 74 */	bne lbl_807300B8
/* 80730048  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8073004C  7F 84 E3 78 */	mr r4, r28
/* 80730050  4B B4 0D D4 */	b cLib_distanceAngleS__Fss
/* 80730054  7C 60 07 34 */	extsh r0, r3
/* 80730058  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8073005C  40 80 00 5C */	bge lbl_807300B8
/* 80730060  7F 63 DB 78 */	mr r3, r27
/* 80730064  38 80 00 1C */	li r4, 0x1c
/* 80730068  4B FF E2 B5 */	bl checkBck__8daE_OC_cFi
/* 8073006C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80730070  40 82 00 B0 */	bne lbl_80730120
/* 80730074  7F 63 DB 78 */	mr r3, r27
/* 80730078  38 80 00 1C */	li r4, 0x1c
/* 8073007C  38 A0 00 02 */	li r5, 2
/* 80730080  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 80730084  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80730088  4B FF E1 ED */	bl setBck__8daE_OC_cFiUcff
/* 8073008C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 80730090  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 80730094  90 01 00 10 */	stw r0, 0x10(r1)
/* 80730098  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8073009C  38 81 00 10 */	addi r4, r1, 0x10
/* 807300A0  38 A0 FF FF */	li r5, -1
/* 807300A4  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 807300A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807300AC  7D 89 03 A6 */	mtctr r12
/* 807300B0  4E 80 04 21 */	bctrl 
/* 807300B4  48 00 00 6C */	b lbl_80730120
lbl_807300B8:
/* 807300B8  7F 63 DB 78 */	mr r3, r27
/* 807300BC  38 80 00 1E */	li r4, 0x1e
/* 807300C0  4B FF E2 5D */	bl checkBck__8daE_OC_cFi
/* 807300C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807300C8  41 82 00 18 */	beq lbl_807300E0
/* 807300CC  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 807300D0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 807300D4  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 807300D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807300DC  41 82 00 44 */	beq lbl_80730120
lbl_807300E0:
/* 807300E0  7F 63 DB 78 */	mr r3, r27
/* 807300E4  38 80 00 1E */	li r4, 0x1e
/* 807300E8  38 A0 00 02 */	li r5, 2
/* 807300EC  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 807300F0  C0 5D 01 08 */	lfs f2, 0x108(r29)
/* 807300F4  4B FF E1 81 */	bl setBck__8daE_OC_cFiUcff
/* 807300F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018E@ha */
/* 807300FC  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0007018E@l */
/* 80730100  90 01 00 0C */	stw r0, 0xc(r1)
/* 80730104  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 80730108  38 81 00 0C */	addi r4, r1, 0xc
/* 8073010C  38 A0 FF FF */	li r5, -1
/* 80730110  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 80730114  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730118  7D 89 03 A6 */	mtctr r12
/* 8073011C  4E 80 04 21 */	bctrl 
lbl_80730120:
/* 80730120  3C 60 80 73 */	lis r3, stringBase0@ha
/* 80730124  38 63 5D 0C */	addi r3, r3, stringBase0@l
/* 80730128  38 63 00 0B */	addi r3, r3, 0xb
/* 8073012C  38 9F 4E 00 */	addi r4, r31, 0x4e00
/* 80730130  4B C3 88 64 */	b strcmp
/* 80730134  2C 03 00 00 */	cmpwi r3, 0
/* 80730138  40 82 00 68 */	bne lbl_807301A0
/* 8073013C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80730140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80730144  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80730148  2C 00 00 16 */	cmpwi r0, 0x16
/* 8073014C  40 82 00 54 */	bne lbl_807301A0
/* 80730150  38 60 00 60 */	li r3, 0x60
/* 80730154  38 81 00 38 */	addi r4, r1, 0x38
/* 80730158  4B 8E 98 D4 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8073015C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80730160  28 03 00 00 */	cmplwi r3, 0
/* 80730164  41 82 00 3C */	beq lbl_807301A0
/* 80730168  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8073016C  D0 1B 06 7C */	stfs f0, 0x67c(r27)
/* 80730170  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80730174  D0 1B 06 80 */	stfs f0, 0x680(r27)
/* 80730178  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8073017C  D0 1B 06 84 */	stfs f0, 0x684(r27)
/* 80730180  C0 3B 06 80 */	lfs f1, 0x680(r27)
/* 80730184  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80730188  EC 01 00 2A */	fadds f0, f1, f0
/* 8073018C  D0 1B 06 80 */	stfs f0, 0x680(r27)
/* 80730190  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80730194  38 9B 06 7C */	addi r4, r27, 0x67c
/* 80730198  4B B4 0A 6C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8073019C  B0 7B 06 D4 */	sth r3, 0x6d4(r27)
lbl_807301A0:
/* 807301A0  A8 1B 06 C0 */	lha r0, 0x6c0(r27)
/* 807301A4  2C 00 00 00 */	cmpwi r0, 0
/* 807301A8  40 82 01 20 */	bne lbl_807302C8
/* 807301AC  7F 63 DB 78 */	mr r3, r27
/* 807301B0  4B FF CD E1 */	bl searchPlayer2__8daE_OC_cFv
/* 807301B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807301B8  40 82 00 18 */	bne lbl_807301D0
/* 807301BC  7F 63 DB 78 */	mr r3, r27
/* 807301C0  38 80 00 00 */	li r4, 0
/* 807301C4  38 A0 00 00 */	li r5, 0
/* 807301C8  4B FF DA F5 */	bl setActionMode__8daE_OC_cFii
/* 807301CC  48 00 00 FC */	b lbl_807302C8
lbl_807301D0:
/* 807301D0  88 1B 06 E3 */	lbz r0, 0x6e3(r27)
/* 807301D4  28 00 00 00 */	cmplwi r0, 0
/* 807301D8  41 82 00 F0 */	beq lbl_807302C8
/* 807301DC  7F 63 DB 78 */	mr r3, r27
/* 807301E0  38 80 00 10 */	li r4, 0x10
/* 807301E4  38 A0 00 00 */	li r5, 0
/* 807301E8  4B FF DA D5 */	bl setActionMode__8daE_OC_cFii
/* 807301EC  48 00 00 DC */	b lbl_807302C8
lbl_807301F0:
/* 807301F0  7F 63 DB 78 */	mr r3, r27
/* 807301F4  38 80 00 16 */	li r4, 0x16
/* 807301F8  38 A0 00 00 */	li r5, 0
/* 807301FC  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 80730200  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80730204  4B FF E0 71 */	bl setBck__8daE_OC_cFiUcff
/* 80730208  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017C@ha */
/* 8073020C  38 03 01 7C */	addi r0, r3, 0x017C /* 0x0007017C@l */
/* 80730210  90 01 00 08 */	stw r0, 8(r1)
/* 80730214  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 80730218  38 81 00 08 */	addi r4, r1, 8
/* 8073021C  38 A0 FF FF */	li r5, -1
/* 80730220  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 80730224  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730228  7D 89 03 A6 */	mtctr r12
/* 8073022C  4E 80 04 21 */	bctrl 
/* 80730230  38 00 00 06 */	li r0, 6
/* 80730234  90 1B 06 B0 */	stw r0, 0x6b0(r27)
/* 80730238  38 00 00 00 */	li r0, 0
/* 8073023C  98 1B 06 DE */	stb r0, 0x6de(r27)
lbl_80730240:
/* 80730240  38 80 00 01 */	li r4, 1
/* 80730244  98 9B 06 EA */	stb r4, 0x6ea(r27)
/* 80730248  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8073024C  B0 1B 06 D4 */	sth r0, 0x6d4(r27)
/* 80730250  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80730254  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80730258  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073025C  40 82 00 18 */	bne lbl_80730274
/* 80730260  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80730264  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80730268  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073026C  41 82 00 08 */	beq lbl_80730274
/* 80730270  38 80 00 00 */	li r4, 0
lbl_80730274:
/* 80730274  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80730278  41 82 00 0C */	beq lbl_80730284
/* 8073027C  38 00 00 00 */	li r0, 0
/* 80730280  90 1B 06 B0 */	stw r0, 0x6b0(r27)
lbl_80730284:
/* 80730284  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 80730288  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8073028C  40 80 00 0C */	bge lbl_80730298
/* 80730290  38 00 00 00 */	li r0, 0
/* 80730294  90 1B 06 B0 */	stw r0, 0x6b0(r27)
lbl_80730298:
/* 80730298  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8073029C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807302A0  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 807302A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807302A8  4C 41 13 82 */	cror 2, 1, 2
/* 807302AC  40 82 00 1C */	bne lbl_807302C8
/* 807302B0  7F 63 DB 78 */	mr r3, r27
/* 807302B4  4B FF CE 4D */	bl searchPlayerShakeHead__8daE_OC_cFv
/* 807302B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807302BC  41 82 00 0C */	beq lbl_807302C8
/* 807302C0  38 00 00 00 */	li r0, 0
/* 807302C4  90 1B 06 B0 */	stw r0, 0x6b0(r27)
lbl_807302C8:
/* 807302C8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807302CC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807302D0  39 61 00 60 */	addi r11, r1, 0x60
/* 807302D4  4B C3 1F 48 */	b _restgpr_26
/* 807302D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807302DC  7C 08 03 A6 */	mtlr r0
/* 807302E0  38 21 00 70 */	addi r1, r1, 0x70
/* 807302E4  4E 80 00 20 */	blr 
