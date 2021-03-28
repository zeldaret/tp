lbl_804695F8:
/* 804695F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804695FC  7C 08 02 A6 */	mflr r0
/* 80469600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80469604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80469608  93 C1 00 08 */	stw r30, 8(r1)
/* 8046960C  3B C0 00 00 */	li r30, 0
/* 80469610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80469614  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80469618  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8046961C  3C 80 80 47 */	lis r4, struct_8046B0D0+0x0@ha
/* 80469620  38 84 B0 D0 */	addi r4, r4, struct_8046B0D0+0x0@l
/* 80469624  4B BD E4 B8 */	b endCheckOld__16dEvent_manager_cFPCc
/* 80469628  2C 03 00 00 */	cmpwi r3, 0
/* 8046962C  41 82 00 10 */	beq lbl_8046963C
/* 80469630  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80469634  4B BD 8E 34 */	b reset__14dEvt_control_cFv
/* 80469638  3B C0 00 01 */	li r30, 1
lbl_8046963C:
/* 8046963C  7F C3 F3 78 */	mr r3, r30
/* 80469640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80469644  83 C1 00 08 */	lwz r30, 8(r1)
/* 80469648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046964C  7C 08 03 A6 */	mtlr r0
/* 80469650  38 21 00 10 */	addi r1, r1, 0x10
/* 80469654  4E 80 00 20 */	blr 
