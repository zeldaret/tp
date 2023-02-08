lbl_8098FD80:
/* 8098FD80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098FD84  7C 08 02 A6 */	mflr r0
/* 8098FD88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098FD8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8098FD90  4B 9D 24 4D */	bl _savegpr_29
/* 8098FD94  7C 7D 1B 78 */	mr r29, r3
/* 8098FD98  7C 9E 23 78 */	mr r30, r4
/* 8098FD9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098FDA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098FDA4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8098FDA8  38 00 FF FF */	li r0, -1
/* 8098FDAC  90 01 00 08 */	stw r0, 8(r1)
/* 8098FDB0  7F E3 FB 78 */	mr r3, r31
/* 8098FDB4  3C A0 80 99 */	lis r5, d_a_npc_chin__stringBase0@ha /* 0x80991D40@ha */
/* 8098FDB8  38 A5 1D 40 */	addi r5, r5, d_a_npc_chin__stringBase0@l /* 0x80991D40@l */
/* 8098FDBC  38 A5 00 94 */	addi r5, r5, 0x94
/* 8098FDC0  38 C0 00 03 */	li r6, 3
/* 8098FDC4  4B 6B 83 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8098FDC8  28 03 00 00 */	cmplwi r3, 0
/* 8098FDCC  41 82 00 10 */	beq lbl_8098FDDC
/* 8098FDD0  80 03 00 00 */	lwz r0, 0(r3)
/* 8098FDD4  90 01 00 08 */	stw r0, 8(r1)
/* 8098FDD8  48 00 00 0C */	b lbl_8098FDE4
lbl_8098FDDC:
/* 8098FDDC  38 60 00 01 */	li r3, 1
/* 8098FDE0  48 00 00 30 */	b lbl_8098FE10
lbl_8098FDE4:
/* 8098FDE4  7F E3 FB 78 */	mr r3, r31
/* 8098FDE8  7F C4 F3 78 */	mr r4, r30
/* 8098FDEC  4B 6B 7F 61 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8098FDF0  2C 03 00 00 */	cmpwi r3, 0
/* 8098FDF4  41 82 00 10 */	beq lbl_8098FE04
/* 8098FDF8  7F A3 EB 78 */	mr r3, r29
/* 8098FDFC  38 81 00 08 */	addi r4, r1, 8
/* 8098FE00  48 00 00 29 */	bl _Evt_GameStart_CutInit__11daNpcChin_cFRCi
lbl_8098FE04:
/* 8098FE04  7F A3 EB 78 */	mr r3, r29
/* 8098FE08  38 81 00 08 */	addi r4, r1, 8
/* 8098FE0C  48 00 01 25 */	bl _Evt_GameStart_CutMain__11daNpcChin_cFRCi
lbl_8098FE10:
/* 8098FE10  39 61 00 20 */	addi r11, r1, 0x20
/* 8098FE14  4B 9D 24 15 */	bl _restgpr_29
/* 8098FE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098FE1C  7C 08 03 A6 */	mtlr r0
/* 8098FE20  38 21 00 20 */	addi r1, r1, 0x20
/* 8098FE24  4E 80 00 20 */	blr 
