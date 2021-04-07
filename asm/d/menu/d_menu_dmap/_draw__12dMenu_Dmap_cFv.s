lbl_801BE7E0:
/* 801BE7E0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801BE7E4  7C 08 02 A6 */	mflr r0
/* 801BE7E8  90 01 01 04 */	stw r0, 0x104(r1)
/* 801BE7EC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801BE7F0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 801BE7F4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 801BE7F8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 801BE7FC  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 801BE800  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 801BE804  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801BE808  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801BE80C  7C 7F 1B 78 */	mr r31, r3
/* 801BE810  80 63 00 04 */	lwz r3, 4(r3)
/* 801BE814  28 03 00 00 */	cmplwi r3, 0
/* 801BE818  41 82 02 B4 */	beq lbl_801BEACC
/* 801BE81C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE820  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BE824  7D 89 03 A6 */	mtctr r12
/* 801BE828  4E 80 04 21 */	bctrl 
/* 801BE82C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BE830  28 03 00 00 */	cmplwi r3, 0
/* 801BE834  41 82 02 98 */	beq lbl_801BEACC
/* 801BE838  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 801BE83C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BE840  D0 03 0D 94 */	stfs f0, 0xd94(r3)
/* 801BE844  D0 23 0D 98 */	stfs f1, 0xd98(r3)
/* 801BE848  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BE84C  80 64 0D 24 */	lwz r3, 0xd24(r4)
/* 801BE850  28 03 00 00 */	cmplwi r3, 0
/* 801BE854  41 82 02 5C */	beq lbl_801BEAB0
/* 801BE858  C0 22 A6 58 */	lfs f1, lit_6180(r2)
/* 801BE85C  C0 04 0D 88 */	lfs f0, 0xd88(r4)
/* 801BE860  EF A1 00 32 */	fmuls f29, f1, f0
/* 801BE864  C0 04 0D 80 */	lfs f0, 0xd80(r4)
/* 801BE868  EF E0 E8 24 */	fdivs f31, f0, f29
/* 801BE86C  C0 04 0D 84 */	lfs f0, 0xd84(r4)
/* 801BE870  EF C0 E8 24 */	fdivs f30, f0, f29
/* 801BE874  38 80 00 00 */	li r4, 0
/* 801BE878  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE87C  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801BE880  7D 89 03 A6 */	mtctr r12
/* 801BE884  4E 80 04 21 */	bctrl 
/* 801BE888  83 C3 00 20 */	lwz r30, 0x20(r3)
/* 801BE88C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BE890  48 00 26 95 */	bl getPixelStageSizeX__20dMenu_StageMapCtrl_cCFv
/* 801BE894  D0 3F 01 3C */	stfs f1, 0x13c(r31)
/* 801BE898  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BE89C  48 00 26 A1 */	bl getPixelStageSizeZ__20dMenu_StageMapCtrl_cCFv
/* 801BE8A0  D0 3F 01 40 */	stfs f1, 0x140(r31)
/* 801BE8A4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BE8A8  48 00 26 AD */	bl getPixelCenterX__20dMenu_StageMapCtrl_cCFv
/* 801BE8AC  D0 3F 01 34 */	stfs f1, 0x134(r31)
/* 801BE8B0  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BE8B4  48 00 26 C1 */	bl getPixelCenterZ__20dMenu_StageMapCtrl_cCFv
/* 801BE8B8  D0 3F 01 38 */	stfs f1, 0x138(r31)
/* 801BE8BC  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 801BE8C0  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 801BE8C4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801BE8C8  40 81 00 34 */	ble lbl_801BE8FC
/* 801BE8CC  A0 1E 00 02 */	lhz r0, 2(r30)
/* 801BE8D0  C8 22 A6 38 */	lfd f1, lit_4790(r2)
/* 801BE8D4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801BE8D8  3C 00 43 30 */	lis r0, 0x4330
/* 801BE8DC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801BE8E0  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 801BE8E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BE8E8  EC 20 07 72 */	fmuls f1, f0, f29
/* 801BE8EC  C0 0D 89 00 */	lfs f0, mAllSizeX__8dMpath_c(r13)
/* 801BE8F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 801BE8F4  EF A2 00 32 */	fmuls f29, f2, f0
/* 801BE8F8  48 00 00 30 */	b lbl_801BE928
lbl_801BE8FC:
/* 801BE8FC  A0 1E 00 04 */	lhz r0, 4(r30)
/* 801BE900  C8 22 A6 38 */	lfd f1, lit_4790(r2)
/* 801BE904  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801BE908  3C 00 43 30 */	lis r0, 0x4330
/* 801BE90C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801BE910  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 801BE914  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BE918  EC 20 07 72 */	fmuls f1, f0, f29
/* 801BE91C  C0 0D 89 04 */	lfs f0, mAllSizeZ__8dMpath_c(r13)
/* 801BE920  EC 01 00 24 */	fdivs f0, f1, f0
/* 801BE924  EF A3 00 32 */	fmuls f29, f3, f0
lbl_801BE928:
/* 801BE928  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BE92C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BE930  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 801BE934  EC 61 00 24 */	fdivs f3, f1, f0
/* 801BE938  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 801BE93C  C0 42 A6 58 */	lfs f2, lit_6180(r2)
/* 801BE940  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 801BE944  EC 02 00 32 */	fmuls f0, f2, f0
/* 801BE948  EC 01 00 2A */	fadds f0, f1, f0
/* 801BE94C  FF E0 00 50 */	fneg f31, f0
/* 801BE950  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 801BE954  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 801BE958  EC 02 00 32 */	fmuls f0, f2, f0
/* 801BE95C  EC 01 00 2A */	fadds f0, f1, f0
/* 801BE960  FF C0 00 50 */	fneg f30, f0
/* 801BE964  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BE968  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801BE96C  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BE970  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BE974  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BE978  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BE97C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE980  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BE984  7D 89 03 A6 */	mtctr r12
/* 801BE988  4E 80 04 21 */	bctrl 
/* 801BE98C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BE990  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801BE994  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BE998  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BE99C  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BE9A0  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BE9A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE9A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BE9AC  7D 89 03 A6 */	mtctr r12
/* 801BE9B0  4E 80 04 21 */	bctrl 
/* 801BE9B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BE9B8  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801BE9BC  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BE9C0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BE9C4  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BE9C8  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BE9CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE9D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BE9D4  7D 89 03 A6 */	mtctr r12
/* 801BE9D8  4E 80 04 21 */	bctrl 
/* 801BE9DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BE9E0  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801BE9E4  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BE9E8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BE9EC  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BE9F0  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BE9F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE9F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BE9FC  7D 89 03 A6 */	mtctr r12
/* 801BEA00  4E 80 04 21 */	bctrl 
/* 801BEA04  38 61 00 50 */	addi r3, r1, 0x50
/* 801BEA08  48 09 4F 29 */	bl __ct__8CPaneMgrFv
/* 801BEA0C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEA10  80 A3 0C C4 */	lwz r5, 0xcc4(r3)
/* 801BEA14  38 61 00 08 */	addi r3, r1, 8
/* 801BEA18  38 81 00 50 */	addi r4, r1, 0x50
/* 801BEA1C  38 C1 00 20 */	addi r6, r1, 0x20
/* 801BEA20  30 06 FF FF */	addic r0, r6, -1
/* 801BEA24  7C 00 31 10 */	subfe r0, r0, r6
/* 801BEA28  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 801BEA2C  38 E0 00 00 */	li r7, 0
/* 801BEA30  48 09 64 8D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BEA34  80 61 00 08 */	lwz r3, 8(r1)
/* 801BEA38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BEA3C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801BEA40  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BEA44  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BEA48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BEA4C  C0 02 A6 0C */	lfs f0, lit_4249(r2)
/* 801BEA50  EC 5D 00 32 */	fmuls f2, f29, f0
/* 801BEA54  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEA58  80 63 0D 24 */	lwz r3, 0xd24(r3)
/* 801BEA5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801BEA60  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BEA64  EC 3F 00 2A */	fadds f1, f31, f0
/* 801BEA68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801BEA6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BEA70  EC 5E 00 2A */	fadds f2, f30, f0
/* 801BEA74  81 83 00 00 */	lwz r12, 0(r3)
/* 801BEA78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801BEA7C  7D 89 03 A6 */	mtctr r12
/* 801BEA80  4E 80 04 21 */	bctrl 
/* 801BEA84  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEA88  80 63 0D 24 */	lwz r3, 0xd24(r3)
/* 801BEA8C  FC 20 E8 90 */	fmr f1, f29
/* 801BEA90  FC 40 E8 90 */	fmr f2, f29
/* 801BEA94  81 83 00 00 */	lwz r12, 0(r3)
/* 801BEA98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BEA9C  7D 89 03 A6 */	mtctr r12
/* 801BEAA0  4E 80 04 21 */	bctrl 
/* 801BEAA4  38 61 00 50 */	addi r3, r1, 0x50
/* 801BEAA8  38 80 FF FF */	li r4, -1
/* 801BEAAC  48 09 4F 6D */	bl __dt__8CPaneMgrFv
lbl_801BEAB0:
/* 801BEAB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801BEAB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801BEAB8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801BEABC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801BEAC0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801BEAC4  80 DF 00 08 */	lwz r6, 8(r31)
/* 801BEAC8  4B E9 7C CD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801BEACC:
/* 801BEACC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 801BEAD0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801BEAD4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 801BEAD8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 801BEADC  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 801BEAE0  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 801BEAE4  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801BEAE8  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801BEAEC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801BEAF0  7C 08 03 A6 */	mtlr r0
/* 801BEAF4  38 21 01 00 */	addi r1, r1, 0x100
/* 801BEAF8  4E 80 00 20 */	blr 
