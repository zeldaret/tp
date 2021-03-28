lbl_80051494:
/* 80051494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051498  7C 08 02 A6 */	mflr r0
/* 8005149C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800514A0  7C 66 1B 78 */	mr r6, r3
/* 800514A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800514A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800514AC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800514B0  38 63 02 10 */	addi r3, r3, 0x210
/* 800514B4  54 80 20 36 */	slwi r0, r4, 4
/* 800514B8  7C 86 02 14 */	add r4, r6, r0
/* 800514BC  54 A0 10 3A */	slwi r0, r5, 2
/* 800514C0  7C 84 02 14 */	add r4, r4, r0
/* 800514C4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 800514C8  4B FF A4 51 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800514CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800514D0  7C 08 03 A6 */	mtlr r0
/* 800514D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800514D8  4E 80 00 20 */	blr 
