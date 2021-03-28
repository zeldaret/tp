lbl_8054A8A8:
/* 8054A8A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8054A8AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8054A8B0  1C 03 00 38 */	mulli r0, r3, 0x38
/* 8054A8B4  7C 64 02 14 */	add r3, r4, r0
/* 8054A8B8  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8054A8BC  4E 80 00 20 */	blr 
