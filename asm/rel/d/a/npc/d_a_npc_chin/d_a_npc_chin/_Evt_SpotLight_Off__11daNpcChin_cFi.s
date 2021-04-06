lbl_80990C9C:
/* 80990C9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80990CA0  7C 08 02 A6 */	mflr r0
/* 80990CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80990CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80990CAC  4B 9D 15 31 */	bl _savegpr_29
/* 80990CB0  7C 7D 1B 78 */	mr r29, r3
/* 80990CB4  7C 9E 23 78 */	mr r30, r4
/* 80990CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80990CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80990CC0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80990CC4  38 00 FF FF */	li r0, -1
/* 80990CC8  90 01 00 08 */	stw r0, 8(r1)
/* 80990CCC  7F E3 FB 78 */	mr r3, r31
/* 80990CD0  3C A0 80 99 */	lis r5, d_a_npc_chin__stringBase0@ha /* 0x80991D40@ha */
/* 80990CD4  38 A5 1D 40 */	addi r5, r5, d_a_npc_chin__stringBase0@l /* 0x80991D40@l */
/* 80990CD8  38 A5 00 94 */	addi r5, r5, 0x94
/* 80990CDC  38 C0 00 03 */	li r6, 3
/* 80990CE0  4B 6B 74 0D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80990CE4  28 03 00 00 */	cmplwi r3, 0
/* 80990CE8  41 82 00 10 */	beq lbl_80990CF8
/* 80990CEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80990CF0  90 01 00 08 */	stw r0, 8(r1)
/* 80990CF4  48 00 00 0C */	b lbl_80990D00
lbl_80990CF8:
/* 80990CF8  38 60 00 01 */	li r3, 1
/* 80990CFC  48 00 00 30 */	b lbl_80990D2C
lbl_80990D00:
/* 80990D00  7F E3 FB 78 */	mr r3, r31
/* 80990D04  7F C4 F3 78 */	mr r4, r30
/* 80990D08  4B 6B 70 45 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80990D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80990D10  41 82 00 10 */	beq lbl_80990D20
/* 80990D14  7F A3 EB 78 */	mr r3, r29
/* 80990D18  38 81 00 08 */	addi r4, r1, 8
/* 80990D1C  48 00 00 29 */	bl _Evt_SpotLight_Off_CutInit__11daNpcChin_cFRCi
lbl_80990D20:
/* 80990D20  7F A3 EB 78 */	mr r3, r29
/* 80990D24  38 81 00 08 */	addi r4, r1, 8
/* 80990D28  48 00 00 B5 */	bl _Evt_SpotLight_Off_CutMain__11daNpcChin_cFRCi
lbl_80990D2C:
/* 80990D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80990D30  4B 9D 14 F9 */	bl _restgpr_29
/* 80990D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80990D38  7C 08 03 A6 */	mtlr r0
/* 80990D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80990D40  4E 80 00 20 */	blr 
