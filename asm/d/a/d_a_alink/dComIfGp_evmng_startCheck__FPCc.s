lbl_800D005C:
/* 800D005C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0060  7C 08 02 A6 */	mflr r0
/* 800D0064  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0068  7C 64 1B 78 */	mr r4, r3
/* 800D006C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D0070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0074  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D0078  4B F7 79 C1 */	bl startCheckOld__16dEvent_manager_cFPCc
/* 800D007C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0080  7C 08 03 A6 */	mtlr r0
/* 800D0084  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0088  4E 80 00 20 */	blr 
