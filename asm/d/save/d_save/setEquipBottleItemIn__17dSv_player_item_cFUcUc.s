lbl_80033598:
/* 80033598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003359C  7C 08 02 A6 */	mflr r0
/* 800335A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800335A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800335A8  48 32 EC 35 */	bl _savegpr_29
/* 800335AC  7C 7D 1B 78 */	mr r29, r3
/* 800335B0  7C 9F 23 78 */	mr r31, r4
/* 800335B4  7C BE 2B 78 */	mr r30, r5
/* 800335B8  7F C3 F3 78 */	mr r3, r30
/* 800335BC  4B FF F3 5D */	bl dSv_item_rename__FUc
/* 800335C0  7C 7E 1B 78 */	mr r30, r3
/* 800335C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800335C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800335CC  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 800335D0  7F E4 FB 78 */	mr r4, r31
/* 800335D4  4B FF F4 89 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335DC  28 00 00 0B */	cmplwi r0, 0xb
/* 800335E0  41 80 00 C4 */	blt lbl_800336A4
/* 800335E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800335E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800335EC  7F E4 FB 78 */	mr r4, r31
/* 800335F0  4B FF F4 6D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335F8  28 00 00 0E */	cmplwi r0, 0xe
/* 800335FC  41 81 00 A8 */	bgt lbl_800336A4
/* 80033600  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80033604  28 00 00 6B */	cmplwi r0, 0x6b
/* 80033608  40 82 00 24 */	bne lbl_8003362C
/* 8003360C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033614  7F E4 FB 78 */	mr r4, r31
/* 80033618  4B FF F4 45 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003361C  7C 64 1B 78 */	mr r4, r3
/* 80033620  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80033624  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80033628  48 1E A6 9D */	bl setHotSpringTimer__13dMeter2Info_cFUc
lbl_8003362C:
/* 8003362C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033634  7F E4 FB 78 */	mr r4, r31
/* 80033638  4B FF F4 25 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003363C  7C 60 1B 78 */	mr r0, r3
/* 80033640  7F A3 EB 78 */	mr r3, r29
/* 80033644  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033648  7F C5 F3 78 */	mr r5, r30
/* 8003364C  4B FF F9 6D */	bl setItem__17dSv_player_item_cFiUc
/* 80033650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033658  7F E4 FB 78 */	mr r4, r31
/* 8003365C  4B FF F4 01 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033660  7C 60 1B 78 */	mr r0, r3
/* 80033664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003366C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80033670  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033674  7F C5 F3 78 */	mr r5, r30
/* 80033678  4B FF F9 41 */	bl setItem__17dSv_player_item_cFiUc
/* 8003367C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033684  7F E4 FB 78 */	mr r4, r31
/* 80033688  4B FF F3 D5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003368C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033690  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033694  98 64 5E 7D */	stb r3, 0x5e7d(r4)
/* 80033698  9B C4 5E 7E */	stb r30, 0x5e7e(r4)
/* 8003369C  7F E3 FB 78 */	mr r3, r31
/* 800336A0  4B FF A7 55 */	bl dComIfGp_setSelectItem__Fi
lbl_800336A4:
/* 800336A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800336A8  48 32 EB 81 */	bl _restgpr_29
/* 800336AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800336B0  7C 08 03 A6 */	mtlr r0
/* 800336B4  38 21 00 20 */	addi r1, r1, 0x20
/* 800336B8  4E 80 00 20 */	blr 
