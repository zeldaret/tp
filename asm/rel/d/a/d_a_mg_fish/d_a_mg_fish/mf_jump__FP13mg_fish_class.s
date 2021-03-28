lbl_8052FA4C:
/* 8052FA4C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8052FA50  7C 08 02 A6 */	mflr r0
/* 8052FA54  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8052FA58  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8052FA5C  4B E3 27 78 */	b _savegpr_27
/* 8052FA60  7C 7D 1B 78 */	mr r29, r3
/* 8052FA64  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052FA68  3B C3 61 68 */	addi r30, r3, lit_3679@l
/* 8052FA6C  80 1D 06 4C */	lwz r0, 0x64c(r29)
/* 8052FA70  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052FA74  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8052FA78  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8052FA7C  38 81 00 18 */	addi r4, r1, 0x18
/* 8052FA80  4B AE 9D 78 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8052FA84  7C 7F 1B 78 */	mr r31, r3
/* 8052FA88  A8 1D 05 B8 */	lha r0, 0x5b8(r29)
/* 8052FA8C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052FA90  40 80 00 58 */	bge lbl_8052FAE8
/* 8052FA94  28 1F 00 00 */	cmplwi r31, 0
/* 8052FA98  40 82 00 18 */	bne lbl_8052FAB0
/* 8052FA9C  38 00 00 01 */	li r0, 1
/* 8052FAA0  B0 1D 05 B6 */	sth r0, 0x5b6(r29)
/* 8052FAA4  38 00 00 00 */	li r0, 0
/* 8052FAA8  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 8052FAAC  48 00 08 A8 */	b lbl_80530354
lbl_8052FAB0:
/* 8052FAB0  88 1D 06 5A */	lbz r0, 0x65a(r29)
/* 8052FAB4  7C 00 07 75 */	extsb. r0, r0
/* 8052FAB8  40 82 00 30 */	bne lbl_8052FAE8
/* 8052FABC  38 00 00 02 */	li r0, 2
/* 8052FAC0  98 1D 06 58 */	stb r0, 0x658(r29)
/* 8052FAC4  98 1F 10 A5 */	stb r0, 0x10a5(r31)
/* 8052FAC8  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8052FACC  4B D3 7E 88 */	b cM_rndF__Ff
/* 8052FAD0  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 8052FAD4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052FAD8  FC 00 00 1E */	fctiwz f0, f0
/* 8052FADC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8052FAE0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8052FAE4  B0 1D 06 2E */	sth r0, 0x62e(r29)
lbl_8052FAE8:
/* 8052FAE8  38 00 08 00 */	li r0, 0x800
/* 8052FAEC  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8052FAF0  A8 1D 05 B8 */	lha r0, 0x5b8(r29)
/* 8052FAF4  2C 00 00 02 */	cmpwi r0, 2
/* 8052FAF8  41 82 01 94 */	beq lbl_8052FC8C
/* 8052FAFC  40 80 00 14 */	bge lbl_8052FB10
/* 8052FB00  2C 00 00 00 */	cmpwi r0, 0
/* 8052FB04  41 82 00 24 */	beq lbl_8052FB28
/* 8052FB08  40 80 00 6C */	bge lbl_8052FB74
/* 8052FB0C  48 00 07 20 */	b lbl_8053022C
lbl_8052FB10:
/* 8052FB10  2C 00 00 0B */	cmpwi r0, 0xb
/* 8052FB14  41 82 03 AC */	beq lbl_8052FEC0
/* 8052FB18  40 80 07 14 */	bge lbl_8053022C
/* 8052FB1C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052FB20  40 80 03 44 */	bge lbl_8052FE64
/* 8052FB24  48 00 07 08 */	b lbl_8053022C
lbl_8052FB28:
/* 8052FB28  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8052FB2C  4B D3 7E 60 */	b cM_rndFX__Ff
/* 8052FB30  FC 00 08 1E */	fctiwz f0, f1
/* 8052FB34  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8052FB38  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8052FB3C  38 03 D8 00 */	addi r0, r3, -10240
/* 8052FB40  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8052FB44  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8052FB48  4B D3 7E 44 */	b cM_rndFX__Ff
/* 8052FB4C  FC 00 08 1E */	fctiwz f0, f1
/* 8052FB50  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8052FB54  80 81 00 74 */	lwz r4, 0x74(r1)
/* 8052FB58  A8 7D 05 F4 */	lha r3, 0x5f4(r29)
/* 8052FB5C  3C 03 00 01 */	addis r0, r3, 1
/* 8052FB60  7C 60 22 14 */	add r3, r0, r4
/* 8052FB64  38 03 80 00 */	addi r0, r3, -32768
/* 8052FB68  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 8052FB6C  38 00 00 01 */	li r0, 1
/* 8052FB70  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
lbl_8052FB74:
/* 8052FB74  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8052FB78  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8052FB7C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8052FB80  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 8052FB84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8052FB88  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8052FB8C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8052FB90  7C 23 04 2E */	lfsx f1, r3, r0
/* 8052FB94  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8052FB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FB9C  40 81 00 0C */	ble lbl_8052FBA8
/* 8052FBA0  7F A3 EB 78 */	mr r3, r29
/* 8052FBA4  4B FF A1 D9 */	bl hit_vib_set__FP13mg_fish_class
lbl_8052FBA8:
/* 8052FBA8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8052FBAC  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 8052FBB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FBB4  40 81 06 78 */	ble lbl_8053022C
/* 8052FBB8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052FBBC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8052FBC0  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 8052FBC4  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8052FBC8  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8052FBCC  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8052FBD0  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 8052FBD4  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8052FBD8  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8052FBDC  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8052FBE0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8052FBE4  4B D3 7D A8 */	b cM_rndFX__Ff
/* 8052FBE8  FC 00 08 1E */	fctiwz f0, f1
/* 8052FBEC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8052FBF0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8052FBF4  B0 1D 07 34 */	sth r0, 0x734(r29)
/* 8052FBF8  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 8052FBFC  4B D3 7D 58 */	b cM_rndF__Ff
/* 8052FC00  FC 00 08 1E */	fctiwz f0, f1
/* 8052FC04  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8052FC08  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8052FC0C  B0 1D 07 36 */	sth r0, 0x736(r29)
/* 8052FC10  38 00 00 02 */	li r0, 2
/* 8052FC14  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 8052FC18  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052FC1C  4B D3 7D 38 */	b cM_rndF__Ff
/* 8052FC20  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 8052FC24  EC 00 08 2A */	fadds f0, f0, f1
/* 8052FC28  FC 00 00 1E */	fctiwz f0, f0
/* 8052FC2C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8052FC30  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8052FC34  B0 1D 06 24 */	sth r0, 0x624(r29)
/* 8052FC38  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 8052FC3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8052FC40  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 8052FC44  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8052FC48  C0 1D 06 40 */	lfs f0, 0x640(r29)
/* 8052FC4C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8052FC50  7F A3 EB 78 */	mr r3, r29
/* 8052FC54  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8052FC58  38 81 00 44 */	addi r4, r1, 0x44
/* 8052FC5C  4B FF A2 2D */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052FC60  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020083@ha */
/* 8052FC64  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00020083@l */
/* 8052FC68  90 01 00 28 */	stw r0, 0x28(r1)
/* 8052FC6C  38 7D 08 00 */	addi r3, r29, 0x800
/* 8052FC70  38 81 00 28 */	addi r4, r1, 0x28
/* 8052FC74  38 A0 00 00 */	li r5, 0
/* 8052FC78  38 C0 FF FF */	li r6, -1
/* 8052FC7C  81 9D 08 00 */	lwz r12, 0x800(r29)
/* 8052FC80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052FC84  7D 89 03 A6 */	mtctr r12
/* 8052FC88  4E 80 04 21 */	bctrl 
lbl_8052FC8C:
/* 8052FC8C  38 00 00 02 */	li r0, 2
/* 8052FC90  98 1F 10 0F */	stb r0, 0x100f(r31)
/* 8052FC94  88 1D 06 5A */	lbz r0, 0x65a(r29)
/* 8052FC98  7C 00 07 75 */	extsb. r0, r0
/* 8052FC9C  40 82 00 18 */	bne lbl_8052FCB4
/* 8052FCA0  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8052FCA4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8052FCA8  40 82 00 0C */	bne lbl_8052FCB4
/* 8052FCAC  7F A3 EB 78 */	mr r3, r29
/* 8052FCB0  4B FF A0 CD */	bl hit_vib_set__FP13mg_fish_class
lbl_8052FCB4:
/* 8052FCB4  A8 7D 04 E0 */	lha r3, 0x4e0(r29)
/* 8052FCB8  A8 1D 07 34 */	lha r0, 0x734(r29)
/* 8052FCBC  7C 03 02 14 */	add r0, r3, r0
/* 8052FCC0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 8052FCC4  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 8052FCC8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8052FCCC  A8 7D 05 CE */	lha r3, 0x5ce(r29)
/* 8052FCD0  A8 1D 07 36 */	lha r0, 0x736(r29)
/* 8052FCD4  7C 03 02 14 */	add r0, r3, r0
/* 8052FCD8  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8052FCDC  A8 1D 06 24 */	lha r0, 0x624(r29)
/* 8052FCE0  2C 00 00 01 */	cmpwi r0, 1
/* 8052FCE4  40 82 00 3C */	bne lbl_8052FD20
/* 8052FCE8  C0 3F 14 CC */	lfs f1, 0x14cc(r31)
/* 8052FCEC  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8052FCF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FCF4  4C 40 13 82 */	cror 2, 0, 2
/* 8052FCF8  40 82 00 28 */	bne lbl_8052FD20
/* 8052FCFC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8052FD00  4B D3 7C 54 */	b cM_rndF__Ff
/* 8052FD04  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 8052FD08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FD0C  40 80 00 14 */	bge lbl_8052FD20
/* 8052FD10  38 00 00 01 */	li r0, 1
/* 8052FD14  98 1D 06 5A */	stb r0, 0x65a(r29)
/* 8052FD18  38 00 00 00 */	li r0, 0
/* 8052FD1C  98 1D 06 58 */	stb r0, 0x658(r29)
lbl_8052FD20:
/* 8052FD20  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8052FD24  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8052FD28  7C 65 1B 78 */	mr r5, r3
/* 8052FD2C  4B E1 73 64 */	b PSVECAdd
/* 8052FD30  3B 60 00 00 */	li r27, 0
/* 8052FD34  3B 80 00 00 */	li r28, 0
/* 8052FD38  48 00 00 20 */	b lbl_8052FD58
lbl_8052FD3C:
/* 8052FD3C  38 7C 06 64 */	addi r3, r28, 0x664
/* 8052FD40  7C 7D 1A 14 */	add r3, r29, r3
/* 8052FD44  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8052FD48  7C 65 1B 78 */	mr r5, r3
/* 8052FD4C  4B E1 73 44 */	b PSVECAdd
/* 8052FD50  3B 7B 00 01 */	addi r27, r27, 1
/* 8052FD54  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_8052FD58:
/* 8052FD58  80 1D 07 2C */	lwz r0, 0x72c(r29)
/* 8052FD5C  7C 1B 00 00 */	cmpw r27, r0
/* 8052FD60  40 81 FF DC */	ble lbl_8052FD3C
/* 8052FD64  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8052FD68  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8052FD6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052FD70  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8052FD74  88 1D 06 5A */	lbz r0, 0x65a(r29)
/* 8052FD78  7C 00 07 75 */	extsb. r0, r0
/* 8052FD7C  41 82 00 14 */	beq lbl_8052FD90
/* 8052FD80  38 00 00 19 */	li r0, 0x19
/* 8052FD84  98 1F 10 A6 */	stb r0, 0x10a6(r31)
/* 8052FD88  38 00 00 00 */	li r0, 0
/* 8052FD8C  98 1F 10 A7 */	stb r0, 0x10a7(r31)
lbl_8052FD90:
/* 8052FD90  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8052FD94  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052FD98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FD9C  40 80 04 90 */	bge lbl_8053022C
/* 8052FDA0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8052FDA4  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 8052FDA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052FDAC  40 80 04 80 */	bge lbl_8053022C
/* 8052FDB0  88 1D 06 5A */	lbz r0, 0x65a(r29)
/* 8052FDB4  7C 00 07 75 */	extsb. r0, r0
/* 8052FDB8  41 82 00 18 */	beq lbl_8052FDD0
/* 8052FDBC  38 00 00 02 */	li r0, 2
/* 8052FDC0  B0 1D 05 B6 */	sth r0, 0x5b6(r29)
/* 8052FDC4  38 00 FF FF */	li r0, -1
/* 8052FDC8  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 8052FDCC  48 00 00 14 */	b lbl_8052FDE0
lbl_8052FDD0:
/* 8052FDD0  38 00 00 34 */	li r0, 0x34
/* 8052FDD4  B0 1D 05 B6 */	sth r0, 0x5b6(r29)
/* 8052FDD8  38 00 00 01 */	li r0, 1
/* 8052FDDC  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
lbl_8052FDE0:
/* 8052FDE0  38 00 00 1E */	li r0, 0x1e
/* 8052FDE4  B0 1D 06 26 */	sth r0, 0x626(r29)
/* 8052FDE8  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 8052FDEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052FDF0  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 8052FDF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8052FDF8  C0 1D 06 40 */	lfs f0, 0x640(r29)
/* 8052FDFC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8052FE00  7F A3 EB 78 */	mr r3, r29
/* 8052FE04  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 8052FE08  38 81 00 38 */	addi r4, r1, 0x38
/* 8052FE0C  4B FF A0 7D */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052FE10  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020084@ha */
/* 8052FE14  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00020084@l */
/* 8052FE18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052FE1C  38 7D 08 00 */	addi r3, r29, 0x800
/* 8052FE20  38 81 00 24 */	addi r4, r1, 0x24
/* 8052FE24  38 A0 00 00 */	li r5, 0
/* 8052FE28  38 C0 FF FF */	li r6, -1
/* 8052FE2C  81 9D 08 00 */	lwz r12, 0x800(r29)
/* 8052FE30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052FE34  7D 89 03 A6 */	mtctr r12
/* 8052FE38  4E 80 04 21 */	bctrl 
/* 8052FE3C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8052FE40  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8052FE44  38 00 00 00 */	li r0, 0
/* 8052FE48  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8052FE4C  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 8052FE50  38 00 00 05 */	li r0, 5
/* 8052FE54  98 1D 06 5D */	stb r0, 0x65d(r29)
/* 8052FE58  7F A3 EB 78 */	mr r3, r29
/* 8052FE5C  4B FF A3 C1 */	bl mouth_close__FP13mg_fish_class
/* 8052FE60  48 00 03 CC */	b lbl_8053022C
lbl_8052FE64:
/* 8052FE64  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8052FE68  28 00 00 0A */	cmplwi r0, 0xa
/* 8052FE6C  40 82 00 4C */	bne lbl_8052FEB8
/* 8052FE70  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8052FE74  7C 07 07 74 */	extsb r7, r0
/* 8052FE78  38 00 00 00 */	li r0, 0
/* 8052FE7C  90 01 00 08 */	stw r0, 8(r1)
/* 8052FE80  38 60 02 AD */	li r3, 0x2ad
/* 8052FE84  28 1D 00 00 */	cmplwi r29, 0
/* 8052FE88  41 82 00 0C */	beq lbl_8052FE94
/* 8052FE8C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8052FE90  48 00 00 08 */	b lbl_8052FE98
lbl_8052FE94:
/* 8052FE94  38 80 FF FF */	li r4, -1
lbl_8052FE98:
/* 8052FE98  3C A0 01 00 */	lis r5, 0x0100 /* 0x010000B3@ha */
/* 8052FE9C  38 A5 00 B3 */	addi r5, r5, 0x00B3 /* 0x010000B3@l */
/* 8052FEA0  38 C1 00 50 */	addi r6, r1, 0x50
/* 8052FEA4  39 00 00 00 */	li r8, 0
/* 8052FEA8  39 20 00 00 */	li r9, 0
/* 8052FEAC  39 40 FF FF */	li r10, -1
/* 8052FEB0  4B AE A0 40 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8052FEB4  90 7D 06 48 */	stw r3, 0x648(r29)
lbl_8052FEB8:
/* 8052FEB8  38 00 00 0B */	li r0, 0xb
/* 8052FEBC  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
lbl_8052FEC0:
/* 8052FEC0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8052FEC4  4B C2 F6 2C */	b setLookPos__9daPy_py_cFP4cXyz
/* 8052FEC8  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8052FECC  28 00 00 0A */	cmplwi r0, 0xa
/* 8052FED0  40 82 00 3C */	bne lbl_8052FF0C
/* 8052FED4  80 1D 06 48 */	lwz r0, 0x648(r29)
/* 8052FED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FEDC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8052FEE0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8052FEE4  38 81 00 14 */	addi r4, r1, 0x14
/* 8052FEE8  4B AE 99 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8052FEEC  28 03 00 00 */	cmplwi r3, 0
/* 8052FEF0  41 82 00 1C */	beq lbl_8052FF0C
/* 8052FEF4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8052FEF8  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8052FEFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8052FF00  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8052FF04  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8052FF08  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8052FF0C:
/* 8052FF0C  38 00 00 00 */	li r0, 0
/* 8052FF10  98 1D 06 59 */	stb r0, 0x659(r29)
/* 8052FF14  98 1D 06 58 */	stb r0, 0x658(r29)
/* 8052FF18  28 1F 00 00 */	cmplwi r31, 0
/* 8052FF1C  41 82 00 08 */	beq lbl_8052FF24
/* 8052FF20  98 1F 10 A5 */	stb r0, 0x10a5(r31)
lbl_8052FF24:
/* 8052FF24  38 00 06 00 */	li r0, 0x600
/* 8052FF28  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8052FF2C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8052FF30  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8052FF34  7C 65 1B 78 */	mr r5, r3
/* 8052FF38  4B E1 71 58 */	b PSVECAdd
/* 8052FF3C  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8052FF40  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8052FF44  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052FF48  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8052FF4C  80 1D 08 FC */	lwz r0, 0x8fc(r29)
/* 8052FF50  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8052FF54  41 82 01 68 */	beq lbl_805300BC
/* 8052FF58  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 8052FF5C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8052FF60  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8052FF64  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8052FF68  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 8052FF6C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8052FF70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052FF74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052FF78  80 63 00 00 */	lwz r3, 0(r3)
/* 8052FF7C  A8 9D 05 F6 */	lha r4, 0x5f6(r29)
/* 8052FF80  4B AD C4 5C */	b mDoMtx_YrotS__FPA4_fs
/* 8052FF84  A8 1D 06 28 */	lha r0, 0x628(r29)
/* 8052FF88  2C 00 00 00 */	cmpwi r0, 0
/* 8052FF8C  40 82 00 28 */	bne lbl_8052FFB4
/* 8052FF90  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8052FF94  4B D3 79 F8 */	b cM_rndFX__Ff
/* 8052FF98  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8052FF9C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8052FFA0  4B D3 79 EC */	b cM_rndFX__Ff
/* 8052FFA4  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8052FFA8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052FFAC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8052FFB0  48 00 00 1C */	b lbl_8052FFCC
lbl_8052FFB4:
/* 8052FFB4  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8052FFB8  4B D3 79 D4 */	b cM_rndFX__Ff
/* 8052FFBC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8052FFC0  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8052FFC4  4B D3 79 C8 */	b cM_rndFX__Ff
/* 8052FFC8  D0 21 00 64 */	stfs f1, 0x64(r1)
lbl_8052FFCC:
/* 8052FFCC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8052FFD0  4B D3 79 84 */	b cM_rndF__Ff
/* 8052FFD4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052FFD8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052FFDC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8052FFE0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8052FFE4  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8052FFE8  4B D4 0F 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 8052FFEC  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 8052FFF0  2C 00 00 00 */	cmpwi r0, 0
/* 8052FFF4  40 80 00 10 */	bge lbl_80530004
/* 8052FFF8  38 00 C0 00 */	li r0, -16384
/* 8052FFFC  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80530000  48 00 00 0C */	b lbl_8053000C
lbl_80530004:
/* 80530004  38 00 40 00 */	li r0, 0x4000
/* 80530008  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_8053000C:
/* 8053000C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80530010  4B D3 79 44 */	b cM_rndF__Ff
/* 80530014  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80530018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053001C  40 80 00 10 */	bge lbl_8053002C
/* 80530020  38 00 40 00 */	li r0, 0x4000
/* 80530024  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80530028  48 00 00 0C */	b lbl_80530034
lbl_8053002C:
/* 8053002C  38 00 C0 00 */	li r0, -16384
/* 80530030  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
lbl_80530034:
/* 80530034  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80530038  4B D3 79 54 */	b cM_rndFX__Ff
/* 8053003C  FC 00 08 1E */	fctiwz f0, f1
/* 80530040  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80530044  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80530048  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 8053004C  7C 00 1A 14 */	add r0, r0, r3
/* 80530050  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 80530054  38 7D 0C 34 */	addi r3, r29, 0xc34
/* 80530058  38 9D 0C 38 */	addi r4, r29, 0xc38
/* 8053005C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80530060  38 C0 00 00 */	li r6, 0
/* 80530064  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80530068  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 8053006C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80530070  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80530074  39 00 00 01 */	li r8, 1
/* 80530078  4B AE CF A8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8053007C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AF@ha */
/* 80530080  38 03 02 AF */	addi r0, r3, 0x02AF /* 0x000802AF@l */
/* 80530084  90 01 00 20 */	stw r0, 0x20(r1)
/* 80530088  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8053008C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80530090  80 63 00 00 */	lwz r3, 0(r3)
/* 80530094  38 81 00 20 */	addi r4, r1, 0x20
/* 80530098  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8053009C  38 C0 00 14 */	li r6, 0x14
/* 805300A0  38 E0 00 00 */	li r7, 0
/* 805300A4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805300A8  FC 40 08 90 */	fmr f2, f1
/* 805300AC  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 805300B0  FC 80 18 90 */	fmr f4, f3
/* 805300B4  39 00 00 00 */	li r8, 0
/* 805300B8  4B D7 B8 CC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805300BC:
/* 805300BC  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 805300C0  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 805300C4  38 A0 00 02 */	li r5, 2
/* 805300C8  38 C0 0B 00 */	li r6, 0xb00
/* 805300CC  4B D4 05 3C */	b cLib_addCalcAngleS2__FPssss
/* 805300D0  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 805300D4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805300D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805300DC  40 80 01 50 */	bge lbl_8053022C
/* 805300E0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805300E4  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 805300E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805300EC  40 80 01 40 */	bge lbl_8053022C
/* 805300F0  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 805300F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805300F8  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 805300FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80530100  C0 1D 06 40 */	lfs f0, 0x640(r29)
/* 80530104  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80530108  7F A3 EB 78 */	mr r3, r29
/* 8053010C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80530110  38 81 00 2C */	addi r4, r1, 0x2c
/* 80530114  4B FF 9D 75 */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 80530118  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020084@ha */
/* 8053011C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00020084@l */
/* 80530120  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80530124  38 7D 08 00 */	addi r3, r29, 0x800
/* 80530128  38 81 00 1C */	addi r4, r1, 0x1c
/* 8053012C  38 A0 00 00 */	li r5, 0
/* 80530130  38 C0 FF FF */	li r6, -1
/* 80530134  81 9D 08 00 */	lwz r12, 0x800(r29)
/* 80530138  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8053013C  7D 89 03 A6 */	mtctr r12
/* 80530140  4E 80 04 21 */	bctrl 
/* 80530144  38 00 00 02 */	li r0, 2
/* 80530148  B0 1D 05 B6 */	sth r0, 0x5b6(r29)
/* 8053014C  38 00 FF FF */	li r0, -1
/* 80530150  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 80530154  38 00 00 00 */	li r0, 0
/* 80530158  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 8053015C  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 80530160  28 00 00 0A */	cmplwi r0, 0xa
/* 80530164  40 82 00 28 */	bne lbl_8053018C
/* 80530168  80 1D 06 48 */	lwz r0, 0x648(r29)
/* 8053016C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80530170  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80530174  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80530178  38 81 00 10 */	addi r4, r1, 0x10
/* 8053017C  4B AE 96 7C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80530180  28 03 00 00 */	cmplwi r3, 0
/* 80530184  41 82 00 08 */	beq lbl_8053018C
/* 80530188  4B AE 9A F4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8053018C:
/* 8053018C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80530190  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80530194  80 63 00 00 */	lwz r3, 0(r3)
/* 80530198  A8 9D 05 F4 */	lha r4, 0x5f4(r29)
/* 8053019C  4B AD C2 40 */	b mDoMtx_YrotS__FPA4_fs
/* 805301A0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805301A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805301A8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805301AC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805301B0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805301B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 805301B8  38 81 00 50 */	addi r4, r1, 0x50
/* 805301BC  4B D4 0D 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 805301C0  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 805301C4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805301C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805301CC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805301D0  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805301D4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805301D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805301DC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805301E0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805301E4  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 805301E8  EC 01 00 2A */	fadds f0, f1, f0
/* 805301EC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805301F0  38 61 00 50 */	addi r3, r1, 0x50
/* 805301F4  38 80 00 00 */	li r4, 0
/* 805301F8  38 A0 FF FF */	li r5, -1
/* 805301FC  38 C0 FF FF */	li r6, -1
/* 80530200  38 E0 00 00 */	li r7, 0
/* 80530204  39 00 00 00 */	li r8, 0
/* 80530208  39 20 00 00 */	li r9, 0
/* 8053020C  4B AE C0 34 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 80530210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80530214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80530218  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8053021C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80530220  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80530224  A0 84 03 AC */	lhz r4, 0x3ac(r4)
/* 80530228  4B B0 47 64 */	b onEventBit__11dSv_event_cFUs
lbl_8053022C:
/* 8053022C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80530230  A8 9D 05 CC */	lha r4, 0x5cc(r29)
/* 80530234  38 A0 00 02 */	li r5, 2
/* 80530238  A8 DD 05 D0 */	lha r6, 0x5d0(r29)
/* 8053023C  4B D4 03 CC */	b cLib_addCalcAngleS2__FPssss
/* 80530240  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80530244  A8 9D 05 CE */	lha r4, 0x5ce(r29)
/* 80530248  38 A0 00 02 */	li r5, 2
/* 8053024C  A8 DD 05 D0 */	lha r6, 0x5d0(r29)
/* 80530250  4B D4 03 B8 */	b cLib_addCalcAngleS2__FPssss
/* 80530254  38 00 1B 58 */	li r0, 0x1b58
/* 80530258  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 8053025C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80530260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530264  4C 41 13 82 */	cror 2, 1, 2
/* 80530268  40 82 00 0C */	bne lbl_80530274
/* 8053026C  38 00 13 88 */	li r0, 0x1388
/* 80530270  48 00 00 30 */	b lbl_805302A0
lbl_80530274:
/* 80530274  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80530278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053027C  4C 41 13 82 */	cror 2, 1, 2
/* 80530280  40 82 00 0C */	bne lbl_8053028C
/* 80530284  38 00 17 70 */	li r0, 0x1770
/* 80530288  48 00 00 18 */	b lbl_805302A0
lbl_8053028C:
/* 8053028C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80530290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530294  4C 41 13 82 */	cror 2, 1, 2
/* 80530298  40 82 00 08 */	bne lbl_805302A0
/* 8053029C  38 00 19 64 */	li r0, 0x1964
lbl_805302A0:
/* 805302A0  38 60 00 00 */	li r3, 0
/* 805302A4  38 80 00 00 */	li r4, 0
/* 805302A8  38 A0 00 00 */	li r5, 0
/* 805302AC  38 C0 00 00 */	li r6, 0
/* 805302B0  7C 09 07 34 */	extsh r9, r0
/* 805302B4  39 09 FE 0C */	addi r8, r9, -500
/* 805302B8  48 00 00 90 */	b lbl_80530348
lbl_805302BC:
/* 805302BC  2C 00 00 04 */	cmpwi r0, 4
/* 805302C0  41 81 00 40 */	bgt lbl_80530300
/* 805302C4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805302C8  7C 00 49 D6 */	mullw r0, r0, r9
/* 805302CC  7C 06 02 14 */	add r0, r6, r0
/* 805302D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805302D4  3C E0 80 44 */	lis r7, sincosTable___5JMath@ha
/* 805302D8  38 E7 9A 20 */	addi r7, r7, sincosTable___5JMath@l
/* 805302DC  7C 27 04 2E */	lfsx f1, r7, r0
/* 805302E0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805302E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805302E8  FC 00 00 1E */	fctiwz f0, f0
/* 805302EC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805302F0  80 E1 00 7C */	lwz r7, 0x7c(r1)
/* 805302F4  38 05 07 18 */	addi r0, r5, 0x718
/* 805302F8  7C FD 03 2E */	sthx r7, r29, r0
/* 805302FC  48 00 00 3C */	b lbl_80530338
lbl_80530300:
/* 80530300  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80530304  7C 00 41 D6 */	mullw r0, r0, r8
/* 80530308  7C 04 02 14 */	add r0, r4, r0
/* 8053030C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80530310  3C E0 80 44 */	lis r7, sincosTable___5JMath@ha
/* 80530314  38 E7 9A 20 */	addi r7, r7, sincosTable___5JMath@l
/* 80530318  7C 27 04 2E */	lfsx f1, r7, r0
/* 8053031C  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80530320  EC 00 00 72 */	fmuls f0, f0, f1
/* 80530324  FC 00 00 1E */	fctiwz f0, f0
/* 80530328  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8053032C  80 E1 00 7C */	lwz r7, 0x7c(r1)
/* 80530330  38 05 07 18 */	addi r0, r5, 0x718
/* 80530334  7C FD 03 2E */	sthx r7, r29, r0
lbl_80530338:
/* 80530338  38 63 00 01 */	addi r3, r3, 1
/* 8053033C  38 84 E4 A8 */	addi r4, r4, -7000
/* 80530340  38 A5 00 02 */	addi r5, r5, 2
/* 80530344  38 C6 DE CC */	addi r6, r6, -8500
lbl_80530348:
/* 80530348  80 1D 07 2C */	lwz r0, 0x72c(r29)
/* 8053034C  7C 03 00 00 */	cmpw r3, r0
/* 80530350  40 81 FF 6C */	ble lbl_805302BC
lbl_80530354:
/* 80530354  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80530358  4B E3 1E C8 */	b _restgpr_27
/* 8053035C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80530360  7C 08 03 A6 */	mtlr r0
/* 80530364  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80530368  4E 80 00 20 */	blr 
