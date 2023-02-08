lbl_80D3269C:
/* 80D3269C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D326A0  7C 08 02 A6 */	mflr r0
/* 80D326A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D326A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D326AC  4B 62 FB 31 */	bl _savegpr_29
/* 80D326B0  7C 7E 1B 78 */	mr r30, r3
/* 80D326B4  3C 80 80 D3 */	lis r4, mCcDObjInfo__11daWdStick_c@ha /* 0x80D34138@ha */
/* 80D326B8  3B E4 41 38 */	addi r31, r4, mCcDObjInfo__11daWdStick_c@l /* 0x80D34138@l */
/* 80D326BC  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80D326C0  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 80D326C4  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80D326C8  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80D326CC  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80D326D0  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 80D326D4  C0 03 0A 64 */	lfs f0, 0xa64(r3)
/* 80D326D8  D0 03 0A 7C */	stfs f0, 0xa7c(r3)
/* 80D326DC  C0 03 0A 68 */	lfs f0, 0xa68(r3)
/* 80D326E0  D0 03 0A 80 */	stfs f0, 0xa80(r3)
/* 80D326E4  C0 03 0A 6C */	lfs f0, 0xa6c(r3)
/* 80D326E8  D0 03 0A 84 */	stfs f0, 0xa84(r3)
/* 80D326EC  C0 03 0A 70 */	lfs f0, 0xa70(r3)
/* 80D326F0  D0 03 0A 88 */	stfs f0, 0xa88(r3)
/* 80D326F4  C0 03 0A 74 */	lfs f0, 0xa74(r3)
/* 80D326F8  D0 03 0A 8C */	stfs f0, 0xa8c(r3)
/* 80D326FC  C0 03 0A 78 */	lfs f0, 0xa78(r3)
/* 80D32700  D0 03 0A 90 */	stfs f0, 0xa90(r3)
/* 80D32704  4B FF FA 99 */	bl setFire__11daWdStick_cFv
/* 80D32708  C0 1E 0A B4 */	lfs f0, 0xab4(r30)
/* 80D3270C  D0 1E 0A C0 */	stfs f0, 0xac0(r30)
/* 80D32710  C0 1E 0A B8 */	lfs f0, 0xab8(r30)
/* 80D32714  D0 1E 0A C4 */	stfs f0, 0xac4(r30)
/* 80D32718  C0 1E 0A BC */	lfs f0, 0xabc(r30)
/* 80D3271C  D0 1E 0A C8 */	stfs f0, 0xac8(r30)
/* 80D32720  C0 1E 0A CC */	lfs f0, 0xacc(r30)
/* 80D32724  D0 1E 0A D8 */	stfs f0, 0xad8(r30)
/* 80D32728  C0 1E 0A D0 */	lfs f0, 0xad0(r30)
/* 80D3272C  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80D32730  C0 1E 0A D4 */	lfs f0, 0xad4(r30)
/* 80D32734  D0 1E 0A E0 */	stfs f0, 0xae0(r30)
/* 80D32738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3273C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D32740  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D32744  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80D32748  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80D3274C  4B 2D 9A BD */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D32750  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80D32754  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D32758  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D3275C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D32760  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D32764  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D32768  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3276C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D32770  38 81 00 34 */	addi r4, r1, 0x34
/* 80D32774  38 A1 00 28 */	addi r5, r1, 0x28
/* 80D32778  4B 61 45 F5 */	bl PSMTXMultVec
/* 80D3277C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80D32780  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D32784  38 A1 00 28 */	addi r5, r1, 0x28
/* 80D32788  4B 53 43 5D */	bl __pl__4cXyzCFRC3Vec
/* 80D3278C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D32790  D0 1E 0A B4 */	stfs f0, 0xab4(r30)
/* 80D32794  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D32798  D0 1E 0A B8 */	stfs f0, 0xab8(r30)
/* 80D3279C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D327A0  D0 1E 0A BC */	stfs f0, 0xabc(r30)
/* 80D327A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D327A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D327AC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D327B0  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80D327B4  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80D327B8  4B 2D 9A 51 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D327BC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D327C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D327C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D327C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D327CC  38 81 00 34 */	addi r4, r1, 0x34
/* 80D327D0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80D327D4  4B 61 45 99 */	bl PSMTXMultVec
/* 80D327D8  38 61 00 10 */	addi r3, r1, 0x10
/* 80D327DC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D327E0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80D327E4  4B 53 43 01 */	bl __pl__4cXyzCFRC3Vec
/* 80D327E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D327EC  D0 1E 0A CC */	stfs f0, 0xacc(r30)
/* 80D327F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D327F4  D0 1E 0A D0 */	stfs f0, 0xad0(r30)
/* 80D327F8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D327FC  D0 1E 0A D4 */	stfs f0, 0xad4(r30)
/* 80D32800  7F C3 F3 78 */	mr r3, r30
/* 80D32804  48 00 0B F1 */	bl mode_proc_call__11daWdStick_cFv
/* 80D32808  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D3280C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D32810  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D32814  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D32818  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D3281C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80D32820  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D32824  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80D32828  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D3282C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80D32830  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D32834  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80D32838  7F C3 F3 78 */	mr r3, r30
/* 80D3283C  4B FF F3 95 */	bl setBaseMtx__11daWdStick_cFv
/* 80D32840  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 80D32844  4B 35 1C 1D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D32848  28 03 00 00 */	cmplwi r3, 0
/* 80D3284C  41 82 00 A4 */	beq lbl_80D328F0
/* 80D32850  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 80D32854  4B 35 1C F5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80D32858  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D3285C  28 00 02 00 */	cmplwi r0, 0x200
/* 80D32860  40 82 00 90 */	bne lbl_80D328F0
/* 80D32864  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80D32868  28 00 00 01 */	cmplwi r0, 1
/* 80D3286C  40 82 00 84 */	bne lbl_80D328F0
/* 80D32870  88 1E 0A AC */	lbz r0, 0xaac(r30)
/* 80D32874  28 00 00 00 */	cmplwi r0, 0
/* 80D32878  40 82 00 78 */	bne lbl_80D328F0
/* 80D3287C  38 80 00 01 */	li r4, 1
/* 80D32880  98 9E 0A AC */	stb r4, 0xaac(r30)
/* 80D32884  3C 60 80 D3 */	lis r3, l_HIO@ha /* 0x80D34424@ha */
/* 80D32888  38 63 44 24 */	addi r3, r3, l_HIO@l /* 0x80D34424@l */
/* 80D3288C  A8 03 00 06 */	lha r0, 6(r3)
/* 80D32890  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D32894  B0 1E 0A AE */	sth r0, 0xaae(r30)
/* 80D32898  98 9E 08 69 */	stb r4, 0x869(r30)
/* 80D3289C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D328A0  7C 03 07 74 */	extsb r3, r0
/* 80D328A4  4B 2F A7 C9 */	bl dComIfGp_getReverb__Fi
/* 80D328A8  7C 67 1B 78 */	mr r7, r3
/* 80D328AC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80D328B0  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80D328B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D328B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D328BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D328C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D328C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80D328C8  38 BE 0A 64 */	addi r5, r30, 0xa64
/* 80D328CC  38 C0 00 00 */	li r6, 0
/* 80D328D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D328D4  FC 40 08 90 */	fmr f2, f1
/* 80D328D8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D328DC  FC 80 18 90 */	fmr f4, f3
/* 80D328E0  39 00 00 00 */	li r8, 0
/* 80D328E4  4B 57 90 A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D328E8  7F C3 F3 78 */	mr r3, r30
/* 80D328EC  4B FF F8 AD */	bl setLight__11daWdStick_cFv
lbl_80D328F0:
/* 80D328F0  38 7E 09 2C */	addi r3, r30, 0x92c
/* 80D328F4  4B 35 1B 6D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D328F8  28 03 00 00 */	cmplwi r3, 0
/* 80D328FC  41 82 00 A4 */	beq lbl_80D329A0
/* 80D32900  38 7E 09 2C */	addi r3, r30, 0x92c
/* 80D32904  4B 35 1C 45 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80D32908  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D3290C  28 00 02 00 */	cmplwi r0, 0x200
/* 80D32910  40 82 00 90 */	bne lbl_80D329A0
/* 80D32914  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80D32918  28 00 00 01 */	cmplwi r0, 1
/* 80D3291C  40 82 00 84 */	bne lbl_80D329A0
/* 80D32920  88 1E 0A AD */	lbz r0, 0xaad(r30)
/* 80D32924  28 00 00 00 */	cmplwi r0, 0
/* 80D32928  40 82 00 78 */	bne lbl_80D329A0
/* 80D3292C  38 80 00 01 */	li r4, 1
/* 80D32930  98 9E 0A AD */	stb r4, 0xaad(r30)
/* 80D32934  3C 60 80 D3 */	lis r3, l_HIO@ha /* 0x80D34424@ha */
/* 80D32938  38 63 44 24 */	addi r3, r3, l_HIO@l /* 0x80D34424@l */
/* 80D3293C  A8 03 00 06 */	lha r0, 6(r3)
/* 80D32940  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D32944  B0 1E 0A B0 */	sth r0, 0xab0(r30)
/* 80D32948  98 9E 09 A1 */	stb r4, 0x9a1(r30)
/* 80D3294C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D32950  7C 03 07 74 */	extsb r3, r0
/* 80D32954  4B 2F A7 19 */	bl dComIfGp_getReverb__Fi
/* 80D32958  7C 67 1B 78 */	mr r7, r3
/* 80D3295C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80D32960  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80D32964  90 01 00 08 */	stw r0, 8(r1)
/* 80D32968  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D3296C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D32970  80 63 00 00 */	lwz r3, 0(r3)
/* 80D32974  38 81 00 08 */	addi r4, r1, 8
/* 80D32978  38 BE 0A 70 */	addi r5, r30, 0xa70
/* 80D3297C  38 C0 00 00 */	li r6, 0
/* 80D32980  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D32984  FC 40 08 90 */	fmr f2, f1
/* 80D32988  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D3298C  FC 80 18 90 */	fmr f4, f3
/* 80D32990  39 00 00 00 */	li r8, 0
/* 80D32994  4B 57 8F F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D32998  7F C3 F3 78 */	mr r3, r30
/* 80D3299C  4B FF F7 FD */	bl setLight__11daWdStick_cFv
lbl_80D329A0:
/* 80D329A0  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80D329A4  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80D329A8  98 1E 0A F4 */	stb r0, 0xaf4(r30)
/* 80D329AC  38 7E 09 18 */	addi r3, r30, 0x918
/* 80D329B0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80D329B4  4B 53 CD 55 */	bl SetR__8cM3dGSphFf
/* 80D329B8  38 7E 09 18 */	addi r3, r30, 0x918
/* 80D329BC  38 9E 0A 64 */	addi r4, r30, 0xa64
/* 80D329C0  4B 53 CC 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D329C4  38 7E 0A 50 */	addi r3, r30, 0xa50
/* 80D329C8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80D329CC  4B 53 CD 3D */	bl SetR__8cM3dGSphFf
/* 80D329D0  38 7E 0A 50 */	addi r3, r30, 0xa50
/* 80D329D4  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80D329D8  4B 53 CC 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D329DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D329E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D329E4  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80D329E8  7F A3 EB 78 */	mr r3, r29
/* 80D329EC  38 9E 07 F4 */	addi r4, r30, 0x7f4
/* 80D329F0  4B 53 21 B9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D329F4  7F A3 EB 78 */	mr r3, r29
/* 80D329F8  38 9E 09 2C */	addi r4, r30, 0x92c
/* 80D329FC  4B 53 21 AD */	bl Set__4cCcSFP8cCcD_Obj
/* 80D32A00  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D32A04  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80D32A08  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D32A0C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80D32A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32A14  4C 40 13 82 */	cror 2, 0, 2
/* 80D32A18  40 82 00 3C */	bne lbl_80D32A54
/* 80D32A1C  38 00 00 00 */	li r0, 0
/* 80D32A20  98 1E 0A AC */	stb r0, 0xaac(r30)
/* 80D32A24  98 1E 0A AD */	stb r0, 0xaad(r30)
/* 80D32A28  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80D32A2C  60 00 00 10 */	ori r0, r0, 0x10
/* 80D32A30  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D32A34  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80D32A38  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D32A3C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80D32A40  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D32A44  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80D32A48  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D32A4C  7F C3 F3 78 */	mr r3, r30
/* 80D32A50  48 00 0A BD */	bl mode_init_wait__11daWdStick_cFv
lbl_80D32A54:
/* 80D32A54  38 60 00 01 */	li r3, 1
/* 80D32A58  39 61 00 50 */	addi r11, r1, 0x50
/* 80D32A5C  4B 62 F7 CD */	bl _restgpr_29
/* 80D32A60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D32A64  7C 08 03 A6 */	mtlr r0
/* 80D32A68  38 21 00 50 */	addi r1, r1, 0x50
/* 80D32A6C  4E 80 00 20 */	blr 
