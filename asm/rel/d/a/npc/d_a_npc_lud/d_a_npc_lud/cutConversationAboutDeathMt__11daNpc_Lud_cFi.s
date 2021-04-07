lbl_80A6D450:
/* 80A6D450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6D454  7C 08 02 A6 */	mflr r0
/* 80A6D458  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6D45C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6D460  4B 8F 4D 75 */	bl _savegpr_27
/* 80A6D464  7C 7D 1B 78 */	mr r29, r3
/* 80A6D468  7C 9B 23 78 */	mr r27, r4
/* 80A6D46C  3B E0 00 00 */	li r31, 0
/* 80A6D470  3B C0 FF FF */	li r30, -1
/* 80A6D474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6D478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6D47C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A6D480  7F 83 E3 78 */	mr r3, r28
/* 80A6D484  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D488  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D48C  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6D490  38 C0 00 03 */	li r6, 3
/* 80A6D494  4B 5D AC 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D498  28 03 00 00 */	cmplwi r3, 0
/* 80A6D49C  41 82 00 08 */	beq lbl_80A6D4A4
/* 80A6D4A0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A6D4A4:
/* 80A6D4A4  7F 83 E3 78 */	mr r3, r28
/* 80A6D4A8  7F 64 DB 78 */	mr r4, r27
/* 80A6D4AC  4B 5D A8 A1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A6D4B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D4B4  41 82 01 B0 */	beq lbl_80A6D664
/* 80A6D4B8  2C 1E 00 02 */	cmpwi r30, 2
/* 80A6D4BC  41 82 00 F4 */	beq lbl_80A6D5B0
/* 80A6D4C0  40 80 00 14 */	bge lbl_80A6D4D4
/* 80A6D4C4  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D4C8  41 82 00 18 */	beq lbl_80A6D4E0
/* 80A6D4CC  40 80 00 78 */	bge lbl_80A6D544
/* 80A6D4D0  48 00 01 94 */	b lbl_80A6D664
lbl_80A6D4D4:
/* 80A6D4D4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6D4D8  40 80 01 8C */	bge lbl_80A6D664
/* 80A6D4DC  48 00 01 20 */	b lbl_80A6D5FC
lbl_80A6D4E0:
/* 80A6D4E0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D4E4  2C 00 00 05 */	cmpwi r0, 5
/* 80A6D4E8  41 82 00 28 */	beq lbl_80A6D510
/* 80A6D4EC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D4F0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D4F4  4B 6D 83 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D4F8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D4FC  38 00 00 05 */	li r0, 5
/* 80A6D500  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D504  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D508  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D50C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D510:
/* 80A6D510  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D514  2C 00 00 07 */	cmpwi r0, 7
/* 80A6D518  41 82 01 4C */	beq lbl_80A6D664
/* 80A6D51C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D520  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D524  4B 6D 83 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D528  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D52C  38 00 00 07 */	li r0, 7
/* 80A6D530  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D534  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D538  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D53C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A6D540  48 00 01 24 */	b lbl_80A6D664
lbl_80A6D544:
/* 80A6D544  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D548  2C 00 00 06 */	cmpwi r0, 6
/* 80A6D54C  41 82 00 28 */	beq lbl_80A6D574
/* 80A6D550  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D554  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D558  4B 6D 83 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D55C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D560  38 00 00 06 */	li r0, 6
/* 80A6D564  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D568  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D56C  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D570  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D574:
/* 80A6D574  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D578  2C 00 00 08 */	cmpwi r0, 8
/* 80A6D57C  41 82 00 28 */	beq lbl_80A6D5A4
/* 80A6D580  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D584  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D588  4B 6D 83 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D58C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D590  38 00 00 08 */	li r0, 8
/* 80A6D594  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D598  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D59C  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D5A0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A6D5A4:
/* 80A6D5A4  38 00 00 20 */	li r0, 0x20
/* 80A6D5A8  90 1D 0F C8 */	stw r0, 0xfc8(r29)
/* 80A6D5AC  48 00 00 B8 */	b lbl_80A6D664
lbl_80A6D5B0:
/* 80A6D5B0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D5B4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D5B8  4B 6D 82 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D5BC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D5C0  38 00 00 05 */	li r0, 5
/* 80A6D5C4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D5C8  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D5CC  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D5D0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 80A6D5D4  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D5D8  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D5DC  4B 6D 82 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D5E0  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D5E4  38 00 00 07 */	li r0, 7
/* 80A6D5E8  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D5EC  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D5F0  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D5F4  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A6D5F8  48 00 00 6C */	b lbl_80A6D664
lbl_80A6D5FC:
/* 80A6D5FC  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D600  2C 00 00 06 */	cmpwi r0, 6
/* 80A6D604  41 82 00 28 */	beq lbl_80A6D62C
/* 80A6D608  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D60C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D610  4B 6D 82 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D614  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D618  38 00 00 06 */	li r0, 6
/* 80A6D61C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D620  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D624  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D628  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D62C:
/* 80A6D62C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D630  2C 00 00 08 */	cmpwi r0, 8
/* 80A6D634  41 82 00 28 */	beq lbl_80A6D65C
/* 80A6D638  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D63C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D640  4B 6D 82 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D644  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D648  38 00 00 08 */	li r0, 8
/* 80A6D64C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D650  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6D654  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6D658  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A6D65C:
/* 80A6D65C  38 00 00 20 */	li r0, 0x20
/* 80A6D660  90 1D 0F C8 */	stw r0, 0xfc8(r29)
lbl_80A6D664:
/* 80A6D664  2C 1E 00 02 */	cmpwi r30, 2
/* 80A6D668  41 82 00 68 */	beq lbl_80A6D6D0
/* 80A6D66C  40 80 00 14 */	bge lbl_80A6D680
/* 80A6D670  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D674  41 82 00 18 */	beq lbl_80A6D68C
/* 80A6D678  40 80 00 30 */	bge lbl_80A6D6A8
/* 80A6D67C  48 00 00 70 */	b lbl_80A6D6EC
lbl_80A6D680:
/* 80A6D680  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6D684  40 80 00 68 */	bge lbl_80A6D6EC
/* 80A6D688  48 00 00 50 */	b lbl_80A6D6D8
lbl_80A6D68C:
/* 80A6D68C  7F A3 EB 78 */	mr r3, r29
/* 80A6D690  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80A6D694  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6D698  7D 89 03 A6 */	mtctr r12
/* 80A6D69C  4E 80 04 21 */	bctrl 
/* 80A6D6A0  3B E0 00 01 */	li r31, 1
/* 80A6D6A4  48 00 00 48 */	b lbl_80A6D6EC
lbl_80A6D6A8:
/* 80A6D6A8  7F A3 EB 78 */	mr r3, r29
/* 80A6D6AC  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80A6D6B0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6D6B4  7D 89 03 A6 */	mtctr r12
/* 80A6D6B8  4E 80 04 21 */	bctrl 
/* 80A6D6BC  80 1D 0F C8 */	lwz r0, 0xfc8(r29)
/* 80A6D6C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A6D6C4  40 82 00 28 */	bne lbl_80A6D6EC
/* 80A6D6C8  3B E0 00 01 */	li r31, 1
/* 80A6D6CC  48 00 00 20 */	b lbl_80A6D6EC
lbl_80A6D6D0:
/* 80A6D6D0  3B E0 00 01 */	li r31, 1
/* 80A6D6D4  48 00 00 18 */	b lbl_80A6D6EC
lbl_80A6D6D8:
/* 80A6D6D8  38 7D 0F C8 */	addi r3, r29, 0xfc8
/* 80A6D6DC  48 00 23 F9 */	bl func_80A6FAD4
/* 80A6D6E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D6E4  40 82 00 08 */	bne lbl_80A6D6EC
/* 80A6D6E8  3B E0 00 01 */	li r31, 1
lbl_80A6D6EC:
/* 80A6D6EC  7F E3 FB 78 */	mr r3, r31
/* 80A6D6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6D6F4  4B 8F 4B 2D */	bl _restgpr_27
/* 80A6D6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6D6FC  7C 08 03 A6 */	mtlr r0
/* 80A6D700  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6D704  4E 80 00 20 */	blr 
