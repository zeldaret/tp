lbl_8068585C:
/* 8068585C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80685860  7C 08 02 A6 */	mflr r0
/* 80685864  90 01 00 24 */	stw r0, 0x24(r1)
/* 80685868  39 61 00 20 */	addi r11, r1, 0x20
/* 8068586C  4B CD C9 6D */	bl _savegpr_28
/* 80685870  7C 7D 1B 78 */	mr r29, r3
/* 80685874  7C BE 2B 78 */	mr r30, r5
/* 80685878  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 8068587C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80685880  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80685884  1F FC 00 30 */	mulli r31, r28, 0x30
/* 80685888  7C 60 FA 14 */	add r3, r0, r31
/* 8068588C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80685890  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80685894  4B CC 0C 1D */	bl PSMTXCopy
/* 80685898  2C 1C 00 00 */	cmpwi r28, 0
/* 8068589C  41 82 00 64 */	beq lbl_80685900
/* 806858A0  2C 1C 00 01 */	cmpwi r28, 1
/* 806858A4  40 82 00 44 */	bne lbl_806858E8
/* 806858A8  88 1D 06 B0 */	lbz r0, 0x6b0(r29)
/* 806858AC  28 00 00 00 */	cmplwi r0, 0
/* 806858B0  40 82 00 18 */	bne lbl_806858C8
/* 806858B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806858B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806858BC  A8 9D 06 AA */	lha r4, 0x6aa(r29)
/* 806858C0  4B 98 6B 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 806858C4  48 00 00 3C */	b lbl_80685900
lbl_806858C8:
/* 806858C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806858CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806858D0  A8 9D 06 A4 */	lha r4, 0x6a4(r29)
/* 806858D4  A8 1D 06 AA */	lha r0, 0x6aa(r29)
/* 806858D8  7C 04 00 50 */	subf r0, r4, r0
/* 806858DC  7C 04 07 34 */	extsh r4, r0
/* 806858E0  4B 98 6B 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 806858E4  48 00 00 1C */	b lbl_80685900
lbl_806858E8:
/* 806858E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806858EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806858F0  57 80 08 3C */	slwi r0, r28, 1
/* 806858F4  7C 9D 02 14 */	add r4, r29, r0
/* 806858F8  A8 84 06 A0 */	lha r4, 0x6a0(r4)
/* 806858FC  4B 98 6B 39 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80685900:
/* 80685900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80685904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80685908  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8068590C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80685910  7C 80 FA 14 */	add r4, r0, r31
/* 80685914  4B CC 0B 9D */	bl PSMTXCopy
/* 80685918  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068591C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80685920  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80685924  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80685928  4B CC 0B 89 */	bl PSMTXCopy
/* 8068592C  38 60 00 01 */	li r3, 1
/* 80685930  39 61 00 20 */	addi r11, r1, 0x20
/* 80685934  4B CD C8 F1 */	bl _restgpr_28
/* 80685938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068593C  7C 08 03 A6 */	mtlr r0
/* 80685940  38 21 00 20 */	addi r1, r1, 0x20
/* 80685944  4E 80 00 20 */	blr 
