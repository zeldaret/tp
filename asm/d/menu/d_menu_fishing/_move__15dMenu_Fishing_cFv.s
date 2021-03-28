lbl_801C50B4:
/* 801C50B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C50B8  7C 08 02 A6 */	mflr r0
/* 801C50BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C50C0  39 61 00 20 */	addi r11, r1, 0x20
/* 801C50C4  48 19 D1 19 */	bl _savegpr_29
/* 801C50C8  7C 7D 1B 78 */	mr r29, r3
/* 801C50CC  80 63 00 04 */	lwz r3, 4(r3)
/* 801C50D0  4B E4 A0 FD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801C50D4  7C 7E 1B 78 */	mr r30, r3
/* 801C50D8  8B FD 01 FB */	lbz r31, 0x1fb(r29)
/* 801C50DC  7F A3 EB 78 */	mr r3, r29
/* 801C50E0  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801C50E4  3C 80 80 3C */	lis r4, map_move_process@ha
/* 801C50E8  38 04 D0 68 */	addi r0, r4, map_move_process@l
/* 801C50EC  7D 80 2A 14 */	add r12, r0, r5
/* 801C50F0  48 19 CF 95 */	bl __ptmf_scall
/* 801C50F4  60 00 00 00 */	nop 
/* 801C50F8  88 1D 01 FB */	lbz r0, 0x1fb(r29)
/* 801C50FC  7C 1F 00 40 */	cmplw r31, r0
/* 801C5100  41 82 00 20 */	beq lbl_801C5120
/* 801C5104  7F A3 EB 78 */	mr r3, r29
/* 801C5108  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C510C  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801C5110  38 04 D0 50 */	addi r0, r4, map_init_process@l
/* 801C5114  7D 80 2A 14 */	add r12, r0, r5
/* 801C5118  48 19 CF 6D */	bl __ptmf_scall
/* 801C511C  60 00 00 00 */	nop 
lbl_801C5120:
/* 801C5120  7F A3 EB 78 */	mr r3, r29
/* 801C5124  38 80 00 00 */	li r4, 0
/* 801C5128  48 00 10 E9 */	bl setHIO__15dMenu_Fishing_cFb
/* 801C512C  7F C3 F3 78 */	mr r3, r30
/* 801C5130  4B E4 A0 9D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801C5134  39 61 00 20 */	addi r11, r1, 0x20
/* 801C5138  48 19 D0 F1 */	bl _restgpr_29
/* 801C513C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C5140  7C 08 03 A6 */	mtlr r0
/* 801C5144  38 21 00 20 */	addi r1, r1, 0x20
/* 801C5148  4E 80 00 20 */	blr 
