lbl_80C9A4D0:
/* 80C9A4D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C9A4D4  7C 08 02 A6 */	mflr r0
/* 80C9A4D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C9A4DC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C9A4E0  4B 6C 7C FD */	bl _savegpr_29
/* 80C9A4E4  7C 7E 1B 78 */	mr r30, r3
/* 80C9A4E8  3C 60 80 CA */	lis r3, l_minPos@ha /* 0x80C9B244@ha */
/* 80C9A4EC  3B E3 B2 44 */	addi r31, r3, l_minPos@l /* 0x80C9B244@l */
/* 80C9A4F0  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80C9A4F4  4B 37 2F 35 */	bl play__14mDoExt_baseAnmFv
/* 80C9A4F8  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80C9A4FC  38 80 00 01 */	li r4, 1
/* 80C9A500  88 03 00 05 */	lbz r0, 5(r3)
/* 80C9A504  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C9A508  40 82 00 18 */	bne lbl_80C9A520
/* 80C9A50C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C9A510  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C9A514  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C9A518  41 82 00 08 */	beq lbl_80C9A520
/* 80C9A51C  38 80 00 00 */	li r4, 0
lbl_80C9A520:
/* 80C9A520  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C9A524  40 82 00 7C */	bne lbl_80C9A5A0
/* 80C9A528  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C9A52C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C9A530  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C9A534  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A538  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A53C  4B 6A BF 75 */	bl PSMTXCopy
/* 80C9A540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A548  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C9A54C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9A550  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C9A554  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C9A558  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C9A55C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C9A560  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080276@ha */
/* 80C9A564  38 03 02 76 */	addi r0, r3, 0x0276 /* 0x00080276@l */
/* 80C9A568  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C9A56C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9A570  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9A574  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A578  38 81 00 18 */	addi r4, r1, 0x18
/* 80C9A57C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C9A580  38 C0 00 00 */	li r6, 0
/* 80C9A584  38 E0 00 00 */	li r7, 0
/* 80C9A588  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C9A58C  FC 40 08 90 */	fmr f2, f1
/* 80C9A590  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C9A594  FC 80 18 90 */	fmr f4, f3
/* 80C9A598  39 00 00 00 */	li r8, 0
/* 80C9A59C  4B 61 1F 71 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9A5A0:
/* 80C9A5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A5A8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C9A5AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C9A5B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C9A5B4  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C9A5B8  4B 39 A4 05 */	bl isEventBit__11dSv_event_cCFUs
/* 80C9A5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C9A5C0  40 82 00 58 */	bne lbl_80C9A618
/* 80C9A5C4  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9A5C8  4B 5C DC 0D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A5CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A5D0  40 82 01 E4 */	bne lbl_80C9A7B4
/* 80C9A5D4  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80C9A5D8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C9A5DC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C9A5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A5E4  40 81 01 D0 */	ble lbl_80C9A7B4
/* 80C9A5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A5F0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C9A5F4  7F A3 EB 78 */	mr r3, r29
/* 80C9A5F8  38 9E 05 9C */	addi r4, r30, 0x59c
/* 80C9A5FC  7F C5 F3 78 */	mr r5, r30
/* 80C9A600  4B 3D A4 09 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9A604  7F A3 EB 78 */	mr r3, r29
/* 80C9A608  38 9E 06 5C */	addi r4, r30, 0x65c
/* 80C9A60C  7F C5 F3 78 */	mr r5, r30
/* 80C9A610  4B 3D A3 F9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9A614  48 00 01 A0 */	b lbl_80C9A7B4
lbl_80C9A618:
/* 80C9A618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A620  38 63 09 58 */	addi r3, r3, 0x958
/* 80C9A624  38 80 00 79 */	li r4, 0x79
/* 80C9A628  4B 39 A1 E9 */	bl onSwitch__12dSv_memBit_cFi
/* 80C9A62C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C9A630  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C9A634  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C9A638  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C9A63C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C9A640  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C9A644  88 1E 08 75 */	lbz r0, 0x875(r30)
/* 80C9A648  7C 00 07 75 */	extsb. r0, r0
/* 80C9A64C  40 81 00 7C */	ble lbl_80C9A6C8
/* 80C9A650  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C9A654  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C9A658  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C9A65C  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80C9A660  4B 5C DB 75 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A664  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A668  40 82 00 D0 */	bne lbl_80C9A738
/* 80C9A66C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A674  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9A678  38 9E 07 1C */	addi r4, r30, 0x71c
/* 80C9A67C  7F C5 F3 78 */	mr r5, r30
/* 80C9A680  4B 3D A3 89 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9A684  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802CA@ha */
/* 80C9A688  38 03 02 CA */	addi r0, r3, 0x02CA /* 0x000802CA@l */
/* 80C9A68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9A690  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9A694  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9A698  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A69C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C9A6A0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C9A6A4  38 C0 00 00 */	li r6, 0
/* 80C9A6A8  38 E0 00 00 */	li r7, 0
/* 80C9A6AC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C9A6B0  FC 40 08 90 */	fmr f2, f1
/* 80C9A6B4  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C9A6B8  FC 80 18 90 */	fmr f4, f3
/* 80C9A6BC  39 00 00 00 */	li r8, 0
/* 80C9A6C0  4B 61 12 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9A6C4  48 00 00 74 */	b lbl_80C9A738
lbl_80C9A6C8:
/* 80C9A6C8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C9A6CC  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C9A6D0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C9A6D4  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80C9A6D8  4B 5C DA FD */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A6DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A6E0  41 82 00 58 */	beq lbl_80C9A738
/* 80C9A6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A6EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9A6F0  38 9E 07 1C */	addi r4, r30, 0x71c
/* 80C9A6F4  4B 3D 9B 5D */	bl Release__4cBgSFP9dBgW_Base
/* 80C9A6F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802CB@ha */
/* 80C9A6FC  38 03 02 CB */	addi r0, r3, 0x02CB /* 0x000802CB@l */
/* 80C9A700  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9A704  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9A708  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9A70C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A710  38 81 00 10 */	addi r4, r1, 0x10
/* 80C9A714  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C9A718  38 C0 00 00 */	li r6, 0
/* 80C9A71C  38 E0 00 00 */	li r7, 0
/* 80C9A720  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C9A724  FC 40 08 90 */	fmr f2, f1
/* 80C9A728  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C9A72C  FC 80 18 90 */	fmr f4, f3
/* 80C9A730  39 00 00 00 */	li r8, 0
/* 80C9A734  4B 61 12 51 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9A738:
/* 80C9A738  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C9A73C  A8 03 00 08 */	lha r0, 8(r3)
/* 80C9A740  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80C9A744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C9A748  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C9A74C  3C 00 43 30 */	lis r0, 0x4330
/* 80C9A750  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C9A754  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C9A758  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C9A75C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80C9A760  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C9A764  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C9A768  EC 00 08 24 */	fdivs f0, f0, f1
/* 80C9A76C  FC 00 00 1E */	fctiwz f0, f0
/* 80C9A770  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C9A774  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C9A778  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 80C9A77C  98 03 00 BB */	stb r0, 0xbb(r3)
/* 80C9A780  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C9A784  4B 37 2C A5 */	bl play__14mDoExt_baseAnmFv
/* 80C9A788  88 1E 08 74 */	lbz r0, 0x874(r30)
/* 80C9A78C  28 00 00 00 */	cmplwi r0, 0
/* 80C9A790  41 82 00 1C */	beq lbl_80C9A7AC
/* 80C9A794  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80C9A798  4B 37 2C 91 */	bl play__14mDoExt_baseAnmFv
/* 80C9A79C  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80C9A7A0  4B 37 2C 89 */	bl play__14mDoExt_baseAnmFv
/* 80C9A7A4  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 80C9A7A8  4B 37 2C 81 */	bl play__14mDoExt_baseAnmFv
lbl_80C9A7AC:
/* 80C9A7AC  38 7E 08 75 */	addi r3, r30, 0x875
/* 80C9A7B0  48 00 0A 71 */	bl func_80C9B220
lbl_80C9A7B4:
/* 80C9A7B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C9A7B8  4B 37 25 AD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9A7BC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C9A7C0  4B 37 27 85 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C9A7C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A7C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A7CC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C9A7D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A7D4  4B 6A BC DD */	bl PSMTXCopy
/* 80C9A7D8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C9A7DC  28 04 00 00 */	cmplwi r4, 0
/* 80C9A7E0  41 82 00 14 */	beq lbl_80C9A7F4
/* 80C9A7E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A7E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A7EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A7F0  4B 6A BC C1 */	bl PSMTXCopy
lbl_80C9A7F4:
/* 80C9A7F4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80C9A7F8  28 04 00 00 */	cmplwi r4, 0
/* 80C9A7FC  41 82 00 14 */	beq lbl_80C9A810
/* 80C9A800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A808  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A80C  4B 6A BC A5 */	bl PSMTXCopy
lbl_80C9A810:
/* 80C9A810  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80C9A814  28 04 00 00 */	cmplwi r4, 0
/* 80C9A818  41 82 00 14 */	beq lbl_80C9A82C
/* 80C9A81C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A824  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A828  4B 6A BC 89 */	bl PSMTXCopy
lbl_80C9A82C:
/* 80C9A82C  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 80C9A830  28 04 00 00 */	cmplwi r4, 0
/* 80C9A834  41 82 00 14 */	beq lbl_80C9A848
/* 80C9A838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A840  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A844  4B 6A BC 6D */	bl PSMTXCopy
lbl_80C9A848:
/* 80C9A848  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9A84C  4B 5C D9 89 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A850  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A854  41 82 00 1C */	beq lbl_80C9A870
/* 80C9A858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A860  38 9E 07 DC */	addi r4, r30, 0x7dc
/* 80C9A864  4B 6A BC 4D */	bl PSMTXCopy
/* 80C9A868  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9A86C  4B 3E 11 55 */	bl Move__4dBgWFv
lbl_80C9A870:
/* 80C9A870  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80C9A874  4B 5C D9 61 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A878  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A87C  41 82 00 1C */	beq lbl_80C9A898
/* 80C9A880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A888  38 9E 08 3C */	addi r4, r30, 0x83c
/* 80C9A88C  4B 6A BC 25 */	bl PSMTXCopy
/* 80C9A890  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80C9A894  4B 3E 11 2D */	bl Move__4dBgWFv
lbl_80C9A898:
/* 80C9A898  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C9A89C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C9A8A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C9A8A4  38 63 00 30 */	addi r3, r3, 0x30
/* 80C9A8A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A8AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A8B0  4B 6A BC 01 */	bl PSMTXCopy
/* 80C9A8B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A8B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A8BC  80 9E 05 6C */	lwz r4, 0x56c(r30)
/* 80C9A8C0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9A8C4  4B 6A BB ED */	bl PSMTXCopy
/* 80C9A8C8  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9A8CC  4B 5C D9 09 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9A8D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9A8D4  41 82 00 1C */	beq lbl_80C9A8F0
/* 80C9A8D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A8DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A8E0  38 9E 08 0C */	addi r4, r30, 0x80c
/* 80C9A8E4  4B 6A BB CD */	bl PSMTXCopy
/* 80C9A8E8  38 7E 06 5C */	addi r3, r30, 0x65c
/* 80C9A8EC  4B 3E 10 D5 */	bl Move__4dBgWFv
lbl_80C9A8F0:
/* 80C9A8F0  80 9E 08 6C */	lwz r4, 0x86c(r30)
/* 80C9A8F4  28 04 00 00 */	cmplwi r4, 0
/* 80C9A8F8  41 82 00 C0 */	beq lbl_80C9A9B8
/* 80C9A8FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A904  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80C9A908  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C9A90C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C9A910  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C9A914  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C9A918  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C9A91C  D0 44 00 A4 */	stfs f2, 0xa4(r4)
/* 80C9A920  D0 24 00 A8 */	stfs f1, 0xa8(r4)
/* 80C9A924  D0 04 00 AC */	stfs f0, 0xac(r4)
/* 80C9A928  88 1E 08 74 */	lbz r0, 0x874(r30)
/* 80C9A92C  28 00 00 00 */	cmplwi r0, 0
/* 80C9A930  41 82 00 48 */	beq lbl_80C9A978
/* 80C9A934  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802CC@ha */
/* 80C9A938  38 03 02 CC */	addi r0, r3, 0x02CC /* 0x000802CC@l */
/* 80C9A93C  90 01 00 08 */	stw r0, 8(r1)
/* 80C9A940  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9A944  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9A948  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A94C  38 81 00 08 */	addi r4, r1, 8
/* 80C9A950  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80C9A954  38 C0 00 00 */	li r6, 0
/* 80C9A958  38 E0 00 00 */	li r7, 0
/* 80C9A95C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C9A960  FC 40 08 90 */	fmr f2, f1
/* 80C9A964  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C9A968  FC 80 18 90 */	fmr f4, f3
/* 80C9A96C  39 00 00 00 */	li r8, 0
/* 80C9A970  4B 61 1B 9D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9A974  48 00 00 44 */	b lbl_80C9A9B8
lbl_80C9A978:
/* 80C9A978  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F5@ha */
/* 80C9A97C  38 03 02 F5 */	addi r0, r3, 0x02F5 /* 0x000802F5@l */
/* 80C9A980  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9A984  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9A988  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9A98C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A990  38 81 00 0C */	addi r4, r1, 0xc
/* 80C9A994  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80C9A998  38 C0 00 00 */	li r6, 0
/* 80C9A99C  38 E0 00 00 */	li r7, 0
/* 80C9A9A0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C9A9A4  FC 40 08 90 */	fmr f2, f1
/* 80C9A9A8  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C9A9AC  FC 80 18 90 */	fmr f4, f3
/* 80C9A9B0  39 00 00 00 */	li r8, 0
/* 80C9A9B4  4B 61 1B 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9A9B8:
/* 80C9A9B8  38 60 00 01 */	li r3, 1
/* 80C9A9BC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C9A9C0  4B 6C 78 69 */	bl _restgpr_29
/* 80C9A9C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C9A9C8  7C 08 03 A6 */	mtlr r0
/* 80C9A9CC  38 21 00 60 */	addi r1, r1, 0x60
/* 80C9A9D0  4E 80 00 20 */	blr 
