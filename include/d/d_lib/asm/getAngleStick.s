/* 8003216C 0002F0AC  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80032170 0002F0B0  38 63 D2 E8 */	addi r3, r3, m_gamePad@l
/* 80032174 0002F0B4  A8 63 00 0C */	lha r3, 0xc(r3)
/* 80032178 0002F0B8  4E 80 00 20 */	blr 