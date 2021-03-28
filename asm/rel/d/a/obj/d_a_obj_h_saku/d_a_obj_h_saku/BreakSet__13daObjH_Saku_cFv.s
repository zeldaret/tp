lbl_80C1552C:
/* 80C1552C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C15530  7C 08 02 A6 */	mflr r0
/* 80C15534  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C15538  39 61 00 60 */	addi r11, r1, 0x60
/* 80C1553C  4B 74 CC A0 */	b _savegpr_29
/* 80C15540  7C 7E 1B 78 */	mr r30, r3
/* 80C15544  3C 60 80 C1 */	lis r3, lit_3703@ha
/* 80C15548  3B E3 64 C8 */	addi r31, r3, lit_3703@l
/* 80C1554C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C15550  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C15554  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C15558  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C1555C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C15560  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C15564  38 61 00 30 */	addi r3, r1, 0x30
/* 80C15568  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1556C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C15570  7C 66 1B 78 */	mr r6, r3
/* 80C15574  4B 65 B8 4C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C15578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1557C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C15580  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C15584  38 80 00 00 */	li r4, 0
/* 80C15588  90 81 00 08 */	stw r4, 8(r1)
/* 80C1558C  38 00 FF FF */	li r0, -1
/* 80C15590  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C15594  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C15598  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1559C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C155A0  38 80 00 00 */	li r4, 0
/* 80C155A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008853@ha */
/* 80C155A8  38 A5 88 53 */	addi r5, r5, 0x8853 /* 0x00008853@l */
/* 80C155AC  38 C1 00 30 */	addi r6, r1, 0x30
/* 80C155B0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C155B4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80C155B8  39 20 00 00 */	li r9, 0
/* 80C155BC  39 40 00 FF */	li r10, 0xff
/* 80C155C0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C155C4  4B 43 74 CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C155C8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C155CC  38 80 00 00 */	li r4, 0
/* 80C155D0  90 81 00 08 */	stw r4, 8(r1)
/* 80C155D4  38 00 FF FF */	li r0, -1
/* 80C155D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C155DC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C155E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C155E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C155E8  38 80 00 00 */	li r4, 0
/* 80C155EC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008854@ha */
/* 80C155F0  38 A5 88 54 */	addi r5, r5, 0x8854 /* 0x00008854@l */
/* 80C155F4  38 C1 00 30 */	addi r6, r1, 0x30
/* 80C155F8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C155FC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80C15600  39 20 00 00 */	li r9, 0
/* 80C15604  39 40 00 FF */	li r10, 0xff
/* 80C15608  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C1560C  4B 43 74 84 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C15610  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C15614  38 80 00 00 */	li r4, 0
/* 80C15618  90 81 00 08 */	stw r4, 8(r1)
/* 80C1561C  38 00 FF FF */	li r0, -1
/* 80C15620  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C15624  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C15628  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1562C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C15630  38 80 00 00 */	li r4, 0
/* 80C15634  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008855@ha */
/* 80C15638  38 A5 88 55 */	addi r5, r5, 0x8855 /* 0x00008855@l */
/* 80C1563C  38 C1 00 30 */	addi r6, r1, 0x30
/* 80C15640  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C15644  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80C15648  39 20 00 00 */	li r9, 0
/* 80C1564C  39 40 00 FF */	li r10, 0xff
/* 80C15650  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C15654  4B 43 74 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C15658  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080236@ha */
/* 80C1565C  38 03 02 36 */	addi r0, r3, 0x0236 /* 0x00080236@l */
/* 80C15660  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C15664  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C15668  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C1566C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C15670  38 81 00 20 */	addi r4, r1, 0x20
/* 80C15674  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C15678  38 C0 00 00 */	li r6, 0
/* 80C1567C  38 E0 00 00 */	li r7, 0
/* 80C15680  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C15684  FC 40 08 90 */	fmr f2, f1
/* 80C15688  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C1568C  FC 80 18 90 */	fmr f4, f3
/* 80C15690  39 00 00 00 */	li r8, 0
/* 80C15694  4B 69 62 F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C15698  88 7E 05 A0 */	lbz r3, 0x5a0(r30)
/* 80C1569C  38 03 00 01 */	addi r0, r3, 1
/* 80C156A0  98 1E 05 A0 */	stb r0, 0x5a0(r30)
/* 80C156A4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C156A8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C156AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C156B0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C156B4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C156B8  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C156BC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C156C0  4B 65 22 94 */	b cM_rndF__Ff
/* 80C156C4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C156C8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C156CC  FC 00 00 1E */	fctiwz f0, f0
/* 80C156D0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C156D4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80C156D8  38 00 FE 00 */	li r0, -512
/* 80C156DC  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80C156E0  B0 7E 05 D2 */	sth r3, 0x5d2(r30)
/* 80C156E4  38 00 00 00 */	li r0, 0
/* 80C156E8  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80C156EC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C156F0  4B 65 22 64 */	b cM_rndF__Ff
/* 80C156F4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C156F8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C156FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C15700  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C15704  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80C15708  38 00 02 00 */	li r0, 0x200
/* 80C1570C  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 80C15710  B0 7E 05 D8 */	sth r3, 0x5d8(r30)
/* 80C15714  38 00 00 00 */	li r0, 0
/* 80C15718  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 80C1571C  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C15720  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C15724  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C15728  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C1572C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C15730  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C15734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C15738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1573C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C15740  4B 3F 6C 9C */	b mDoMtx_YrotS__FPA4_fs
/* 80C15744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C15748  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1574C  38 81 00 24 */	addi r4, r1, 0x24
/* 80C15750  7C 85 23 78 */	mr r5, r4
/* 80C15754  4B 73 16 18 */	b PSMTXMultVec
/* 80C15758  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C1575C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C15760  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C15764  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C15768  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C1576C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C15770  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C15774  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C15778  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C1577C  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C15780  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C15784  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80C15788  38 00 00 0A */	li r0, 0xa
/* 80C1578C  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 80C15790  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C15794  28 03 00 00 */	cmplwi r3, 0
/* 80C15798  41 82 00 24 */	beq lbl_80C157BC
/* 80C1579C  4B 65 2A 38 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C157A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C157A4  41 82 00 18 */	beq lbl_80C157BC
/* 80C157A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C157AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C157B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C157B4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C157B8  4B 45 EA 98 */	b Release__4cBgSFP9dBgW_Base
lbl_80C157BC:
/* 80C157BC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C157C0  4B 74 CA 68 */	b _restgpr_29
/* 80C157C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C157C8  7C 08 03 A6 */	mtlr r0
/* 80C157CC  38 21 00 60 */	addi r1, r1, 0x60
/* 80C157D0  4E 80 00 20 */	blr 
