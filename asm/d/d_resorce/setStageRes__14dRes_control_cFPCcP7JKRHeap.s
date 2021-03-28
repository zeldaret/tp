lbl_8003C5BC:
/* 8003C5BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003C5C0  7C 08 02 A6 */	mflr r0
/* 8003C5C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003C5C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C5CC  48 32 5C 11 */	bl _savegpr_29
/* 8003C5D0  7C 7D 1B 78 */	mr r29, r3
/* 8003C5D4  7C 9E 23 78 */	mr r30, r4
/* 8003C5D8  7C BF 2B 78 */	mr r31, r5
/* 8003C5DC  38 61 00 08 */	addi r3, r1, 8
/* 8003C5E0  38 80 00 14 */	li r4, 0x14
/* 8003C5E4  3C A0 80 38 */	lis r5, d_d_resorce__stringBase0@ha
/* 8003C5E8  38 A5 98 B8 */	addi r5, r5, d_d_resorce__stringBase0@l
/* 8003C5EC  38 A5 03 1F */	addi r5, r5, 0x31f
/* 8003C5F0  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8003C5F4  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8003C5F8  38 C6 4E 00 */	addi r6, r6, 0x4e00
/* 8003C5FC  4C C6 31 82 */	crclr 6
/* 8003C600  48 32 9F BD */	bl snprintf
/* 8003C604  7F C3 F3 78 */	mr r3, r30
/* 8003C608  38 9D 12 00 */	addi r4, r29, 0x1200
/* 8003C60C  38 A0 00 40 */	li r5, 0x40
/* 8003C610  38 C1 00 08 */	addi r6, r1, 8
/* 8003C614  38 E0 00 01 */	li r7, 1
/* 8003C618  7F E8 FB 78 */	mr r8, r31
/* 8003C61C  4B FF FA 5D */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8003C620  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C624  48 32 5C 05 */	bl _restgpr_29
/* 8003C628  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003C62C  7C 08 03 A6 */	mtlr r0
/* 8003C630  38 21 00 30 */	addi r1, r1, 0x30
/* 8003C634  4E 80 00 20 */	blr 
