lbl_8099D8EC:
/* 8099D8EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099D8F0  7C 08 02 A6 */	mflr r0
/* 8099D8F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099D8F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D8FC  4B 9C 48 E0 */	b _savegpr_29
/* 8099D900  2C 04 00 00 */	cmpwi r4, 0
/* 8099D904  41 82 00 0C */	beq lbl_8099D910
/* 8099D908  38 60 00 01 */	li r3, 1
/* 8099D90C  48 00 00 88 */	b lbl_8099D994
lbl_8099D910:
/* 8099D910  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8099D914  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8099D918  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8099D91C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8099D920  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8099D924  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8099D928  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8099D92C  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8099D930  7C 60 F2 14 */	add r3, r0, r30
/* 8099D934  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8099D938  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8099D93C  4B 9A 8B 74 */	b PSMTXCopy
/* 8099D940  A8 9D 1D 68 */	lha r4, 0x1d68(r29)
/* 8099D944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D94C  4B 66 EA 50 */	b mDoMtx_XrotM__FPA4_fs
/* 8099D950  3C 60 80 9A */	lis r3, lit_4121@ha
/* 8099D954  C0 23 4F 70 */	lfs f1, lit_4121@l(r3)
/* 8099D958  C0 5D 1D 5C */	lfs f2, 0x1d5c(r29)
/* 8099D95C  FC 60 08 90 */	fmr f3, f1
/* 8099D960  4B 66 F4 3C */	b transM__14mDoMtx_stack_cFfff
/* 8099D964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D96C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8099D970  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8099D974  7C 80 F2 14 */	add r4, r0, r30
/* 8099D978  4B 9A 8B 38 */	b PSMTXCopy
/* 8099D97C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D984  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8099D988  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8099D98C  4B 9A 8B 24 */	b PSMTXCopy
/* 8099D990  38 60 00 01 */	li r3, 1
lbl_8099D994:
/* 8099D994  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D998  4B 9C 48 90 */	b _restgpr_29
/* 8099D99C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099D9A0  7C 08 03 A6 */	mtlr r0
/* 8099D9A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8099D9A8  4E 80 00 20 */	blr 
