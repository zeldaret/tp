lbl_801F7718:
/* 801F7718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F771C  7C 08 02 A6 */	mflr r0
/* 801F7720  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F7724  39 61 00 20 */	addi r11, r1, 0x20
/* 801F7728  48 16 AA B5 */	bl _savegpr_29
/* 801F772C  7C 7D 1B 78 */	mr r29, r3
/* 801F7730  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7734  4B E1 7A 99 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801F7738  7C 7E 1B 78 */	mr r30, r3
/* 801F773C  8B FD 02 05 */	lbz r31, 0x205(r29)
/* 801F7740  7F A3 EB 78 */	mr r3, r29
/* 801F7744  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801F7748  3C 80 80 3C */	lis r4, map_move_process@ha /* 0x803BE874@ha */
/* 801F774C  38 04 E8 74 */	addi r0, r4, map_move_process@l /* 0x803BE874@l */
/* 801F7750  7D 80 2A 14 */	add r12, r0, r5
/* 801F7754  48 16 A9 31 */	bl __ptmf_scall
/* 801F7758  60 00 00 00 */	nop 
/* 801F775C  88 1D 02 05 */	lbz r0, 0x205(r29)
/* 801F7760  7C 1F 00 40 */	cmplw r31, r0
/* 801F7764  41 82 00 20 */	beq lbl_801F7784
/* 801F7768  7F A3 EB 78 */	mr r3, r29
/* 801F776C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801F7770  3C 80 80 3C */	lis r4, map_init_process@ha /* 0x803BE814@ha */
/* 801F7774  38 04 E8 14 */	addi r0, r4, map_init_process@l /* 0x803BE814@l */
/* 801F7778  7D 80 2A 14 */	add r12, r0, r5
/* 801F777C  48 16 A9 09 */	bl __ptmf_scall
/* 801F7780  60 00 00 00 */	nop 
lbl_801F7784:
/* 801F7784  7F A3 EB 78 */	mr r3, r29
/* 801F7788  38 80 00 00 */	li r4, 0
/* 801F778C  48 00 1D 75 */	bl setHIO__13dMenu_Skill_cFb
/* 801F7790  7F C3 F3 78 */	mr r3, r30
/* 801F7794  4B E1 7A 39 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801F7798  39 61 00 20 */	addi r11, r1, 0x20
/* 801F779C  48 16 AA 8D */	bl _restgpr_29
/* 801F77A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F77A4  7C 08 03 A6 */	mtlr r0
/* 801F77A8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F77AC  4E 80 00 20 */	blr 
