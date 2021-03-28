lbl_80D499AC:
/* 80D499AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D499B0  7C 08 02 A6 */	mflr r0
/* 80D499B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D499B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D499BC  4B 61 88 1C */	b _savegpr_28
/* 80D499C0  7C 7C 1B 78 */	mr r28, r3
/* 80D499C4  7C 9D 23 78 */	mr r29, r4
/* 80D499C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D499CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D499D0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80D499D4  7F C3 F3 78 */	mr r3, r30
/* 80D499D8  3C A0 80 D5 */	lis r5, struct_80D4C1B0+0x0@ha
/* 80D499DC  38 A5 C1 B0 */	addi r5, r5, struct_80D4C1B0+0x0@l
/* 80D499E0  38 A5 00 23 */	addi r5, r5, 0x23
/* 80D499E4  38 C0 00 03 */	li r6, 3
/* 80D499E8  4B 2F E7 04 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D499EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D499F0  40 82 00 0C */	bne lbl_80D499FC
/* 80D499F4  38 60 00 01 */	li r3, 1
/* 80D499F8  48 00 00 30 */	b lbl_80D49A28
lbl_80D499FC:
/* 80D499FC  7F C3 F3 78 */	mr r3, r30
/* 80D49A00  7F A4 EB 78 */	mr r4, r29
/* 80D49A04  4B 2F E3 48 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D49A08  2C 03 00 00 */	cmpwi r3, 0
/* 80D49A0C  41 82 00 10 */	beq lbl_80D49A1C
/* 80D49A10  7F 83 E3 78 */	mr r3, r28
/* 80D49A14  7F E4 FB 78 */	mr r4, r31
/* 80D49A18  48 00 00 29 */	bl _cutAppear_Init__8daPeru_cFRCi
lbl_80D49A1C:
/* 80D49A1C  7F 83 E3 78 */	mr r3, r28
/* 80D49A20  7F E4 FB 78 */	mr r4, r31
/* 80D49A24  48 00 09 11 */	bl _cutAppear_Main__8daPeru_cFRCi
lbl_80D49A28:
/* 80D49A28  39 61 00 20 */	addi r11, r1, 0x20
/* 80D49A2C  4B 61 87 F8 */	b _restgpr_28
/* 80D49A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D49A34  7C 08 03 A6 */	mtlr r0
/* 80D49A38  38 21 00 20 */	addi r1, r1, 0x20
/* 80D49A3C  4E 80 00 20 */	blr 
