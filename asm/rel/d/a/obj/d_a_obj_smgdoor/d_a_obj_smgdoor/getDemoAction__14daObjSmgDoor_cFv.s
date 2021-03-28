lbl_80CDBFF0:
/* 80CDBFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBFF4  7C 08 02 A6 */	mflr r0
/* 80CDBFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBFFC  7C 64 1B 78 */	mr r4, r3
/* 80CDC000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC008  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CDC00C  80 84 05 B4 */	lwz r4, 0x5b4(r4)
/* 80CDC010  3C A0 80 CE */	lis r5, action_table@ha
/* 80CDC014  38 A5 CD 1C */	addi r5, r5, action_table@l
/* 80CDC018  38 C0 00 06 */	li r6, 6
/* 80CDC01C  38 E0 00 00 */	li r7, 0
/* 80CDC020  39 00 00 00 */	li r8, 0
/* 80CDC024  4B 36 BD EC */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CDC028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC02C  7C 08 03 A6 */	mtlr r0
/* 80CDC030  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC034  4E 80 00 20 */	blr 
