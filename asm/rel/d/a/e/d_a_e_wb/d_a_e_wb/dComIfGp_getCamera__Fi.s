lbl_807E2588:
/* 807E2588  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807E258C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807E2590  1C 03 00 38 */	mulli r0, r3, 0x38
/* 807E2594  7C 64 02 14 */	add r3, r4, r0
/* 807E2598  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 807E259C  4E 80 00 20 */	blr 
