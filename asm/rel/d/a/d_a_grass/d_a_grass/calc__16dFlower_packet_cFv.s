lbl_80522774:
/* 80522774  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80522778  7C 08 02 A6 */	mflr r0
/* 8052277C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80522780  39 61 00 80 */	addi r11, r1, 0x80
/* 80522784  4B E3 FA 51 */	bl _savegpr_27
/* 80522788  7C 7B 1B 78 */	mr r27, r3
/* 8052278C  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 80522790  3B E3 30 28 */	addi r31, r3, lit_3999@l /* 0x80523028@l */
/* 80522794  3D 1B 00 01 */	addis r8, r27, 1
/* 80522798  38 60 00 00 */	li r3, 0
/* 8052279C  3C 80 80 43 */	lis r4, g_Counter@ha /* 0x80430CD8@ha */
/* 805227A0  38 E4 0C D8 */	addi r7, r4, g_Counter@l /* 0x80430CD8@l */
/* 805227A4  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 805227A8  C8 5F 00 D0 */	lfd f2, 0xd0(r31)
/* 805227AC  3C C0 43 30 */	lis r6, 0x4330
/* 805227B0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805227B4  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805227B8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 805227BC  38 00 00 08 */	li r0, 8
/* 805227C0  7C 09 03 A6 */	mtctr r0
/* 805227C4  39 08 19 54 */	addi r8, r8, 0x1954
lbl_805227C8:
/* 805227C8  80 07 00 08 */	lwz r0, 8(r7)
/* 805227CC  7C 00 1A 14 */	add r0, r0, r3
/* 805227D0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805227D4  90 C1 00 48 */	stw r6, 0x48(r1)
/* 805227D8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805227DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 805227E0  EC 03 00 32 */	fmuls f0, f3, f0
/* 805227E4  FC 00 00 1E */	fctiwz f0, f0
/* 805227E8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805227EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805227F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805227F4  7C 85 02 14 */	add r4, r5, r0
/* 805227F8  C0 04 00 04 */	lfs f0, 4(r4)
/* 805227FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80522800  EC 03 00 2A */	fadds f0, f3, f0
/* 80522804  FC 00 00 1E */	fctiwz f0, f0
/* 80522808  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052280C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80522810  B0 08 00 04 */	sth r0, 4(r8)
/* 80522814  39 08 00 38 */	addi r8, r8, 0x38
/* 80522818  38 63 00 FA */	addi r3, r3, 0xfa
/* 8052281C  42 00 FF AC */	bdnz lbl_805227C8
/* 80522820  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80522824  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80522828  7F DE 07 74 */	extsb r30, r30
/* 8052282C  3C 9B 00 01 */	addis r4, r27, 1
/* 80522830  57 C0 10 3A */	slwi r0, r30, 2
/* 80522834  7C 64 02 14 */	add r3, r4, r0
/* 80522838  83 A3 29 14 */	lwz r29, 0x2914(r3)
/* 8052283C  28 1D 00 00 */	cmplwi r29, 0
/* 80522840  41 82 01 44 */	beq lbl_80522984
/* 80522844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80522848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052284C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80522850  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80522854  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 80522858  98 04 2A 14 */	stb r0, 0x2a14(r4)
/* 8052285C  38 61 00 20 */	addi r3, r1, 0x20
/* 80522860  7F 84 E3 78 */	mr r4, r28
/* 80522864  4B FF E0 A9 */	bl getSwordTopPos__9daPy_py_cCFv
/* 80522868  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052286C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80522870  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80522874  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80522878  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8052287C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80522880  38 61 00 14 */	addi r3, r1, 0x14
/* 80522884  38 81 00 38 */	addi r4, r1, 0x38
/* 80522888  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8052288C  4B D4 42 A9 */	bl __mi__4cXyzCFRC3Vec
/* 80522890  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80522894  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80522898  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8052289C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805228A0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805228A4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805228A8  4B D4 4D CD */	bl cM_atan2s__Fff
/* 805228AC  3C 9B 00 01 */	addis r4, r27, 1
/* 805228B0  B0 64 2A 16 */	sth r3, 0x2a16(r4)
/* 805228B4  38 61 00 08 */	addi r3, r1, 8
/* 805228B8  38 84 2A 1C */	addi r4, r4, 0x2a1c
/* 805228BC  38 A1 00 38 */	addi r5, r1, 0x38
/* 805228C0  4B D4 42 75 */	bl __mi__4cXyzCFRC3Vec
/* 805228C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 805228C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805228CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805228D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805228D4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805228D8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805228DC  4B D4 4D 99 */	bl cM_atan2s__Fff
/* 805228E0  3C 9B 00 01 */	addis r4, r27, 1
/* 805228E4  B0 64 2A 18 */	sth r3, 0x2a18(r4)
/* 805228E8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805228EC  D0 04 2A 1C */	stfs f0, 0x2a1c(r4)
/* 805228F0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805228F4  D0 04 2A 20 */	stfs f0, 0x2a20(r4)
/* 805228F8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805228FC  D0 04 2A 24 */	stfs f0, 0x2a24(r4)
/* 80522900  38 00 00 00 */	li r0, 0
/* 80522904  3C 60 80 53 */	lis r3, data_805284E8@ha /* 0x805284E8@ha */
/* 80522908  98 03 84 E8 */	stb r0, data_805284E8@l(r3)  /* 0x805284E8@l */
/* 8052290C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522910  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80522914  40 82 00 28 */	bne lbl_8052293C
/* 80522918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052291C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80522920  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 80522924  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80522928  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 8052292C  38 80 00 0B */	li r4, 0xb
/* 80522930  38 A0 00 02 */	li r5, 2
/* 80522934  4B B6 2C FD */	bl SetAttr__12dCcMassS_MngFffUcUc
/* 80522938  48 00 00 24 */	b lbl_8052295C
lbl_8052293C:
/* 8052293C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80522940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80522944  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 80522948  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8052294C  C0 5F 01 78 */	lfs f2, 0x178(r31)
/* 80522950  38 80 00 0B */	li r4, 0xb
/* 80522954  38 A0 00 02 */	li r5, 2
/* 80522958  4B B6 2C D9 */	bl SetAttr__12dCcMassS_MngFffUcUc
lbl_8052295C:
/* 8052295C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522960  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80522964  40 82 00 14 */	bne lbl_80522978
/* 80522968  7F A3 EB 78 */	mr r3, r29
/* 8052296C  7F 84 E3 78 */	mr r4, r28
/* 80522970  7F C5 F3 78 */	mr r5, r30
/* 80522974  4B FF F0 C9 */	bl hitCheck__14dFlower_data_cFP10fopAc_ac_ci
lbl_80522978:
/* 80522978  83 BD 00 44 */	lwz r29, 0x44(r29)
/* 8052297C  28 1D 00 00 */	cmplwi r29, 0
/* 80522980  40 82 FF DC */	bne lbl_8052295C
lbl_80522984:
/* 80522984  39 61 00 80 */	addi r11, r1, 0x80
/* 80522988  4B E3 F8 99 */	bl _restgpr_27
/* 8052298C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80522990  7C 08 03 A6 */	mtlr r0
/* 80522994  38 21 00 80 */	addi r1, r1, 0x80
/* 80522998  4E 80 00 20 */	blr 
