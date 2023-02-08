lbl_80C13FEC:
/* 80C13FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C13FF0  7C 08 02 A6 */	mflr r0
/* 80C13FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C13FF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C13FFC  4B 74 E1 E1 */	bl _savegpr_29
/* 80C14000  7C 7E 1B 78 */	mr r30, r3
/* 80C14004  7C 9F 23 78 */	mr r31, r4
/* 80C14008  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C1400C  4B 3F 94 1D */	bl play__14mDoExt_baseAnmFv
/* 80C14010  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C14014  4B 3F 94 15 */	bl play__14mDoExt_baseAnmFv
/* 80C14018  88 1E 06 F3 */	lbz r0, 0x6f3(r30)
/* 80C1401C  28 00 00 FF */	cmplwi r0, 0xff
/* 80C14020  41 82 00 B0 */	beq lbl_80C140D0
/* 80C14024  8B BE 06 F0 */	lbz r29, 0x6f0(r30)
/* 80C14028  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1402C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C14030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C14034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C14038  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C1403C  7C 05 07 74 */	extsb r5, r0
/* 80C14040  4B 42 13 21 */	bl isSwitch__10dSv_info_cCFii
/* 80C14044  98 7E 06 F0 */	stb r3, 0x6f0(r30)
/* 80C14048  88 1E 06 F0 */	lbz r0, 0x6f0(r30)
/* 80C1404C  7C 00 E8 40 */	cmplw r0, r29
/* 80C14050  41 82 00 80 */	beq lbl_80C140D0
/* 80C14054  28 00 00 00 */	cmplwi r0, 0
/* 80C14058  41 82 00 40 */	beq lbl_80C14098
/* 80C1405C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C14060  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C14064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C14068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1406C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C14070  7C 05 07 74 */	extsb r5, r0
/* 80C14074  4B 42 12 ED */	bl isSwitch__10dSv_info_cCFii
/* 80C14078  2C 03 00 00 */	cmpwi r3, 0
/* 80C1407C  41 82 00 10 */	beq lbl_80C1408C
/* 80C14080  7F C3 F3 78 */	mr r3, r30
/* 80C14084  48 00 04 01 */	bl init_modeLevelDownB__12daGrdWater_cFv
/* 80C14088  48 00 00 48 */	b lbl_80C140D0
lbl_80C1408C:
/* 80C1408C  7F C3 F3 78 */	mr r3, r30
/* 80C14090  48 00 01 15 */	bl init_modeLevelUpA__12daGrdWater_cFv
/* 80C14094  48 00 00 3C */	b lbl_80C140D0
lbl_80C14098:
/* 80C14098  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1409C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C140A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C140A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C140A8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C140AC  7C 05 07 74 */	extsb r5, r0
/* 80C140B0  4B 42 12 B1 */	bl isSwitch__10dSv_info_cCFii
/* 80C140B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C140B8  41 82 00 10 */	beq lbl_80C140C8
/* 80C140BC  7F C3 F3 78 */	mr r3, r30
/* 80C140C0  48 00 02 BD */	bl init_modeLevelUpB__12daGrdWater_cFv
/* 80C140C4  48 00 00 0C */	b lbl_80C140D0
lbl_80C140C8:
/* 80C140C8  7F C3 F3 78 */	mr r3, r30
/* 80C140CC  48 00 01 E1 */	bl init_modeLevelDownA__12daGrdWater_cFv
lbl_80C140D0:
/* 80C140D0  7F C3 F3 78 */	mr r3, r30
/* 80C140D4  88 1E 06 F2 */	lbz r0, 0x6f2(r30)
/* 80C140D8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C140DC  3C 80 80 C1 */	lis r4, l_mode_func@ha /* 0x80C14A58@ha */
/* 80C140E0  38 04 4A 58 */	addi r0, r4, l_mode_func@l /* 0x80C14A58@l */
/* 80C140E4  7D 80 2A 14 */	add r12, r0, r5
/* 80C140E8  4B 74 DF 9D */	bl __ptmf_scall
/* 80C140EC  60 00 00 00 */	nop 
/* 80C140F0  88 1E 06 F3 */	lbz r0, 0x6f3(r30)
/* 80C140F4  28 00 00 FF */	cmplwi r0, 0xff
/* 80C140F8  41 82 00 6C */	beq lbl_80C14164
/* 80C140FC  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80C14100  80 64 00 04 */	lwz r3, 4(r4)
/* 80C14104  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C14108  80 A3 00 00 */	lwz r5, 0(r3)
/* 80C1410C  80 64 00 84 */	lwz r3, 0x84(r4)
/* 80C14110  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80C14114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C14118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C1411C  3C 80 80 C1 */	lis r4, lit_3642@ha /* 0x80C149E0@ha */
/* 80C14120  C0 24 49 E0 */	lfs f1, lit_3642@l(r4)  /* 0x80C149E0@l */
/* 80C14124  C0 46 00 1C */	lfs f2, 0x1c(r6)
/* 80C14128  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 80C1412C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C14130  FC 60 08 90 */	fmr f3, f1
/* 80C14134  4B 73 27 B5 */	bl PSMTXTrans
/* 80C14138  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80C1413C  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80C14140  C0 7E 04 F4 */	lfs f3, 0x4f4(r30)
/* 80C14144  4B 3F 8C F5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C14148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1414C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C14150  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80C14154  4B 73 23 5D */	bl PSMTXCopy
/* 80C14158  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C1415C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C14160  48 00 00 10 */	b lbl_80C14170
lbl_80C14164:
/* 80C14164  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C14168  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1416C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C14170:
/* 80C14170  7F C3 F3 78 */	mr r3, r30
/* 80C14174  4B FF F3 CD */	bl setBaseMtx__12daGrdWater_cFv
/* 80C14178  38 60 00 01 */	li r3, 1
/* 80C1417C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C14180  4B 74 E0 A9 */	bl _restgpr_29
/* 80C14184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C14188  7C 08 03 A6 */	mtlr r0
/* 80C1418C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C14190  4E 80 00 20 */	blr 
