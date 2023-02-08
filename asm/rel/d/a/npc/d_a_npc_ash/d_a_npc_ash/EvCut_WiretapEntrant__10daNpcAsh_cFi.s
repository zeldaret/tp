lbl_8095BA80:
/* 8095BA80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095BA84  7C 08 02 A6 */	mflr r0
/* 8095BA88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095BA8C  39 61 00 30 */	addi r11, r1, 0x30
/* 8095BA90  4B A0 67 45 */	bl _savegpr_27
/* 8095BA94  7C 7E 1B 78 */	mr r30, r3
/* 8095BA98  7C 9B 23 78 */	mr r27, r4
/* 8095BA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095BAA0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095BAA4  3B 9F 4F F8 */	addi r28, r31, 0x4ff8
/* 8095BAA8  7F 83 E3 78 */	mr r3, r28
/* 8095BAAC  3C A0 80 96 */	lis r5, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 8095BAB0  38 A5 D9 10 */	addi r5, r5, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 8095BAB4  38 A5 00 7B */	addi r5, r5, 0x7b
/* 8095BAB8  38 C0 00 03 */	li r6, 3
/* 8095BABC  4B 6E C6 31 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8095BAC0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8095BAC4  40 82 00 0C */	bne lbl_8095BAD0
/* 8095BAC8  38 60 00 00 */	li r3, 0
/* 8095BACC  48 00 01 54 */	b lbl_8095BC20
lbl_8095BAD0:
/* 8095BAD0  7F 83 E3 78 */	mr r3, r28
/* 8095BAD4  7F 64 DB 78 */	mr r4, r27
/* 8095BAD8  4B 6E C2 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8095BADC  2C 03 00 00 */	cmpwi r3, 0
/* 8095BAE0  41 82 00 58 */	beq lbl_8095BB38
/* 8095BAE4  80 1D 00 00 */	lwz r0, 0(r29)
/* 8095BAE8  2C 00 00 00 */	cmpwi r0, 0
/* 8095BAEC  41 82 00 08 */	beq lbl_8095BAF4
/* 8095BAF0  48 00 00 48 */	b lbl_8095BB38
lbl_8095BAF4:
/* 8095BAF4  7F C3 F3 78 */	mr r3, r30
/* 8095BAF8  38 80 00 07 */	li r4, 7
/* 8095BAFC  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095BB00  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095BB04  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095BB08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095BB0C  7D 89 03 A6 */	mtctr r12
/* 8095BB10  4E 80 04 21 */	bctrl 
/* 8095BB14  7F C3 F3 78 */	mr r3, r30
/* 8095BB18  38 80 00 00 */	li r4, 0
/* 8095BB1C  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095BB20  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095BB24  38 A0 00 00 */	li r5, 0
/* 8095BB28  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095BB2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095BB30  7D 89 03 A6 */	mtctr r12
/* 8095BB34  4E 80 04 21 */	bctrl 
lbl_8095BB38:
/* 8095BB38  83 9E 09 50 */	lwz r28, 0x950(r30)
/* 8095BB3C  7F C3 F3 78 */	mr r3, r30
/* 8095BB40  38 81 00 0C */	addi r4, r1, 0xc
/* 8095BB44  38 A1 00 08 */	addi r5, r1, 8
/* 8095BB48  7F C6 F3 78 */	mr r6, r30
/* 8095BB4C  38 E0 00 00 */	li r7, 0
/* 8095BB50  4B 7F 7B C9 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8095BB54  2C 03 00 00 */	cmpwi r3, 0
/* 8095BB58  41 82 00 4C */	beq lbl_8095BBA4
/* 8095BB5C  7F C3 F3 78 */	mr r3, r30
/* 8095BB60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8095BB64  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095BB68  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095BB6C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095BB70  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095BB74  7D 89 03 A6 */	mtctr r12
/* 8095BB78  4E 80 04 21 */	bctrl 
/* 8095BB7C  7F C3 F3 78 */	mr r3, r30
/* 8095BB80  80 81 00 08 */	lwz r4, 8(r1)
/* 8095BB84  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095BB88  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095BB8C  38 A0 00 00 */	li r5, 0
/* 8095BB90  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095BB94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095BB98  7D 89 03 A6 */	mtctr r12
/* 8095BB9C  4E 80 04 21 */	bctrl 
/* 8095BBA0  48 00 00 38 */	b lbl_8095BBD8
lbl_8095BBA4:
/* 8095BBA4  2C 1C 00 00 */	cmpwi r28, 0
/* 8095BBA8  41 82 00 30 */	beq lbl_8095BBD8
/* 8095BBAC  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 8095BBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8095BBB4  40 82 00 24 */	bne lbl_8095BBD8
/* 8095BBB8  7F C3 F3 78 */	mr r3, r30
/* 8095BBBC  38 80 00 07 */	li r4, 7
/* 8095BBC0  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095BBC4  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095BBC8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095BBCC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095BBD0  7D 89 03 A6 */	mtctr r12
/* 8095BBD4  4E 80 04 21 */	bctrl 
lbl_8095BBD8:
/* 8095BBD8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8095BBDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095BBE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095BBE4  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 8095BBE8  4B 6E 77 05 */	bl convPId__14dEvt_control_cFUi
/* 8095BBEC  7C 03 F0 40 */	cmplw r3, r30
/* 8095BBF0  40 82 00 08 */	bne lbl_8095BBF8
/* 8095BBF4  38 60 00 00 */	li r3, 0
lbl_8095BBF8:
/* 8095BBF8  A8 1E 0F 5A */	lha r0, 0xf5a(r30)
/* 8095BBFC  2C 00 00 05 */	cmpwi r0, 5
/* 8095BC00  40 82 00 10 */	bne lbl_8095BC10
/* 8095BC04  80 1E 0C B0 */	lwz r0, 0xcb0(r30)
/* 8095BC08  7C 03 00 40 */	cmplw r3, r0
/* 8095BC0C  41 82 00 10 */	beq lbl_8095BC1C
lbl_8095BC10:
/* 8095BC10  38 00 00 05 */	li r0, 5
/* 8095BC14  B0 1E 0F 5A */	sth r0, 0xf5a(r30)
/* 8095BC18  90 7E 0C B0 */	stw r3, 0xcb0(r30)
lbl_8095BC1C:
/* 8095BC1C  38 60 00 01 */	li r3, 1
lbl_8095BC20:
/* 8095BC20  39 61 00 30 */	addi r11, r1, 0x30
/* 8095BC24  4B A0 65 FD */	bl _restgpr_27
/* 8095BC28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095BC2C  7C 08 03 A6 */	mtlr r0
/* 8095BC30  38 21 00 30 */	addi r1, r1, 0x30
/* 8095BC34  4E 80 00 20 */	blr 
