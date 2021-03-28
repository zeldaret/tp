lbl_80C2350C:
/* 80C2350C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C23510  7C 08 02 A6 */	mflr r0
/* 80C23514  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C23518  39 61 01 00 */	addi r11, r1, 0x100
/* 80C2351C  4B 73 EC A8 */	b _savegpr_23
/* 80C23520  7C 7C 1B 78 */	mr r28, r3
/* 80C23524  7C 9D 23 78 */	mr r29, r4
/* 80C23528  3C 60 80 C2 */	lis r3, l_dir_vec@ha
/* 80C2352C  3B E3 42 F4 */	addi r31, r3, l_dir_vec@l
/* 80C23530  38 61 00 68 */	addi r3, r1, 0x68
/* 80C23534  4B 45 4A 28 */	b __ct__14dBgS_ObjLinChkFv
/* 80C23538  3B C0 FF FF */	li r30, -1
/* 80C2353C  80 1C 00 04 */	lwz r0, 4(r28)
/* 80C23540  90 01 00 70 */	stw r0, 0x70(r1)
/* 80C23544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C23548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2354C  7F A4 EB 78 */	mr r4, r29
/* 80C23550  4B 3E 8E 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80C23554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C23558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2355C  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 80C23560  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 80C23564  38 A1 00 44 */	addi r5, r1, 0x44
/* 80C23568  4B 72 38 04 */	b PSMTXMultVec
/* 80C2356C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C23570  38 81 00 44 */	addi r4, r1, 0x44
/* 80C23574  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C23578  4B 64 36 0C */	b __ml__4cXyzCFf
/* 80C2357C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C23580  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C23584  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C23588  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2358C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C23590  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C23594  38 61 00 44 */	addi r3, r1, 0x44
/* 80C23598  7C 64 1B 78 */	mr r4, r3
/* 80C2359C  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80C235A0  4B 72 3B 38 */	b PSVECScale
/* 80C235A4  3A E0 00 00 */	li r23, 0
/* 80C235A8  3B 60 00 00 */	li r27, 0
/* 80C235AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C235B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C235B4  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80C235B8  3B 01 00 98 */	addi r24, r1, 0x98
/* 80C235BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C235C0  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80C235C4:
/* 80C235C4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C235C8  4B 3E 97 9C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C235CC  7F 43 D3 78 */	mr r3, r26
/* 80C235D0  7F A4 EB 78 */	mr r4, r29
/* 80C235D4  4B 3E 8E 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80C235D8  7F 43 D3 78 */	mr r3, r26
/* 80C235DC  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 80C235E0  7C 84 DA 14 */	add r4, r4, r27
/* 80C235E4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80C235E8  4B 72 37 84 */	b PSMTXMultVec
/* 80C235EC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C235F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C235F4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80C235F8  4B 64 34 EC */	b __pl__4cXyzCFRC3Vec
/* 80C235FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C23600  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C23604  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C23608  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C2360C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C23610  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C23614  38 61 00 68 */	addi r3, r1, 0x68
/* 80C23618  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C2361C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80C23620  7F 86 E3 78 */	mr r6, r28
/* 80C23624  4B 45 47 40 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C23628  7F 23 CB 78 */	mr r3, r25
/* 80C2362C  38 81 00 68 */	addi r4, r1, 0x68
/* 80C23630  4B 45 0D 84 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C23634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C23638  41 82 00 58 */	beq lbl_80C23690
/* 80C2363C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C23640  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C23644  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C23648  4B 64 34 9C */	b __pl__4cXyzCFRC3Vec
/* 80C2364C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C23650  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C23654  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C23658  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C2365C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C23660  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C23664  38 61 00 08 */	addi r3, r1, 8
/* 80C23668  38 81 00 50 */	addi r4, r1, 0x50
/* 80C2366C  7F 05 C3 78 */	mr r5, r24
/* 80C23670  4B 64 34 C4 */	b __mi__4cXyzCFRC3Vec
/* 80C23674  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C23678  D0 1C 09 5C */	stfs f0, 0x95c(r28)
/* 80C2367C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C23680  D0 1C 09 60 */	stfs f0, 0x960(r28)
/* 80C23684  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C23688  D0 1C 09 64 */	stfs f0, 0x964(r28)
/* 80C2368C  7E FE BB 78 */	mr r30, r23
lbl_80C23690:
/* 80C23690  3A F7 00 01 */	addi r23, r23, 1
/* 80C23694  2C 17 00 05 */	cmpwi r23, 5
/* 80C23698  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80C2369C  41 80 FF 28 */	blt lbl_80C235C4
/* 80C236A0  38 61 00 68 */	addi r3, r1, 0x68
/* 80C236A4  38 80 FF FF */	li r4, -1
/* 80C236A8  4B 45 49 10 */	b __dt__14dBgS_ObjLinChkFv
/* 80C236AC  7F C3 F3 78 */	mr r3, r30
/* 80C236B0  39 61 01 00 */	addi r11, r1, 0x100
/* 80C236B4  4B 73 EB 5C */	b _restgpr_23
/* 80C236B8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C236BC  7C 08 03 A6 */	mtlr r0
/* 80C236C0  38 21 01 00 */	addi r1, r1, 0x100
/* 80C236C4  4E 80 00 20 */	blr 
