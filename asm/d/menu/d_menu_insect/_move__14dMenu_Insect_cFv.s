lbl_801D86C8:
/* 801D86C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D86CC  7C 08 02 A6 */	mflr r0
/* 801D86D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D86D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801D86D8  48 18 9B 05 */	bl _savegpr_29
/* 801D86DC  7C 7D 1B 78 */	mr r29, r3
/* 801D86E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801D86E4  4B E3 6A E9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801D86E8  7C 7E 1B 78 */	mr r30, r3
/* 801D86EC  8B FD 00 F3 */	lbz r31, 0xf3(r29)
/* 801D86F0  7F A3 EB 78 */	mr r3, r29
/* 801D86F4  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801D86F8  3C 80 80 3C */	lis r4, map_move_process@ha /* 0x803BD840@ha */
/* 801D86FC  38 04 D8 40 */	addi r0, r4, map_move_process@l /* 0x803BD840@l */
/* 801D8700  7D 80 2A 14 */	add r12, r0, r5
/* 801D8704  48 18 99 81 */	bl __ptmf_scall
/* 801D8708  60 00 00 00 */	nop 
/* 801D870C  88 1D 00 F3 */	lbz r0, 0xf3(r29)
/* 801D8710  7C 1F 00 40 */	cmplw r31, r0
/* 801D8714  41 82 00 20 */	beq lbl_801D8734
/* 801D8718  7F A3 EB 78 */	mr r3, r29
/* 801D871C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801D8720  3C 80 80 3C */	lis r4, map_init_process@ha /* 0x803BD7C8@ha */
/* 801D8724  38 04 D7 C8 */	addi r0, r4, map_init_process@l /* 0x803BD7C8@l */
/* 801D8728  7D 80 2A 14 */	add r12, r0, r5
/* 801D872C  48 18 99 59 */	bl __ptmf_scall
/* 801D8730  60 00 00 00 */	nop 
lbl_801D8734:
/* 801D8734  7F A3 EB 78 */	mr r3, r29
/* 801D8738  38 80 00 00 */	li r4, 0
/* 801D873C  48 00 1D 29 */	bl setHIO__14dMenu_Insect_cFb
/* 801D8740  7F C3 F3 78 */	mr r3, r30
/* 801D8744  4B E3 6A 89 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801D8748  39 61 00 20 */	addi r11, r1, 0x20
/* 801D874C  48 18 9A DD */	bl _restgpr_29
/* 801D8750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8754  7C 08 03 A6 */	mtlr r0
/* 801D8758  38 21 00 20 */	addi r1, r1, 0x20
/* 801D875C  4E 80 00 20 */	blr 
