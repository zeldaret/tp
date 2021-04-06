lbl_80BDF16C:
/* 80BDF16C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDF170  7C 08 02 A6 */	mflr r0
/* 80BDF174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDF178  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDF17C  4B 78 30 5D */	bl _savegpr_28
/* 80BDF180  7C 7F 1B 78 */	mr r31, r3
/* 80BDF184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDF188  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDF18C  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80BDF190  7F 83 E3 78 */	mr r3, r28
/* 80BDF194  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80BDF198  3C A0 80 BE */	lis r5, action_table@ha /* 0x80BDFAB0@ha */
/* 80BDF19C  38 A5 FA B0 */	addi r5, r5, action_table@l /* 0x80BDFAB0@l */
/* 80BDF1A0  38 C0 00 02 */	li r6, 2
/* 80BDF1A4  38 E0 00 00 */	li r7, 0
/* 80BDF1A8  39 00 00 00 */	li r8, 0
/* 80BDF1AC  4B 46 8C 65 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80BDF1B0  7C 7E 1B 78 */	mr r30, r3
/* 80BDF1B4  7F 83 E3 78 */	mr r3, r28
/* 80BDF1B8  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80BDF1BC  4B 46 8B 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80BDF1C0  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF1C4  41 82 00 60 */	beq lbl_80BDF224
/* 80BDF1C8  2C 1E 00 01 */	cmpwi r30, 1
/* 80BDF1CC  41 82 00 50 */	beq lbl_80BDF21C
/* 80BDF1D0  40 80 00 54 */	bge lbl_80BDF224
/* 80BDF1D4  2C 1E 00 00 */	cmpwi r30, 0
/* 80BDF1D8  40 80 00 08 */	bge lbl_80BDF1E0
/* 80BDF1DC  48 00 00 48 */	b lbl_80BDF224
lbl_80BDF1E0:
/* 80BDF1E0  7F 83 E3 78 */	mr r3, r28
/* 80BDF1E4  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80BDF1E8  3C A0 80 BE */	lis r5, d_a_obj_dmelevator__stringBase0@ha /* 0x80BDF8EC@ha */
/* 80BDF1EC  38 A5 F8 EC */	addi r5, r5, d_a_obj_dmelevator__stringBase0@l /* 0x80BDF8EC@l */
/* 80BDF1F0  38 A5 00 50 */	addi r5, r5, 0x50
/* 80BDF1F4  38 C0 00 03 */	li r6, 3
/* 80BDF1F8  4B 46 8E F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80BDF1FC  28 03 00 00 */	cmplwi r3, 0
/* 80BDF200  40 82 00 10 */	bne lbl_80BDF210
/* 80BDF204  38 00 00 01 */	li r0, 1
/* 80BDF208  98 1F 05 E3 */	stb r0, 0x5e3(r31)
/* 80BDF20C  48 00 00 18 */	b lbl_80BDF224
lbl_80BDF210:
/* 80BDF210  80 03 00 00 */	lwz r0, 0(r3)
/* 80BDF214  98 1F 05 E3 */	stb r0, 0x5e3(r31)
/* 80BDF218  48 00 00 0C */	b lbl_80BDF224
lbl_80BDF21C:
/* 80BDF21C  7F E3 FB 78 */	mr r3, r31
/* 80BDF220  48 00 01 01 */	bl moveInit__17daObjDmElevator_cFv
lbl_80BDF224:
/* 80BDF224  2C 1E 00 01 */	cmpwi r30, 1
/* 80BDF228  41 82 00 34 */	beq lbl_80BDF25C
/* 80BDF22C  40 80 00 CC */	bge lbl_80BDF2F8
/* 80BDF230  2C 1E 00 00 */	cmpwi r30, 0
/* 80BDF234  40 80 00 08 */	bge lbl_80BDF23C
/* 80BDF238  48 00 00 C0 */	b lbl_80BDF2F8
lbl_80BDF23C:
/* 80BDF23C  38 7F 05 E3 */	addi r3, r31, 0x5e3
/* 80BDF240  48 00 06 05 */	bl func_80BDF844
/* 80BDF244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDF248  40 82 00 BC */	bne lbl_80BDF304
/* 80BDF24C  7F 83 E3 78 */	mr r3, r28
/* 80BDF250  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80BDF254  4B 46 8F 29 */	bl cutEnd__16dEvent_manager_cFi
/* 80BDF258  48 00 00 AC */	b lbl_80BDF304
lbl_80BDF25C:
/* 80BDF25C  7F E3 FB 78 */	mr r3, r31
/* 80BDF260  48 00 01 59 */	bl moveProc__17daObjDmElevator_cFv
/* 80BDF264  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF268  41 82 00 9C */	beq lbl_80BDF304
/* 80BDF26C  3B 9D 4E 00 */	addi r28, r29, 0x4e00
/* 80BDF270  7F 83 E3 78 */	mr r3, r28
/* 80BDF274  3C 80 80 BE */	lis r4, d_a_obj_dmelevator__stringBase0@ha /* 0x80BDF8EC@ha */
/* 80BDF278  38 84 F8 EC */	addi r4, r4, d_a_obj_dmelevator__stringBase0@l /* 0x80BDF8EC@l */
/* 80BDF27C  38 84 00 36 */	addi r4, r4, 0x36
/* 80BDF280  4B 78 97 15 */	bl strcmp
/* 80BDF284  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF288  40 82 00 2C */	bne lbl_80BDF2B4
/* 80BDF28C  38 60 00 01 */	li r3, 1
/* 80BDF290  3C 80 80 BE */	lis r4, lit_3719@ha /* 0x80BDF880@ha */
/* 80BDF294  C0 24 F8 80 */	lfs f1, lit_3719@l(r4)  /* 0x80BDF880@l */
/* 80BDF298  38 80 00 00 */	li r4, 0
/* 80BDF29C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BDF2A0  7C 05 07 74 */	extsb r5, r0
/* 80BDF2A4  38 C0 00 00 */	li r6, 0
/* 80BDF2A8  38 E0 FF FF */	li r7, -1
/* 80BDF2AC  4B 44 7E C5 */	bl dStage_changeScene__FifUlScsi
/* 80BDF2B0  48 00 00 54 */	b lbl_80BDF304
lbl_80BDF2B4:
/* 80BDF2B4  7F 83 E3 78 */	mr r3, r28
/* 80BDF2B8  3C 80 80 BE */	lis r4, d_a_obj_dmelevator__stringBase0@ha /* 0x80BDF8EC@ha */
/* 80BDF2BC  38 84 F8 EC */	addi r4, r4, d_a_obj_dmelevator__stringBase0@l /* 0x80BDF8EC@l */
/* 80BDF2C0  38 84 00 3E */	addi r4, r4, 0x3e
/* 80BDF2C4  4B 78 96 D1 */	bl strcmp
/* 80BDF2C8  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF2CC  40 82 00 38 */	bne lbl_80BDF304
/* 80BDF2D0  38 60 00 02 */	li r3, 2
/* 80BDF2D4  3C 80 80 BE */	lis r4, lit_3719@ha /* 0x80BDF880@ha */
/* 80BDF2D8  C0 24 F8 80 */	lfs f1, lit_3719@l(r4)  /* 0x80BDF880@l */
/* 80BDF2DC  38 80 00 00 */	li r4, 0
/* 80BDF2E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BDF2E4  7C 05 07 74 */	extsb r5, r0
/* 80BDF2E8  38 C0 00 00 */	li r6, 0
/* 80BDF2EC  38 E0 FF FF */	li r7, -1
/* 80BDF2F0  4B 44 7E 81 */	bl dStage_changeScene__FifUlScsi
/* 80BDF2F4  48 00 00 10 */	b lbl_80BDF304
lbl_80BDF2F8:
/* 80BDF2F8  7F 83 E3 78 */	mr r3, r28
/* 80BDF2FC  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80BDF300  4B 46 8E 7D */	bl cutEnd__16dEvent_manager_cFi
lbl_80BDF304:
/* 80BDF304  38 60 00 00 */	li r3, 0
/* 80BDF308  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDF30C  4B 78 2F 19 */	bl _restgpr_28
/* 80BDF310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDF314  7C 08 03 A6 */	mtlr r0
/* 80BDF318  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDF31C  4E 80 00 20 */	blr 
