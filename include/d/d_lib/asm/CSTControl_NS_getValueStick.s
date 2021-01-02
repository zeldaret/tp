/* 8003217C 0002F0BC  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80032180 0002F0C0  38 63 D2 E8 */	addi r3, r3, m_gamePad@l
/* 80032184 0002F0C4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80032188 0002F0C8  4E 80 00 20 */	blr 