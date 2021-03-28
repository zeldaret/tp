lbl_8055E414:
/* 8055E414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055E418  7C 08 02 A6 */	mflr r0
/* 8055E41C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055E420  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E424  4B E0 3D B0 */	b _savegpr_27
/* 8055E428  7C 7E 1B 78 */	mr r30, r3
/* 8055E42C  7C 9B 23 78 */	mr r27, r4
/* 8055E430  3B E0 00 00 */	li r31, 0
/* 8055E434  3B 80 FF FF */	li r28, -1
/* 8055E438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055E43C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055E440  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8055E444  7F A3 EB 78 */	mr r3, r29
/* 8055E448  3C A0 80 56 */	lis r5, struct_80564D58+0x0@ha
/* 8055E44C  38 A5 4D 58 */	addi r5, r5, struct_80564D58+0x0@l
/* 8055E450  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055E454  38 C0 00 03 */	li r6, 3
/* 8055E458  4B AE 9C 94 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055E45C  28 03 00 00 */	cmplwi r3, 0
/* 8055E460  41 82 00 08 */	beq lbl_8055E468
/* 8055E464  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055E468:
/* 8055E468  7F A3 EB 78 */	mr r3, r29
/* 8055E46C  7F 64 DB 78 */	mr r4, r27
/* 8055E470  4B AE 98 DC */	b getIsAddvance__16dEvent_manager_cFi
/* 8055E474  2C 03 00 00 */	cmpwi r3, 0
/* 8055E478  41 82 00 74 */	beq lbl_8055E4EC
/* 8055E47C  2C 1C 00 01 */	cmpwi r28, 1
/* 8055E480  41 82 00 0C */	beq lbl_8055E48C
/* 8055E484  40 80 00 68 */	bge lbl_8055E4EC
/* 8055E488  48 00 00 64 */	b lbl_8055E4EC
lbl_8055E48C:
/* 8055E48C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8055E490  2C 00 00 09 */	cmpwi r0, 9
/* 8055E494  41 82 00 28 */	beq lbl_8055E4BC
/* 8055E498  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8055E49C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8055E4A0  4B BE 73 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E4A4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8055E4A8  38 00 00 09 */	li r0, 9
/* 8055E4AC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8055E4B0  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E4B4  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E4B8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8055E4BC:
/* 8055E4BC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8055E4C0  2C 00 00 00 */	cmpwi r0, 0
/* 8055E4C4  41 82 00 28 */	beq lbl_8055E4EC
/* 8055E4C8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8055E4CC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8055E4D0  4B BE 73 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E4D4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8055E4D8  38 00 00 00 */	li r0, 0
/* 8055E4DC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8055E4E0  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E4E4  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E4E8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8055E4EC:
/* 8055E4EC  2C 1C 00 01 */	cmpwi r28, 1
/* 8055E4F0  41 82 00 30 */	beq lbl_8055E520
/* 8055E4F4  40 80 00 68 */	bge lbl_8055E55C
/* 8055E4F8  2C 1C 00 00 */	cmpwi r28, 0
/* 8055E4FC  40 80 00 08 */	bge lbl_8055E504
/* 8055E500  48 00 00 5C */	b lbl_8055E55C
lbl_8055E504:
/* 8055E504  7F C3 F3 78 */	mr r3, r30
/* 8055E508  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055E50C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8055E510  7D 89 03 A6 */	mtctr r12
/* 8055E514  4E 80 04 21 */	bctrl 
/* 8055E518  3B E0 00 01 */	li r31, 1
/* 8055E51C  48 00 00 40 */	b lbl_8055E55C
lbl_8055E520:
/* 8055E520  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055E524  2C 00 00 04 */	cmpwi r0, 4
/* 8055E528  41 82 00 2C */	beq lbl_8055E554
/* 8055E52C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055E530  4B BE 71 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 8055E534  38 00 00 00 */	li r0, 0
/* 8055E538  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055E53C  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E540  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E544  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055E548  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055E54C  38 00 00 04 */	li r0, 4
/* 8055E550  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055E554:
/* 8055E554  38 00 00 00 */	li r0, 0
/* 8055E558  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8055E55C:
/* 8055E55C  7F E3 FB 78 */	mr r3, r31
/* 8055E560  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E564  4B E0 3C BC */	b _restgpr_27
/* 8055E568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055E56C  7C 08 03 A6 */	mtlr r0
/* 8055E570  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E574  4E 80 00 20 */	blr 
