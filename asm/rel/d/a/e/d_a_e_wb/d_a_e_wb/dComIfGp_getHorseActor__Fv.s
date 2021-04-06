lbl_807E2560:
/* 807E2560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E2564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E2568  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807E256C  4E 80 00 20 */	blr 
