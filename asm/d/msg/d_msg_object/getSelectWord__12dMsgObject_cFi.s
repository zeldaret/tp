lbl_80238528:
/* 80238528  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8023852C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80238530  80 04 5D BC */	lwz r0, 0x5dbc(r4)
/* 80238534  1C 63 00 C8 */	mulli r3, r3, 0xc8
/* 80238538  38 63 02 6E */	addi r3, r3, 0x26e
/* 8023853C  7C 60 1A 14 */	add r3, r0, r3
/* 80238540  4E 80 00 20 */	blr 
