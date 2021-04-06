lbl_800425E8:
/* 800425E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800425EC  7C 08 02 A6 */	mflr r0
/* 800425F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800425F4  7C 64 1B 78 */	mr r4, r3
/* 800425F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800425FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042600  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80042604  4B FF FF 15 */	bl reset__14dEvt_control_cFPv
/* 80042608  38 60 00 01 */	li r3, 1
/* 8004260C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80042610  7C 08 03 A6 */	mtlr r0
/* 80042614  38 21 00 10 */	addi r1, r1, 0x10
/* 80042618  4E 80 00 20 */	blr 
