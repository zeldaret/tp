lbl_80C53600:
/* 80C53600  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C53604  7C 08 02 A6 */	mflr r0
/* 80C53608  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C5360C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C53610  4B 70 EB CC */	b _savegpr_29
/* 80C53614  7C 7E 1B 78 */	mr r30, r3
/* 80C53618  3C 60 80 C5 */	lis r3, lit_3768@ha
/* 80C5361C  3B E3 3F BC */	addi r31, r3, lit_3768@l
/* 80C53620  A8 1E 05 7A */	lha r0, 0x57a(r30)
/* 80C53624  2C 00 00 01 */	cmpwi r0, 1
/* 80C53628  41 82 00 A8 */	beq lbl_80C536D0
/* 80C5362C  40 80 01 DC */	bge lbl_80C53808
/* 80C53630  2C 00 00 00 */	cmpwi r0, 0
/* 80C53634  40 80 00 0C */	bge lbl_80C53640
/* 80C53638  48 00 01 D0 */	b lbl_80C53808
/* 80C5363C  48 00 01 CC */	b lbl_80C53808
lbl_80C53640:
/* 80C53640  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C53644  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C53648  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C5364C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C53650  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C53654  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C53658  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80C5365C  4B 43 0E 04 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C53660  28 03 00 00 */	cmplwi r3, 0
/* 80C53664  41 82 01 A4 */	beq lbl_80C53808
/* 80C53668  38 00 00 01 */	li r0, 1
/* 80C5366C  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80C53670  38 00 00 00 */	li r0, 0
/* 80C53674  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C53678  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5367C  7C 03 07 74 */	extsb r3, r0
/* 80C53680  4B 3D 99 EC */	b dComIfGp_getReverb__Fi
/* 80C53684  7C 67 1B 78 */	mr r7, r3
/* 80C53688  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060010@ha */
/* 80C5368C  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00060010@l */
/* 80C53690  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C53694  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C53698  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C5369C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C536A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C536A4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C536A8  38 C0 00 00 */	li r6, 0
/* 80C536AC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C536B0  FC 40 08 90 */	fmr f2, f1
/* 80C536B4  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C536B8  FC 80 18 90 */	fmr f4, f3
/* 80C536BC  39 00 00 00 */	li r8, 0
/* 80C536C0  4B 65 82 C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C536C4  38 00 00 14 */	li r0, 0x14
/* 80C536C8  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 80C536CC  48 00 01 3C */	b lbl_80C53808
lbl_80C536D0:
/* 80C536D0  A8 7E 05 7E */	lha r3, 0x57e(r30)
/* 80C536D4  7C 60 07 35 */	extsh. r0, r3
/* 80C536D8  40 82 00 20 */	bne lbl_80C536F8
/* 80C536DC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C536E0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C536E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C536E8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C536EC  38 00 00 00 */	li r0, 0
/* 80C536F0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C536F4  48 00 00 4C */	b lbl_80C53740
lbl_80C536F8:
/* 80C536F8  2C 03 00 0F */	cmpwi r3, 0xf
/* 80C536FC  40 80 00 44 */	bge lbl_80C53740
/* 80C53700  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80C53704  1C 00 32 C8 */	mulli r0, r0, 0x32c8
/* 80C53708  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C5370C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C53710  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C53714  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C53718  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C5371C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C53720  FC 00 00 1E */	fctiwz f0, f0
/* 80C53724  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C53728  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C5372C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C53730  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C53734  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C53738  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C5373C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80C53740:
/* 80C53740  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C53744  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C53748  EC 01 00 2A */	fadds f0, f1, f0
/* 80C5374C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C53750  80 1E 05 F4 */	lwz r0, 0x5f4(r30)
/* 80C53754  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C53758  41 82 00 B0 */	beq lbl_80C53808
/* 80C5375C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C53760  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C53764  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C53768  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C5376C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C53770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C53774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C53778  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C5377C  38 80 00 05 */	li r4, 5
/* 80C53780  38 A0 00 0F */	li r5, 0xf
/* 80C53784  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C53788  4B 41 C2 9C */	b StartShock__12dVibration_cFii4cXyz
/* 80C5378C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C53790  7C 03 07 74 */	extsb r3, r0
/* 80C53794  4B 3D 98 D8 */	b dComIfGp_getReverb__Fi
/* 80C53798  7C 67 1B 78 */	mr r7, r3
/* 80C5379C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 80C537A0  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 80C537A4  90 01 00 08 */	stw r0, 8(r1)
/* 80C537A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C537AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C537B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C537B4  38 81 00 08 */	addi r4, r1, 8
/* 80C537B8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C537BC  38 C0 00 00 */	li r6, 0
/* 80C537C0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C537C4  FC 40 08 90 */	fmr f2, f1
/* 80C537C8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C537CC  FC 80 18 90 */	fmr f4, f3
/* 80C537D0  39 00 00 00 */	li r8, 0
/* 80C537D4  4B 65 81 B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C537D8  38 00 00 02 */	li r0, 2
/* 80C537DC  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80C537E0  38 00 00 00 */	li r0, 0
/* 80C537E4  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C537E8  38 7E 0A 84 */	addi r3, r30, 0xa84
/* 80C537EC  38 9E 0A 88 */	addi r4, r30, 0xa88
/* 80C537F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C537F4  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 80C537F8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C537FC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C53800  39 00 00 01 */	li r8, 1
/* 80C53804  4B 3C 98 1C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80C53808:
/* 80C53808  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C5380C  54 00 00 3E */	slwi r0, r0, 0
/* 80C53810  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80C53814  38 00 00 00 */	li r0, 0
/* 80C53818  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C5381C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C53820  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C53824  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C53828  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C5382C  4B 42 32 80 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C53830  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C53834  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C53838  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C5383C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C53840  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C53844  4B 6F 30 A4 */	b PSMTXTrans
/* 80C53848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5384C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C53850  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C53854  4B 3B 8B E0 */	b mDoMtx_YrotM__FPA4_fs
/* 80C53858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5385C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C53860  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80C53864  4B 3B 8C 68 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C53868  3C 60 80 C5 */	lis r3, l_HIO@ha
/* 80C5386C  3B A3 40 F8 */	addi r29, r3, l_HIO@l
/* 80C53870  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80C53874  FC 40 08 90 */	fmr f2, f1
/* 80C53878  FC 60 08 90 */	fmr f3, f1
/* 80C5387C  4B 3B 95 BC */	b scaleM__14mDoMtx_stack_cFfff
/* 80C53880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C53884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C53888  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80C5388C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C53890  4B 6F 2C 20 */	b PSMTXCopy
/* 80C53894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C53898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5389C  38 9E 0A 50 */	addi r4, r30, 0xa50
/* 80C538A0  4B 6F 2C 10 */	b PSMTXCopy
/* 80C538A4  80 7E 0A 80 */	lwz r3, 0xa80(r30)
/* 80C538A8  4B 42 81 18 */	b Move__4dBgWFv
/* 80C538AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C538B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C538B4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C538B8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C538BC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C538C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C538C4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C538C8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C538CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C538D0  EC 22 00 2A */	fadds f1, f2, f0
/* 80C538D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C538D8  A8 1E 05 7A */	lha r0, 0x57a(r30)
/* 80C538DC  2C 00 00 00 */	cmpwi r0, 0
/* 80C538E0  41 82 00 10 */	beq lbl_80C538F0
/* 80C538E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C538E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C538EC  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80C538F0:
/* 80C538F0  38 7E 09 00 */	addi r3, r30, 0x900
/* 80C538F4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C538F8  4B 61 BD 50 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C538FC  38 7E 09 00 */	addi r3, r30, 0x900
/* 80C53900  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C53904  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C53908  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C5390C  4B 61 BD FC */	b SetR__8cM3dGSphFf
/* 80C53910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C53914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C53918  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C5391C  38 9E 07 DC */	addi r4, r30, 0x7dc
/* 80C53920  4B 61 12 88 */	b Set__4cCcSFP8cCcD_Obj
/* 80C53924  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C53928  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C5392C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C53930  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C53934  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C53938  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C5393C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80C53940  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C53944  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80C53948  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C5394C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80C53950  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C53954  39 61 00 40 */	addi r11, r1, 0x40
/* 80C53958  4B 70 E8 D0 */	b _restgpr_29
/* 80C5395C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C53960  7C 08 03 A6 */	mtlr r0
/* 80C53964  38 21 00 40 */	addi r1, r1, 0x40
/* 80C53968  4E 80 00 20 */	blr 
