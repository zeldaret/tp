lbl_80C9D594:
/* 80C9D594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9D598  7C 08 02 A6 */	mflr r0
/* 80C9D59C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9D5A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9D5A4  4B 6C 4C 38 */	b _savegpr_29
/* 80C9D5A8  7C 7E 1B 78 */	mr r30, r3
/* 80C9D5AC  7C 9D 23 78 */	mr r29, r4
/* 80C9D5B0  3C 80 80 CA */	lis r4, l_bmdName@ha
/* 80C9D5B4  3B E4 E8 AC */	addi r31, r4, l_bmdName@l
/* 80C9D5B8  4B FF FE 65 */	bl event_proc_call__12daObjStair_cFv
/* 80C9D5BC  7F C3 F3 78 */	mr r3, r30
/* 80C9D5C0  4B FF FF 19 */	bl mode_proc_call__12daObjStair_cFv
/* 80C9D5C4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C9D5C8  90 1D 00 00 */	stw r0, 0(r29)
/* 80C9D5CC  7F C3 F3 78 */	mr r3, r30
/* 80C9D5D0  4B FF FB 05 */	bl setBaseMtx__12daObjStair_cFv
/* 80C9D5D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D5D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D5DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9D5E0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C9D5E4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C9D5E8  7C 05 07 74 */	extsb r5, r0
/* 80C9D5EC  4B 39 7D 74 */	b isSwitch__10dSv_info_cCFii
/* 80C9D5F0  98 7E 06 3F */	stb r3, 0x63f(r30)
/* 80C9D5F4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C9D5F8  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 80C9D5FC  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80C9D600  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C9D604  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80C9D608  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C9D60C  4B 36 F7 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9D610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D618  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C9D61C  4B 36 EE 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9D620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D628  38 9E 06 00 */	addi r4, r30, 0x600
/* 80C9D62C  7C 85 23 78 */	mr r5, r4
/* 80C9D630  4B 6A 97 3C */	b PSMTXMultVec
/* 80C9D634  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C9D638  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80C9D63C  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 80C9D640  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C9D644  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80C9D648  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C9D64C  4B 36 F7 18 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9D650  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D654  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D658  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C9D65C  4B 36 ED D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9D660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D668  38 9E 06 0C */	addi r4, r30, 0x60c
/* 80C9D66C  7C 85 23 78 */	mr r5, r4
/* 80C9D670  4B 6A 96 FC */	b PSMTXMultVec
/* 80C9D674  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C9D678  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80C9D67C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C9D680  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80C9D684  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80C9D688  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C9D68C  4B 36 F6 D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9D690  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D694  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D698  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C9D69C  4B 36 ED 98 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9D6A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D6A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D6A8  38 9E 06 18 */	addi r4, r30, 0x618
/* 80C9D6AC  7C 85 23 78 */	mr r5, r4
/* 80C9D6B0  4B 6A 96 BC */	b PSMTXMultVec
/* 80C9D6B4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C9D6B8  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80C9D6BC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C9D6C0  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80C9D6C4  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80C9D6C8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C9D6CC  4B 36 F6 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9D6D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D6D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D6D8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C9D6DC  4B 36 ED 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9D6E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D6E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D6E8  38 9E 06 24 */	addi r4, r30, 0x624
/* 80C9D6EC  7C 85 23 78 */	mr r5, r4
/* 80C9D6F0  4B 6A 96 7C */	b PSMTXMultVec
/* 80C9D6F4  38 60 00 01 */	li r3, 1
/* 80C9D6F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9D6FC  4B 6C 4B 2C */	b _restgpr_29
/* 80C9D700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9D704  7C 08 03 A6 */	mtlr r0
/* 80C9D708  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9D70C  4E 80 00 20 */	blr 
