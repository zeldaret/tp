lbl_80AFD508:
/* 80AFD508  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFD50C  7C 08 02 A6 */	mflr r0
/* 80AFD510  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFD514  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFD518  4B 86 4C C0 */	b _savegpr_28
/* 80AFD51C  7C 7F 1B 78 */	mr r31, r3
/* 80AFD520  7C 9C 23 78 */	mr r28, r4
/* 80AFD524  2C 05 00 00 */	cmpwi r5, 0
/* 80AFD528  3B A0 00 05 */	li r29, 5
/* 80AFD52C  41 82 00 08 */	beq lbl_80AFD534
/* 80AFD530  3B A0 00 08 */	li r29, 8
lbl_80AFD534:
/* 80AFD534  38 C1 00 10 */	addi r6, r1, 0x10
/* 80AFD538  3C 60 80 B0 */	lis r3, lit_4396@ha
/* 80AFD53C  38 63 0E 00 */	addi r3, r3, lit_4396@l
/* 80AFD540  38 83 FF FC */	addi r4, r3, -4
/* 80AFD544  38 00 00 03 */	li r0, 3
/* 80AFD548  7C 09 03 A6 */	mtctr r0
lbl_80AFD54C:
/* 80AFD54C  80 64 00 04 */	lwz r3, 4(r4)
/* 80AFD550  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AFD554  90 66 00 04 */	stw r3, 4(r6)
/* 80AFD558  94 06 00 08 */	stwu r0, 8(r6)
/* 80AFD55C  42 00 FF F0 */	bdnz lbl_80AFD54C
/* 80AFD560  2C 05 00 00 */	cmpwi r5, 0
/* 80AFD564  3B C1 00 20 */	addi r30, r1, 0x20
/* 80AFD568  41 82 00 08 */	beq lbl_80AFD570
/* 80AFD56C  3B C1 00 14 */	addi r30, r1, 0x14
lbl_80AFD570:
/* 80AFD570  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AFD574  4B 51 3C 78 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80AFD578  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AFD57C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFD580  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFD584  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFD588  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80AFD58C  7C 63 02 14 */	add r3, r3, r0
/* 80AFD590  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AFD594  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AFD598  4B 84 8F 18 */	b PSMTXCopy
/* 80AFD59C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80AFD5A0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80AFD5A4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80AFD5A8  4B 50 F7 F4 */	b transM__14mDoMtx_stack_cFfff
/* 80AFD5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AFD5B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AFD5B4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80AFD5B8  D0 41 00 08 */	stfs f2, 8(r1)
/* 80AFD5BC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80AFD5C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AFD5C4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AFD5C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AFD5CC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80AFD5D0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80AFD5D4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80AFD5D8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFD5DC  4B 86 4C 48 */	b _restgpr_28
/* 80AFD5E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFD5E4  7C 08 03 A6 */	mtlr r0
/* 80AFD5E8  38 21 00 40 */	addi r1, r1, 0x40
/* 80AFD5EC  4E 80 00 20 */	blr 
