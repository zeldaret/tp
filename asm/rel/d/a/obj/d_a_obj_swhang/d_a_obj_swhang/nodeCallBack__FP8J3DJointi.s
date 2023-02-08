lbl_80CFB938:
/* 80CFB938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFB93C  7C 08 02 A6 */	mflr r0
/* 80CFB940  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFB944  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFB948  4B 66 68 91 */	bl _savegpr_28
/* 80CFB94C  2C 04 00 00 */	cmpwi r4, 0
/* 80CFB950  40 82 00 6C */	bne lbl_80CFB9BC
/* 80CFB954  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80CFB958  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CFB95C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CFB960  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80CFB964  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80CFB968  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80CFB96C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CFB970  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80CFB974  7C 60 EA 14 */	add r3, r0, r29
/* 80CFB978  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CFB97C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CFB980  4B 64 AB 31 */	bl PSMTXCopy
/* 80CFB984  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 80CFB988  7C 1F 00 00 */	cmpw r31, r0
/* 80CFB98C  40 82 00 18 */	bne lbl_80CFB9A4
/* 80CFB990  C0 3C 07 6C */	lfs f1, 0x76c(r28)
/* 80CFB994  3C 60 80 D0 */	lis r3, lit_3681@ha /* 0x80CFD240@ha */
/* 80CFB998  C0 43 D2 40 */	lfs f2, lit_3681@l(r3)  /* 0x80CFD240@l */
/* 80CFB99C  FC 60 10 90 */	fmr f3, f2
/* 80CFB9A0  4B 31 13 FD */	bl transM__14mDoMtx_stack_cFfff
lbl_80CFB9A4:
/* 80CFB9A4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80CFB9A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CFB9AC  7C 80 EA 14 */	add r4, r0, r29
/* 80CFB9B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CFB9B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CFB9B8  4B 64 AA F9 */	bl PSMTXCopy
lbl_80CFB9BC:
/* 80CFB9BC  38 60 00 01 */	li r3, 1
/* 80CFB9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFB9C4  4B 66 68 61 */	bl _restgpr_28
/* 80CFB9C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFB9CC  7C 08 03 A6 */	mtlr r0
/* 80CFB9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFB9D4  4E 80 00 20 */	blr 
