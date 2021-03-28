lbl_80742508:
/* 80742508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074250C  7C 08 02 A6 */	mflr r0
/* 80742510  90 01 00 24 */	stw r0, 0x24(r1)
/* 80742514  39 61 00 20 */	addi r11, r1, 0x20
/* 80742518  4B C1 FC C0 */	b _savegpr_28
/* 8074251C  7C 7C 1B 78 */	mr r28, r3
/* 80742520  7C BD 2B 78 */	mr r29, r5
/* 80742524  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 80742528  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8074252C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80742530  1F DF 00 30 */	mulli r30, r31, 0x30
/* 80742534  7C 60 F2 14 */	add r3, r0, r30
/* 80742538  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8074253C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80742540  4B C0 3F 70 */	b PSMTXCopy
/* 80742544  2C 1F 00 04 */	cmpwi r31, 4
/* 80742548  40 82 00 24 */	bne lbl_8074256C
/* 8074254C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80742550  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80742554  A8 9C 06 04 */	lha r4, 0x604(r28)
/* 80742558  4B 8C 9E 44 */	b mDoMtx_XrotM__FPA4_fs
/* 8074255C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80742560  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80742564  A8 9C 06 06 */	lha r4, 0x606(r28)
/* 80742568  4B 8C 9F 64 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8074256C:
/* 8074256C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80742570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80742574  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80742578  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8074257C  7C 80 F2 14 */	add r4, r0, r30
/* 80742580  4B C0 3F 30 */	b PSMTXCopy
/* 80742584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80742588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074258C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80742590  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80742594  4B C0 3F 1C */	b PSMTXCopy
/* 80742598  38 60 00 01 */	li r3, 1
/* 8074259C  39 61 00 20 */	addi r11, r1, 0x20
/* 807425A0  4B C1 FC 84 */	b _restgpr_28
/* 807425A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807425A8  7C 08 03 A6 */	mtlr r0
/* 807425AC  38 21 00 20 */	addi r1, r1, 0x20
/* 807425B0  4E 80 00 20 */	blr 
