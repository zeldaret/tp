lbl_8050A578:
/* 8050A578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050A57C  7C 08 02 A6 */	mflr r0
/* 8050A580  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050A584  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A588  4B E5 7C 4D */	bl _savegpr_27
/* 8050A58C  7C 7D 1B 78 */	mr r29, r3
/* 8050A590  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050A594  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050A598  80 1D 09 8C */	lwz r0, 0x98c(r29)
/* 8050A59C  90 01 00 08 */	stw r0, 8(r1)
/* 8050A5A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050A5A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050A5A8  38 81 00 08 */	addi r4, r1, 8
/* 8050A5AC  4B B0 F2 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050A5B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8050A5B4  41 82 03 3C */	beq lbl_8050A8F0
/* 8050A5B8  88 1D 12 9A */	lbz r0, 0x129a(r29)
/* 8050A5BC  7C 00 07 74 */	extsb r0, r0
/* 8050A5C0  2C 00 00 02 */	cmpwi r0, 2
/* 8050A5C4  41 82 00 0C */	beq lbl_8050A5D0
/* 8050A5C8  2C 00 00 03 */	cmpwi r0, 3
/* 8050A5CC  40 82 00 18 */	bne lbl_8050A5E4
lbl_8050A5D0:
/* 8050A5D0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8050A5D4  54 00 00 3E */	slwi r0, r0, 0
/* 8050A5D8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8050A5DC  38 00 00 00 */	li r0, 0
/* 8050A5E0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8050A5E4:
/* 8050A5E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A5E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A5EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050A5F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8050A5F4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8050A5F8  7D 89 03 A6 */	mtctr r12
/* 8050A5FC  4E 80 04 21 */	bctrl 
/* 8050A600  28 03 00 00 */	cmplwi r3, 0
/* 8050A604  41 82 00 58 */	beq lbl_8050A65C
/* 8050A608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A60C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A610  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 8050A614  3B 60 00 01 */	li r27, 1
/* 8050A618  7F 83 E3 78 */	mr r3, r28
/* 8050A61C  4B B6 91 C9 */	bl LockonTruth__12dAttention_cFv
/* 8050A620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8050A624  40 82 00 14 */	bne lbl_8050A638
/* 8050A628  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 8050A62C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8050A630  40 82 00 08 */	bne lbl_8050A638
/* 8050A634  3B 60 00 00 */	li r27, 0
lbl_8050A638:
/* 8050A638  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8050A63C  41 82 00 20 */	beq lbl_8050A65C
/* 8050A640  7F 83 E3 78 */	mr r3, r28
/* 8050A644  38 80 00 00 */	li r4, 0
/* 8050A648  4B B6 8E F5 */	bl LockonTarget__12dAttention_cFl
/* 8050A64C  7C 1D 18 40 */	cmplw r29, r3
/* 8050A650  40 82 00 0C */	bne lbl_8050A65C
/* 8050A654  38 00 00 01 */	li r0, 1
/* 8050A658  98 1F 06 C0 */	stb r0, 0x6c0(r31)
lbl_8050A65C:
/* 8050A65C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050A660  2C 00 00 00 */	cmpwi r0, 0
/* 8050A664  41 82 00 08 */	beq lbl_8050A66C
/* 8050A668  48 00 00 5C */	b lbl_8050A6C4
lbl_8050A66C:
/* 8050A66C  A0 7F 06 BE */	lhz r3, 0x6be(r31)
/* 8050A670  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8050A674  41 82 00 20 */	beq lbl_8050A694
/* 8050A678  7F A3 EB 78 */	mr r3, r29
/* 8050A67C  38 80 00 3E */	li r4, 0x3e
/* 8050A680  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A684  38 A0 00 02 */	li r5, 2
/* 8050A688  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A68C  4B FF A5 49 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A690  48 00 00 24 */	b lbl_8050A6B4
lbl_8050A694:
/* 8050A694  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8050A698  41 82 00 1C */	beq lbl_8050A6B4
/* 8050A69C  7F A3 EB 78 */	mr r3, r29
/* 8050A6A0  38 80 00 3D */	li r4, 0x3d
/* 8050A6A4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A6A8  38 A0 00 02 */	li r5, 2
/* 8050A6AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A6B0  4B FF A5 25 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050A6B4:
/* 8050A6B4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8050A6B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050A6BC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050A6C0  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8050A6C4:
/* 8050A6C4  80 1D 06 7C */	lwz r0, 0x67c(r29)
/* 8050A6C8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8050A6CC  41 82 00 1C */	beq lbl_8050A6E8
/* 8050A6D0  2C 00 00 24 */	cmpwi r0, 0x24
/* 8050A6D4  41 82 00 14 */	beq lbl_8050A6E8
/* 8050A6D8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8050A6DC  41 82 00 0C */	beq lbl_8050A6E8
/* 8050A6E0  2C 00 00 30 */	cmpwi r0, 0x30
/* 8050A6E4  40 82 00 58 */	bne lbl_8050A73C
lbl_8050A6E8:
/* 8050A6E8  38 60 00 00 */	li r3, 0
/* 8050A6EC  98 7D 09 C8 */	stb r3, 0x9c8(r29)
/* 8050A6F0  80 9D 05 D0 */	lwz r4, 0x5d0(r29)
/* 8050A6F4  38 A0 00 01 */	li r5, 1
/* 8050A6F8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8050A6FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050A700  40 82 00 18 */	bne lbl_8050A718
/* 8050A704  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050A708  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8050A70C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050A710  41 82 00 08 */	beq lbl_8050A718
/* 8050A714  7C 65 1B 78 */	mr r5, r3
lbl_8050A718:
/* 8050A718  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8050A71C  41 82 01 6C */	beq lbl_8050A888
/* 8050A720  7F A3 EB 78 */	mr r3, r29
/* 8050A724  38 80 00 3B */	li r4, 0x3b
/* 8050A728  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A72C  38 A0 00 02 */	li r5, 2
/* 8050A730  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A734  4B FF A4 A1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A738  48 00 01 50 */	b lbl_8050A888
lbl_8050A73C:
/* 8050A73C  2C 00 00 38 */	cmpwi r0, 0x38
/* 8050A740  41 82 00 14 */	beq lbl_8050A754
/* 8050A744  2C 00 00 37 */	cmpwi r0, 0x37
/* 8050A748  41 82 00 0C */	beq lbl_8050A754
/* 8050A74C  2C 00 00 39 */	cmpwi r0, 0x39
/* 8050A750  40 82 00 4C */	bne lbl_8050A79C
lbl_8050A754:
/* 8050A754  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050A758  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050A75C  FC 00 00 1E */	fctiwz f0, f0
/* 8050A760  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050A764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050A768  2C 00 00 15 */	cmpwi r0, 0x15
/* 8050A76C  40 82 01 1C */	bne lbl_8050A888
/* 8050A770  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F9@ha */
/* 8050A774  38 03 00 F9 */	addi r0, r3, 0x00F9 /* 0x000700F9@l */
/* 8050A778  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050A77C  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050A780  38 81 00 0C */	addi r4, r1, 0xc
/* 8050A784  38 A0 FF FF */	li r5, -1
/* 8050A788  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050A78C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050A790  7D 89 03 A6 */	mtctr r12
/* 8050A794  4E 80 04 21 */	bctrl 
/* 8050A798  48 00 00 F0 */	b lbl_8050A888
lbl_8050A79C:
/* 8050A79C  2C 00 00 3B */	cmpwi r0, 0x3b
/* 8050A7A0  40 82 00 8C */	bne lbl_8050A82C
/* 8050A7A4  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 8050A7A8  2C 00 00 00 */	cmpwi r0, 0
/* 8050A7AC  40 82 00 44 */	bne lbl_8050A7F0
/* 8050A7B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8050A7B4  4B D5 D1 A1 */	bl cM_rndF__Ff
/* 8050A7B8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8050A7BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A7C0  FC 00 00 1E */	fctiwz f0, f0
/* 8050A7C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050A7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050A7CC  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050A7D0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8050A7D4  4B D5 D1 81 */	bl cM_rndF__Ff
/* 8050A7D8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8050A7DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A7E0  FC 00 00 1E */	fctiwz f0, f0
/* 8050A7E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A7E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A7EC  B0 1D 09 94 */	sth r0, 0x994(r29)
lbl_8050A7F0:
/* 8050A7F0  A8 1D 09 94 */	lha r0, 0x994(r29)
/* 8050A7F4  2C 00 00 00 */	cmpwi r0, 0
/* 8050A7F8  41 82 00 0C */	beq lbl_8050A804
/* 8050A7FC  38 00 00 01 */	li r0, 1
/* 8050A800  98 1D 09 C8 */	stb r0, 0x9c8(r29)
lbl_8050A804:
/* 8050A804  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8050A808  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A80C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050A810  40 80 00 78 */	bge lbl_8050A888
/* 8050A814  7F A3 EB 78 */	mr r3, r29
/* 8050A818  38 80 00 41 */	li r4, 0x41
/* 8050A81C  38 A0 00 02 */	li r5, 2
/* 8050A820  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A824  4B FF A3 B1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A828  48 00 00 60 */	b lbl_8050A888
lbl_8050A82C:
/* 8050A82C  38 00 00 01 */	li r0, 1
/* 8050A830  98 1D 09 C8 */	stb r0, 0x9c8(r29)
/* 8050A834  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 8050A838  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8050A83C  40 80 00 24 */	bge lbl_8050A860
/* 8050A840  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8050A844  4B D5 D1 11 */	bl cM_rndF__Ff
/* 8050A848  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8050A84C  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A850  FC 00 00 1E */	fctiwz f0, f0
/* 8050A854  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A858  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A85C  B0 1D 09 96 */	sth r0, 0x996(r29)
lbl_8050A860:
/* 8050A860  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8050A864  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8050A868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050A86C  40 81 00 1C */	ble lbl_8050A888
/* 8050A870  7F A3 EB 78 */	mr r3, r29
/* 8050A874  38 80 00 3B */	li r4, 0x3b
/* 8050A878  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A87C  38 A0 00 02 */	li r5, 2
/* 8050A880  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A884  4B FF A3 51 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050A888:
/* 8050A888  3C 60 80 51 */	lis r3, s_wbrun_sub__FPvPv@ha /* 0x8050A3EC@ha */
/* 8050A88C  38 63 A3 EC */	addi r3, r3, s_wbrun_sub__FPvPv@l /* 0x8050A3EC@l */
/* 8050A890  7F A4 EB 78 */	mr r4, r29
/* 8050A894  4B B1 6A A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8050A898  28 03 00 00 */	cmplwi r3, 0
/* 8050A89C  41 82 00 38 */	beq lbl_8050A8D4
/* 8050A8A0  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 8050A8A4  2C 00 00 00 */	cmpwi r0, 0
/* 8050A8A8  40 82 00 2C */	bne lbl_8050A8D4
/* 8050A8AC  38 00 00 01 */	li r0, 1
/* 8050A8B0  98 1D 06 C2 */	stb r0, 0x6c2(r29)
/* 8050A8B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8050A8B8  4B D5 D0 9D */	bl cM_rndF__Ff
/* 8050A8BC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8050A8C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A8C4  FC 00 00 1E */	fctiwz f0, f0
/* 8050A8C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A8CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A8D0  B0 1D 09 96 */	sth r0, 0x996(r29)
lbl_8050A8D4:
/* 8050A8D4  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 8050A8D8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8050A8DC  41 82 00 14 */	beq lbl_8050A8F0
/* 8050A8E0  38 00 00 0E */	li r0, 0xe
/* 8050A8E4  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050A8E8  38 00 00 00 */	li r0, 0
/* 8050A8EC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8050A8F0:
/* 8050A8F0  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A8F4  4B E5 79 2D */	bl _restgpr_27
/* 8050A8F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050A8FC  7C 08 03 A6 */	mtlr r0
/* 8050A900  38 21 00 40 */	addi r1, r1, 0x40
/* 8050A904  4E 80 00 20 */	blr 
