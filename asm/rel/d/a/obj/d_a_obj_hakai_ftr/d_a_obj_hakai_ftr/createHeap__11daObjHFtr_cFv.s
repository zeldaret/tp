lbl_80C17874:
/* 80C17874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C17878  7C 08 02 A6 */	mflr r0
/* 80C1787C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C17880  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17884  4B 74 A9 54 */	b _savegpr_28
/* 80C17888  7C 7E 1B 78 */	mr r30, r3
/* 80C1788C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C17890  54 1F 16 BA */	rlwinm r31, r0, 2, 0x1a, 0x1d
/* 80C17894  3C 60 80 C2 */	lis r3, l_arcName@ha
/* 80C17898  3B A3 81 7C */	addi r29, r3, l_arcName@l
/* 80C1789C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80C178A0  3C 80 80 C2 */	lis r4, l_bmdIdx@ha
/* 80C178A4  38 84 80 B8 */	addi r4, r4, l_bmdIdx@l
/* 80C178A8  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80C178AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C178B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C178B4  3F 85 00 02 */	addis r28, r5, 2
/* 80C178B8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C178BC  7F 85 E3 78 */	mr r5, r28
/* 80C178C0  38 C0 00 80 */	li r6, 0x80
/* 80C178C4  4B 42 4A 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C178C8  3C 80 00 08 */	lis r4, 8
/* 80C178CC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C178D0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C178D4  4B 3F D3 80 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C178D8  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80C178DC  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80C178E0  28 00 00 00 */	cmplwi r0, 0
/* 80C178E4  40 82 00 0C */	bne lbl_80C178F0
/* 80C178E8  38 60 00 00 */	li r3, 0
/* 80C178EC  48 00 00 AC */	b lbl_80C17998
lbl_80C178F0:
/* 80C178F0  38 60 00 C0 */	li r3, 0xc0
/* 80C178F4  4B 6B 73 58 */	b __nw__FUl
/* 80C178F8  7C 60 1B 79 */	or. r0, r3, r3
/* 80C178FC  41 82 00 0C */	beq lbl_80C17908
/* 80C17900  4B 46 40 70 */	b __ct__4dBgWFv
/* 80C17904  7C 60 1B 78 */	mr r0, r3
lbl_80C17908:
/* 80C17908  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80C1790C  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 80C17910  28 00 00 00 */	cmplwi r0, 0
/* 80C17914  40 82 00 0C */	bne lbl_80C17920
/* 80C17918  38 60 00 00 */	li r3, 0
/* 80C1791C  48 00 00 7C */	b lbl_80C17998
lbl_80C17920:
/* 80C17920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C17924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C17928  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C1792C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C17930  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C17934  4B 72 EF B4 */	b PSMTXTrans
/* 80C17938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1793C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C17940  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C17944  4B 3F 4A F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80C17948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1794C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C17950  38 9E 05 74 */	addi r4, r30, 0x574
/* 80C17954  4B 72 EB 5C */	b PSMTXCopy
/* 80C17958  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80C1795C  3C 80 80 C2 */	lis r4, l_dzbIdx@ha
/* 80C17960  38 84 80 C4 */	addi r4, r4, l_dzbIdx@l
/* 80C17964  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80C17968  7F 85 E3 78 */	mr r5, r28
/* 80C1796C  38 C0 00 80 */	li r6, 0x80
/* 80C17970  4B 42 49 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C17974  7C 64 1B 78 */	mr r4, r3
/* 80C17978  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80C1797C  38 A0 00 01 */	li r5, 1
/* 80C17980  38 DE 05 74 */	addi r6, r30, 0x574
/* 80C17984  4B 46 25 B4 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C17988  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C1798C  20 60 00 01 */	subfic r3, r0, 1
/* 80C17990  30 03 FF FF */	addic r0, r3, -1
/* 80C17994  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C17998:
/* 80C17998  39 61 00 20 */	addi r11, r1, 0x20
/* 80C1799C  4B 74 A8 88 */	b _restgpr_28
/* 80C179A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C179A4  7C 08 03 A6 */	mtlr r0
/* 80C179A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C179AC  4E 80 00 20 */	blr 
