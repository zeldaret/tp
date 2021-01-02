/* 8003215C 0002F09C  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80032160 0002F0A0  38 63 D2 E8 */	addi r3, r3, m_gamePad@l
/* 80032164 0002F0A4  C0 23 00 08 */	lfs f1, 8(r3)
/* 80032168 0002F0A8  4E 80 00 20 */	blr 