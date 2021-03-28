lbl_80B5A0B8:
/* 80B5A0B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5A0BC  7C 08 02 A6 */	mflr r0
/* 80B5A0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5A0C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5A0C8  4B 80 81 14 */	b _savegpr_29
/* 80B5A0CC  7C 7D 1B 78 */	mr r29, r3
/* 80B5A0D0  7C 9E 23 78 */	mr r30, r4
/* 80B5A0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5A0D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B5A0DC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B5A0E0  7F E3 FB 78 */	mr r3, r31
/* 80B5A0E4  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B5A0E8  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B5A0EC  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B5A0F0  38 C0 00 03 */	li r6, 3
/* 80B5A0F4  4B 4E DF F8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B5A0F8  7F E3 FB 78 */	mr r3, r31
/* 80B5A0FC  7F C4 F3 78 */	mr r4, r30
/* 80B5A100  4B 4E DC 4C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B5A104  38 00 00 00 */	li r0, 0
/* 80B5A108  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80B5A10C  38 60 00 00 */	li r3, 0
/* 80B5A110  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5A114  4B 80 81 14 */	b _restgpr_29
/* 80B5A118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5A11C  7C 08 03 A6 */	mtlr r0
/* 80B5A120  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5A124  4E 80 00 20 */	blr 
