lbl_8023F888:
/* 8023F888  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023F88C  7C 08 02 A6 */	mflr r0
/* 8023F890  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023F894  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8023F898  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8023F89C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023F8A0  7C 7F 1B 78 */	mr r31, r3
/* 8023F8A4  C3 E3 01 3C */	lfs f31, 0x13c(r3)
/* 8023F8A8  88 03 01 9D */	lbz r0, 0x19d(r3)
/* 8023F8AC  28 00 00 00 */	cmplwi r0, 0
/* 8023F8B0  40 82 00 2C */	bne lbl_8023F8DC
/* 8023F8B4  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 8023F8B8  48 00 0E 95 */	bl setBtk0Animation__14dMsgScrnItem_cFP19J2DAnmTextureSRTKey
/* 8023F8BC  7F E3 FB 78 */	mr r3, r31
/* 8023F8C0  80 9F 01 2C */	lwz r4, 0x12c(r31)
/* 8023F8C4  48 00 0F 25 */	bl setBpk0Animation__14dMsgScrnItem_cFP11J2DAnmColor
/* 8023F8C8  7F E3 FB 78 */	mr r3, r31
/* 8023F8CC  80 9F 01 30 */	lwz r4, 0x130(r31)
/* 8023F8D0  48 00 0F 75 */	bl setBpk1Animation__14dMsgScrnItem_cFP11J2DAnmColor
/* 8023F8D4  38 00 00 01 */	li r0, 1
/* 8023F8D8  98 1F 01 9D */	stb r0, 0x19d(r31)
lbl_8023F8DC:
/* 8023F8DC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023F8E0  38 C3 02 8C */	addi r6, r3, g_MsgObject_HIO_c@l
/* 8023F8E4  C8 22 B2 18 */	lfd f1, lit_4388(r2)
/* 8023F8E8  3C 00 43 30 */	lis r0, 0x4330
/* 8023F8EC  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 8023F8F0  C0 06 00 48 */	lfs f0, 0x48(r6)
/* 8023F8F4  EC 02 00 2A */	fadds f0, f2, f0
/* 8023F8F8  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 8023F8FC  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8023F900  A8 63 00 06 */	lha r3, 6(r3)
/* 8023F904  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 8023F908  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8023F90C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023F910  90 01 00 08 */	stw r0, 8(r1)
/* 8023F914  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023F918  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023F91C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023F920  4C 41 13 82 */	cror 2, 1, 2
/* 8023F924  40 82 00 1C */	bne lbl_8023F940
/* 8023F928  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023F92C  90 01 00 08 */	stw r0, 8(r1)
/* 8023F930  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023F934  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023F938  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023F93C  D0 1F 01 40 */	stfs f0, 0x140(r31)
lbl_8023F940:
/* 8023F940  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8023F944  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8023F948  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023F94C  38 60 00 00 */	li r3, 0
/* 8023F950  C8 22 B2 18 */	lfd f1, lit_4388(r2)
/* 8023F954  3C A0 43 30 */	lis r5, 0x4330
/* 8023F958  38 00 00 02 */	li r0, 2
/* 8023F95C  7C 09 03 A6 */	mtctr r0
lbl_8023F960:
/* 8023F960  7C FF 1A 14 */	add r7, r31, r3
/* 8023F964  C0 47 01 54 */	lfs f2, 0x154(r7)
/* 8023F968  C0 06 00 48 */	lfs f0, 0x48(r6)
/* 8023F96C  EC 02 00 2A */	fadds f0, f2, f0
/* 8023F970  D0 07 01 54 */	stfs f0, 0x154(r7)
/* 8023F974  80 87 01 2C */	lwz r4, 0x12c(r7)
/* 8023F978  A8 04 00 06 */	lha r0, 6(r4)
/* 8023F97C  C0 47 01 54 */	lfs f2, 0x154(r7)
/* 8023F980  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8023F984  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023F988  90 A1 00 08 */	stw r5, 8(r1)
/* 8023F98C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023F990  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023F994  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023F998  4C 41 13 82 */	cror 2, 1, 2
/* 8023F99C  40 82 00 20 */	bne lbl_8023F9BC
/* 8023F9A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023F9A4  3C 00 43 30 */	lis r0, 0x4330
/* 8023F9A8  90 01 00 08 */	stw r0, 8(r1)
/* 8023F9AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023F9B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023F9B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023F9B8  D0 07 01 54 */	stfs f0, 0x154(r7)
lbl_8023F9BC:
/* 8023F9BC  C0 07 01 54 */	lfs f0, 0x154(r7)
/* 8023F9C0  80 87 01 2C */	lwz r4, 0x12c(r7)
/* 8023F9C4  D0 04 00 08 */	stfs f0, 8(r4)
/* 8023F9C8  38 63 00 04 */	addi r3, r3, 4
/* 8023F9CC  42 00 FF 94 */	bdnz lbl_8023F960
/* 8023F9D0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023F9D4  48 0B 9C BD */	bl animation__9J2DScreenFv
/* 8023F9D8  7F E3 FB 78 */	mr r3, r31
/* 8023F9DC  4B FF CB 99 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 8023F9E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023F9E4  41 82 00 20 */	beq lbl_8023FA04
/* 8023F9E8  7F E3 FB 78 */	mr r3, r31
/* 8023F9EC  C0 22 B1 FC */	lfs f1, lit_4193(r2)
/* 8023F9F0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023F9F4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8023F9F8  7D 89 03 A6 */	mtctr r12
/* 8023F9FC  4E 80 04 21 */	bctrl 
/* 8023FA00  48 00 00 1C */	b lbl_8023FA1C
lbl_8023FA04:
/* 8023FA04  7F E3 FB 78 */	mr r3, r31
/* 8023FA08  FC 20 F8 90 */	fmr f1, f31
/* 8023FA0C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023FA10  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8023FA14  7D 89 03 A6 */	mtctr r12
/* 8023FA18  4E 80 04 21 */	bctrl 
lbl_8023FA1C:
/* 8023FA1C  88 1F 01 9C */	lbz r0, 0x19c(r31)
/* 8023FA20  2C 00 00 02 */	cmpwi r0, 2
/* 8023FA24  41 82 00 24 */	beq lbl_8023FA48
/* 8023FA28  40 80 00 30 */	bge lbl_8023FA58
/* 8023FA2C  2C 00 00 01 */	cmpwi r0, 1
/* 8023FA30  40 80 00 08 */	bge lbl_8023FA38
/* 8023FA34  48 00 00 24 */	b lbl_8023FA58
lbl_8023FA38:
/* 8023FA38  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 8023FA3C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8023FA40  EF E1 00 28 */	fsubs f31, f1, f0
/* 8023FA44  48 00 00 20 */	b lbl_8023FA64
lbl_8023FA48:
/* 8023FA48  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8023FA4C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8023FA50  EF E1 00 28 */	fsubs f31, f1, f0
/* 8023FA54  48 00 00 10 */	b lbl_8023FA64
lbl_8023FA58:
/* 8023FA58  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8023FA5C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8023FA60  EF E1 00 28 */	fsubs f31, f1, f0
lbl_8023FA64:
/* 8023FA64  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023FA68  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023FA6C  C0 24 00 A8 */	lfs f1, 0xa8(r4)
/* 8023FA70  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023FA74  80 63 00 04 */	lwz r3, 4(r3)
/* 8023FA78  C0 04 00 7C */	lfs f0, 0x7c(r4)
/* 8023FA7C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023FA80  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023FA84  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FA88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023FA8C  7D 89 03 A6 */	mtctr r12
/* 8023FA90  4E 80 04 21 */	bctrl 
/* 8023FA94  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8023FA98  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023FA9C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023FAA0  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 8023FAA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8023FAA8  EC 5F 00 2A */	fadds f2, f31, f0
/* 8023FAAC  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 8023FAB0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023FAB4  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 8023FAB8  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 8023FABC  EC 01 00 2A */	fadds f0, f1, f0
/* 8023FAC0  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8023FAC4  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8023FAC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FACC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023FAD0  7D 89 03 A6 */	mtctr r12
/* 8023FAD4  4E 80 04 21 */	bctrl 
/* 8023FAD8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023FADC  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023FAE0  C0 24 00 DC */	lfs f1, 0xdc(r4)
/* 8023FAE4  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 8023FAE8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023FAEC  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 8023FAF0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023FAF4  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023FAF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FAFC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023FB00  7D 89 03 A6 */	mtctr r12
/* 8023FB04  4E 80 04 21 */	bctrl 
/* 8023FB08  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8023FB0C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8023FB10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023FB14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023FB18  7C 08 03 A6 */	mtlr r0
/* 8023FB1C  38 21 00 30 */	addi r1, r1, 0x30
/* 8023FB20  4E 80 00 20 */	blr 
