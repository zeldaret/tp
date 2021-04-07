lbl_80A7772C:
/* 80A7772C  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 80A77730  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha /* 0x803A9C70@ha */
/* 80A77734  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l /* 0x803A9C70@l */
/* 80A77738  7C 60 22 14 */	add r3, r0, r4
/* 80A7773C  4E 80 00 20 */	blr 
