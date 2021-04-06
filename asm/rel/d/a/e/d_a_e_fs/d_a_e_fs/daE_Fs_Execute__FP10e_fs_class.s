lbl_806BD3E0:
/* 806BD3E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806BD3E4  7C 08 02 A6 */	mflr r0
/* 806BD3E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806BD3EC  39 61 00 60 */	addi r11, r1, 0x60
/* 806BD3F0  4B CA 4D E9 */	bl _savegpr_28
/* 806BD3F4  7C 7D 1B 78 */	mr r29, r3
/* 806BD3F8  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BD3FC  3B E3 E4 8C */	addi r31, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BD400  A8 7D 06 7C */	lha r3, 0x67c(r29)
/* 806BD404  38 03 00 01 */	addi r0, r3, 1
/* 806BD408  B0 1D 06 7C */	sth r0, 0x67c(r29)
/* 806BD40C  38 60 00 00 */	li r3, 0
/* 806BD410  38 00 00 04 */	li r0, 4
/* 806BD414  7C 09 03 A6 */	mtctr r0
lbl_806BD418:
/* 806BD418  38 A3 06 88 */	addi r5, r3, 0x688
/* 806BD41C  7C 9D 2A AE */	lhax r4, r29, r5
/* 806BD420  2C 04 00 00 */	cmpwi r4, 0
/* 806BD424  41 82 00 0C */	beq lbl_806BD430
/* 806BD428  38 04 FF FF */	addi r0, r4, -1
/* 806BD42C  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_806BD430:
/* 806BD430  38 63 00 02 */	addi r3, r3, 2
/* 806BD434  42 00 FF E4 */	bdnz lbl_806BD418
/* 806BD438  A8 7D 06 90 */	lha r3, 0x690(r29)
/* 806BD43C  2C 03 00 00 */	cmpwi r3, 0
/* 806BD440  41 82 00 0C */	beq lbl_806BD44C
/* 806BD444  38 03 FF FF */	addi r0, r3, -1
/* 806BD448  B0 1D 06 90 */	sth r0, 0x690(r29)
lbl_806BD44C:
/* 806BD44C  7F A3 EB 78 */	mr r3, r29
/* 806BD450  4B FF FC 59 */	bl action__FP10e_fs_class
/* 806BD454  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806BD458  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BD45C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BD460  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BD464  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806BD468  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 806BD46C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806BD470  EC 21 00 2A */	fadds f1, f1, f0
/* 806BD474  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BD478  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806BD47C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806BD480  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806BD484  7F A3 EB 78 */	mr r3, r29
/* 806BD488  38 9D 05 D4 */	addi r4, r29, 0x5d4
/* 806BD48C  38 A1 00 14 */	addi r5, r1, 0x14
/* 806BD490  38 C1 00 20 */	addi r6, r1, 0x20
/* 806BD494  48 00 0B 95 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806BD498  34 9D 08 AC */	addic. r4, r29, 0x8ac
/* 806BD49C  41 82 00 20 */	beq lbl_806BD4BC
/* 806BD4A0  38 61 00 08 */	addi r3, r1, 8
/* 806BD4A4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806BD4A8  4B BA 96 DD */	bl __ml__4cXyzCFf
/* 806BD4AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806BD4B0  38 81 00 08 */	addi r4, r1, 8
/* 806BD4B4  7C 65 1B 78 */	mr r5, r3
/* 806BD4B8  4B C8 9B D9 */	bl PSVECAdd
lbl_806BD4BC:
/* 806BD4BC  38 7D 06 D4 */	addi r3, r29, 0x6d4
/* 806BD4C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BD4C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BD4C8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806BD4CC  4B 9B 95 E1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806BD4D0  7F A3 EB 78 */	mr r3, r29
/* 806BD4D4  4B FF F7 5D */	bl damage_check__FP10e_fs_class
/* 806BD4D8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806BD4DC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806BD4E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806BD4E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806BD4E8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806BD4EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806BD4F0  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 806BD4F4  2C 00 00 00 */	cmpwi r0, 0
/* 806BD4F8  41 82 00 10 */	beq lbl_806BD508
/* 806BD4FC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806BD500  EC 01 00 2A */	fadds f0, f1, f0
/* 806BD504  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_806BD508:
/* 806BD508  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 806BD50C  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BD510  4B BB 1C CD */	bl SetC__8cM3dGCylFRC4cXyz
/* 806BD514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BD518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BD51C  3B C3 23 3C */	addi r30, r3, 0x233c
/* 806BD520  7F C3 F3 78 */	mr r3, r30
/* 806BD524  38 9D 08 E8 */	addi r4, r29, 0x8e8
/* 806BD528  4B BA 76 81 */	bl Set__4cCcSFP8cCcD_Obj
/* 806BD52C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BD530  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BD534  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806BD538  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806BD53C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806BD540  4B C8 93 A9 */	bl PSMTXTrans
/* 806BD544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BD548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BD54C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806BD550  4B 94 EE E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 806BD554  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806BE7B0@ha */
/* 806BD558  38 63 E7 B0 */	addi r3, r3, l_HIO@l /* 0x806BE7B0@l */
/* 806BD55C  C0 23 00 08 */	lfs f1, 8(r3)
/* 806BD560  FC 40 08 90 */	fmr f2, f1
/* 806BD564  FC 60 08 90 */	fmr f3, f1
/* 806BD568  4B 94 F8 D1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806BD56C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BD570  83 83 00 04 */	lwz r28, 4(r3)
/* 806BD574  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BD578  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BD57C  38 9C 00 24 */	addi r4, r28, 0x24
/* 806BD580  4B C8 8F 31 */	bl PSMTXCopy
/* 806BD584  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806BD588  7C 03 07 74 */	extsb r3, r0
/* 806BD58C  4B 96 FA E1 */	bl dComIfGp_getReverb__Fi
/* 806BD590  7C 65 1B 78 */	mr r5, r3
/* 806BD594  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BD598  38 80 00 00 */	li r4, 0
/* 806BD59C  4B 95 3B 15 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806BD5A0  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BD5A4  4B 95 3C 49 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806BD5A8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806BD5AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806BD5B0  38 63 02 10 */	addi r3, r3, 0x210
/* 806BD5B4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806BD5B8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806BD5BC  80 84 00 00 */	lwz r4, 0(r4)
/* 806BD5C0  4B C8 8E F1 */	bl PSMTXCopy
/* 806BD5C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BD5C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806BD5CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806BD5D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806BD5D4  38 61 00 38 */	addi r3, r1, 0x38
/* 806BD5D8  38 9D 05 38 */	addi r4, r29, 0x538
/* 806BD5DC  4B BB 39 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806BD5E0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806BD5E4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806BD5E8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806BD5EC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806BD5F0  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806BD5F4  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806BD5F8  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 806BD5FC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806BD600  EC 01 00 2A */	fadds f0, f1, f0
/* 806BD604  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806BD608  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806BD60C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806BD610  38 63 01 50 */	addi r3, r3, 0x150
/* 806BD614  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806BD618  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806BD61C  80 84 00 00 */	lwz r4, 0(r4)
/* 806BD620  4B C8 8E 91 */	bl PSMTXCopy
/* 806BD624  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BD628  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806BD62C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806BD630  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806BD634  38 61 00 38 */	addi r3, r1, 0x38
/* 806BD638  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BD63C  4B BB 38 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806BD640  88 7D 06 92 */	lbz r3, 0x692(r29)
/* 806BD644  7C 60 07 75 */	extsb. r0, r3
/* 806BD648  41 82 00 38 */	beq lbl_806BD680
/* 806BD64C  7C 60 07 74 */	extsb r0, r3
/* 806BD650  2C 00 00 01 */	cmpwi r0, 1
/* 806BD654  40 82 00 14 */	bne lbl_806BD668
/* 806BD658  38 7D 0A 24 */	addi r3, r29, 0xa24
/* 806BD65C  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BD660  4B 9C 74 19 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 806BD664  48 00 00 10 */	b lbl_806BD674
lbl_806BD668:
/* 806BD668  38 7D 0A 24 */	addi r3, r29, 0xa24
/* 806BD66C  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BD670  4B 9C 74 55 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_806BD674:
/* 806BD674  38 00 00 00 */	li r0, 0
/* 806BD678  98 1D 06 92 */	stb r0, 0x692(r29)
/* 806BD67C  48 00 00 20 */	b lbl_806BD69C
lbl_806BD680:
/* 806BD680  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806BD684  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806BD688  EC 01 00 2A */	fadds f0, f1, f0
/* 806BD68C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806BD690  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 806BD694  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BD698  4B BB 1F B1 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_806BD69C:
/* 806BD69C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 806BD6A0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806BD6A4  4B BB 20 65 */	bl SetR__8cM3dGSphFf
/* 806BD6A8  7F C3 F3 78 */	mr r3, r30
/* 806BD6AC  38 9D 0A 24 */	addi r4, r29, 0xa24
/* 806BD6B0  4B BA 74 F9 */	bl Set__4cCcSFP8cCcD_Obj
/* 806BD6B4  38 60 00 01 */	li r3, 1
/* 806BD6B8  39 61 00 60 */	addi r11, r1, 0x60
/* 806BD6BC  4B CA 4B 69 */	bl _restgpr_28
/* 806BD6C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806BD6C4  7C 08 03 A6 */	mtlr r0
/* 806BD6C8  38 21 00 60 */	addi r1, r1, 0x60
/* 806BD6CC  4E 80 00 20 */	blr 
