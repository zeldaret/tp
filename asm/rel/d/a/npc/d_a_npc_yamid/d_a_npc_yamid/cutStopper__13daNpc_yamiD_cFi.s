lbl_80B44AF8:
/* 80B44AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B44AFC  7C 08 02 A6 */	mflr r0
/* 80B44B00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B44B04  39 61 00 20 */	addi r11, r1, 0x20
/* 80B44B08  4B 81 D6 D0 */	b _savegpr_28
/* 80B44B0C  7C 7C 1B 78 */	mr r28, r3
/* 80B44B10  7C 9D 23 78 */	mr r29, r4
/* 80B44B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B44B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B44B1C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B44B20  7F C3 F3 78 */	mr r3, r30
/* 80B44B24  3C A0 80 B4 */	lis r5, struct_80B4612C+0x0@ha
/* 80B44B28  38 A5 61 2C */	addi r5, r5, struct_80B4612C+0x0@l
/* 80B44B2C  38 A5 00 0F */	addi r5, r5, 0xf
/* 80B44B30  38 C0 00 03 */	li r6, 3
/* 80B44B34  4B 50 35 B8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B44B38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B44B3C  40 82 00 0C */	bne lbl_80B44B48
/* 80B44B40  38 60 00 01 */	li r3, 1
/* 80B44B44  48 00 00 30 */	b lbl_80B44B74
lbl_80B44B48:
/* 80B44B48  7F C3 F3 78 */	mr r3, r30
/* 80B44B4C  7F A4 EB 78 */	mr r4, r29
/* 80B44B50  4B 50 31 FC */	b getIsAddvance__16dEvent_manager_cFi
/* 80B44B54  2C 03 00 00 */	cmpwi r3, 0
/* 80B44B58  41 82 00 10 */	beq lbl_80B44B68
/* 80B44B5C  7F 83 E3 78 */	mr r3, r28
/* 80B44B60  7F E4 FB 78 */	mr r4, r31
/* 80B44B64  48 00 00 29 */	bl _cutStopper_Init__13daNpc_yamiD_cFRCi
lbl_80B44B68:
/* 80B44B68  7F 83 E3 78 */	mr r3, r28
/* 80B44B6C  7F E4 FB 78 */	mr r4, r31
/* 80B44B70  48 00 00 65 */	bl _cutStopper_Main__13daNpc_yamiD_cFRCi
lbl_80B44B74:
/* 80B44B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80B44B78  4B 81 D6 AC */	b _restgpr_28
/* 80B44B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B44B80  7C 08 03 A6 */	mtlr r0
/* 80B44B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80B44B88  4E 80 00 20 */	blr 
