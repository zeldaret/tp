lbl_807E2570:
/* 807E2570  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E2574  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E2578  54 60 18 38 */	slwi r0, r3, 3
/* 807E257C  7C 64 02 14 */	add r3, r4, r0
/* 807E2580  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E2584  4E 80 00 20 */	blr 
