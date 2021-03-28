lbl_80CCBDD0:
/* 80CCBDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCBDD4  7C 08 02 A6 */	mflr r0
/* 80CCBDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCBDDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCBDE0  4B 69 63 FC */	b _savegpr_29
/* 80CCBDE4  7C 7D 1B 78 */	mr r29, r3
/* 80CCBDE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBDEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCBDF0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80CCBDF4  7F C3 F3 78 */	mr r3, r30
/* 80CCBDF8  80 9D 05 E4 */	lwz r4, 0x5e4(r29)
/* 80CCBDFC  3C A0 80 CD */	lis r5, CUT_TYPE_TABLE_FIRE_SECOND@ha
/* 80CCBE00  38 A5 CE 7C */	addi r5, r5, CUT_TYPE_TABLE_FIRE_SECOND@l
/* 80CCBE04  38 C0 00 06 */	li r6, 6
/* 80CCBE08  38 E0 00 00 */	li r7, 0
/* 80CCBE0C  39 00 00 00 */	li r8, 0
/* 80CCBE10  4B 37 C0 00 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CCBE14  7C 7F 1B 78 */	mr r31, r3
/* 80CCBE18  2C 1F FF FF */	cmpwi r31, -1
/* 80CCBE1C  41 82 00 58 */	beq lbl_80CCBE74
/* 80CCBE20  7F C3 F3 78 */	mr r3, r30
/* 80CCBE24  80 9D 05 E4 */	lwz r4, 0x5e4(r29)
/* 80CCBE28  4B 37 BF 24 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CCBE2C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCBE30  41 82 00 10 */	beq lbl_80CCBE40
/* 80CCBE34  7F A3 EB 78 */	mr r3, r29
/* 80CCBE38  7F E4 FB 78 */	mr r4, r31
/* 80CCBE3C  48 00 00 51 */	bl demoModeInit__17daObjSCannonTen_cFi
lbl_80CCBE40:
/* 80CCBE40  1C 9F 00 18 */	mulli r4, r31, 0x18
/* 80CCBE44  3C 60 80 CD */	lis r3, s_demoExeProc__17daObjSCannonTen_c@ha
/* 80CCBE48  38 03 CD EC */	addi r0, r3, s_demoExeProc__17daObjSCannonTen_c@l
/* 80CCBE4C  7C 60 22 14 */	add r3, r0, r4
/* 80CCBE50  3B C3 00 0C */	addi r30, r3, 0xc
/* 80CCBE54  7F C3 F3 78 */	mr r3, r30
/* 80CCBE58  4B 69 61 C0 */	b __ptmf_test
/* 80CCBE5C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCBE60  41 82 00 14 */	beq lbl_80CCBE74
/* 80CCBE64  7F A3 EB 78 */	mr r3, r29
/* 80CCBE68  7F CC F3 78 */	mr r12, r30
/* 80CCBE6C  4B 69 62 18 */	b __ptmf_scall
/* 80CCBE70  60 00 00 00 */	nop 
lbl_80CCBE74:
/* 80CCBE74  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCBE78  4B 69 63 B0 */	b _restgpr_29
/* 80CCBE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCBE80  7C 08 03 A6 */	mtlr r0
/* 80CCBE84  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCBE88  4E 80 00 20 */	blr 
