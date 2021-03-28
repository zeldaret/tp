lbl_80C47558:
/* 80C47558  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C4755C  7C 08 02 A6 */	mflr r0
/* 80C47560  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C47564  39 61 00 50 */	addi r11, r1, 0x50
/* 80C47568  4B 71 AC 74 */	b _savegpr_29
/* 80C4756C  7C 7E 1B 78 */	mr r30, r3
/* 80C47570  3C 60 80 C4 */	lis r3, l_DATA@ha
/* 80C47574  3B E3 79 50 */	addi r31, r3, l_DATA@l
/* 80C47578  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 80C4757C  28 00 00 00 */	cmplwi r0, 0
/* 80C47580  40 82 00 0C */	bne lbl_80C4758C
/* 80C47584  38 60 00 01 */	li r3, 1
/* 80C47588  48 00 02 14 */	b lbl_80C4779C
lbl_80C4758C:
/* 80C4758C  28 00 00 01 */	cmplwi r0, 1
/* 80C47590  40 82 01 9C */	bne lbl_80C4772C
/* 80C47594  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C47598  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4759C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C475A0  3B BF 00 00 */	addi r29, r31, 0
/* 80C475A4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C475A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C475AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C475B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C475B4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C475B8  4B 3C 4E 24 */	b mDoMtx_YrotS__FPA4_fs
/* 80C475BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C475C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C475C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C475C8  38 BE 04 F8 */	addi r5, r30, 0x4f8
/* 80C475CC  4B 6F F7 A0 */	b PSMTXMultVec
/* 80C475D0  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80C475D4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C475D8  40 82 00 10 */	bne lbl_80C475E8
/* 80C475DC  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80C475E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C475E4  41 82 00 CC */	beq lbl_80C476B0
lbl_80C475E8:
/* 80C475E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C475EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C475F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C475F4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80C475F8  28 00 00 29 */	cmplwi r0, 0x29
/* 80C475FC  40 82 00 B4 */	bne lbl_80C476B0
/* 80C47600  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80C47604  4B 3D 9D 54 */	b fpcEx_SearchByID__FUi
/* 80C47608  28 03 00 00 */	cmplwi r3, 0
/* 80C4760C  41 82 00 8C */	beq lbl_80C47698
/* 80C47610  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C47614  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C47618  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80C4761C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C47620  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C47624  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C47628  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C4762C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C47630  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C47634  38 61 00 14 */	addi r3, r1, 0x14
/* 80C47638  38 81 00 20 */	addi r4, r1, 0x20
/* 80C4763C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C47640  4B 61 F4 F4 */	b __mi__4cXyzCFRC3Vec
/* 80C47644  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C47648  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C4764C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C47650  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C47654  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C47658  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C4765C  38 61 00 08 */	addi r3, r1, 8
/* 80C47660  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C47664  4B 61 F8 E4 */	b normalizeZP__4cXyzFv
/* 80C47668  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80C4766C  7C 64 1B 78 */	mr r4, r3
/* 80C47670  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80C47674  4B 6F FA 64 */	b PSVECScale
/* 80C47678  38 00 00 13 */	li r0, 0x13
/* 80C4767C  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 80C47680  38 00 00 02 */	li r0, 2
/* 80C47684  98 1E 07 0C */	stb r0, 0x70c(r30)
/* 80C47688  38 7F 00 00 */	addi r3, r31, 0
/* 80C4768C  A8 03 00 08 */	lha r0, 8(r3)
/* 80C47690  B0 1E 07 0E */	sth r0, 0x70e(r30)
/* 80C47694  48 00 00 D8 */	b lbl_80C4776C
lbl_80C47698:
/* 80C47698  7F C3 F3 78 */	mr r3, r30
/* 80C4769C  48 00 01 19 */	bl hitPrtclSet__15daObjKnBullet_cFv
/* 80C476A0  7F C3 F3 78 */	mr r3, r30
/* 80C476A4  4B 3D 25 D8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C476A8  38 60 00 00 */	li r3, 0
/* 80C476AC  48 00 00 F0 */	b lbl_80C4779C
lbl_80C476B0:
/* 80C476B0  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80C476B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C476B8  41 82 00 34 */	beq lbl_80C476EC
/* 80C476BC  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80C476C0  4B 3D 9C 98 */	b fpcEx_SearchByID__FUi
/* 80C476C4  28 03 00 00 */	cmplwi r3, 0
/* 80C476C8  41 82 00 A4 */	beq lbl_80C4776C
/* 80C476CC  38 00 00 02 */	li r0, 2
/* 80C476D0  98 03 15 BD */	stb r0, 0x15bd(r3)
/* 80C476D4  7F C3 F3 78 */	mr r3, r30
/* 80C476D8  48 00 00 DD */	bl hitPrtclSet__15daObjKnBullet_cFv
/* 80C476DC  7F C3 F3 78 */	mr r3, r30
/* 80C476E0  4B 3D 25 9C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C476E4  38 60 00 00 */	li r3, 0
/* 80C476E8  48 00 00 B4 */	b lbl_80C4779C
lbl_80C476EC:
/* 80C476EC  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80C476F0  4B 43 CB D0 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80C476F4  28 03 00 00 */	cmplwi r3, 0
/* 80C476F8  41 82 00 74 */	beq lbl_80C4776C
/* 80C476FC  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80C47700  4B 3D 9C 58 */	b fpcEx_SearchByID__FUi
/* 80C47704  28 03 00 00 */	cmplwi r3, 0
/* 80C47708  41 82 00 64 */	beq lbl_80C4776C
/* 80C4770C  38 00 00 01 */	li r0, 1
/* 80C47710  98 03 15 BD */	stb r0, 0x15bd(r3)
/* 80C47714  7F C3 F3 78 */	mr r3, r30
/* 80C47718  48 00 00 9D */	bl hitPrtclSet__15daObjKnBullet_cFv
/* 80C4771C  7F C3 F3 78 */	mr r3, r30
/* 80C47720  4B 3D 25 5C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C47724  38 60 00 00 */	li r3, 0
/* 80C47728  48 00 00 74 */	b lbl_80C4779C
lbl_80C4772C:
/* 80C4772C  28 00 00 02 */	cmplwi r0, 2
/* 80C47730  40 82 00 3C */	bne lbl_80C4776C
/* 80C47734  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80C47738  4B 43 CB 88 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80C4773C  28 03 00 00 */	cmplwi r3, 0
/* 80C47740  41 82 00 2C */	beq lbl_80C4776C
/* 80C47744  7F C3 F3 78 */	mr r3, r30
/* 80C47748  48 00 00 6D */	bl hitPrtclSet__15daObjKnBullet_cFv
/* 80C4774C  7F C3 F3 78 */	mr r3, r30
/* 80C47750  4B 3D 25 2C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C47754  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C47758  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C4775C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C47760  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C47764  38 60 00 00 */	li r3, 0
/* 80C47768  48 00 00 34 */	b lbl_80C4779C
lbl_80C4776C:
/* 80C4776C  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C47770  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C47774  4B 62 7E D4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C47778  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C4777C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C47780  4B 62 7F 88 */	b SetR__8cM3dGSphFf
/* 80C47784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C47788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4778C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C47790  38 9E 05 D4 */	addi r4, r30, 0x5d4
/* 80C47794  4B 61 D4 14 */	b Set__4cCcSFP8cCcD_Obj
/* 80C47798  38 60 00 01 */	li r3, 1
lbl_80C4779C:
/* 80C4779C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C477A0  4B 71 AA 88 */	b _restgpr_29
/* 80C477A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C477A8  7C 08 03 A6 */	mtlr r0
/* 80C477AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C477B0  4E 80 00 20 */	blr 
