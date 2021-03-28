lbl_80087330:
/* 80087330  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80087334  3C 60 80 3B */	lis r3, m_mtrl_hit_tbl__4dCcS@ha
/* 80087338  38 03 C3 A4 */	addi r0, r3, m_mtrl_hit_tbl__4dCcS@l
/* 8008733C  7C 60 22 14 */	add r3, r0, r4
/* 80087340  54 A0 1D 78 */	rlwinm r0, r5, 3, 0x15, 0x1c
/* 80087344  7C 63 00 AE */	lbzx r3, r3, r0
/* 80087348  4E 80 00 20 */	blr 
