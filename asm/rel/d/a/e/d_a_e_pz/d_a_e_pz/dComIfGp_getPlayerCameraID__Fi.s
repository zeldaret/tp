lbl_807614A0:
/* 807614A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807614A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807614A8  54 60 18 38 */	slwi r0, r3, 3
/* 807614AC  7C 64 02 14 */	add r3, r4, r0
/* 807614B0  88 63 5D B0 */	lbz r3, 0x5db0(r3)
/* 807614B4  7C 63 07 74 */	extsb r3, r3
/* 807614B8  4E 80 00 20 */	blr 
