lbl_80097FC8:
/* 80097FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80097FCC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80097FD0  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 80097FD4  38 03 00 64 */	addi r0, r3, 0x64
/* 80097FD8  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 80097FDC  4E 80 00 20 */	blr 
