lbl_805BA1B4:
/* 805BA1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BA1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BA1BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BA1C0  4E 80 00 20 */	blr 
