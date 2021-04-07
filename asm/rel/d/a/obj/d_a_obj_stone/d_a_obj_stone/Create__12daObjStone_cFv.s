lbl_80CE9540:
/* 80CE9540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE9544  7C 08 02 A6 */	mflr r0
/* 80CE9548  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE954C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CE9550  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CE9554  7C 7E 1B 78 */	mr r30, r3
/* 80CE9558  3C 60 80 CF */	lis r3, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CE955C  3B E3 CA B4 */	addi r31, r3, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CE9560  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CE9564  B0 1E 09 00 */	sth r0, 0x900(r30)
/* 80CE9568  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CE956C  B0 1E 09 02 */	sth r0, 0x902(r30)
/* 80CE9570  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80CE9574  B0 1E 09 04 */	sth r0, 0x904(r30)
/* 80CE9578  38 00 00 00 */	li r0, 0
/* 80CE957C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CE9580  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80CE9584  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80CE9588  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CE958C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE9590  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CE9594  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE9598  54 00 10 3A */	slwi r0, r0, 2
/* 80CE959C  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80CE95A0  38 9F 00 CC */	addi r4, r31, 0xcc
/* 80CE95A4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80CE95A8  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 80CE95AC  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CE95B0  4B 38 C9 A9 */	bl SetWall__12dBgS_AcchCirFff
/* 80CE95B4  38 00 00 00 */	li r0, 0
/* 80CE95B8  90 01 00 08 */	stw r0, 8(r1)
/* 80CE95BC  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CE95C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE95C4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CE95C8  7F C6 F3 78 */	mr r6, r30
/* 80CE95CC  38 E0 00 01 */	li r7, 1
/* 80CE95D0  39 1E 07 4C */	addi r8, r30, 0x74c
/* 80CE95D4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CE95D8  39 40 00 00 */	li r10, 0
/* 80CE95DC  4B 38 CC 6D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CE95E0  38 00 00 02 */	li r0, 2
/* 80CE95E4  98 1E 07 48 */	stb r0, 0x748(r30)
/* 80CE95E8  38 7E 05 88 */	addi r3, r30, 0x588
/* 80CE95EC  4B 38 F8 89 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 80CE95F0  38 7E 05 88 */	addi r3, r30, 0x588
/* 80CE95F4  4B 38 F8 C9 */	bl SetBomb__16dBgS_PolyPassChkFv
/* 80CE95F8  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80CE95FC  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE9600  38 9F 00 70 */	addi r4, r31, 0x70
/* 80CE9604  7C 84 00 AE */	lbzx r4, r4, r0
/* 80CE9608  38 A0 00 FF */	li r5, 0xff
/* 80CE960C  7F C6 F3 78 */	mr r6, r30
/* 80CE9610  4B 39 A2 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CE9614  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80CE9618  38 9F 00 08 */	addi r4, r31, 8
/* 80CE961C  4B 39 B4 19 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CE9620  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 80CE9624  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE9628  54 00 10 3A */	slwi r0, r0, 2
/* 80CE962C  38 9F 00 48 */	addi r4, r31, 0x48
/* 80CE9630  7C 24 04 2E */	lfsx f1, r4, r0
/* 80CE9634  4B 58 60 D5 */	bl SetR__8cM3dGSphFf
/* 80CE9638  38 1E 07 8C */	addi r0, r30, 0x78c
/* 80CE963C  90 1E 08 0C */	stw r0, 0x80c(r30)
/* 80CE9640  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE9644  28 00 00 00 */	cmplwi r0, 0
/* 80CE9648  40 82 00 0C */	bne lbl_80CE9654
/* 80CE964C  38 00 00 02 */	li r0, 2
/* 80CE9650  98 1E 07 DC */	stb r0, 0x7dc(r30)
lbl_80CE9654:
/* 80CE9654  7F C3 F3 78 */	mr r3, r30
/* 80CE9658  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80CE965C  FC 40 08 90 */	fmr f2, f1
/* 80CE9660  FC 60 08 90 */	fmr f3, f1
/* 80CE9664  C0 9F 01 00 */	lfs f4, 0x100(r31)
/* 80CE9668  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE966C  54 00 10 3A */	slwi r0, r0, 2
/* 80CE9670  38 9F 00 48 */	addi r4, r31, 0x48
/* 80CE9674  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CE9678  EC 84 00 32 */	fmuls f4, f4, f0
/* 80CE967C  4B 33 0E E9 */	bl fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff
/* 80CE9680  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CE9684  60 00 00 10 */	ori r0, r0, 0x10
/* 80CE9688  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CE968C  38 00 00 2A */	li r0, 0x2a
/* 80CE9690  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80CE9694  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80CE9698  60 00 00 10 */	ori r0, r0, 0x10
/* 80CE969C  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80CE96A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE96A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CE96A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CE96AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CE96B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE96B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CE96B8  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CE96BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE96C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE96C4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE96C8  4B 38 D3 E5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CE96CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CE96D0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CE96D4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CE96D8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CE96DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CE96E0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80CE96E4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CE96E8  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80CE96EC  38 00 00 1E */	li r0, 0x1e
/* 80CE96F0  98 1E 09 4D */	stb r0, 0x94d(r30)
/* 80CE96F4  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CE96F8  28 00 00 01 */	cmplwi r0, 1
/* 80CE96FC  40 82 00 10 */	bne lbl_80CE970C
/* 80CE9700  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80CE9704  60 00 00 02 */	ori r0, r0, 2
/* 80CE9708  98 1E 04 9A */	stb r0, 0x49a(r30)
lbl_80CE970C:
/* 80CE970C  7F C3 F3 78 */	mr r3, r30
/* 80CE9710  48 00 18 79 */	bl init_modePutWait__12daObjStone_cFv
/* 80CE9714  7F C3 F3 78 */	mr r3, r30
/* 80CE9718  4B FF FC AD */	bl initBaseMtx__12daObjStone_cFv
/* 80CE971C  88 BE 09 06 */	lbz r5, 0x906(r30)
/* 80CE9720  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE9724  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE9728  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CE972C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CE9730  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE9734  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CE9738  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80CE973C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE9740  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE9744  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CE9748  7C 07 07 74 */	extsb r7, r0
/* 80CE974C  38 00 00 00 */	li r0, 0
/* 80CE9750  90 01 00 08 */	stw r0, 8(r1)
/* 80CE9754  38 60 01 71 */	li r3, 0x171
/* 80CE9758  28 1E 00 00 */	cmplwi r30, 0
/* 80CE975C  41 82 00 0C */	beq lbl_80CE9768
/* 80CE9760  80 9E 00 04 */	lwz r4, 4(r30)
/* 80CE9764  48 00 00 08 */	b lbl_80CE976C
lbl_80CE9768:
/* 80CE9768  38 80 FF FF */	li r4, -1
lbl_80CE976C:
/* 80CE976C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CE9770  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80CE9774  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80CE9778  39 40 FF FF */	li r10, -1
/* 80CE977C  4B 33 07 75 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80CE9780  38 7E 09 70 */	addi r3, r30, 0x970
/* 80CE9784  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE9788  38 A0 00 01 */	li r5, 1
/* 80CE978C  81 9E 09 80 */	lwz r12, 0x980(r30)
/* 80CE9790  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CE9794  7D 89 03 A6 */	mtctr r12
/* 80CE9798  4E 80 04 21 */	bctrl 
/* 80CE979C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CE97A0  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 80CE97A4  38 60 00 01 */	li r3, 1
/* 80CE97A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CE97AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CE97B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE97B4  7C 08 03 A6 */	mtlr r0
/* 80CE97B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE97BC  4E 80 00 20 */	blr 
