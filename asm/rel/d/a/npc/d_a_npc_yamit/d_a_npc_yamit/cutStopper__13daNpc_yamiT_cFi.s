lbl_80B4B9E0:
/* 80B4B9E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4B9E4  7C 08 02 A6 */	mflr r0
/* 80B4B9E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4B9EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4B9F0  4B 81 67 E8 */	b _savegpr_28
/* 80B4B9F4  7C 7C 1B 78 */	mr r28, r3
/* 80B4B9F8  7C 9D 23 78 */	mr r29, r4
/* 80B4B9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4BA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4BA04  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B4BA08  7F C3 F3 78 */	mr r3, r30
/* 80B4BA0C  3C A0 80 B5 */	lis r5, struct_80B4CE84+0x0@ha
/* 80B4BA10  38 A5 CE 84 */	addi r5, r5, struct_80B4CE84+0x0@l
/* 80B4BA14  38 A5 00 0F */	addi r5, r5, 0xf
/* 80B4BA18  38 C0 00 03 */	li r6, 3
/* 80B4BA1C  4B 4F C6 D0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4BA20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4BA24  40 82 00 0C */	bne lbl_80B4BA30
/* 80B4BA28  38 60 00 01 */	li r3, 1
/* 80B4BA2C  48 00 00 30 */	b lbl_80B4BA5C
lbl_80B4BA30:
/* 80B4BA30  7F C3 F3 78 */	mr r3, r30
/* 80B4BA34  7F A4 EB 78 */	mr r4, r29
/* 80B4BA38  4B 4F C3 14 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B4BA3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4BA40  41 82 00 10 */	beq lbl_80B4BA50
/* 80B4BA44  7F 83 E3 78 */	mr r3, r28
/* 80B4BA48  7F E4 FB 78 */	mr r4, r31
/* 80B4BA4C  48 00 00 29 */	bl _cutStopper_Init__13daNpc_yamiT_cFRCi
lbl_80B4BA50:
/* 80B4BA50  7F 83 E3 78 */	mr r3, r28
/* 80B4BA54  7F E4 FB 78 */	mr r4, r31
/* 80B4BA58  48 00 00 55 */	bl _cutStopper_Main__13daNpc_yamiT_cFRCi
lbl_80B4BA5C:
/* 80B4BA5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4BA60  4B 81 67 C4 */	b _restgpr_28
/* 80B4BA64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4BA68  7C 08 03 A6 */	mtlr r0
/* 80B4BA6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4BA70  4E 80 00 20 */	blr 
