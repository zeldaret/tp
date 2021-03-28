lbl_801DD474:
/* 801DD474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DD478  7C 08 02 A6 */	mflr r0
/* 801DD47C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DD480  39 61 00 20 */	addi r11, r1, 0x20
/* 801DD484  48 18 4D 59 */	bl _savegpr_29
/* 801DD488  7C 7D 1B 78 */	mr r29, r3
/* 801DD48C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DD490  4B E3 1D 3D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801DD494  7C 7E 1B 78 */	mr r30, r3
/* 801DD498  8B FD 03 6D */	lbz r31, 0x36d(r29)
/* 801DD49C  7F A3 EB 78 */	mr r3, r29
/* 801DD4A0  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801DD4A4  3C 80 80 3C */	lis r4, map_move_process@ha
/* 801DD4A8  38 04 DB 2C */	addi r0, r4, map_move_process@l
/* 801DD4AC  7D 80 2A 14 */	add r12, r0, r5
/* 801DD4B0  48 18 4B D5 */	bl __ptmf_scall
/* 801DD4B4  60 00 00 00 */	nop 
/* 801DD4B8  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801DD4BC  7C 1F 00 40 */	cmplw r31, r0
/* 801DD4C0  41 82 00 20 */	beq lbl_801DD4E0
/* 801DD4C4  7F A3 EB 78 */	mr r3, r29
/* 801DD4C8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801DD4CC  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801DD4D0  38 04 DA 6C */	addi r0, r4, map_init_process@l
/* 801DD4D4  7D 80 2A 14 */	add r12, r0, r5
/* 801DD4D8  48 18 4B AD */	bl __ptmf_scall
/* 801DD4DC  60 00 00 00 */	nop 
lbl_801DD4E0:
/* 801DD4E0  7F A3 EB 78 */	mr r3, r29
/* 801DD4E4  38 80 00 00 */	li r4, 0
/* 801DD4E8  48 00 42 61 */	bl setHIO__14dMenu_Letter_cFb
/* 801DD4EC  7F C3 F3 78 */	mr r3, r30
/* 801DD4F0  4B E3 1C DD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801DD4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801DD4F8  48 18 4D 31 */	bl _restgpr_29
/* 801DD4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DD500  7C 08 03 A6 */	mtlr r0
/* 801DD504  38 21 00 20 */	addi r1, r1, 0x20
/* 801DD508  4E 80 00 20 */	blr 
