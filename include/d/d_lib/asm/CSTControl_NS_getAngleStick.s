/* 8003218C 0002F0CC  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80032190 0002F0D0  38 63 D2 E8 */	addi r3, r3, m_gamePad@l
/* 80032194 0002F0D4  A8 63 00 1C */	lha r3, 0x1c(r3)
/* 80032198 0002F0D8  4E 80 00 20 */	blr 