lbl_800985CC:
/* 800985CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800985D0  7C 08 02 A6 */	mflr r0
/* 800985D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800985D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800985DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800985E0  38 63 00 9C */	addi r3, r3, 0x9c
/* 800985E4  38 80 00 12 */	li r4, 0x12
/* 800985E8  38 A0 00 25 */	li r5, 0x25
/* 800985EC  4B F9 A9 CD */	bl setItem__17dSv_player_item_cFiUc
/* 800985F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800985F4  7C 08 03 A6 */	mtlr r0
/* 800985F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800985FC  4E 80 00 20 */	blr 
