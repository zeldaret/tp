lbl_80097E8C:
/* 80097E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097E90  7C 08 02 A6 */	mflr r0
/* 80097E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80097E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80097E9C  7C 7F 1B 78 */	mr r31, r3
/* 80097EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80097EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80097EA8  38 63 00 CC */	addi r3, r3, 0xcc
/* 80097EAC  7F E4 FB 78 */	mr r4, r31
/* 80097EB0  4B F9 BF B1 */	bl onFirstBit__21dSv_player_get_item_cFUc
/* 80097EB4  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 80097EB8  3C 60 80 3B */	lis r3, item_func_ptr@ha /* 0x803AF178@ha */
/* 80097EBC  38 63 F1 78 */	addi r3, r3, item_func_ptr@l /* 0x803AF178@l */
/* 80097EC0  7D 83 00 2E */	lwzx r12, r3, r0
/* 80097EC4  7D 89 03 A6 */	mtctr r12
/* 80097EC8  4E 80 04 21 */	bctrl 
/* 80097ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80097ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80097ED4  7C 08 03 A6 */	mtlr r0
/* 80097ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80097EDC  4E 80 00 20 */	blr 
