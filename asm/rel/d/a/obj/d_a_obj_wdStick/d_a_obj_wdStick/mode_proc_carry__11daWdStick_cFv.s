lbl_80D335AC:
/* 80D335AC  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80D335B0  7C 08 02 A6 */	mflr r0
/* 80D335B4  90 01 01 64 */	stw r0, 0x164(r1)
/* 80D335B8  39 61 01 60 */	addi r11, r1, 0x160
/* 80D335BC  4B 62 EC 15 */	bl _savegpr_26
/* 80D335C0  7C 7D 1B 78 */	mr r29, r3
/* 80D335C4  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha /* 0x80D34138@ha */
/* 80D335C8  3B E3 41 38 */	addi r31, r3, mCcDObjInfo__11daWdStick_c@l /* 0x80D34138@l */
/* 80D335CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D335D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D335D4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80D335D8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D335DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D335E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D335E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D335E8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D335EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D335F0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80D335F4  4B 34 49 69 */	bl __ct__14dBgS_ObjLinChkFv
/* 80D335F8  38 61 00 64 */	addi r3, r1, 0x64
/* 80D335FC  4B 34 49 61 */	bl __ct__14dBgS_ObjLinChkFv
/* 80D33600  3B 40 00 00 */	li r26, 0
/* 80D33604  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D33608  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D3360C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D33610  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D33614  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D33618  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D3361C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D33620  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80D33624  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D33628  38 BD 0A B4 */	addi r5, r29, 0xab4
/* 80D3362C  7F A6 EB 78 */	mr r6, r29
/* 80D33630  4B 34 47 35 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D33634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D33638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3363C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80D33640  7F 83 E3 78 */	mr r3, r28
/* 80D33644  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80D33648  4B 34 0D 6D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D3364C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D33650  41 82 00 70 */	beq lbl_80D336C0
/* 80D33654  7F 83 E3 78 */	mr r3, r28
/* 80D33658  3B 61 00 E8 */	addi r27, r1, 0xe8
/* 80D3365C  7F 64 DB 78 */	mr r4, r27
/* 80D33660  4B 34 17 A1 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 80D33664  2C 03 00 07 */	cmpwi r3, 7
/* 80D33668  41 82 00 58 */	beq lbl_80D336C0
/* 80D3366C  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D33670  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D33674  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D33678  7F 83 E3 78 */	mr r3, r28
/* 80D3367C  7F 64 DB 78 */	mr r4, r27
/* 80D33680  38 A1 00 50 */	addi r5, r1, 0x50
/* 80D33684  4B 34 10 C1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D33688  38 61 00 50 */	addi r3, r1, 0x50
/* 80D3368C  38 9D 0A B4 */	addi r4, r29, 0xab4
/* 80D33690  4B 61 3B 05 */	bl PSVECDotProduct
/* 80D33694  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D33698  EC 20 08 2A */	fadds f1, f0, f1
/* 80D3369C  38 61 00 50 */	addi r3, r1, 0x50
/* 80D336A0  38 81 00 18 */	addi r4, r1, 0x18
/* 80D336A4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D336A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D336AC  4B 61 3A 2D */	bl PSVECScale
/* 80D336B0  3B 41 00 D4 */	addi r26, r1, 0xd4
/* 80D336B4  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D336B8  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D336BC  90 01 00 60 */	stw r0, 0x60(r1)
lbl_80D336C0:
/* 80D336C0  38 61 00 64 */	addi r3, r1, 0x64
/* 80D336C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D336C8  38 BD 0A CC */	addi r5, r29, 0xacc
/* 80D336CC  7F A6 EB 78 */	mr r6, r29
/* 80D336D0  4B 34 46 95 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D336D4  7F 83 E3 78 */	mr r3, r28
/* 80D336D8  38 81 00 64 */	addi r4, r1, 0x64
/* 80D336DC  4B 34 0C D9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D336E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D336E4  41 82 00 70 */	beq lbl_80D33754
/* 80D336E8  7F 83 E3 78 */	mr r3, r28
/* 80D336EC  3B 61 00 78 */	addi r27, r1, 0x78
/* 80D336F0  7F 64 DB 78 */	mr r4, r27
/* 80D336F4  4B 34 17 0D */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 80D336F8  2C 03 00 07 */	cmpwi r3, 7
/* 80D336FC  41 82 00 58 */	beq lbl_80D33754
/* 80D33700  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D33704  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D33708  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80D3370C  7F 83 E3 78 */	mr r3, r28
/* 80D33710  7F 64 DB 78 */	mr r4, r27
/* 80D33714  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80D33718  4B 34 10 2D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D3371C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D33720  38 9D 0A CC */	addi r4, r29, 0xacc
/* 80D33724  4B 61 3A 71 */	bl PSVECDotProduct
/* 80D33728  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D3372C  EC 20 08 2A */	fadds f1, f0, f1
/* 80D33730  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D33734  38 81 00 24 */	addi r4, r1, 0x24
/* 80D33738  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D3373C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D33740  4B 61 39 99 */	bl PSVECScale
/* 80D33744  3B 41 00 64 */	addi r26, r1, 0x64
/* 80D33748  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D3374C  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D33750  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_80D33754:
/* 80D33754  38 61 00 0C */	addi r3, r1, 0xc
/* 80D33758  38 81 00 24 */	addi r4, r1, 0x24
/* 80D3375C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80D33760  4B 53 33 85 */	bl __pl__4cXyzCFRC3Vec
/* 80D33764  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D33768  D0 1D 05 7C */	stfs f0, 0x57c(r29)
/* 80D3376C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D33770  D0 1D 05 80 */	stfs f0, 0x580(r29)
/* 80D33774  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D33778  D0 1D 05 84 */	stfs f0, 0x584(r29)
/* 80D3377C  7F 44 D3 78 */	mr r4, r26
/* 80D33780  28 1A 00 00 */	cmplwi r26, 0
/* 80D33784  41 82 00 08 */	beq lbl_80D3378C
/* 80D33788  38 9A 00 14 */	addi r4, r26, 0x14
lbl_80D3378C:
/* 80D3378C  7F C3 F3 78 */	mr r3, r30
/* 80D33790  C0 3D 05 7C */	lfs f1, 0x57c(r29)
/* 80D33794  C0 5D 05 84 */	lfs f2, 0x584(r29)
/* 80D33798  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D3379C  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 80D337A0  7D 89 03 A6 */	mtctr r12
/* 80D337A4  4E 80 04 21 */	bctrl 
/* 80D337A8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D337AC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80D337B0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D337B4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80D337B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80D337BC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80D337C0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80D337C4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D337C8  40 82 00 74 */	bne lbl_80D3383C
/* 80D337CC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D337D0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80D337D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D337D8  41 82 00 10 */	beq lbl_80D337E8
/* 80D337DC  7F A3 EB 78 */	mr r3, r29
/* 80D337E0  48 00 00 8D */	bl mode_init_drop__11daWdStick_cFv
/* 80D337E4  48 00 00 58 */	b lbl_80D3383C
lbl_80D337E8:
/* 80D337E8  7F A3 EB 78 */	mr r3, r29
/* 80D337EC  48 00 00 F1 */	bl mode_init_roll__11daWdStick_cFv
/* 80D337F0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D337F4  7C 03 07 74 */	extsb r3, r0
/* 80D337F8  4B 2F 98 75 */	bl dComIfGp_getReverb__Fi
/* 80D337FC  7C 67 1B 78 */	mr r7, r3
/* 80D33800  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010C@ha */
/* 80D33804  38 03 01 0C */	addi r0, r3, 0x010C /* 0x0008010C@l */
/* 80D33808  90 01 00 08 */	stw r0, 8(r1)
/* 80D3380C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D33810  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D33814  80 63 00 00 */	lwz r3, 0(r3)
/* 80D33818  38 81 00 08 */	addi r4, r1, 8
/* 80D3381C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D33820  38 C0 00 00 */	li r6, 0
/* 80D33824  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D33828  FC 40 08 90 */	fmr f2, f1
/* 80D3382C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D33830  FC 80 18 90 */	fmr f4, f3
/* 80D33834  39 00 00 00 */	li r8, 0
/* 80D33838  4B 57 81 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D3383C:
/* 80D3383C  38 61 00 64 */	addi r3, r1, 0x64
/* 80D33840  38 80 FF FF */	li r4, -1
/* 80D33844  4B 34 47 75 */	bl __dt__14dBgS_ObjLinChkFv
/* 80D33848  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80D3384C  38 80 FF FF */	li r4, -1
/* 80D33850  4B 34 47 69 */	bl __dt__14dBgS_ObjLinChkFv
/* 80D33854  39 61 01 60 */	addi r11, r1, 0x160
/* 80D33858  4B 62 E9 C5 */	bl _restgpr_26
/* 80D3385C  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80D33860  7C 08 03 A6 */	mtlr r0
/* 80D33864  38 21 01 60 */	addi r1, r1, 0x160
/* 80D33868  4E 80 00 20 */	blr 
