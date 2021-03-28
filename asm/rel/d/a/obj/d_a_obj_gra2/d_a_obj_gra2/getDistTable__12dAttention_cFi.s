lbl_80C0F590:
/* 80C0F590  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 80C0F594  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha
/* 80C0F598  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l
/* 80C0F59C  7C 60 22 14 */	add r3, r0, r4
/* 80C0F5A0  4E 80 00 20 */	blr 
