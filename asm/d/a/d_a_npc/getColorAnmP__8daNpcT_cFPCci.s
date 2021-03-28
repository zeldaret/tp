lbl_80148184:
/* 80148184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148188  7C 08 02 A6 */	mflr r0
/* 8014818C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148190  7C 83 23 78 */	mr r3, r4
/* 80148194  7C A4 2B 78 */	mr r4, r5
/* 80148198  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8014819C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801481A0  3C A5 00 02 */	addis r5, r5, 2
/* 801481A4  38 C0 00 80 */	li r6, 0x80
/* 801481A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801481AC  4B EF 41 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801481B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801481B4  7C 08 03 A6 */	mtlr r0
/* 801481B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801481BC  4E 80 00 20 */	blr 
