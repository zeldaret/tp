lbl_80141324:
/* 80141324  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80141328  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8014132C  54 60 20 36 */	slwi r0, r3, 4
/* 80141330  7C 65 02 14 */	add r3, r5, r0
/* 80141334  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80141338  7C 03 20 38 */	and r3, r0, r4
/* 8014133C  4E 80 00 20 */	blr 
