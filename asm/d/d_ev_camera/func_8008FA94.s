lbl_8008FA94:
/* 8008FA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008FA98  7C 08 02 A6 */	mflr r0
/* 8008FA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008FAA0  7C 6B 1B 78 */	mr r11, r3
/* 8008FAA4  7C 8A 23 78 */	mr r10, r4
/* 8008FAA8  7C A9 2B 78 */	mr r9, r5
/* 8008FAAC  7C C0 33 78 */	mr r0, r6
/* 8008FAB0  7C E8 3B 78 */	mr r8, r7
/* 8008FAB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8008FAB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8008FABC  38 63 23 3C */	addi r3, r3, 0x233c
/* 8008FAC0  7D 64 5B 78 */	mr r4, r11
/* 8008FAC4  7D 45 53 78 */	mr r5, r10
/* 8008FAC8  C0 22 8F 40 */	lfs f1, lit_7357(r2)
/* 8008FACC  7D 26 4B 78 */	mr r6, r9
/* 8008FAD0  7C 07 03 78 */	mr r7, r0
/* 8008FAD4  4B FF 72 B9 */	bl ChkCamera__4dCcSFR4cXyzR4cXyzfP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_c
/* 8008FAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008FADC  7C 08 03 A6 */	mtlr r0
/* 8008FAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8008FAE4  4E 80 00 20 */	blr 
