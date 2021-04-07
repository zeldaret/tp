lbl_801DD50C:
/* 801DD50C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 801DD510  7C 08 02 A6 */	mflr r0
/* 801DD514  90 01 01 54 */	stw r0, 0x154(r1)
/* 801DD518  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 801DD51C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 801DD520  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 801DD524  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 801DD528  39 61 01 30 */	addi r11, r1, 0x130
/* 801DD52C  48 18 4C A9 */	bl _savegpr_27
/* 801DD530  7C 7D 1B 78 */	mr r29, r3
/* 801DD534  80 03 00 08 */	lwz r0, 8(r3)
/* 801DD538  28 00 00 00 */	cmplwi r0, 0
/* 801DD53C  41 82 03 D0 */	beq lbl_801DD90C
/* 801DD540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DD544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DD548  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801DD54C  80 7D 02 B4 */	lwz r3, 0x2b4(r29)
/* 801DD550  8B 83 00 B2 */	lbz r28, 0xb2(r3)
/* 801DD554  38 80 00 FF */	li r4, 0xff
/* 801DD558  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD55C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DD560  7D 89 03 A6 */	mtctr r12
/* 801DD564  4E 80 04 21 */	bctrl 
/* 801DD568  80 7D 02 B4 */	lwz r3, 0x2b4(r29)
/* 801DD56C  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD570  FC 40 08 90 */	fmr f2, f1
/* 801DD574  C0 62 A8 F8 */	lfs f3, lit_4054(r2)
/* 801DD578  C0 82 A8 FC */	lfs f4, lit_4055(r2)
/* 801DD57C  38 80 00 00 */	li r4, 0
/* 801DD580  38 A0 00 00 */	li r5, 0
/* 801DD584  38 C0 00 00 */	li r6, 0
/* 801DD588  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD58C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801DD590  7D 89 03 A6 */	mtctr r12
/* 801DD594  4E 80 04 21 */	bctrl 
/* 801DD598  80 7D 02 B4 */	lwz r3, 0x2b4(r29)
/* 801DD59C  7F 84 E3 78 */	mr r4, r28
/* 801DD5A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD5A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DD5A8  7D 89 03 A6 */	mtctr r12
/* 801DD5AC  4E 80 04 21 */	bctrl 
/* 801DD5B0  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801DD5B4  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD5B8  FC 40 08 90 */	fmr f2, f1
/* 801DD5BC  7F E4 FB 78 */	mr r4, r31
/* 801DD5C0  48 11 B9 15 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801DD5C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DD5C8  38 81 00 18 */	addi r4, r1, 0x18
/* 801DD5CC  38 A1 00 14 */	addi r5, r1, 0x14
/* 801DD5D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 801DD5D4  48 18 2F 75 */	bl GXGetScissor
/* 801DD5D8  38 61 00 88 */	addi r3, r1, 0x88
/* 801DD5DC  48 07 63 55 */	bl __ct__8CPaneMgrFv
/* 801DD5E0  38 61 00 4C */	addi r3, r1, 0x4c
/* 801DD5E4  38 81 00 88 */	addi r4, r1, 0x88
/* 801DD5E8  80 BD 01 EC */	lwz r5, 0x1ec(r29)
/* 801DD5EC  38 C1 00 58 */	addi r6, r1, 0x58
/* 801DD5F0  38 E0 00 00 */	li r7, 0
/* 801DD5F4  39 00 00 00 */	li r8, 0
/* 801DD5F8  39 20 00 00 */	li r9, 0
/* 801DD5FC  48 07 76 95 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801DD600  C3 E1 00 4C */	lfs f31, 0x4c(r1)
/* 801DD604  C3 C1 00 50 */	lfs f30, 0x50(r1)
/* 801DD608  38 61 00 40 */	addi r3, r1, 0x40
/* 801DD60C  38 81 00 88 */	addi r4, r1, 0x88
/* 801DD610  80 BD 01 EC */	lwz r5, 0x1ec(r29)
/* 801DD614  38 C1 00 58 */	addi r6, r1, 0x58
/* 801DD618  38 E0 00 03 */	li r7, 3
/* 801DD61C  39 00 00 00 */	li r8, 0
/* 801DD620  39 20 00 00 */	li r9, 0
/* 801DD624  48 07 76 6D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801DD628  C0 02 A8 E0 */	lfs f0, lit_3827(r2)
/* 801DD62C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 801DD630  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DD634  EC 40 08 24 */	fdivs f2, f0, f1
/* 801DD638  EC 7E 08 24 */	fdivs f3, f30, f1
/* 801DD63C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801DD640  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801DD644  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801DD648  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801DD64C  EC 00 08 24 */	fdivs f0, f0, f1
/* 801DD650  EC 02 00 2A */	fadds f0, f2, f0
/* 801DD654  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DD658  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801DD65C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801DD660  EC 00 08 24 */	fdivs f0, f0, f1
/* 801DD664  EC 03 00 2A */	fadds f0, f3, f0
/* 801DD668  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801DD66C  7F E3 FB 78 */	mr r3, r31
/* 801DD670  38 81 00 30 */	addi r4, r1, 0x30
/* 801DD674  48 10 BA 4D */	bl func_802E90C0
/* 801DD678  7F E3 FB 78 */	mr r3, r31
/* 801DD67C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DD680  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DD684  7D 89 03 A6 */	mtctr r12
/* 801DD688  4E 80 04 21 */	bctrl 
/* 801DD68C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801DD690  C0 3D 03 58 */	lfs f1, 0x358(r29)
/* 801DD694  C0 42 A8 E0 */	lfs f2, lit_3827(r2)
/* 801DD698  7F E4 FB 78 */	mr r4, r31
/* 801DD69C  48 11 B8 39 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801DD6A0  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801DD6A4  28 00 00 02 */	cmplwi r0, 2
/* 801DD6A8  41 82 00 0C */	beq lbl_801DD6B4
/* 801DD6AC  28 00 00 01 */	cmplwi r0, 1
/* 801DD6B0  40 82 00 20 */	bne lbl_801DD6D0
lbl_801DD6B4:
/* 801DD6B4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801DD6B8  C0 3D 03 58 */	lfs f1, 0x358(r29)
/* 801DD6BC  C0 1D 03 5C */	lfs f0, 0x35c(r29)
/* 801DD6C0  EC 21 00 2A */	fadds f1, f1, f0
/* 801DD6C4  C0 42 A8 E0 */	lfs f2, lit_3827(r2)
/* 801DD6C8  7F E4 FB 78 */	mr r4, r31
/* 801DD6CC  48 11 B8 09 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801DD6D0:
/* 801DD6D0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801DD6D4  C8 22 A9 08 */	lfd f1, lit_4058(r2)
/* 801DD6D8  90 01 00 FC */	stw r0, 0xfc(r1)
/* 801DD6DC  3C 60 43 30 */	lis r3, 0x4330
/* 801DD6E0  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 801DD6E4  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 801DD6E8  EC 60 08 28 */	fsubs f3, f0, f1
/* 801DD6EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801DD6F0  90 01 01 04 */	stw r0, 0x104(r1)
/* 801DD6F4  90 61 01 00 */	stw r3, 0x100(r1)
/* 801DD6F8  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 801DD6FC  EC 40 08 28 */	fsubs f2, f0, f1
/* 801DD700  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801DD704  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 801DD708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DD70C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 801DD710  90 61 01 08 */	stw r3, 0x108(r1)
/* 801DD714  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 801DD718  EC 00 08 28 */	fsubs f0, f0, f1
/* 801DD71C  EC 02 00 2A */	fadds f0, f2, f0
/* 801DD720  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801DD724  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801DD728  90 01 01 14 */	stw r0, 0x114(r1)
/* 801DD72C  90 61 01 10 */	stw r3, 0x110(r1)
/* 801DD730  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 801DD734  EC 00 08 28 */	fsubs f0, f0, f1
/* 801DD738  EC 03 00 2A */	fadds f0, f3, f0
/* 801DD73C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DD740  7F E3 FB 78 */	mr r3, r31
/* 801DD744  38 81 00 20 */	addi r4, r1, 0x20
/* 801DD748  48 10 B9 79 */	bl func_802E90C0
/* 801DD74C  7F E3 FB 78 */	mr r3, r31
/* 801DD750  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DD754  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DD758  7D 89 03 A6 */	mtctr r12
/* 801DD75C  4E 80 04 21 */	bctrl 
/* 801DD760  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801DD764  28 00 00 02 */	cmplwi r0, 2
/* 801DD768  41 82 00 20 */	beq lbl_801DD788
/* 801DD76C  28 00 00 01 */	cmplwi r0, 1
/* 801DD770  41 82 00 18 */	beq lbl_801DD788
/* 801DD774  80 7D 03 0C */	lwz r3, 0x30c(r29)
/* 801DD778  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD77C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD780  7D 89 03 A6 */	mtctr r12
/* 801DD784  4E 80 04 21 */	bctrl 
lbl_801DD788:
/* 801DD788  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801DD78C  28 00 00 03 */	cmplwi r0, 3
/* 801DD790  41 82 00 24 */	beq lbl_801DD7B4
/* 801DD794  28 00 00 04 */	cmplwi r0, 4
/* 801DD798  41 82 00 1C */	beq lbl_801DD7B4
/* 801DD79C  28 00 00 05 */	cmplwi r0, 5
/* 801DD7A0  41 82 00 14 */	beq lbl_801DD7B4
/* 801DD7A4  28 00 00 06 */	cmplwi r0, 6
/* 801DD7A8  41 82 00 0C */	beq lbl_801DD7B4
/* 801DD7AC  28 00 00 07 */	cmplwi r0, 7
/* 801DD7B0  40 82 01 3C */	bne lbl_801DD8EC
lbl_801DD7B4:
/* 801DD7B4  80 7D 02 B4 */	lwz r3, 0x2b4(r29)
/* 801DD7B8  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD7BC  FC 40 08 90 */	fmr f2, f1
/* 801DD7C0  C0 62 A8 F8 */	lfs f3, lit_4054(r2)
/* 801DD7C4  C0 82 A8 FC */	lfs f4, lit_4055(r2)
/* 801DD7C8  38 80 00 00 */	li r4, 0
/* 801DD7CC  38 A0 00 00 */	li r5, 0
/* 801DD7D0  38 C0 00 00 */	li r6, 0
/* 801DD7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD7D8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801DD7DC  7D 89 03 A6 */	mtctr r12
/* 801DD7E0  4E 80 04 21 */	bctrl 
/* 801DD7E4  88 1D 03 6E */	lbz r0, 0x36e(r29)
/* 801DD7E8  7C 7D 02 14 */	add r3, r29, r0
/* 801DD7EC  88 1D 03 6F */	lbz r0, 0x36f(r29)
/* 801DD7F0  1C 00 00 06 */	mulli r0, r0, 6
/* 801DD7F4  7C 63 02 14 */	add r3, r3, r0
/* 801DD7F8  88 63 03 AC */	lbz r3, 0x3ac(r3)
/* 801DD7FC  38 03 FF FF */	addi r0, r3, -1
/* 801DD800  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 801DD804  3B C0 00 00 */	li r30, 0
/* 801DD808  3B 80 00 00 */	li r28, 0
lbl_801DD80C:
/* 801DD80C  38 1C 00 28 */	addi r0, r28, 0x28
/* 801DD810  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801DD814  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD818  FC 40 08 90 */	fmr f2, f1
/* 801DD81C  7F E4 FB 78 */	mr r4, r31
/* 801DD820  48 11 B6 B5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801DD824  3B DE 00 01 */	addi r30, r30, 1
/* 801DD828  2C 1E 00 02 */	cmpwi r30, 2
/* 801DD82C  3B 9C 00 04 */	addi r28, r28, 4
/* 801DD830  41 80 FF DC */	blt lbl_801DD80C
/* 801DD834  3B C0 00 00 */	li r30, 0
/* 801DD838  3B 80 00 00 */	li r28, 0
/* 801DD83C  57 64 1D 78 */	rlwinm r4, r27, 3, 0x15, 0x1c
/* 801DD840  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha /* 0x803BF81C@ha */
/* 801DD844  38 03 F8 1C */	addi r0, r3, letter_data__12dMenu_Letter@l /* 0x803BF81C@l */
/* 801DD848  7C 60 22 14 */	add r3, r0, r4
/* 801DD84C  3B 63 00 04 */	addi r27, r3, 4
lbl_801DD850:
/* 801DD850  39 00 00 00 */	li r8, 0
/* 801DD854  7C 9D E2 14 */	add r4, r29, r28
/* 801DD858  80 64 02 F4 */	lwz r3, 0x2f4(r4)
/* 801DD85C  28 03 00 00 */	cmplwi r3, 0
/* 801DD860  41 82 00 08 */	beq lbl_801DD868
/* 801DD864  81 03 00 04 */	lwz r8, 4(r3)
lbl_801DD868:
/* 801DD868  80 64 02 EC */	lwz r3, 0x2ec(r4)
/* 801DD86C  80 E3 00 04 */	lwz r7, 4(r3)
/* 801DD870  38 00 00 00 */	li r0, 0
/* 801DD874  90 01 00 08 */	stw r0, 8(r1)
/* 801DD878  80 7D 03 10 */	lwz r3, 0x310(r29)
/* 801DD87C  A0 9B 00 00 */	lhz r4, 0(r27)
/* 801DD880  88 BD 03 E3 */	lbz r5, 0x3e3(r29)
/* 801DD884  38 05 FF FF */	addi r0, r5, -1
/* 801DD888  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801DD88C  38 C0 00 0C */	li r6, 0xc
/* 801DD890  39 20 00 00 */	li r9, 0
/* 801DD894  39 40 00 00 */	li r10, 0
/* 801DD898  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD89C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DD8A0  7D 89 03 A6 */	mtctr r12
/* 801DD8A4  4E 80 04 21 */	bctrl 
/* 801DD8A8  3B DE 00 01 */	addi r30, r30, 1
/* 801DD8AC  2C 1E 00 02 */	cmpwi r30, 2
/* 801DD8B0  3B 9C 00 04 */	addi r28, r28, 4
/* 801DD8B4  41 80 FF 9C */	blt lbl_801DD850
/* 801DD8B8  80 7D 02 F0 */	lwz r3, 0x2f0(r29)
/* 801DD8BC  80 83 00 04 */	lwz r4, 4(r3)
/* 801DD8C0  80 7D 03 10 */	lwz r3, 0x310(r29)
/* 801DD8C4  C0 22 A9 00 */	lfs f1, lit_4056(r2)
/* 801DD8C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD8CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DD8D0  7D 89 03 A6 */	mtctr r12
/* 801DD8D4  4E 80 04 21 */	bctrl 
/* 801DD8D8  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801DD8DC  28 00 00 04 */	cmplwi r0, 4
/* 801DD8E0  40 82 00 0C */	bne lbl_801DD8EC
/* 801DD8E4  80 7D 03 14 */	lwz r3, 0x314(r29)
/* 801DD8E8  48 05 E4 D9 */	bl draw__15dMsgScrnArrow_cFv
lbl_801DD8EC:
/* 801DD8EC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 801DD8F0  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD8F4  FC 40 08 90 */	fmr f2, f1
/* 801DD8F8  7F E4 FB 78 */	mr r4, r31
/* 801DD8FC  48 11 B5 D9 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801DD900  38 61 00 88 */	addi r3, r1, 0x88
/* 801DD904  38 80 FF FF */	li r4, -1
/* 801DD908  48 07 61 11 */	bl __dt__8CPaneMgrFv
lbl_801DD90C:
/* 801DD90C  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 801DD910  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 801DD914  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 801DD918  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 801DD91C  39 61 01 30 */	addi r11, r1, 0x130
/* 801DD920  48 18 49 01 */	bl _restgpr_27
/* 801DD924  80 01 01 54 */	lwz r0, 0x154(r1)
/* 801DD928  7C 08 03 A6 */	mtlr r0
/* 801DD92C  38 21 01 50 */	addi r1, r1, 0x150
/* 801DD930  4E 80 00 20 */	blr 
