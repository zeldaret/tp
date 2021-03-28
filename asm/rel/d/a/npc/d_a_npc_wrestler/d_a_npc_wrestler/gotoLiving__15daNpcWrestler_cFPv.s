lbl_80B32444:
/* 80B32444  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B32448  7C 08 02 A6 */	mflr r0
/* 80B3244C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B32450  39 61 00 70 */	addi r11, r1, 0x70
/* 80B32454  4B 82 FD 7C */	b _savegpr_26
/* 80B32458  7C 7C 1B 78 */	mr r28, r3
/* 80B3245C  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B32460  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l
/* 80B32464  4B 64 F1 DC */	b dCam_getBody__Fv
/* 80B32468  7C 7D 1B 78 */	mr r29, r3
/* 80B3246C  A0 1C 0E 96 */	lhz r0, 0xe96(r28)
/* 80B32470  2C 00 00 02 */	cmpwi r0, 2
/* 80B32474  41 82 02 1C */	beq lbl_80B32690
/* 80B32478  40 80 03 BC */	bge lbl_80B32834
/* 80B3247C  2C 00 00 00 */	cmpwi r0, 0
/* 80B32480  41 82 00 0C */	beq lbl_80B3248C
/* 80B32484  48 00 03 B0 */	b lbl_80B32834
/* 80B32488  48 00 03 AC */	b lbl_80B32834
lbl_80B3248C:
/* 80B3248C  38 00 00 00 */	li r0, 0
/* 80B32490  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B32494  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B32498  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B3249C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B324A0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B324A4  4B 77 D3 E0 */	b subBgmStop__8Z2SeqMgrFv
/* 80B324A8  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B324AC  28 00 00 01 */	cmplwi r0, 1
/* 80B324B0  41 82 00 F8 */	beq lbl_80B325A8
/* 80B324B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B324B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B324BC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B324C0  80 7C 04 A4 */	lwz r3, 0x4a4(r28)
/* 80B324C4  4B 4E EE 94 */	b fpcEx_SearchByID__FUi
/* 80B324C8  7C 7B 1B 78 */	mr r27, r3
/* 80B324CC  38 00 00 07 */	li r0, 7
/* 80B324D0  90 03 0D F0 */	stw r0, 0xdf0(r3)
/* 80B324D4  38 00 00 01 */	li r0, 1
/* 80B324D8  98 03 0D FE */	stb r0, 0xdfe(r3)
/* 80B324DC  98 03 0D FF */	stb r0, 0xdff(r3)
/* 80B324E0  A8 63 04 B6 */	lha r3, 0x4b6(r3)
/* 80B324E4  3C 63 00 01 */	addis r3, r3, 1
/* 80B324E8  38 03 80 00 */	addi r0, r3, -32768
/* 80B324EC  7C 1A 07 34 */	extsh r26, r0
/* 80B324F0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B324F4  4B 4D A8 70 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B324F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B324FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B32500  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80B32504  4B 4D 9F 30 */	b mDoMtx_YrotM__FPA4_fs
/* 80B32508  80 7C 0B DC */	lwz r3, 0xbdc(r28)
/* 80B3250C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B32510  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B32514  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B32518  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3251C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B32520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B32524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B32528  38 81 00 08 */	addi r4, r1, 8
/* 80B3252C  7C 85 23 78 */	mr r5, r4
/* 80B32530  4B 81 48 3C */	b PSMTXMultVec
/* 80B32534  7F C3 F3 78 */	mr r3, r30
/* 80B32538  38 81 00 08 */	addi r4, r1, 8
/* 80B3253C  7F 45 D3 78 */	mr r5, r26
/* 80B32540  38 C0 00 00 */	li r6, 0
/* 80B32544  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B32548  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B3254C  7D 89 03 A6 */	mtctr r12
/* 80B32550  4E 80 04 21 */	bctrl 
/* 80B32554  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B32558  28 00 00 00 */	cmplwi r0, 0
/* 80B3255C  40 82 00 1C */	bne lbl_80B32578
/* 80B32560  7F C3 F3 78 */	mr r3, r30
/* 80B32564  38 80 00 00 */	li r4, 0
/* 80B32568  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B3256C  81 8C 01 50 */	lwz r12, 0x150(r12)
/* 80B32570  7D 89 03 A6 */	mtctr r12
/* 80B32574  4E 80 04 21 */	bctrl 
lbl_80B32578:
/* 80B32578  38 60 00 2F */	li r3, 0x2f
/* 80B3257C  4B 62 31 38 */	b daNpcF_chkTmpBit__FUl
/* 80B32580  2C 03 00 00 */	cmpwi r3, 0
/* 80B32584  41 82 00 1C */	beq lbl_80B325A0
/* 80B32588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3258C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B32590  38 80 00 46 */	li r4, 0x46
/* 80B32594  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80B32598  7C 05 07 74 */	extsb r5, r0
/* 80B3259C  4B 50 2C 64 */	b onSwitch__10dSv_info_cFii
lbl_80B325A0:
/* 80B325A0  38 00 00 01 */	li r0, 1
/* 80B325A4  98 1C 0E 99 */	stb r0, 0xe99(r28)
lbl_80B325A8:
/* 80B325A8  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B325AC  D0 3C 0E 08 */	stfs f1, 0xe08(r28)
/* 80B325B0  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80B325B4  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B325B8  D0 3C 0E 10 */	stfs f1, 0xe10(r28)
/* 80B325BC  D0 3C 0E 14 */	stfs f1, 0xe14(r28)
/* 80B325C0  D0 3C 0E 18 */	stfs f1, 0xe18(r28)
/* 80B325C4  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80B325C8  D0 1C 0E 1C */	stfs f0, 0xe1c(r28)
/* 80B325CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B325D0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B325D4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B325D8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80B325DC  4B 4D A7 88 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B325E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B325E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B325E8  38 9C 0E 08 */	addi r4, r28, 0xe08
/* 80B325EC  7C 85 23 78 */	mr r5, r4
/* 80B325F0  4B 81 47 7C */	b PSMTXMultVec
/* 80B325F4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B325F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B325FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B32600  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B32604  38 04 2D 00 */	addi r0, r4, 0x2d00
/* 80B32608  7C 04 07 34 */	extsh r4, r0
/* 80B3260C  4B 4D 9E 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80B32610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B32614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B32618  38 80 F3 6C */	li r4, -3220
/* 80B3261C  4B 4D 9D 80 */	b mDoMtx_XrotM__FPA4_fs
/* 80B32620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B32624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B32628  38 9C 0E 14 */	addi r4, r28, 0xe14
/* 80B3262C  7C 85 23 78 */	mr r5, r4
/* 80B32630  4B 81 47 3C */	b PSMTXMultVec
/* 80B32634  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B32638  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B3263C  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B32640  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B32644  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B32648  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B3264C  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B32650  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B32654  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B32658  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3265C  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B32660  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B32664  7F A3 EB 78 */	mr r3, r29
/* 80B32668  38 81 00 44 */	addi r4, r1, 0x44
/* 80B3266C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B32670  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80B32674  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B32678  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3267C  38 C0 00 00 */	li r6, 0
/* 80B32680  4B 64 E4 60 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32684  38 00 00 02 */	li r0, 2
/* 80B32688  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3268C  48 00 01 A8 */	b lbl_80B32834
lbl_80B32690:
/* 80B32690  80 1C 0E 84 */	lwz r0, 0xe84(r28)
/* 80B32694  2C 00 00 01 */	cmpwi r0, 1
/* 80B32698  41 82 00 78 */	beq lbl_80B32710
/* 80B3269C  40 80 01 98 */	bge lbl_80B32834
/* 80B326A0  2C 00 00 00 */	cmpwi r0, 0
/* 80B326A4  40 80 00 08 */	bge lbl_80B326AC
/* 80B326A8  48 00 01 8C */	b lbl_80B32834
lbl_80B326AC:
/* 80B326AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B326B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B326B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B326B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B326BC  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 80B326C0  7D 89 03 A6 */	mtctr r12
/* 80B326C4  4E 80 04 21 */	bctrl 
/* 80B326C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B326CC  40 82 01 68 */	bne lbl_80B32834
/* 80B326D0  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80B326D4  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B326D8  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B326DC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B326E0  FC 00 00 1E */	fctiwz f0, f0
/* 80B326E4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80B326E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B326EC  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B326F0  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B326F4  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B326F8  FC 20 00 50 */	fneg f1, f0
/* 80B326FC  4B 4D 59 D4 */	b fadeOut__13mDoGph_gInf_cFf
/* 80B32700  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B32704  38 03 00 01 */	addi r0, r3, 1
/* 80B32708  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3270C  48 00 01 28 */	b lbl_80B32834
lbl_80B32710:
/* 80B32710  80 9C 0E 80 */	lwz r4, 0xe80(r28)
/* 80B32714  38 04 FF FF */	addi r0, r4, -1
/* 80B32718  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3271C  2C 04 00 00 */	cmpwi r4, 0
/* 80B32720  41 81 01 14 */	bgt lbl_80B32834
/* 80B32724  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B32728  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B3272C  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B32730  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B32734  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B32738  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3273C  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B32740  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B32744  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B32748  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B3274C  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B32750  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B32754  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B32758  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B3275C  4B 64 E4 BC */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80B32760  7F A3 EB 78 */	mr r3, r29
/* 80B32764  4B 62 ED 48 */	b Start__9dCamera_cFv
/* 80B32768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3276C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B32770  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B32774  4B 50 FC F4 */	b reset__14dEvt_control_cFv
/* 80B32778  38 00 00 01 */	li r0, 1
/* 80B3277C  98 1C 0E 99 */	stb r0, 0xe99(r28)
/* 80B32780  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B32784  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B32788  D0 1C 0E 8C */	stfs f0, 0xe8c(r28)
/* 80B3278C  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B32790  28 00 00 00 */	cmplwi r0, 0
/* 80B32794  40 82 00 10 */	bne lbl_80B327A4
/* 80B32798  7F 83 E3 78 */	mr r3, r28
/* 80B3279C  4B 4E 74 E0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B327A0  48 00 00 94 */	b lbl_80B32834
lbl_80B327A4:
/* 80B327A4  3C 60 80 B4 */	lis r3, lit_5820@ha
/* 80B327A8  38 83 28 E8 */	addi r4, r3, lit_5820@l
/* 80B327AC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B327B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B327B4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B327B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B327BC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B327C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B327C4  38 00 00 03 */	li r0, 3
/* 80B327C8  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B327CC  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B327D0  4B 82 F8 48 */	b __ptmf_test
/* 80B327D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B327D8  41 82 00 18 */	beq lbl_80B327F0
/* 80B327DC  7F 83 E3 78 */	mr r3, r28
/* 80B327E0  38 80 00 00 */	li r4, 0
/* 80B327E4  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B327E8  4B 82 F8 9C */	b __ptmf_scall
/* 80B327EC  60 00 00 00 */	nop 
lbl_80B327F0:
/* 80B327F0  38 00 00 00 */	li r0, 0
/* 80B327F4  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B327F8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B327FC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B32800  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B32804  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B32808  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B3280C  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B32810  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B32814  4B 82 F8 04 */	b __ptmf_test
/* 80B32818  2C 03 00 00 */	cmpwi r3, 0
/* 80B3281C  41 82 00 18 */	beq lbl_80B32834
/* 80B32820  7F 83 E3 78 */	mr r3, r28
/* 80B32824  38 80 00 00 */	li r4, 0
/* 80B32828  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3282C  4B 82 F8 58 */	b __ptmf_scall
/* 80B32830  60 00 00 00 */	nop 
lbl_80B32834:
/* 80B32834  38 60 00 01 */	li r3, 1
/* 80B32838  39 61 00 70 */	addi r11, r1, 0x70
/* 80B3283C  4B 82 F9 E0 */	b _restgpr_26
/* 80B32840  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B32844  7C 08 03 A6 */	mtlr r0
/* 80B32848  38 21 00 70 */	addi r1, r1, 0x70
/* 80B3284C  4E 80 00 20 */	blr 
