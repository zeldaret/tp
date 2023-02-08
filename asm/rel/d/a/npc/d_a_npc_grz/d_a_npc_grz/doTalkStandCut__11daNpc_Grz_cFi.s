lbl_809ED3D4:
/* 809ED3D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809ED3D8  7C 08 02 A6 */	mflr r0
/* 809ED3DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809ED3E0  39 61 00 20 */	addi r11, r1, 0x20
/* 809ED3E4  4B 97 4D F1 */	bl _savegpr_27
/* 809ED3E8  7C 7E 1B 78 */	mr r30, r3
/* 809ED3EC  7C 9B 23 78 */	mr r27, r4
/* 809ED3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ED3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ED3F8  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 809ED3FC  3B E0 00 00 */	li r31, 0
/* 809ED400  3B 80 FF FF */	li r28, -1
/* 809ED404  7F A3 EB 78 */	mr r3, r29
/* 809ED408  3C A0 80 9F */	lis r5, d_a_npc_grz__stringBase0@ha /* 0x809EF638@ha */
/* 809ED40C  38 A5 F6 38 */	addi r5, r5, d_a_npc_grz__stringBase0@l /* 0x809EF638@l */
/* 809ED410  38 A5 00 62 */	addi r5, r5, 0x62
/* 809ED414  38 C0 00 03 */	li r6, 3
/* 809ED418  4B 65 AC D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809ED41C  28 03 00 00 */	cmplwi r3, 0
/* 809ED420  41 82 00 08 */	beq lbl_809ED428
/* 809ED424  83 83 00 00 */	lwz r28, 0(r3)
lbl_809ED428:
/* 809ED428  7F A3 EB 78 */	mr r3, r29
/* 809ED42C  7F 64 DB 78 */	mr r4, r27
/* 809ED430  4B 65 A9 1D */	bl getIsAddvance__16dEvent_manager_cFi
/* 809ED434  2C 03 00 00 */	cmpwi r3, 0
/* 809ED438  41 82 00 FC */	beq lbl_809ED534
/* 809ED43C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809ED440  41 82 00 9C */	beq lbl_809ED4DC
/* 809ED444  40 80 00 10 */	bge lbl_809ED454
/* 809ED448  2C 1C 00 00 */	cmpwi r28, 0
/* 809ED44C  41 82 00 14 */	beq lbl_809ED460
/* 809ED450  48 00 00 E4 */	b lbl_809ED534
lbl_809ED454:
/* 809ED454  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809ED458  41 82 00 CC */	beq lbl_809ED524
/* 809ED45C  48 00 00 D8 */	b lbl_809ED534
lbl_809ED460:
/* 809ED460  3C 60 80 9F */	lis r3, lit_4360@ha /* 0x809EF29C@ha */
/* 809ED464  C0 03 F2 9C */	lfs f0, lit_4360@l(r3)  /* 0x809EF29C@l */
/* 809ED468  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809ED46C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 809ED470  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 809ED474  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 809ED478  38 00 00 00 */	li r0, 0
/* 809ED47C  98 1E 09 E9 */	stb r0, 0x9e9(r30)
/* 809ED480  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809ED484  90 1E 1A 84 */	stw r0, 0x1a84(r30)
/* 809ED488  7F C3 F3 78 */	mr r3, r30
/* 809ED48C  38 80 00 00 */	li r4, 0
/* 809ED490  4B FF EC D5 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ED494  7F C3 F3 78 */	mr r3, r30
/* 809ED498  38 80 00 08 */	li r4, 8
/* 809ED49C  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ED4A0  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ED4A4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED4A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ED4AC  7D 89 03 A6 */	mtctr r12
/* 809ED4B0  4E 80 04 21 */	bctrl 
/* 809ED4B4  7F C3 F3 78 */	mr r3, r30
/* 809ED4B8  38 80 00 0C */	li r4, 0xc
/* 809ED4BC  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ED4C0  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ED4C4  38 A0 00 00 */	li r5, 0
/* 809ED4C8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED4CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED4D0  7D 89 03 A6 */	mtctr r12
/* 809ED4D4  4E 80 04 21 */	bctrl 
/* 809ED4D8  48 00 00 5C */	b lbl_809ED534
lbl_809ED4DC:
/* 809ED4DC  7F C3 F3 78 */	mr r3, r30
/* 809ED4E0  38 80 00 09 */	li r4, 9
/* 809ED4E4  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ED4E8  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ED4EC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED4F0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ED4F4  7D 89 03 A6 */	mtctr r12
/* 809ED4F8  4E 80 04 21 */	bctrl 
/* 809ED4FC  7F C3 F3 78 */	mr r3, r30
/* 809ED500  38 80 00 01 */	li r4, 1
/* 809ED504  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ED508  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ED50C  38 A0 00 00 */	li r5, 0
/* 809ED510  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED514  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED518  7D 89 03 A6 */	mtctr r12
/* 809ED51C  4E 80 04 21 */	bctrl 
/* 809ED520  48 00 00 14 */	b lbl_809ED534
lbl_809ED524:
/* 809ED524  7F C3 F3 78 */	mr r3, r30
/* 809ED528  80 9E 1A 74 */	lwz r4, 0x1a74(r30)
/* 809ED52C  38 A0 00 00 */	li r5, 0
/* 809ED530  4B 76 67 ED */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_809ED534:
/* 809ED534  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809ED538  41 82 00 68 */	beq lbl_809ED5A0
/* 809ED53C  40 80 00 10 */	bge lbl_809ED54C
/* 809ED540  2C 1C 00 00 */	cmpwi r28, 0
/* 809ED544  41 82 00 14 */	beq lbl_809ED558
/* 809ED548  48 00 00 84 */	b lbl_809ED5CC
lbl_809ED54C:
/* 809ED54C  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809ED550  41 82 00 58 */	beq lbl_809ED5A8
/* 809ED554  48 00 00 78 */	b lbl_809ED5CC
lbl_809ED558:
/* 809ED558  80 1E 1A 80 */	lwz r0, 0x1a80(r30)
/* 809ED55C  2C 00 00 17 */	cmpwi r0, 0x17
/* 809ED560  40 82 00 70 */	bne lbl_809ED5D0
/* 809ED564  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 809ED568  38 A0 00 01 */	li r5, 1
/* 809ED56C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809ED570  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809ED574  40 82 00 1C */	bne lbl_809ED590
/* 809ED578  3C 60 80 9F */	lis r3, lit_4360@ha /* 0x809EF29C@ha */
/* 809ED57C  C0 23 F2 9C */	lfs f1, lit_4360@l(r3)  /* 0x809EF29C@l */
/* 809ED580  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809ED584  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809ED588  41 82 00 08 */	beq lbl_809ED590
/* 809ED58C  38 A0 00 00 */	li r5, 0
lbl_809ED590:
/* 809ED590  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 809ED594  41 82 00 3C */	beq lbl_809ED5D0
/* 809ED598  3B E0 00 01 */	li r31, 1
/* 809ED59C  48 00 00 34 */	b lbl_809ED5D0
lbl_809ED5A0:
/* 809ED5A0  3B E0 00 01 */	li r31, 1
/* 809ED5A4  48 00 00 2C */	b lbl_809ED5D0
lbl_809ED5A8:
/* 809ED5A8  7F C3 F3 78 */	mr r3, r30
/* 809ED5AC  38 80 00 00 */	li r4, 0
/* 809ED5B0  38 A0 00 01 */	li r5, 1
/* 809ED5B4  38 C0 00 00 */	li r6, 0
/* 809ED5B8  4B 76 67 CD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809ED5BC  2C 03 00 00 */	cmpwi r3, 0
/* 809ED5C0  41 82 00 10 */	beq lbl_809ED5D0
/* 809ED5C4  3B E0 00 01 */	li r31, 1
/* 809ED5C8  48 00 00 08 */	b lbl_809ED5D0
lbl_809ED5CC:
/* 809ED5CC  3B E0 00 01 */	li r31, 1
lbl_809ED5D0:
/* 809ED5D0  7F E3 FB 78 */	mr r3, r31
/* 809ED5D4  39 61 00 20 */	addi r11, r1, 0x20
/* 809ED5D8  4B 97 4C 49 */	bl _restgpr_27
/* 809ED5DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809ED5E0  7C 08 03 A6 */	mtlr r0
/* 809ED5E4  38 21 00 20 */	addi r1, r1, 0x20
/* 809ED5E8  4E 80 00 20 */	blr 
