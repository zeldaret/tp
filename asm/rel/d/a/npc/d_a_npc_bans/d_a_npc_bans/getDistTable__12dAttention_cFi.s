lbl_80966874:
/* 80966874  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 80966878  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha /* 0x803A9C70@ha */
/* 8096687C  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l /* 0x803A9C70@l */
/* 80966880  7C 60 22 14 */	add r3, r0, r4
/* 80966884  4E 80 00 20 */	blr 
