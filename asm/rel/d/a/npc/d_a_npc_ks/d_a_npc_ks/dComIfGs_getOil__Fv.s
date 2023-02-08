lbl_80A5DE04:
/* 80A5DE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A5DE08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A5DE0C  A0 63 00 08 */	lhz r3, 8(r3)
/* 80A5DE10  4E 80 00 20 */	blr 
