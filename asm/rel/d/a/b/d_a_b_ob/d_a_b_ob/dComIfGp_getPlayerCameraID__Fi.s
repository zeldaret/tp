lbl_8061AA3C:
/* 8061AA3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061AA40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8061AA44  54 60 18 38 */	slwi r0, r3, 3
/* 8061AA48  7C 64 02 14 */	add r3, r4, r0
/* 8061AA4C  88 63 5D B0 */	lbz r3, 0x5db0(r3)
/* 8061AA50  7C 63 07 74 */	extsb r3, r3
/* 8061AA54  4E 80 00 20 */	blr 
