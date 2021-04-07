lbl_8097B5A8:
/* 8097B5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B5AC  7C 08 02 A6 */	mflr r0
/* 8097B5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B5B8  3B E0 00 00 */	li r31, 0
/* 8097B5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097B5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097B5C4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8097B5C8  3C 80 80 98 */	lis r4, d_a_npc_cdn3__stringBase0@ha /* 0x8097F5AC@ha */
/* 8097B5CC  38 84 F5 AC */	addi r4, r4, d_a_npc_cdn3__stringBase0@l /* 0x8097F5AC@l */
/* 8097B5D0  38 84 00 9E */	addi r4, r4, 0x9e
/* 8097B5D4  4B 9E D3 C1 */	bl strcmp
/* 8097B5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8097B5DC  40 82 00 18 */	bne lbl_8097B5F4
/* 8097B5E0  38 60 00 00 */	li r3, 0
/* 8097B5E4  4B 6B 13 99 */	bl getLayerNo__14dComIfG_play_cFi
/* 8097B5E8  2C 03 00 01 */	cmpwi r3, 1
/* 8097B5EC  41 81 00 08 */	bgt lbl_8097B5F4
/* 8097B5F0  3B E0 00 01 */	li r31, 1
lbl_8097B5F4:
/* 8097B5F4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8097B5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B600  7C 08 03 A6 */	mtlr r0
/* 8097B604  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B608  4E 80 00 20 */	blr 
