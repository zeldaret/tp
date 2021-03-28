lbl_807550EC:
/* 807550EC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807550F0  7C 08 02 A6 */	mflr r0
/* 807550F4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807550F8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807550FC  4B C0 D0 DC */	b _savegpr_28
/* 80755100  7C 7F 1B 78 */	mr r31, r3
/* 80755104  3C 60 80 75 */	lis r3, lit_3917@ha
/* 80755108  3B C3 76 FC */	addi r30, r3, lit_3917@l
/* 8075510C  7F FD FB 78 */	mr r29, r31
/* 80755110  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80755114  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80755118  40 82 00 0C */	bne lbl_80755124
/* 8075511C  38 60 00 01 */	li r3, 1
/* 80755120  48 00 0A C8 */	b lbl_80755BE8
lbl_80755124:
/* 80755124  A8 7F 07 40 */	lha r3, 0x740(r31)
/* 80755128  38 03 00 01 */	addi r0, r3, 1
/* 8075512C  B0 1F 07 40 */	sth r0, 0x740(r31)
/* 80755130  38 60 00 00 */	li r3, 0
/* 80755134  38 00 00 05 */	li r0, 5
/* 80755138  7C 09 03 A6 */	mtctr r0
lbl_8075513C:
/* 8075513C  38 A3 07 4A */	addi r5, r3, 0x74a
/* 80755140  7C 9F 2A AE */	lhax r4, r31, r5
/* 80755144  2C 04 00 00 */	cmpwi r4, 0
/* 80755148  41 82 00 0C */	beq lbl_80755154
/* 8075514C  38 04 FF FF */	addi r0, r4, -1
/* 80755150  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80755154:
/* 80755154  38 63 00 02 */	addi r3, r3, 2
/* 80755158  42 00 FF E4 */	bdnz lbl_8075513C
/* 8075515C  A8 7F 07 54 */	lha r3, 0x754(r31)
/* 80755160  2C 03 00 00 */	cmpwi r3, 0
/* 80755164  41 82 00 0C */	beq lbl_80755170
/* 80755168  38 03 FF FF */	addi r0, r3, -1
/* 8075516C  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80755170:
/* 80755170  7F E3 FB 78 */	mr r3, r31
/* 80755174  4B FF F9 65 */	bl action__FP10e_po_class
/* 80755178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075517C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755180  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80755184  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80755188  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8075518C  4B BF 17 5C */	b PSMTXTrans
/* 80755190  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755194  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755198  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8075519C  4B 8B 72 98 */	b mDoMtx_YrotM__FPA4_fs
/* 807551A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807551A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807551A8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807551AC  4B 8B 71 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 807551B0  C0 3F 08 08 */	lfs f1, 0x808(r31)
/* 807551B4  FC 40 08 90 */	fmr f2, f1
/* 807551B8  FC 60 08 90 */	fmr f3, f1
/* 807551BC  4B 8B 7C 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 807551C0  88 1F 07 5A */	lbz r0, 0x75a(r31)
/* 807551C4  28 00 00 00 */	cmplwi r0, 0
/* 807551C8  41 82 00 80 */	beq lbl_80755248
/* 807551CC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 807551D0  83 A3 00 04 */	lwz r29, 4(r3)
/* 807551D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807551D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807551DC  38 9D 00 24 */	addi r4, r29, 0x24
/* 807551E0  4B BF 12 D0 */	b PSMTXCopy
/* 807551E4  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 807551E8  4B 8B C0 04 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807551EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807551F0  7C 03 07 74 */	extsb r3, r0
/* 807551F4  4B 8D 7E 78 */	b dComIfGp_getReverb__Fi
/* 807551F8  7C 65 1B 78 */	mr r5, r3
/* 807551FC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80755200  38 80 00 00 */	li r4, 0
/* 80755204  4B 8B BE AC */	b play__16mDoExt_McaMorfSOFUlSc
/* 80755208  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8075520C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80755210  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80755214  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80755218  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8075521C  80 84 00 00 */	lwz r4, 0(r4)
/* 80755220  4B BF 12 90 */	b PSMTXCopy
/* 80755224  C0 1E 03 50 */	lfs f0, 0x350(r30)
/* 80755228  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075522C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80755230  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755234  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755238  38 61 00 80 */	addi r3, r1, 0x80
/* 8075523C  38 9F 07 B8 */	addi r4, r31, 0x7b8
/* 80755240  4B B1 BC AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80755244  48 00 05 CC */	b lbl_80755810
lbl_80755248:
/* 80755248  7F A3 EB 78 */	mr r3, r29
/* 8075524C  4B 8C 42 B0 */	b checkBallModelDraw__13fopEn_enemy_cFv
/* 80755250  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80755254  41 82 00 30 */	beq lbl_80755284
/* 80755258  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070524@ha */
/* 8075525C  38 03 05 24 */	addi r0, r3, 0x0524 /* 0x00070524@l */
/* 80755260  90 01 00 28 */	stw r0, 0x28(r1)
/* 80755264  38 7F 06 9C */	addi r3, r31, 0x69c
/* 80755268  38 81 00 28 */	addi r4, r1, 0x28
/* 8075526C  38 A0 00 00 */	li r5, 0
/* 80755270  38 C0 FF FF */	li r6, -1
/* 80755274  81 9F 06 9C */	lwz r12, 0x69c(r31)
/* 80755278  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8075527C  7D 89 03 A6 */	mtctr r12
/* 80755280  4E 80 04 21 */	bctrl 
lbl_80755284:
/* 80755284  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80755288  83 83 00 04 */	lwz r28, 4(r3)
/* 8075528C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755290  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755294  38 9C 00 24 */	addi r4, r28, 0x24
/* 80755298  4B BF 12 18 */	b PSMTXCopy
/* 8075529C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807552A0  7C 03 07 74 */	extsb r3, r0
/* 807552A4  4B 8D 7D C8 */	b dComIfGp_getReverb__Fi
/* 807552A8  7C 65 1B 78 */	mr r5, r3
/* 807552AC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 807552B0  38 80 00 00 */	li r4, 0
/* 807552B4  4B 8B BD FC */	b play__16mDoExt_McaMorfSOFUlSc
/* 807552B8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 807552BC  4B 8B BF 30 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807552C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807552C4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807552C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807552CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807552D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807552D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807552D8  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 807552DC  38 81 00 74 */	addi r4, r1, 0x74
/* 807552E0  4B B1 9E FC */	b SetC__8cM3dGCylFRC4cXyz
/* 807552E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807552E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807552EC  3B A3 23 3C */	addi r29, r3, 0x233c
/* 807552F0  7F A3 EB 78 */	mr r3, r29
/* 807552F4  38 9F 0A A8 */	addi r4, r31, 0xaa8
/* 807552F8  4B B0 F8 B0 */	b Set__4cCcSFP8cCcD_Obj
/* 807552FC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80755300  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80755304  38 63 00 60 */	addi r3, r3, 0x60
/* 80755308  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8075530C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80755310  80 84 00 00 */	lwz r4, 0(r4)
/* 80755314  4B BF 11 9C */	b PSMTXCopy
/* 80755318  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075531C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755320  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755324  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755328  38 61 00 80 */	addi r3, r1, 0x80
/* 8075532C  38 9F 05 38 */	addi r4, r31, 0x538
/* 80755330  4B B1 BB BC */	b MtxPosition__FP4cXyzP4cXyz
/* 80755334  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80755338  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8075533C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80755340  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80755344  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80755348  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8075534C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80755350  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80755354  EC 01 00 2A */	fadds f0, f1, f0
/* 80755358  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8075535C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80755360  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80755364  38 63 03 00 */	addi r3, r3, 0x300
/* 80755368  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8075536C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80755370  80 84 00 00 */	lwz r4, 0(r4)
/* 80755374  4B BF 11 3C */	b PSMTXCopy
/* 80755378  C0 1E 03 54 */	lfs f0, 0x354(r30)
/* 8075537C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755380  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80755384  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755388  C0 1E 03 58 */	lfs f0, 0x358(r30)
/* 8075538C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755390  C0 1F 07 7C */	lfs f0, 0x77c(r31)
/* 80755394  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 80755398  C0 1F 07 80 */	lfs f0, 0x780(r31)
/* 8075539C  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 807553A0  C0 1F 07 84 */	lfs f0, 0x784(r31)
/* 807553A4  D0 1F 07 78 */	stfs f0, 0x778(r31)
/* 807553A8  38 61 00 80 */	addi r3, r1, 0x80
/* 807553AC  38 9F 07 7C */	addi r4, r31, 0x77c
/* 807553B0  4B B1 BB 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 807553B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807553B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807553BC  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 807553C0  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 807553C4  C0 7F 07 84 */	lfs f3, 0x784(r31)
/* 807553C8  4B BF 15 20 */	b PSMTXTrans
/* 807553CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807553D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807553D4  A8 9F 07 66 */	lha r4, 0x766(r31)
/* 807553D8  4B 8B 70 5C */	b mDoMtx_YrotM__FPA4_fs
/* 807553DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807553E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807553E4  A8 9F 07 64 */	lha r4, 0x764(r31)
/* 807553E8  4B 8B 6F B4 */	b mDoMtx_XrotM__FPA4_fs
/* 807553EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807553F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807553F4  A8 9F 07 68 */	lha r4, 0x768(r31)
/* 807553F8  4B 8B 70 D4 */	b mDoMtx_ZrotM__FPA4_fs
/* 807553FC  C0 3F 08 08 */	lfs f1, 0x808(r31)
/* 80755400  FC 40 08 90 */	fmr f2, f1
/* 80755404  FC 60 08 90 */	fmr f3, f1
/* 80755408  4B 8B 7A 30 */	b scaleM__14mDoMtx_stack_cFfff
/* 8075540C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755414  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80755418  38 84 00 24 */	addi r4, r4, 0x24
/* 8075541C  4B BF 10 94 */	b PSMTXCopy
/* 80755420  C0 3E 03 5C */	lfs f1, 0x35c(r30)
/* 80755424  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 80755428  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8075542C  4B 8B 79 70 */	b transM__14mDoMtx_stack_cFfff
/* 80755430  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755434  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755438  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8075543C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80755440  80 84 00 00 */	lwz r4, 0(r4)
/* 80755444  4B BF 10 6C */	b PSMTXCopy
/* 80755448  38 61 00 80 */	addi r3, r1, 0x80
/* 8075544C  38 81 00 74 */	addi r4, r1, 0x74
/* 80755450  4B B1 BA 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80755454  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 80755458  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 8075545C  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 80755460  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
/* 80755464  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 80755468  D0 1F 07 B4 */	stfs f0, 0x7b4(r31)
/* 8075546C  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 80755470  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 80755474  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 80755478  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075547C  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 80755480  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 80755484  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80755488  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 8075548C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80755490  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 80755494  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80755498  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075549C  88 1F 07 60 */	lbz r0, 0x760(r31)
/* 807554A0  28 00 00 00 */	cmplwi r0, 0
/* 807554A4  41 82 00 3C */	beq lbl_807554E0
/* 807554A8  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 807554AC  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 807554B0  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 807554B4  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
/* 807554B8  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 807554BC  D0 1F 07 B4 */	stfs f0, 0x7b4(r31)
/* 807554C0  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 807554C4  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 807554C8  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 807554CC  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 807554D0  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 807554D4  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 807554D8  38 00 00 00 */	li r0, 0
/* 807554DC  98 1F 07 60 */	stb r0, 0x760(r31)
lbl_807554E0:
/* 807554E0  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 807554E4  D0 1F 07 88 */	stfs f0, 0x788(r31)
/* 807554E8  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 807554EC  D0 1F 07 8C */	stfs f0, 0x78c(r31)
/* 807554F0  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 807554F4  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 807554F8  88 1F 0A 68 */	lbz r0, 0xa68(r31)
/* 807554FC  7C 00 07 74 */	extsb r0, r0
/* 80755500  2C 00 00 02 */	cmpwi r0, 2
/* 80755504  41 80 00 3C */	blt lbl_80755540
/* 80755508  80 1F 0D 1C */	lwz r0, 0xd1c(r31)
/* 8075550C  60 00 00 01 */	ori r0, r0, 1
/* 80755510  90 1F 0D 1C */	stw r0, 0xd1c(r31)
/* 80755514  88 1F 0A 68 */	lbz r0, 0xa68(r31)
/* 80755518  2C 00 00 02 */	cmpwi r0, 2
/* 8075551C  40 82 00 14 */	bne lbl_80755530
/* 80755520  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 80755524  38 81 00 74 */	addi r4, r1, 0x74
/* 80755528  4B 92 F5 50 */	b StartCAt__8dCcD_SphFR4cXyz
/* 8075552C  48 00 00 2C */	b lbl_80755558
lbl_80755530:
/* 80755530  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 80755534  38 81 00 74 */	addi r4, r1, 0x74
/* 80755538  4B 92 F5 8C */	b MoveCAt__8dCcD_SphFR4cXyz
/* 8075553C  48 00 00 1C */	b lbl_80755558
lbl_80755540:
/* 80755540  80 1F 0D 1C */	lwz r0, 0xd1c(r31)
/* 80755544  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80755548  90 1F 0D 1C */	stw r0, 0xd1c(r31)
/* 8075554C  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80755550  38 81 00 74 */	addi r4, r1, 0x74
/* 80755554  4B B1 A0 F4 */	b SetC__8cM3dGSphFRC4cXyz
lbl_80755558:
/* 80755558  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 8075555C  C0 3E 03 28 */	lfs f1, 0x328(r30)
/* 80755560  4B B1 A1 A8 */	b SetR__8cM3dGSphFf
/* 80755564  7F A3 EB 78 */	mr r3, r29
/* 80755568  38 9F 0D 1C */	addi r4, r31, 0xd1c
/* 8075556C  4B B0 F6 3C */	b Set__4cCcSFP8cCcD_Obj
/* 80755570  38 61 00 50 */	addi r3, r1, 0x50
/* 80755574  38 9F 07 70 */	addi r4, r31, 0x770
/* 80755578  38 BF 07 7C */	addi r5, r31, 0x77c
/* 8075557C  4B B1 15 B8 */	b __mi__4cXyzCFRC3Vec
/* 80755580  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80755584  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755588  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8075558C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755590  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80755594  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755598  38 61 00 80 */	addi r3, r1, 0x80
/* 8075559C  4B BF 1B 9C */	b PSVECSquareMag
/* 807555A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807555A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807555A8  40 81 00 58 */	ble lbl_80755600
/* 807555AC  FC 00 08 34 */	frsqrte f0, f1
/* 807555B0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807555B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807555B8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807555BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807555C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807555C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807555C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807555CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807555D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807555D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807555D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807555DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807555E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807555E4  FC 00 00 32 */	fmul f0, f0, f0
/* 807555E8  FC 01 00 32 */	fmul f0, f1, f0
/* 807555EC  FC 03 00 28 */	fsub f0, f3, f0
/* 807555F0  FC 02 00 32 */	fmul f0, f2, f0
/* 807555F4  FC 21 00 32 */	fmul f1, f1, f0
/* 807555F8  FC 20 08 18 */	frsp f1, f1
/* 807555FC  48 00 00 88 */	b lbl_80755684
lbl_80755600:
/* 80755600  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80755604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80755608  40 80 00 10 */	bge lbl_80755618
/* 8075560C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80755610  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80755614  48 00 00 70 */	b lbl_80755684
lbl_80755618:
/* 80755618  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8075561C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80755620  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80755624  3C 00 7F 80 */	lis r0, 0x7f80
/* 80755628  7C 03 00 00 */	cmpw r3, r0
/* 8075562C  41 82 00 14 */	beq lbl_80755640
/* 80755630  40 80 00 40 */	bge lbl_80755670
/* 80755634  2C 03 00 00 */	cmpwi r3, 0
/* 80755638  41 82 00 20 */	beq lbl_80755658
/* 8075563C  48 00 00 34 */	b lbl_80755670
lbl_80755640:
/* 80755640  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80755644  41 82 00 0C */	beq lbl_80755650
/* 80755648  38 00 00 01 */	li r0, 1
/* 8075564C  48 00 00 28 */	b lbl_80755674
lbl_80755650:
/* 80755650  38 00 00 02 */	li r0, 2
/* 80755654  48 00 00 20 */	b lbl_80755674
lbl_80755658:
/* 80755658  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075565C  41 82 00 0C */	beq lbl_80755668
/* 80755660  38 00 00 05 */	li r0, 5
/* 80755664  48 00 00 10 */	b lbl_80755674
lbl_80755668:
/* 80755668  38 00 00 03 */	li r0, 3
/* 8075566C  48 00 00 08 */	b lbl_80755674
lbl_80755670:
/* 80755670  38 00 00 04 */	li r0, 4
lbl_80755674:
/* 80755674  2C 00 00 01 */	cmpwi r0, 1
/* 80755678  40 82 00 0C */	bne lbl_80755684
/* 8075567C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80755680  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80755684:
/* 80755684  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80755688  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8075568C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80755690  EC 22 00 2A */	fadds f1, f2, f0
/* 80755694  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 80755698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075569C  40 81 00 08 */	ble lbl_807556A4
/* 807556A0  FC 20 00 90 */	fmr f1, f0
lbl_807556A4:
/* 807556A4  38 7F 07 6C */	addi r3, r31, 0x76c
/* 807556A8  C0 5E 03 04 */	lfs f2, 0x304(r30)
/* 807556AC  EC 62 00 72 */	fmuls f3, f2, f1
/* 807556B0  4B B1 A3 8C */	b cLib_addCalc2__FPffff
/* 807556B4  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 807556B8  2C 00 00 05 */	cmpwi r0, 5
/* 807556BC  40 82 00 94 */	bne lbl_80755750
/* 807556C0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 807556C4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807556C8  FC 00 00 1E */	fctiwz f0, f0
/* 807556CC  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 807556D0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807556D4  2C 00 00 0E */	cmpwi r0, 0xe
/* 807556D8  40 81 00 78 */	ble lbl_80755750
/* 807556DC  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 807556E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807556E4  2C 00 00 32 */	cmpwi r0, 0x32
/* 807556E8  40 80 00 68 */	bge lbl_80755750
/* 807556EC  38 61 00 44 */	addi r3, r1, 0x44
/* 807556F0  38 9F 07 7C */	addi r4, r31, 0x77c
/* 807556F4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807556F8  4B B1 14 3C */	b __mi__4cXyzCFRC3Vec
/* 807556FC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80755700  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755704  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80755708  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075570C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80755710  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755714  38 61 00 80 */	addi r3, r1, 0x80
/* 80755718  4B B1 1A 10 */	b atan2sX_Z__4cXyzCFv
/* 8075571C  B0 7F 07 66 */	sth r3, 0x766(r31)
/* 80755720  88 1F 0A 68 */	lbz r0, 0xa68(r31)
/* 80755724  2C 00 00 01 */	cmpwi r0, 1
/* 80755728  40 82 00 10 */	bne lbl_80755738
/* 8075572C  38 80 E0 00 */	li r4, -8192
/* 80755730  38 C0 04 00 */	li r6, 0x400
/* 80755734  48 00 00 0C */	b lbl_80755740
lbl_80755738:
/* 80755738  38 80 C0 00 */	li r4, -16384
/* 8075573C  38 C0 10 00 */	li r6, 0x1000
lbl_80755740:
/* 80755740  38 7F 07 64 */	addi r3, r31, 0x764
/* 80755744  38 A0 00 02 */	li r5, 2
/* 80755748  4B B1 AE C0 */	b cLib_addCalcAngleS2__FPssss
/* 8075574C  48 00 00 C4 */	b lbl_80755810
lbl_80755750:
/* 80755750  38 7F 07 66 */	addi r3, r31, 0x766
/* 80755754  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80755758  38 04 40 00 */	addi r0, r4, 0x4000
/* 8075575C  7C 04 07 34 */	extsh r4, r0
/* 80755760  38 A0 00 02 */	li r5, 2
/* 80755764  38 C0 10 00 */	li r6, 0x1000
/* 80755768  4B B1 AE A0 */	b cLib_addCalcAngleS2__FPssss
/* 8075576C  A8 1F 07 40 */	lha r0, 0x740(r31)
/* 80755770  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80755774  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80755778  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8075577C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80755780  7C 23 04 2E */	lfsx f1, r3, r0
/* 80755784  38 7F 07 64 */	addi r3, r31, 0x764
/* 80755788  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 8075578C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80755790  FC 00 00 1E */	fctiwz f0, f0
/* 80755794  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80755798  80 81 00 94 */	lwz r4, 0x94(r1)
/* 8075579C  38 A0 00 02 */	li r5, 2
/* 807557A0  38 C0 08 00 */	li r6, 0x800
/* 807557A4  4B B1 AE 64 */	b cLib_addCalcAngleS2__FPssss
/* 807557A8  A8 1F 07 40 */	lha r0, 0x740(r31)
/* 807557AC  1C 00 09 C4 */	mulli r0, r0, 0x9c4
/* 807557B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807557B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807557B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807557BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 807557C0  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 807557C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807557C8  FC 00 00 1E */	fctiwz f0, f0
/* 807557CC  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807557D0  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 807557D4  B0 1F 07 68 */	sth r0, 0x768(r31)
/* 807557D8  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807557DC  2C 00 00 01 */	cmpwi r0, 1
/* 807557E0  40 81 00 30 */	ble lbl_80755810
/* 807557E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D0@ha */
/* 807557E8  38 03 00 D0 */	addi r0, r3, 0x00D0 /* 0x000700D0@l */
/* 807557EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807557F0  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807557F4  38 81 00 24 */	addi r4, r1, 0x24
/* 807557F8  38 A0 00 00 */	li r5, 0
/* 807557FC  38 C0 FF FF */	li r6, -1
/* 80755800  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 80755804  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80755808  7D 89 03 A6 */	mtctr r12
/* 8075580C  4E 80 04 21 */	bctrl 
lbl_80755810:
/* 80755810  C0 3F 08 00 */	lfs f1, 0x800(r31)
/* 80755814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80755818  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075581C  41 82 00 CC */	beq lbl_807558E8
/* 80755820  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755824  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755828  C0 3F 07 94 */	lfs f1, 0x794(r31)
/* 8075582C  C0 5F 07 98 */	lfs f2, 0x798(r31)
/* 80755830  C0 7F 07 9C */	lfs f3, 0x79c(r31)
/* 80755834  4B BF 10 B4 */	b PSMTXTrans
/* 80755838  38 61 00 38 */	addi r3, r1, 0x38
/* 8075583C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80755840  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80755844  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80755848  38 84 00 D8 */	addi r4, r4, 0xd8
/* 8075584C  38 BF 07 94 */	addi r5, r31, 0x794
/* 80755850  4B B1 12 E4 */	b __mi__4cXyzCFRC3Vec
/* 80755854  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80755858  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075585C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80755860  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755864  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80755868  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8075586C  38 61 00 80 */	addi r3, r1, 0x80
/* 80755870  4B B1 18 B8 */	b atan2sX_Z__4cXyzCFv
/* 80755874  7C 64 07 34 */	extsh r4, r3
/* 80755878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075587C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755880  4B 8B 6B B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80755884  38 61 00 80 */	addi r3, r1, 0x80
/* 80755888  4B B1 18 C8 */	b atan2sY_XZ__4cXyzCFv
/* 8075588C  7C 64 07 34 */	extsh r4, r3
/* 80755890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755898  4B 8B 6B 04 */	b mDoMtx_XrotM__FPA4_fs
/* 8075589C  3C 60 80 75 */	lis r3, l_HIO@ha
/* 807558A0  38 63 7E 5C */	addi r3, r3, l_HIO@l
/* 807558A4  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 807558A8  FC 40 08 90 */	fmr f2, f1
/* 807558AC  FC 60 08 90 */	fmr f3, f1
/* 807558B0  4B 8B 75 88 */	b scaleM__14mDoMtx_stack_cFfff
/* 807558B4  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 807558B8  80 83 00 04 */	lwz r4, 4(r3)
/* 807558BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807558C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807558C4  38 84 00 24 */	addi r4, r4, 0x24
/* 807558C8  4B BF 0B E8 */	b PSMTXCopy
/* 807558CC  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 807558D0  38 80 00 00 */	li r4, 0
/* 807558D4  38 A0 00 00 */	li r5, 0
/* 807558D8  38 C0 00 00 */	li r6, 0
/* 807558DC  4B 8B AC EC */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 807558E0  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 807558E4  4B 8B AD C8 */	b modelCalc__14mDoExt_McaMorfFv
lbl_807558E8:
/* 807558E8  88 1F 07 58 */	lbz r0, 0x758(r31)
/* 807558EC  28 00 00 00 */	cmplwi r0, 0
/* 807558F0  40 82 00 CC */	bne lbl_807559BC
/* 807558F4  A8 1F 07 42 */	lha r0, 0x742(r31)
/* 807558F8  2C 00 00 04 */	cmpwi r0, 4
/* 807558FC  41 82 00 10 */	beq lbl_8075590C
/* 80755900  88 1F 07 56 */	lbz r0, 0x756(r31)
/* 80755904  28 00 00 00 */	cmplwi r0, 0
/* 80755908  41 82 00 B4 */	beq lbl_807559BC
lbl_8075590C:
/* 8075590C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80755910  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80755914  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80755918  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8075591C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80755920  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80755924  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80755928  38 00 00 FF */	li r0, 0xff
/* 8075592C  90 01 00 08 */	stw r0, 8(r1)
/* 80755930  38 80 00 00 */	li r4, 0
/* 80755934  90 81 00 0C */	stw r4, 0xc(r1)
/* 80755938  38 00 FF FF */	li r0, -1
/* 8075593C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80755940  90 81 00 14 */	stw r4, 0x14(r1)
/* 80755944  90 81 00 18 */	stw r4, 0x18(r1)
/* 80755948  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075594C  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 80755950  38 A0 00 00 */	li r5, 0
/* 80755954  3C C0 00 01 */	lis r6, 0x0001 /* 0x000086AC@ha */
/* 80755958  38 C6 86 AC */	addi r6, r6, 0x86AC /* 0x000086AC@l */
/* 8075595C  38 FF 07 94 */	addi r7, r31, 0x794
/* 80755960  39 00 00 00 */	li r8, 0
/* 80755964  39 3F 07 64 */	addi r9, r31, 0x764
/* 80755968  39 41 00 5C */	addi r10, r1, 0x5c
/* 8075596C  4B 8F 7B 60 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80755970  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80755974  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80755978  38 63 02 10 */	addi r3, r3, 0x210
/* 8075597C  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 80755980  4B 8F 5F 98 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80755984  7C 7C 1B 79 */	or. r28, r3, r3
/* 80755988  41 82 00 34 */	beq lbl_807559BC
/* 8075598C  38 7F 0E B4 */	addi r3, r31, 0xeb4
/* 80755990  7F 84 E3 78 */	mr r4, r28
/* 80755994  38 BF 07 94 */	addi r5, r31, 0x794
/* 80755998  38 DF 07 64 */	addi r6, r31, 0x764
/* 8075599C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807559A0  7C 07 07 74 */	extsb r7, r0
/* 807559A4  81 9F 0E B4 */	lwz r12, 0xeb4(r31)
/* 807559A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807559AC  7D 89 03 A6 */	mtctr r12
/* 807559B0  4E 80 04 21 */	bctrl 
/* 807559B4  38 1F 0E B4 */	addi r0, r31, 0xeb4
/* 807559B8  90 1C 00 EC */	stw r0, 0xec(r28)
lbl_807559BC:
/* 807559BC  38 60 00 00 */	li r3, 0
/* 807559C0  98 7F 0A 68 */	stb r3, 0xa68(r31)
/* 807559C4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807559C8  2C 00 00 01 */	cmpwi r0, 1
/* 807559CC  41 81 00 1C */	bgt lbl_807559E8
/* 807559D0  B0 7F 07 64 */	sth r3, 0x764(r31)
/* 807559D4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807559D8  38 03 AA 10 */	addi r0, r3, -22000
/* 807559DC  B0 1F 07 66 */	sth r0, 0x766(r31)
/* 807559E0  38 00 4E 20 */	li r0, 0x4e20
/* 807559E4  B0 1F 07 68 */	sth r0, 0x768(r31)
lbl_807559E8:
/* 807559E8  38 7F 0E B4 */	addi r3, r31, 0xeb4
/* 807559EC  38 9F 07 A0 */	addi r4, r31, 0x7a0
/* 807559F0  38 BF 07 AC */	addi r5, r31, 0x7ac
/* 807559F4  4B 8F 9C C4 */	b setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz
/* 807559F8  88 1F 07 5A */	lbz r0, 0x75a(r31)
/* 807559FC  28 00 00 00 */	cmplwi r0, 0
/* 80755A00  41 82 00 0C */	beq lbl_80755A0C
/* 80755A04  38 60 00 01 */	li r3, 1
/* 80755A08  48 00 01 E0 */	b lbl_80755BE8
lbl_80755A0C:
/* 80755A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80755A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80755A14  38 80 00 43 */	li r4, 0x43
/* 80755A18  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80755A1C  7C 05 07 74 */	extsb r5, r0
/* 80755A20  4B 8D F9 40 */	b isSwitch__10dSv_info_cCFii
/* 80755A24  2C 03 00 00 */	cmpwi r3, 0
/* 80755A28  41 82 00 50 */	beq lbl_80755A78
/* 80755A2C  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80755A30  28 00 00 03 */	cmplwi r0, 3
/* 80755A34  41 81 00 44 */	bgt lbl_80755A78
/* 80755A38  4B A0 99 EC */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 80755A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80755A40  41 82 00 10 */	beq lbl_80755A50
/* 80755A44  38 60 00 02 */	li r3, 2
/* 80755A48  4B A5 2D 9C */	b dKy_change_colpat__FUc
/* 80755A4C  48 00 00 2C */	b lbl_80755A78
lbl_80755A50:
/* 80755A50  7F E3 FB 78 */	mr r3, r31
/* 80755A54  38 80 00 00 */	li r4, 0
/* 80755A58  4B FF 6B 95 */	bl mArg0Check__FP10e_po_classs
/* 80755A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80755A60  41 82 00 10 */	beq lbl_80755A70
/* 80755A64  38 60 00 01 */	li r3, 1
/* 80755A68  4B A5 2D 7C */	b dKy_change_colpat__FUc
/* 80755A6C  48 00 00 0C */	b lbl_80755A78
lbl_80755A70:
/* 80755A70  38 60 00 02 */	li r3, 2
/* 80755A74  4B A5 2D 70 */	b dKy_change_colpat__FUc
lbl_80755A78:
/* 80755A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80755A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80755A80  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80755A84  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80755A88  80 63 00 04 */	lwz r3, 4(r3)
/* 80755A8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80755A90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80755A94  38 63 00 60 */	addi r3, r3, 0x60
/* 80755A98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80755A9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80755AA0  4B BF 0A 10 */	b PSMTXCopy
/* 80755AA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80755AA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80755AAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80755AB0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80755AB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80755AB8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80755ABC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80755AC0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80755AC4  A8 1F 07 42 */	lha r0, 0x742(r31)
/* 80755AC8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80755ACC  40 82 00 0C */	bne lbl_80755AD8
/* 80755AD0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80755AD4  48 00 00 38 */	b lbl_80755B0C
lbl_80755AD8:
/* 80755AD8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80755ADC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80755AE0  38 A1 00 74 */	addi r5, r1, 0x74
/* 80755AE4  4B B1 10 50 */	b __mi__4cXyzCFRC3Vec
/* 80755AE8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80755AEC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755AF0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80755AF4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755AF8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80755AFC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755B00  38 61 00 80 */	addi r3, r1, 0x80
/* 80755B04  4B B1 16 24 */	b atan2sX_Z__4cXyzCFv
/* 80755B08  7C 64 1B 78 */	mr r4, r3
lbl_80755B0C:
/* 80755B0C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80755B10  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80755B14  80 63 00 00 */	lwz r3, 0(r3)
/* 80755B18  4B 8B 68 C4 */	b mDoMtx_YrotS__FPA4_fs
/* 80755B1C  A8 1F 07 42 */	lha r0, 0x742(r31)
/* 80755B20  2C 00 00 0C */	cmpwi r0, 0xc
/* 80755B24  40 82 00 20 */	bne lbl_80755B44
/* 80755B28  C0 1E 03 64 */	lfs f0, 0x364(r30)
/* 80755B2C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755B30  C0 1F 07 D0 */	lfs f0, 0x7d0(r31)
/* 80755B34  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755B38  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80755B3C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80755B40  48 00 00 18 */	b lbl_80755B58
lbl_80755B44:
/* 80755B44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80755B48  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80755B4C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80755B50  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80755B54  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_80755B58:
/* 80755B58  38 61 00 80 */	addi r3, r1, 0x80
/* 80755B5C  38 81 00 68 */	addi r4, r1, 0x68
/* 80755B60  4B B1 B3 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 80755B64  38 61 00 68 */	addi r3, r1, 0x68
/* 80755B68  38 81 00 74 */	addi r4, r1, 0x74
/* 80755B6C  7C 65 1B 78 */	mr r5, r3
/* 80755B70  4B BF 15 20 */	b PSVECAdd
/* 80755B74  A8 1F 07 42 */	lha r0, 0x742(r31)
/* 80755B78  2C 00 00 0C */	cmpwi r0, 0xc
/* 80755B7C  40 82 00 44 */	bne lbl_80755BC0
/* 80755B80  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80755B84  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80755B88  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80755B8C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80755B90  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80755B94  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80755B98  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80755B9C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80755BA0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80755BA4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80755BA8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80755BAC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80755BB0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80755BB4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80755BB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80755BBC  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_80755BC0:
/* 80755BC0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80755BC4  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80755BC8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80755BCC  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80755BD0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80755BD4  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80755BD8  7F E3 FB 78 */	mr r3, r31
/* 80755BDC  38 9F 01 0C */	addi r4, r31, 0x10c
/* 80755BE0  4B 8C 39 40 */	b setBallModelEffect__13fopEn_enemy_cFP12dKy_tevstr_c
/* 80755BE4  38 60 00 01 */	li r3, 1
lbl_80755BE8:
/* 80755BE8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80755BEC  4B C0 C6 38 */	b _restgpr_28
/* 80755BF0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80755BF4  7C 08 03 A6 */	mtlr r0
/* 80755BF8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80755BFC  4E 80 00 20 */	blr 
