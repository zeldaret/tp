lbl_80A91004:
/* 80A91004  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A91008  7C 08 02 A6 */	mflr r0
/* 80A9100C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A91010  39 61 00 90 */	addi r11, r1, 0x90
/* 80A91014  4B 8D 11 B0 */	b _savegpr_23
/* 80A91018  7C 7F 1B 78 */	mr r31, r3
/* 80A9101C  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A91020  3B C3 24 1C */	addi r30, r3, lit_3990@l
/* 80A91024  4B 58 72 84 */	b cDmrNowMidnaTalk__Fv
/* 80A91028  2C 03 00 00 */	cmpwi r3, 0
/* 80A9102C  41 82 00 18 */	beq lbl_80A91044
/* 80A91030  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A91034  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A91038  40 82 00 0C */	bne lbl_80A91044
/* 80A9103C  38 60 00 01 */	li r3, 1
/* 80A91040  48 00 06 D4 */	b lbl_80A91714
lbl_80A91044:
/* 80A91044  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A91048  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A9104C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A91050  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A91054  A8 7F 06 40 */	lha r3, 0x640(r31)
/* 80A91058  38 03 00 01 */	addi r0, r3, 1
/* 80A9105C  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 80A91060  88 1F 07 01 */	lbz r0, 0x701(r31)
/* 80A91064  7C 00 07 75 */	extsb. r0, r0
/* 80A91068  41 82 00 84 */	beq lbl_80A910EC
/* 80A9106C  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 80A91070  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A91074  40 82 00 78 */	bne lbl_80A910EC
/* 80A91078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9107C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A91080  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A91084  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A91088  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A9108C  A0 84 03 AC */	lhz r4, 0x3ac(r4)
/* 80A91090  4B 5A 39 2C */	b isEventBit__11dSv_event_cCFUs
/* 80A91094  2C 03 00 00 */	cmpwi r3, 0
/* 80A91098  41 82 00 4C */	beq lbl_80A910E4
/* 80A9109C  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 80A910A0  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80A910A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A910A8  40 80 00 3C */	bge lbl_80A910E4
/* 80A910AC  38 00 02 E4 */	li r0, 0x2e4
/* 80A910B0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80A910B4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80A910B8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80A910BC  38 81 00 20 */	addi r4, r1, 0x20
/* 80A910C0  4B 58 87 38 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A910C4  28 03 00 00 */	cmplwi r3, 0
/* 80A910C8  41 82 00 10 */	beq lbl_80A910D8
/* 80A910CC  38 00 00 00 */	li r0, 0
/* 80A910D0  98 1F 07 00 */	stb r0, 0x700(r31)
/* 80A910D4  48 00 00 18 */	b lbl_80A910EC
lbl_80A910D8:
/* 80A910D8  38 00 00 01 */	li r0, 1
/* 80A910DC  98 1F 07 00 */	stb r0, 0x700(r31)
/* 80A910E0  48 00 00 0C */	b lbl_80A910EC
lbl_80A910E4:
/* 80A910E4  38 00 00 01 */	li r0, 1
/* 80A910E8  98 1F 07 00 */	stb r0, 0x700(r31)
lbl_80A910EC:
/* 80A910EC  38 60 00 00 */	li r3, 0
/* 80A910F0  38 00 00 05 */	li r0, 5
/* 80A910F4  7C 09 03 A6 */	mtctr r0
lbl_80A910F8:
/* 80A910F8  38 A3 06 4C */	addi r5, r3, 0x64c
/* 80A910FC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80A91100  2C 04 00 00 */	cmpwi r4, 0
/* 80A91104  41 82 00 0C */	beq lbl_80A91110
/* 80A91108  38 04 FF FF */	addi r0, r4, -1
/* 80A9110C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80A91110:
/* 80A91110  38 63 00 02 */	addi r3, r3, 2
/* 80A91114  42 00 FF E4 */	bdnz lbl_80A910F8
/* 80A91118  A8 7F 06 56 */	lha r3, 0x656(r31)
/* 80A9111C  2C 03 00 00 */	cmpwi r3, 0
/* 80A91120  41 82 00 0C */	beq lbl_80A9112C
/* 80A91124  38 03 FF FF */	addi r0, r3, -1
/* 80A91128  B0 1F 06 56 */	sth r0, 0x656(r31)
lbl_80A9112C:
/* 80A9112C  88 7F 06 F0 */	lbz r3, 0x6f0(r31)
/* 80A91130  7C 60 07 75 */	extsb. r0, r3
/* 80A91134  41 82 00 0C */	beq lbl_80A91140
/* 80A91138  38 03 FF FF */	addi r0, r3, -1
/* 80A9113C  98 1F 06 F0 */	stb r0, 0x6f0(r31)
lbl_80A91140:
/* 80A91140  A8 7F 06 58 */	lha r3, 0x658(r31)
/* 80A91144  2C 03 00 00 */	cmpwi r3, 0
/* 80A91148  41 82 00 0C */	beq lbl_80A91154
/* 80A9114C  38 03 FF FF */	addi r0, r3, -1
/* 80A91150  B0 1F 06 58 */	sth r0, 0x658(r31)
lbl_80A91154:
/* 80A91154  38 00 00 00 */	li r0, 0
/* 80A91158  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 80A9115C  7F E3 FB 78 */	mr r3, r31
/* 80A91160  4B FF E1 19 */	bl action__FP12npc_ne_class
/* 80A91164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9116C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A91170  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80A91174  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80A91178  4B 8B 57 70 */	b PSMTXTrans
/* 80A9117C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91180  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91184  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80A91188  4B 57 B2 AC */	b mDoMtx_YrotM__FPA4_fs
/* 80A9118C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91190  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91194  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80A91198  4B 57 B2 04 */	b mDoMtx_XrotM__FPA4_fs
/* 80A9119C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A911A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A911A4  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80A911A8  4B 57 B3 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A911AC  C0 3F 06 D8 */	lfs f1, 0x6d8(r31)
/* 80A911B0  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A911B4  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A911B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A911BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A911C0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80A911C4  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80A911C8  FC 40 08 90 */	fmr f2, f1
/* 80A911CC  FC 60 08 90 */	fmr f3, f1
/* 80A911D0  4B 57 BC 68 */	b scaleM__14mDoMtx_stack_cFfff
/* 80A911D4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A911D8  83 83 00 04 */	lwz r28, 4(r3)
/* 80A911DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A911E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A911E4  38 9C 00 24 */	addi r4, r28, 0x24
/* 80A911E8  4B 8B 52 C8 */	b PSMTXCopy
/* 80A911EC  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A911F0  38 9F 05 38 */	addi r4, r31, 0x538
/* 80A911F4  38 A0 00 00 */	li r5, 0
/* 80A911F8  38 C0 00 00 */	li r6, 0
/* 80A911FC  4B 57 F3 CC */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80A91200  88 1F 05 F4 */	lbz r0, 0x5f4(r31)
/* 80A91204  7C 00 07 74 */	extsb r0, r0
/* 80A91208  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 80A9120C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A91210  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A91214  3C 80 43 30 */	lis r4, 0x4330
/* 80A91218  90 81 00 50 */	stw r4, 0x50(r1)
/* 80A9121C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80A91220  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A91224  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80A91228  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80A9122C  A8 1F 05 F6 */	lha r0, 0x5f6(r31)
/* 80A91230  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A91234  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A91238  90 81 00 58 */	stw r4, 0x58(r1)
/* 80A9123C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80A91240  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A91244  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80A91248  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80A9124C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A91250  4B 57 F4 5C */	b modelCalc__14mDoExt_McaMorfFv
/* 80A91254  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A91258  28 00 00 03 */	cmplwi r0, 3
/* 80A9125C  40 82 00 60 */	bne lbl_80A912BC
/* 80A91260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91268  C0 3F 06 00 */	lfs f1, 0x600(r31)
/* 80A9126C  C0 5F 06 04 */	lfs f2, 0x604(r31)
/* 80A91270  C0 7F 06 08 */	lfs f3, 0x608(r31)
/* 80A91274  4B 8B 56 74 */	b PSMTXTrans
/* 80A91278  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9127C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91280  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80A91284  4B 57 B1 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 80A91288  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A9128C  80 83 00 04 */	lwz r4, 4(r3)
/* 80A91290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91298  38 84 00 24 */	addi r4, r4, 0x24
/* 80A9129C  4B 8B 52 14 */	b PSMTXCopy
/* 80A912A0  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A912A4  38 9F 05 38 */	addi r4, r31, 0x538
/* 80A912A8  38 A0 00 00 */	li r5, 0
/* 80A912AC  38 C0 00 00 */	li r6, 0
/* 80A912B0  4B 57 F3 18 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80A912B4  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A912B8  4B 57 F3 F4 */	b modelCalc__14mDoExt_McaMorfFv
lbl_80A912BC:
/* 80A912BC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A912C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A912C4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A912C8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A912CC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A912D0  80 84 00 00 */	lwz r4, 0(r4)
/* 80A912D4  4B 8B 51 DC */	b PSMTXCopy
/* 80A912D8  38 61 00 40 */	addi r3, r1, 0x40
/* 80A912DC  38 9F 05 38 */	addi r4, r31, 0x538
/* 80A912E0  4B 7D FC 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A912E4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A912E8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80A912EC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A912F0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80A912F4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A912F8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80A912FC  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 80A91300  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80A91304  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 80A91308  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A9130C  EC 02 00 2A */	fadds f0, f2, f0
/* 80A91310  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80A91314  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A91318  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A9131C  38 63 00 90 */	addi r3, r3, 0x90
/* 80A91320  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A91324  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A91328  80 84 00 00 */	lwz r4, 0(r4)
/* 80A9132C  4B 8B 51 84 */	b PSMTXCopy
/* 80A91330  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 80A91334  C0 1F 0B F4 */	lfs f0, 0xbf4(r31)
/* 80A91338  EC 01 00 2A */	fadds f0, f1, f0
/* 80A9133C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A91340  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A91344  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A91348  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A9134C  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 80A91350  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A91354  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80A91358  4B 7D E7 28 */	b cLib_addCalc0__FPfff
/* 80A9135C  38 61 00 40 */	addi r3, r1, 0x40
/* 80A91360  38 81 00 34 */	addi r4, r1, 0x34
/* 80A91364  4B 7D FB 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A91368  A8 1F 06 56 */	lha r0, 0x656(r31)
/* 80A9136C  2C 00 00 00 */	cmpwi r0, 0
/* 80A91370  41 82 00 14 */	beq lbl_80A91384
/* 80A91374  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80A91378  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 80A9137C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A91380  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80A91384:
/* 80A91384  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80A91388  38 81 00 34 */	addi r4, r1, 0x34
/* 80A9138C  4B 7D E2 BC */	b SetC__8cM3dGSphFRC4cXyz
/* 80A91390  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80A91394  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80A91398  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 80A9139C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A913A0  4B 7D E3 68 */	b SetR__8cM3dGSphFf
/* 80A913A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A913A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A913AC  3A E3 23 3C */	addi r23, r3, 0x233c
/* 80A913B0  7E E3 BB 78 */	mr r3, r23
/* 80A913B4  38 9F 09 5C */	addi r4, r31, 0x95c
/* 80A913B8  4B 7D 37 F0 */	b Set__4cCcSFP8cCcD_Obj
/* 80A913BC  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80A913C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A913C4  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 80A913C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A913CC  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A913D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A913D4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A913D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A913DC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A913E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A913E4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A913E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A913EC  88 1F 0B CC */	lbz r0, 0xbcc(r31)
/* 80A913F0  7C 00 07 75 */	extsb. r0, r0
/* 80A913F4  40 82 00 18 */	bne lbl_80A9140C
/* 80A913F8  38 61 00 34 */	addi r3, r1, 0x34
/* 80A913FC  38 81 00 28 */	addi r4, r1, 0x28
/* 80A91400  7C 65 1B 78 */	mr r5, r3
/* 80A91404  4B 8B 5C 8C */	b PSVECAdd
/* 80A91408  48 00 00 0C */	b lbl_80A91414
lbl_80A9140C:
/* 80A9140C  38 00 00 00 */	li r0, 0
/* 80A91410  98 1F 0B CC */	stb r0, 0xbcc(r31)
lbl_80A91414:
/* 80A91414  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A91418  38 81 00 34 */	addi r4, r1, 0x34
/* 80A9141C  4B 7D E2 2C */	b SetC__8cM3dGSphFRC4cXyz
/* 80A91420  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A91424  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80A91428  4B 7D E2 E0 */	b SetR__8cM3dGSphFf
/* 80A9142C  7E E3 BB 78 */	mr r3, r23
/* 80A91430  38 9F 0A 94 */	addi r4, r31, 0xa94
/* 80A91434  4B 7D 37 74 */	b Set__4cCcSFP8cCcD_Obj
/* 80A91438  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A9143C  7C 03 07 74 */	extsb r3, r0
/* 80A91440  4B 59 BC 2C */	b dComIfGp_getReverb__Fi
/* 80A91444  7C 65 1B 78 */	mr r5, r3
/* 80A91448  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80A9144C  38 80 00 00 */	li r4, 0
/* 80A91450  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80A91454  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A91458  7D 89 03 A6 */	mtctr r12
/* 80A9145C  4E 80 04 21 */	bctrl 
/* 80A91460  7F E3 FB 78 */	mr r3, r31
/* 80A91464  4B FF F9 C5 */	bl message__FP12npc_ne_class
/* 80A91468  7F E3 FB 78 */	mr r3, r31
/* 80A9146C  4B FF EF 7D */	bl demo_camera__FP12npc_ne_class
/* 80A91470  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80A91474  3C 60 80 A9 */	lis r3, stringBase0@ha
/* 80A91478  38 03 25 D0 */	addi r0, r3, stringBase0@l
/* 80A9147C  7C 04 00 40 */	cmplw r4, r0
/* 80A91480  40 82 00 C4 */	bne lbl_80A91544
/* 80A91484  4B 59 E5 D0 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A91488  2C 03 00 00 */	cmpwi r3, 0
/* 80A9148C  40 82 00 B8 */	bne lbl_80A91544
/* 80A91490  3B A0 00 00 */	li r29, 0
/* 80A91494  3B 60 00 00 */	li r27, 0
/* 80A91498  3B 40 00 00 */	li r26, 0
/* 80A9149C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A914A0  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80A914A4  3C 60 80 A9 */	lis r3, e_name@ha
/* 80A914A8  3B 03 29 44 */	addi r24, r3, e_name@l
lbl_80A914AC:
/* 80A914AC  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80A914B0  38 00 00 FF */	li r0, 0xff
/* 80A914B4  90 01 00 08 */	stw r0, 8(r1)
/* 80A914B8  38 80 00 00 */	li r4, 0
/* 80A914BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A914C0  38 00 FF FF */	li r0, -1
/* 80A914C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A914C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A914CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A914D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A914D4  3B 3A 0C 00 */	addi r25, r26, 0xc00
/* 80A914D8  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80A914DC  38 A0 00 00 */	li r5, 0
/* 80A914E0  7C D8 DA 2E */	lhzx r6, r24, r27
/* 80A914E4  38 FF 05 38 */	addi r7, r31, 0x538
/* 80A914E8  39 00 00 00 */	li r8, 0
/* 80A914EC  39 20 00 00 */	li r9, 0
/* 80A914F0  39 40 00 00 */	li r10, 0
/* 80A914F4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A914F8  4B 5B BF D4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A914FC  7C 7F C9 2E */	stwx r3, r31, r25
/* 80A91500  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80A91504  38 63 02 10 */	addi r3, r3, 0x210
/* 80A91508  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80A9150C  4B 5B A4 0C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A91510  7C 79 1B 79 */	or. r25, r3, r3
/* 80A91514  41 82 00 1C */	beq lbl_80A91530
/* 80A91518  4B 59 E5 3C */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A9151C  30 03 FF FF */	addic r0, r3, -1
/* 80A91520  7C 60 01 10 */	subfe r3, r0, r0
/* 80A91524  38 00 00 FF */	li r0, 0xff
/* 80A91528  7C 00 18 38 */	and r0, r0, r3
/* 80A9152C  98 19 00 BB */	stb r0, 0xbb(r25)
lbl_80A91530:
/* 80A91530  3B BD 00 01 */	addi r29, r29, 1
/* 80A91534  2C 1D 00 02 */	cmpwi r29, 2
/* 80A91538  3B 7B 00 02 */	addi r27, r27, 2
/* 80A9153C  3B 5A 00 04 */	addi r26, r26, 4
/* 80A91540  41 80 FF 6C */	blt lbl_80A914AC
lbl_80A91544:
/* 80A91544  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 80A91548  3C 03 00 01 */	addis r0, r3, 1
/* 80A9154C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A91550  41 82 01 6C */	beq lbl_80A916BC
/* 80A91554  88 1F 0C C0 */	lbz r0, 0xcc0(r31)
/* 80A91558  28 00 00 00 */	cmplwi r0, 0
/* 80A9155C  41 82 01 60 */	beq lbl_80A916BC
/* 80A91560  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A91564  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A91568  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A9156C  38 81 00 24 */	addi r4, r1, 0x24
/* 80A91570  4B 58 82 88 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A91574  7C 7D 1B 78 */	mr r29, r3
/* 80A91578  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A9157C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A91580  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A91584  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A91588  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A9158C  4B 8B 4F 24 */	b PSMTXCopy
/* 80A91590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A91594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A91598  38 80 B5 C8 */	li r4, -19000
/* 80A9159C  4B 57 AF 30 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A915A0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80A915A4  FC 40 08 90 */	fmr f2, f1
/* 80A915A8  FC 60 08 90 */	fmr f3, f1
/* 80A915AC  4B 57 B8 8C */	b scaleM__14mDoMtx_stack_cFfff
/* 80A915B0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80A915B4  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80A915B8  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 80A915BC  4B 57 B7 E0 */	b transM__14mDoMtx_stack_cFfff
/* 80A915C0  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80A915C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80A915C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A915CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A915D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80A915D4  4B 8B 4E DC */	b PSMTXCopy
/* 80A915D8  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80A915DC  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 80A915E0  80 03 00 08 */	lwz r0, 8(r3)
/* 80A915E4  1C 00 3A 98 */	mulli r0, r0, 0x3a98
/* 80A915E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A915EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A915F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A915F4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A915F8  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80A915FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A91600  FC 00 00 1E */	fctiwz f0, f0
/* 80A91604  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80A91608  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 80A9160C  38 A0 00 00 */	li r5, 0
/* 80A91610  38 60 00 00 */	li r3, 0
/* 80A91614  48 00 00 14 */	b lbl_80A91628
lbl_80A91618:
/* 80A91618  38 03 07 18 */	addi r0, r3, 0x718
/* 80A9161C  7C 9D 03 2E */	sthx r4, r29, r0
/* 80A91620  38 A5 00 01 */	addi r5, r5, 1
/* 80A91624  38 63 00 02 */	addi r3, r3, 2
lbl_80A91628:
/* 80A91628  80 1D 07 2C */	lwz r0, 0x72c(r29)
/* 80A9162C  7C 05 00 00 */	cmpw r5, r0
/* 80A91630  40 81 FF E8 */	ble lbl_80A91618
/* 80A91634  38 C0 00 01 */	li r6, 1
/* 80A91638  48 00 00 20 */	b lbl_80A91658
lbl_80A9163C:
/* 80A9163C  80 65 00 04 */	lwz r3, 4(r5)
/* 80A91640  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80A91644  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A91648  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A9164C  80 1D 0C 48 */	lwz r0, 0xc48(r29)
/* 80A91650  90 03 00 04 */	stw r0, 4(r3)
/* 80A91654  38 C6 00 01 */	addi r6, r6, 1
lbl_80A91658:
/* 80A91658  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80A9165C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A91660  80 85 00 04 */	lwz r4, 4(r5)
/* 80A91664  A0 84 00 2C */	lhz r4, 0x2c(r4)
/* 80A91668  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80A9166C  7C 00 20 40 */	cmplw r0, r4
/* 80A91670  41 80 FF CC */	blt lbl_80A9163C
/* 80A91674  38 80 00 00 */	li r4, 0
/* 80A91678  38 A0 00 00 */	li r5, 0
/* 80A9167C  38 C0 00 00 */	li r6, 0
/* 80A91680  4B 57 EF 48 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80A91684  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80A91688  4B 57 F0 24 */	b modelCalc__14mDoExt_McaMorfFv
/* 80A9168C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A91690  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A91694  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A91698  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A9169C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A916A0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A916A4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A916A8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80A916AC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A916B0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80A916B4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A916B8  D0 1D 05 40 */	stfs f0, 0x540(r29)
lbl_80A916BC:
/* 80A916BC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A916C0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A916C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A916C8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80A916CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A916D0  40 80 00 40 */	bge lbl_80A91710
/* 80A916D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80A916D8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A916DC  41 82 00 34 */	beq lbl_80A91710
/* 80A916E0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A916E4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A916E8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A916EC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A916F0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A916F4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A916F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A916FC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A91700  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A91704  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A91708  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A9170C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
lbl_80A91710:
/* 80A91710  38 60 00 01 */	li r3, 1
lbl_80A91714:
/* 80A91714  39 61 00 90 */	addi r11, r1, 0x90
/* 80A91718  4B 8D 0A F8 */	b _restgpr_23
/* 80A9171C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A91720  7C 08 03 A6 */	mtlr r0
/* 80A91724  38 21 00 90 */	addi r1, r1, 0x90
/* 80A91728  4E 80 00 20 */	blr 
