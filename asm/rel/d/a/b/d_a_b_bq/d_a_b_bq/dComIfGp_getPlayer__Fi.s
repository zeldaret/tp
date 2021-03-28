lbl_805BA1E8:
/* 805BA1E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805BA1EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805BA1F0  54 60 18 38 */	slwi r0, r3, 3
/* 805BA1F4  7C 64 02 14 */	add r3, r4, r0
/* 805BA1F8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BA1FC  4E 80 00 20 */	blr 
