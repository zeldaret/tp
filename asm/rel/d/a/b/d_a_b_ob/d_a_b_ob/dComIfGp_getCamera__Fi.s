lbl_8061AA24:
/* 8061AA24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061AA28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8061AA2C  1C 03 00 38 */	mulli r0, r3, 0x38
/* 8061AA30  7C 64 02 14 */	add r3, r4, r0
/* 8061AA34  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8061AA38  4E 80 00 20 */	blr 
