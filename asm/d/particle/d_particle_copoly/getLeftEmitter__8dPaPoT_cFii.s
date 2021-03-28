lbl_800514DC:
/* 800514DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800514E0  7C 08 02 A6 */	mflr r0
/* 800514E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800514E8  7C 66 1B 78 */	mr r6, r3
/* 800514EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800514F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800514F4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800514F8  38 63 02 10 */	addi r3, r3, 0x210
/* 800514FC  54 80 20 36 */	slwi r0, r4, 4
/* 80051500  7C 86 02 14 */	add r4, r6, r0
/* 80051504  54 A0 10 3A */	slwi r0, r5, 2
/* 80051508  7C 84 02 14 */	add r4, r4, r0
/* 8005150C  80 84 00 38 */	lwz r4, 0x38(r4)
/* 80051510  4B FF A4 09 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80051514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051518  7C 08 03 A6 */	mtlr r0
/* 8005151C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051520  4E 80 00 20 */	blr 
