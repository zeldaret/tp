lbl_805BA218:
/* 805BA218  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BA21C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BA220  54 60 18 38 */	slwi r0, r3, 3
/* 805BA224  7C 64 02 14 */	add r3, r4, r0
/* 805BA228  88 63 5D B0 */	lbz r3, 0x5db0(r3)
/* 805BA22C  7C 63 07 74 */	extsb r3, r3
/* 805BA230  4E 80 00 20 */	blr 
