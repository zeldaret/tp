lbl_80CC7EC0:
/* 80CC7EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC7EC4  7C 08 02 A6 */	mflr r0
/* 80CC7EC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC7ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC7ED0  4B 69 A3 0C */	b _savegpr_29
/* 80CC7ED4  7C 7D 1B 78 */	mr r29, r3
/* 80CC7ED8  88 03 06 18 */	lbz r0, 0x618(r3)
/* 80CC7EDC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80CC7EE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7EE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7EE8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80CC7EEC  7F C3 F3 78 */	mr r3, r30
/* 80CC7EF0  80 9D 06 04 */	lwz r4, 0x604(r29)
/* 80CC7EF4  3C A0 80 CD */	lis r5, s_demoTable__11daSCannon_c@ha
/* 80CC7EF8  38 05 91 C4 */	addi r0, r5, s_demoTable__11daSCannon_c@l
/* 80CC7EFC  7C C0 32 14 */	add r6, r0, r6
/* 80CC7F00  80 A6 00 04 */	lwz r5, 4(r6)
/* 80CC7F04  80 C6 00 08 */	lwz r6, 8(r6)
/* 80CC7F08  38 E0 00 00 */	li r7, 0
/* 80CC7F0C  39 00 00 00 */	li r8, 0
/* 80CC7F10  4B 37 FF 00 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CC7F14  7C 7F 1B 78 */	mr r31, r3
/* 80CC7F18  2C 1F FF FF */	cmpwi r31, -1
/* 80CC7F1C  41 82 00 78 */	beq lbl_80CC7F94
/* 80CC7F20  7F C3 F3 78 */	mr r3, r30
/* 80CC7F24  80 9D 06 04 */	lwz r4, 0x604(r29)
/* 80CC7F28  4B 37 FE 24 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CC7F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7F30  41 82 00 10 */	beq lbl_80CC7F40
/* 80CC7F34  7F A3 EB 78 */	mr r3, r29
/* 80CC7F38  7F E4 FB 78 */	mr r4, r31
/* 80CC7F3C  48 00 00 71 */	bl demoModeInit__11daSCannon_cFi
lbl_80CC7F40:
/* 80CC7F40  88 1D 06 18 */	lbz r0, 0x618(r29)
/* 80CC7F44  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CC7F48  3C 60 80 CD */	lis r3, s_demoTable__11daSCannon_c@ha
/* 80CC7F4C  38 63 91 C4 */	addi r3, r3, s_demoTable__11daSCannon_c@l
/* 80CC7F50  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CC7F54  1F DF 00 18 */	mulli r30, r31, 0x18
/* 80CC7F58  38 7E 00 0C */	addi r3, r30, 0xc
/* 80CC7F5C  7C 60 1A 14 */	add r3, r0, r3
/* 80CC7F60  4B 69 A0 B8 */	b __ptmf_test
/* 80CC7F64  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7F68  41 82 00 2C */	beq lbl_80CC7F94
/* 80CC7F6C  7F A3 EB 78 */	mr r3, r29
/* 80CC7F70  88 1D 06 18 */	lbz r0, 0x618(r29)
/* 80CC7F74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CC7F78  3C 80 80 CD */	lis r4, s_demoTable__11daSCannon_c@ha
/* 80CC7F7C  38 84 91 C4 */	addi r4, r4, s_demoTable__11daSCannon_c@l
/* 80CC7F80  7C 04 00 2E */	lwzx r0, r4, r0
/* 80CC7F84  39 9E 00 0C */	addi r12, r30, 0xc
/* 80CC7F88  7D 80 62 14 */	add r12, r0, r12
/* 80CC7F8C  4B 69 A0 F8 */	b __ptmf_scall
/* 80CC7F90  60 00 00 00 */	nop 
lbl_80CC7F94:
/* 80CC7F94  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC7F98  4B 69 A2 90 */	b _restgpr_29
/* 80CC7F9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC7FA0  7C 08 03 A6 */	mtlr r0
/* 80CC7FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC7FA8  4E 80 00 20 */	blr 
