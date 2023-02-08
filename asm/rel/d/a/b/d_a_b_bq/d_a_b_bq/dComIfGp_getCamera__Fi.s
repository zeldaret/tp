lbl_805BA200:
/* 805BA200  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BA204  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BA208  1C 03 00 38 */	mulli r0, r3, 0x38
/* 805BA20C  7C 64 02 14 */	add r3, r4, r0
/* 805BA210  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 805BA214  4E 80 00 20 */	blr 
