lbl_802B999C:
/* 802B999C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802B99A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802B99A4  A8 63 0D B8 */	lha r3, 0xdb8(r3)
/* 802B99A8  4E 80 00 20 */	blr 
