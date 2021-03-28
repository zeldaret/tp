lbl_809C5430:
/* 809C5430  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 809C5434  7C 08 02 A6 */	mflr r0
/* 809C5438  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809C543C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809C5440  4B 99 CD 90 */	b _savegpr_26
/* 809C5444  7C 7F 1B 78 */	mr r31, r3
/* 809C5448  7C 9A 23 78 */	mr r26, r4
/* 809C544C  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C5450  3B C3 9D 98 */	addi r30, r3, m__17daNpc_grA_Param_c@l
/* 809C5454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C5458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C545C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 809C5460  3B A0 00 00 */	li r29, 0
/* 809C5464  3B 80 FF FF */	li r28, -1
/* 809C5468  7F 63 DB 78 */	mr r3, r27
/* 809C546C  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C5470  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C5474  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C5478  38 C0 00 03 */	li r6, 3
/* 809C547C  4B 68 2C 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C5480  28 03 00 00 */	cmplwi r3, 0
/* 809C5484  41 82 00 08 */	beq lbl_809C548C
/* 809C5488  83 83 00 00 */	lwz r28, 0(r3)
lbl_809C548C:
/* 809C548C  7F 63 DB 78 */	mr r3, r27
/* 809C5490  7F 44 D3 78 */	mr r4, r26
/* 809C5494  4B 68 28 B8 */	b getIsAddvance__16dEvent_manager_cFi
/* 809C5498  2C 03 00 00 */	cmpwi r3, 0
/* 809C549C  41 82 03 24 */	beq lbl_809C57C0
/* 809C54A0  28 1C 00 50 */	cmplwi r28, 0x50
/* 809C54A4  41 81 03 1C */	bgt lbl_809C57C0
/* 809C54A8  3C 60 80 9D */	lis r3, lit_7377@ha
/* 809C54AC  38 63 B0 6C */	addi r3, r3, lit_7377@l
/* 809C54B0  57 80 10 3A */	slwi r0, r28, 2
/* 809C54B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 809C54B8  7C 09 03 A6 */	mtctr r0
/* 809C54BC  4E 80 04 20 */	bctr 
lbl_809C54C0:
/* 809C54C0  38 60 00 0B */	li r3, 0xb
/* 809C54C4  4B 79 02 70 */	b daNpcF_offTmpBit__FUl
/* 809C54C8  38 60 00 0C */	li r3, 0xc
/* 809C54CC  4B 79 02 68 */	b daNpcF_offTmpBit__FUl
/* 809C54D0  38 60 00 52 */	li r3, 0x52
/* 809C54D4  4B 79 02 60 */	b daNpcF_offTmpBit__FUl
/* 809C54D8  7F E3 FB 78 */	mr r3, r31
/* 809C54DC  38 80 00 13 */	li r4, 0x13
/* 809C54E0  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C54E4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C54E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C54EC  7D 89 03 A6 */	mtctr r12
/* 809C54F0  4E 80 04 21 */	bctrl 
/* 809C54F4  7F E3 FB 78 */	mr r3, r31
/* 809C54F8  38 80 00 19 */	li r4, 0x19
/* 809C54FC  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5500  38 A0 00 00 */	li r5, 0
/* 809C5504  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C5508  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C550C  7D 89 03 A6 */	mtctr r12
/* 809C5510  4E 80 04 21 */	bctrl 
/* 809C5514  7F E3 FB 78 */	mr r3, r31
/* 809C5518  38 80 00 00 */	li r4, 0
/* 809C551C  4B FF DB 55 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5520  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C5524  80 63 00 04 */	lwz r3, 4(r3)
/* 809C5528  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C552C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C5530  38 63 00 90 */	addi r3, r3, 0x90
/* 809C5534  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809C5538  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809C553C  4B 98 0F 74 */	b PSMTXCopy
/* 809C5540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C5548  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809C554C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 809C5550  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809C5554  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 809C5558  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809C555C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 809C5560  48 00 02 60 */	b lbl_809C57C0
lbl_809C5564:
/* 809C5564  7F E3 FB 78 */	mr r3, r31
/* 809C5568  38 80 00 29 */	li r4, 0x29
/* 809C556C  38 A0 00 00 */	li r5, 0
/* 809C5570  4B 78 E7 AC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C5574  48 00 02 4C */	b lbl_809C57C0
lbl_809C5578:
/* 809C5578  7F E3 FB 78 */	mr r3, r31
/* 809C557C  38 80 00 00 */	li r4, 0
/* 809C5580  4B FF DA F1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5584  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 809C5588  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C558C  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 809C5590  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 809C5594  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C5598  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 809C559C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 809C55A0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 809C55A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C55A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C55AC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809C55B0  4B 64 6E 2C */	b mDoMtx_YrotS__FPA4_fs
/* 809C55B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C55B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C55BC  38 81 00 70 */	addi r4, r1, 0x70
/* 809C55C0  7C 85 23 78 */	mr r5, r4
/* 809C55C4  4B 98 17 A8 */	b PSMTXMultVec
/* 809C55C8  38 61 00 70 */	addi r3, r1, 0x70
/* 809C55CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809C55D0  7C 65 1B 78 */	mr r5, r3
/* 809C55D4  4B 98 1A BC */	b PSVECAdd
/* 809C55D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C55DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C55E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809C55E4  38 81 00 70 */	addi r4, r1, 0x70
/* 809C55E8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809C55EC  38 05 20 00 */	addi r0, r5, 0x2000
/* 809C55F0  7C 05 07 34 */	extsh r5, r0
/* 809C55F4  38 C0 00 00 */	li r6, 0
/* 809C55F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809C55FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809C5600  7D 89 03 A6 */	mtctr r12
/* 809C5604  4E 80 04 21 */	bctrl 
/* 809C5608  48 00 01 B8 */	b lbl_809C57C0
lbl_809C560C:
/* 809C560C  7F E3 FB 78 */	mr r3, r31
/* 809C5610  38 80 00 29 */	li r4, 0x29
/* 809C5614  38 A0 00 00 */	li r5, 0
/* 809C5618  4B 78 E7 04 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C561C  48 00 01 A4 */	b lbl_809C57C0
lbl_809C5620:
/* 809C5620  7F E3 FB 78 */	mr r3, r31
/* 809C5624  38 80 00 03 */	li r4, 3
/* 809C5628  4B FF DA 49 */	bl setLookMode__11daNpc_grA_cFi
/* 809C562C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C5630  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C5634  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809C5638  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C563C  4B 78 B0 80 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809C5640  48 00 01 80 */	b lbl_809C57C0
lbl_809C5644:
/* 809C5644  7F E3 FB 78 */	mr r3, r31
/* 809C5648  38 80 00 29 */	li r4, 0x29
/* 809C564C  38 A0 00 00 */	li r5, 0
/* 809C5650  4B 78 E6 CC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C5654  48 00 01 6C */	b lbl_809C57C0
lbl_809C5658:
/* 809C5658  7F E3 FB 78 */	mr r3, r31
/* 809C565C  38 80 00 00 */	li r4, 0
/* 809C5660  4B FF DA 11 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5664  48 00 01 5C */	b lbl_809C57C0
lbl_809C5668:
/* 809C5668  7F E3 FB 78 */	mr r3, r31
/* 809C566C  38 80 00 12 */	li r4, 0x12
/* 809C5670  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C5674  38 A0 00 01 */	li r5, 1
/* 809C5678  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C567C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5680  7D 89 03 A6 */	mtctr r12
/* 809C5684  4E 80 04 21 */	bctrl 
/* 809C5688  7F E3 FB 78 */	mr r3, r31
/* 809C568C  38 80 00 17 */	li r4, 0x17
/* 809C5690  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5694  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C5698  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C569C  7D 89 03 A6 */	mtctr r12
/* 809C56A0  4E 80 04 21 */	bctrl 
/* 809C56A4  48 00 01 1C */	b lbl_809C57C0
lbl_809C56A8:
/* 809C56A8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C56AC  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C56B0  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C56B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C56B8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C56BC  38 00 01 2C */	li r0, 0x12c
/* 809C56C0  90 1F 09 60 */	stw r0, 0x960(r31)
/* 809C56C4  48 00 00 FC */	b lbl_809C57C0
lbl_809C56C8:
/* 809C56C8  38 00 00 01 */	li r0, 1
/* 809C56CC  98 1F 09 F2 */	stb r0, 0x9f2(r31)
/* 809C56D0  7F E3 FB 78 */	mr r3, r31
/* 809C56D4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C56D8  3C 84 00 01 */	addis r4, r4, 1
/* 809C56DC  38 04 80 00 */	addi r0, r4, -32768
/* 809C56E0  7C 04 07 34 */	extsh r4, r0
/* 809C56E4  4B 78 EB 6C */	b setAngle__8daNpcF_cFs
/* 809C56E8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C56EC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C56F0  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C56F4  48 00 00 CC */	b lbl_809C57C0
lbl_809C56F8:
/* 809C56F8  38 00 00 01 */	li r0, 1
/* 809C56FC  98 1F 15 0C */	stb r0, 0x150c(r31)
/* 809C5700  38 00 00 00 */	li r0, 0
/* 809C5704  98 1F 09 F2 */	stb r0, 0x9f2(r31)
/* 809C5708  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809C570C  4B 78 B4 B0 */	b reverse__13daNpcF_Path_cFv
/* 809C5710  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809C5714  4B 78 B4 CC */	b setNextIdx__13daNpcF_Path_cFv
/* 809C5718  38 00 01 18 */	li r0, 0x118
/* 809C571C  90 1F 09 60 */	stw r0, 0x960(r31)
/* 809C5720  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E1@ha */
/* 809C5724  38 03 01 E1 */	addi r0, r3, 0x01E1 /* 0x000501E1@l */
/* 809C5728  90 01 00 28 */	stw r0, 0x28(r1)
/* 809C572C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C5730  38 81 00 28 */	addi r4, r1, 0x28
/* 809C5734  38 A0 FF FF */	li r5, -1
/* 809C5738  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C573C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C5740  7D 89 03 A6 */	mtctr r12
/* 809C5744  4E 80 04 21 */	bctrl 
/* 809C5748  48 00 00 78 */	b lbl_809C57C0
lbl_809C574C:
/* 809C574C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809C5750  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 809C5754  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 809C5758  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 809C575C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809C5760  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 809C5764  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 809C5768  EC 01 00 2A */	fadds f0, f1, f0
/* 809C576C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 809C5770  7F E3 FB 78 */	mr r3, r31
/* 809C5774  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C5778  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809C577C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C5780  4B 65 4F 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C5784  7C 65 1B 78 */	mr r5, r3
/* 809C5788  38 61 00 2C */	addi r3, r1, 0x2c
/* 809C578C  38 80 00 00 */	li r4, 0
/* 809C5790  38 C0 00 00 */	li r6, 0
/* 809C5794  4B 8A 1C 60 */	b __ct__5csXyzFsss
/* 809C5798  38 61 00 64 */	addi r3, r1, 0x64
/* 809C579C  38 80 00 21 */	li r4, 0x21
/* 809C57A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809C57A4  7C 05 07 74 */	extsb r5, r0
/* 809C57A8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 809C57AC  38 E0 00 00 */	li r7, 0
/* 809C57B0  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C57B4  C0 5E 06 B4 */	lfs f2, 0x6b4(r30)
/* 809C57B8  39 00 00 80 */	li r8, 0x80
/* 809C57BC  4B 65 69 18 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_809C57C0:
/* 809C57C0  28 1C 00 50 */	cmplwi r28, 0x50
/* 809C57C4  41 81 04 8C */	bgt lbl_809C5C50
/* 809C57C8  3C 60 80 9D */	lis r3, lit_7378@ha
/* 809C57CC  38 63 AF 28 */	addi r3, r3, lit_7378@l
/* 809C57D0  57 80 10 3A */	slwi r0, r28, 2
/* 809C57D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 809C57D8  7C 09 03 A6 */	mtctr r0
/* 809C57DC  4E 80 04 20 */	bctr 
lbl_809C57E0:
/* 809C57E0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 809C57E4  38 60 00 01 */	li r3, 1
/* 809C57E8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809C57EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C57F0  40 82 00 18 */	bne lbl_809C5808
/* 809C57F4  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C57F8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809C57FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C5800  41 82 00 08 */	beq lbl_809C5808
/* 809C5804  38 60 00 00 */	li r3, 0
lbl_809C5808:
/* 809C5808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C580C  41 82 00 0C */	beq lbl_809C5818
/* 809C5810  3B A0 00 01 */	li r29, 1
/* 809C5814  48 00 04 40 */	b lbl_809C5C54
lbl_809C5818:
/* 809C5818  80 64 00 04 */	lwz r3, 4(r4)
/* 809C581C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C5820  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C5824  38 63 00 90 */	addi r3, r3, 0x90
/* 809C5828  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809C582C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809C5830  4B 98 0C 80 */	b PSMTXCopy
/* 809C5834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C583C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809C5840  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809C5844  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809C5848  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809C584C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809C5850  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809C5854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C5858  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 809C585C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809C5860  38 00 00 FF */	li r0, 0xff
/* 809C5864  90 01 00 08 */	stw r0, 8(r1)
/* 809C5868  38 80 00 00 */	li r4, 0
/* 809C586C  90 81 00 0C */	stw r4, 0xc(r1)
/* 809C5870  38 00 FF FF */	li r0, -1
/* 809C5874  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C5878  90 81 00 14 */	stw r4, 0x14(r1)
/* 809C587C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809C5880  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809C5884  80 9F 15 1C */	lwz r4, 0x151c(r31)
/* 809C5888  38 A0 00 00 */	li r5, 0
/* 809C588C  38 C0 02 A3 */	li r6, 0x2a3
/* 809C5890  38 E1 00 58 */	addi r7, r1, 0x58
/* 809C5894  39 1F 01 0C */	addi r8, r31, 0x10c
/* 809C5898  39 3F 04 DC */	addi r9, r31, 0x4dc
/* 809C589C  39 40 00 00 */	li r10, 0
/* 809C58A0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C58A4  4B 68 7C 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809C58A8  90 7F 15 1C */	stw r3, 0x151c(r31)
/* 809C58AC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809C58B0  38 63 02 10 */	addi r3, r3, 0x210
/* 809C58B4  80 9F 15 1C */	lwz r4, 0x151c(r31)
/* 809C58B8  4B 68 60 60 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 809C58BC  28 03 00 00 */	cmplwi r3, 0
/* 809C58C0  41 82 03 94 */	beq lbl_809C5C54
/* 809C58C4  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 809C58C8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 809C58CC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 809C58D0  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 809C58D4  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 809C58D8  D0 43 00 AC */	stfs f2, 0xac(r3)
/* 809C58DC  48 00 03 78 */	b lbl_809C5C54
lbl_809C58E0:
/* 809C58E0  7F E3 FB 78 */	mr r3, r31
/* 809C58E4  38 80 00 00 */	li r4, 0
/* 809C58E8  38 A0 00 01 */	li r5, 1
/* 809C58EC  38 C0 00 00 */	li r6, 0
/* 809C58F0  4B 78 E4 94 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C58F4  2C 03 00 00 */	cmpwi r3, 0
/* 809C58F8  41 82 03 5C */	beq lbl_809C5C54
/* 809C58FC  3B A0 00 01 */	li r29, 1
/* 809C5900  48 00 03 54 */	b lbl_809C5C54
lbl_809C5904:
/* 809C5904  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809C5908  2C 00 00 06 */	cmpwi r0, 6
/* 809C590C  40 82 03 48 */	bne lbl_809C5C54
/* 809C5910  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 809C5914  2C 00 00 00 */	cmpwi r0, 0
/* 809C5918  40 81 03 3C */	ble lbl_809C5C54
/* 809C591C  3B A0 00 01 */	li r29, 1
/* 809C5920  48 00 03 34 */	b lbl_809C5C54
lbl_809C5924:
/* 809C5924  7F E3 FB 78 */	mr r3, r31
/* 809C5928  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C592C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 809C5930  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C5934  4B 65 4D DC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C5938  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C593C  7C 60 07 34 */	extsh r0, r3
/* 809C5940  7C 04 00 00 */	cmpw r4, r0
/* 809C5944  40 82 00 0C */	bne lbl_809C5950
/* 809C5948  3B A0 00 01 */	li r29, 1
/* 809C594C  48 00 03 08 */	b lbl_809C5C54
lbl_809C5950:
/* 809C5950  7F E3 FB 78 */	mr r3, r31
/* 809C5954  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C5958  4B 65 4D B8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C595C  7C 64 1B 78 */	mr r4, r3
/* 809C5960  7F E3 FB 78 */	mr r3, r31
/* 809C5964  38 A0 00 17 */	li r5, 0x17
/* 809C5968  38 C0 00 16 */	li r6, 0x16
/* 809C596C  38 E0 00 0F */	li r7, 0xf
/* 809C5970  4B 78 E7 34 */	b step__8daNpcF_cFsiii
/* 809C5974  2C 03 00 00 */	cmpwi r3, 0
/* 809C5978  41 82 02 DC */	beq lbl_809C5C54
/* 809C597C  7F E3 FB 78 */	mr r3, r31
/* 809C5980  38 80 00 17 */	li r4, 0x17
/* 809C5984  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5988  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C598C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5990  7D 89 03 A6 */	mtctr r12
/* 809C5994  4E 80 04 21 */	bctrl 
/* 809C5998  7F E3 FB 78 */	mr r3, r31
/* 809C599C  38 80 00 00 */	li r4, 0
/* 809C59A0  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C59A4  38 A0 00 00 */	li r5, 0
/* 809C59A8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C59AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C59B0  7D 89 03 A6 */	mtctr r12
/* 809C59B4  4E 80 04 21 */	bctrl 
/* 809C59B8  38 00 00 00 */	li r0, 0
/* 809C59BC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C59C0  48 00 02 94 */	b lbl_809C5C54
lbl_809C59C4:
/* 809C59C4  7F E3 FB 78 */	mr r3, r31
/* 809C59C8  38 80 00 00 */	li r4, 0
/* 809C59CC  38 A0 00 01 */	li r5, 1
/* 809C59D0  38 C0 00 00 */	li r6, 0
/* 809C59D4  4B 78 E3 B0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C59D8  2C 03 00 00 */	cmpwi r3, 0
/* 809C59DC  41 82 02 78 */	beq lbl_809C5C54
/* 809C59E0  3B A0 00 01 */	li r29, 1
/* 809C59E4  48 00 02 70 */	b lbl_809C5C54
lbl_809C59E8:
/* 809C59E8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C59EC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C59F0  7C 04 00 00 */	cmpw r4, r0
/* 809C59F4  40 82 00 0C */	bne lbl_809C5A00
/* 809C59F8  3B A0 00 01 */	li r29, 1
/* 809C59FC  48 00 02 58 */	b lbl_809C5C54
lbl_809C5A00:
/* 809C5A00  7F E3 FB 78 */	mr r3, r31
/* 809C5A04  38 A0 00 17 */	li r5, 0x17
/* 809C5A08  38 C0 00 16 */	li r6, 0x16
/* 809C5A0C  38 E0 00 0F */	li r7, 0xf
/* 809C5A10  4B 78 E6 94 */	b step__8daNpcF_cFsiii
/* 809C5A14  2C 03 00 00 */	cmpwi r3, 0
/* 809C5A18  41 82 02 3C */	beq lbl_809C5C54
/* 809C5A1C  7F E3 FB 78 */	mr r3, r31
/* 809C5A20  38 80 00 17 */	li r4, 0x17
/* 809C5A24  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5A28  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C5A2C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5A30  7D 89 03 A6 */	mtctr r12
/* 809C5A34  4E 80 04 21 */	bctrl 
/* 809C5A38  7F E3 FB 78 */	mr r3, r31
/* 809C5A3C  38 80 00 00 */	li r4, 0
/* 809C5A40  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5A44  38 A0 00 00 */	li r5, 0
/* 809C5A48  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C5A4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5A50  7D 89 03 A6 */	mtctr r12
/* 809C5A54  4E 80 04 21 */	bctrl 
/* 809C5A58  38 00 00 00 */	li r0, 0
/* 809C5A5C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C5A60  48 00 01 F4 */	b lbl_809C5C54
lbl_809C5A64:
/* 809C5A64  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C5A68  2C 00 00 1B */	cmpwi r0, 0x1b
/* 809C5A6C  40 82 00 FC */	bne lbl_809C5B68
/* 809C5A70  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 809C5A74  38 60 00 01 */	li r3, 1
/* 809C5A78  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809C5A7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C5A80  40 82 00 18 */	bne lbl_809C5A98
/* 809C5A84  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C5A88  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809C5A8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C5A90  41 82 00 08 */	beq lbl_809C5A98
/* 809C5A94  38 60 00 00 */	li r3, 0
lbl_809C5A98:
/* 809C5A98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C5A9C  41 82 00 54 */	beq lbl_809C5AF0
/* 809C5AA0  3B A0 00 01 */	li r29, 1
/* 809C5AA4  7F E3 FB 78 */	mr r3, r31
/* 809C5AA8  38 80 00 13 */	li r4, 0x13
/* 809C5AAC  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C5AB0  38 A0 00 00 */	li r5, 0
/* 809C5AB4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C5AB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5ABC  7D 89 03 A6 */	mtctr r12
/* 809C5AC0  4E 80 04 21 */	bctrl 
/* 809C5AC4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050103@ha */
/* 809C5AC8  38 03 01 03 */	addi r0, r3, 0x0103 /* 0x00050103@l */
/* 809C5ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C5AD0  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C5AD4  38 81 00 24 */	addi r4, r1, 0x24
/* 809C5AD8  38 A0 FF FF */	li r5, -1
/* 809C5ADC  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C5AE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C5AE4  7D 89 03 A6 */	mtctr r12
/* 809C5AE8  4E 80 04 21 */	bctrl 
/* 809C5AEC  48 00 01 68 */	b lbl_809C5C54
lbl_809C5AF0:
/* 809C5AF0  38 64 00 0C */	addi r3, r4, 0xc
/* 809C5AF4  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 809C5AF8  4B 96 29 34 */	b checkPass__12J3DFrameCtrlFf
/* 809C5AFC  2C 03 00 00 */	cmpwi r3, 0
/* 809C5B00  41 82 01 54 */	beq lbl_809C5C54
/* 809C5B04  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C5B08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809C5B0C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809C5B10  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C5B14  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809C5B18  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809C5B1C  4B 64 72 48 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809C5B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C5B28  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C5B2C  4B 64 69 08 */	b mDoMtx_YrotM__FPA4_fs
/* 809C5B30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5B34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C5B38  38 81 00 4C */	addi r4, r1, 0x4c
/* 809C5B3C  38 BF 15 24 */	addi r5, r31, 0x1524
/* 809C5B40  4B 98 12 2C */	b PSMTXMultVec
/* 809C5B44  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809C5B48  B0 1F 15 30 */	sth r0, 0x1530(r31)
/* 809C5B4C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C5B50  B0 1F 15 32 */	sth r0, 0x1532(r31)
/* 809C5B54  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809C5B58  B0 1F 15 34 */	sth r0, 0x1534(r31)
/* 809C5B5C  38 00 00 01 */	li r0, 1
/* 809C5B60  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 809C5B64  48 00 00 F0 */	b lbl_809C5C54
lbl_809C5B68:
/* 809C5B68  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C5B6C  40 82 00 E8 */	bne lbl_809C5C54
/* 809C5B70  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C5B74  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C5B78  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C5B7C  38 00 00 1D */	li r0, 0x1d
/* 809C5B80  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C5B84  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C5B88  3B A0 00 01 */	li r29, 1
/* 809C5B8C  48 00 00 C8 */	b lbl_809C5C54
lbl_809C5B90:
/* 809C5B90  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 809C5B94  28 00 00 00 */	cmplwi r0, 0
/* 809C5B98  41 82 00 90 */	beq lbl_809C5C28
/* 809C5B9C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809C5BA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809C5BA4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C5BA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809C5BAC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809C5BB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809C5BB4  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809C5BB8  38 81 00 34 */	addi r4, r1, 0x34
/* 809C5BBC  38 A1 00 40 */	addi r5, r1, 0x40
/* 809C5BC0  4B 78 B2 20 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 809C5BC4  2C 03 00 00 */	cmpwi r3, 0
/* 809C5BC8  40 82 00 30 */	bne lbl_809C5BF8
/* 809C5BCC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809C5BD0  38 81 00 40 */	addi r4, r1, 0x40
/* 809C5BD4  4B 8A B0 30 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809C5BD8  7C 64 1B 78 */	mr r4, r3
/* 809C5BDC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 809C5BE0  38 A0 00 06 */	li r5, 6
/* 809C5BE4  38 C0 04 00 */	li r6, 0x400
/* 809C5BE8  4B 8A AA 20 */	b cLib_addCalcAngleS2__FPssss
/* 809C5BEC  7F E3 FB 78 */	mr r3, r31
/* 809C5BF0  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C5BF4  4B 78 E6 5C */	b setAngle__8daNpcF_cFs
lbl_809C5BF8:
/* 809C5BF8  38 7F 14 D4 */	addi r3, r31, 0x14d4
/* 809C5BFC  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 809C5C00  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 809C5C04  FC 60 10 90 */	fmr f3, f2
/* 809C5C08  4B 8A 9E 34 */	b cLib_addCalc2__FPffff
/* 809C5C0C  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C5C10  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C5C14  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C5C18  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 809C5C1C  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C5C20  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C5C24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_809C5C28:
/* 809C5C28  38 7F 09 60 */	addi r3, r31, 0x960
/* 809C5C2C  48 00 3E B9 */	bl func_809C9AE4
/* 809C5C30  2C 03 00 00 */	cmpwi r3, 0
/* 809C5C34  40 82 00 20 */	bne lbl_809C5C54
/* 809C5C38  3B A0 00 01 */	li r29, 1
/* 809C5C3C  48 00 00 18 */	b lbl_809C5C54
lbl_809C5C40:
/* 809C5C40  3B A0 00 01 */	li r29, 1
/* 809C5C44  48 00 00 10 */	b lbl_809C5C54
lbl_809C5C48:
/* 809C5C48  3B A0 00 01 */	li r29, 1
/* 809C5C4C  48 00 00 08 */	b lbl_809C5C54
lbl_809C5C50:
/* 809C5C50  3B A0 00 01 */	li r29, 1
lbl_809C5C54:
/* 809C5C54  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C5C58  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C5C5C  40 82 00 18 */	bne lbl_809C5C74
/* 809C5C60  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C5C64  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 809C5C68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C5C6C  4C 41 13 82 */	cror 2, 1, 2
/* 809C5C70  41 82 00 34 */	beq lbl_809C5CA4
lbl_809C5C74:
/* 809C5C74  2C 00 00 28 */	cmpwi r0, 0x28
/* 809C5C78  40 82 00 B0 */	bne lbl_809C5D28
/* 809C5C7C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C5C80  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C5C84  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 809C5C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C5C8C  4C 41 13 82 */	cror 2, 1, 2
/* 809C5C90  40 82 00 98 */	bne lbl_809C5D28
/* 809C5C94  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C5C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C5C9C  4C 40 13 82 */	cror 2, 0, 2
/* 809C5CA0  40 82 00 88 */	bne lbl_809C5D28
lbl_809C5CA4:
/* 809C5CA4  7F E3 FB 78 */	mr r3, r31
/* 809C5CA8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809C5CAC  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C5CB0  4B FF DB ED */	bl setRollPrtcl__11daNpc_grA_cFRC4cXyzf
/* 809C5CB4  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C5CB8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C5CBC  40 82 00 6C */	bne lbl_809C5D28
/* 809C5CC0  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C5CC4  FC 00 02 10 */	fabs f0, f0
/* 809C5CC8  FC 20 00 18 */	frsp f1, f0
/* 809C5CCC  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C5CD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 809C5CD4  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C5CD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C5CDC  40 80 00 08 */	bge lbl_809C5CE4
/* 809C5CE0  48 00 00 18 */	b lbl_809C5CF8
lbl_809C5CE4:
/* 809C5CE4  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 809C5CE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C5CEC  40 81 00 08 */	ble lbl_809C5CF4
/* 809C5CF0  48 00 00 08 */	b lbl_809C5CF8
lbl_809C5CF4:
/* 809C5CF4  FC 20 00 90 */	fmr f1, f0
lbl_809C5CF8:
/* 809C5CF8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004A@ha */
/* 809C5CFC  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0006004A@l */
/* 809C5D00  90 01 00 20 */	stw r0, 0x20(r1)
/* 809C5D04  4B 99 C3 A8 */	b __cvt_fp2unsigned
/* 809C5D08  7C 65 1B 78 */	mr r5, r3
/* 809C5D0C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C5D10  38 81 00 20 */	addi r4, r1, 0x20
/* 809C5D14  38 C0 FF FF */	li r6, -1
/* 809C5D18  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C5D1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809C5D20  7D 89 03 A6 */	mtctr r12
/* 809C5D24  4E 80 04 21 */	bctrl 
lbl_809C5D28:
/* 809C5D28  7F A3 EB 78 */	mr r3, r29
/* 809C5D2C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809C5D30  4B 99 C4 EC */	b _restgpr_26
/* 809C5D34  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809C5D38  7C 08 03 A6 */	mtlr r0
/* 809C5D3C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809C5D40  4E 80 00 20 */	blr 
