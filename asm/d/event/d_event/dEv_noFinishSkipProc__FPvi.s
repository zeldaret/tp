lbl_800428DC:
/* 800428DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800428E0  7C 08 02 A6 */	mflr r0
/* 800428E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800428E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800428EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800428F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800428F4  48 00 00 C1 */	bl offSkipFade__14dEvt_control_cFv
/* 800428F8  38 60 00 00 */	li r3, 0
/* 800428FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80042900  7C 08 03 A6 */	mtlr r0
/* 80042904  38 21 00 10 */	addi r1, r1, 0x10
/* 80042908  4E 80 00 20 */	blr 
