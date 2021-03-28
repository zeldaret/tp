/* 80033598 000304D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003359C 000304DC  7C 08 02 A6 */	mflr r0
/* 800335A0 000304E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800335A4 000304E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800335A8 000304E8  48 32 EC 35 */	bl _savegpr_29
/* 800335AC 000304EC  7C 7D 1B 78 */	mr r29, r3
/* 800335B0 000304F0  7C 9F 23 78 */	mr r31, r4
/* 800335B4 000304F4  7C BE 2B 78 */	mr r30, r5
/* 800335B8 000304F8  7F C3 F3 78 */	mr r3, r30
/* 800335BC 000304FC  4B FF F3 5D */	bl dSv_item_rename__FUc
/* 800335C0 00030500  7C 7E 1B 78 */	mr r30, r3
/* 800335C4 00030504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800335C8 00030508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800335CC 0003050C  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 800335D0 00030510  7F E4 FB 78 */	mr r4, r31
/* 800335D4 00030514  4B FF F4 89 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335D8 00030518  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335DC 0003051C  28 00 00 0B */	cmplwi r0, 0xb
/* 800335E0 00030520  41 80 00 C4 */	blt lbl_800336A4
/* 800335E4 00030524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800335E8 00030528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800335EC 0003052C  7F E4 FB 78 */	mr r4, r31
/* 800335F0 00030530  4B FF F4 6D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800335F4 00030534  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800335F8 00030538  28 00 00 0E */	cmplwi r0, 0xe
/* 800335FC 0003053C  41 81 00 A8 */	bgt lbl_800336A4
/* 80033600 00030540  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80033604 00030544  28 00 00 6B */	cmplwi r0, 0x6b
/* 80033608 00030548  40 82 00 24 */	bne lbl_8003362C
/* 8003360C 0003054C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033610 00030550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033614 00030554  7F E4 FB 78 */	mr r4, r31
/* 80033618 00030558  4B FF F4 45 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003361C 0003055C  7C 64 1B 78 */	mr r4, r3
/* 80033620 00030560  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80033624 00030564  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80033628 00030568  48 1E A6 9D */	bl setHotSpringTimer__13dMeter2Info_cFUc
lbl_8003362C:
/* 8003362C 0003056C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033630 00030570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033634 00030574  7F E4 FB 78 */	mr r4, r31
/* 80033638 00030578  4B FF F4 25 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003363C 0003057C  7C 60 1B 78 */	mr r0, r3
/* 80033640 00030580  7F A3 EB 78 */	mr r3, r29
/* 80033644 00030584  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033648 00030588  7F C5 F3 78 */	mr r5, r30
/* 8003364C 0003058C  4B FF F9 6D */	bl setItem__17dSv_player_item_cFiUc
/* 80033650 00030590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033654 00030594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033658 00030598  7F E4 FB 78 */	mr r4, r31
/* 8003365C 0003059C  4B FF F4 01 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033660 000305A0  7C 60 1B 78 */	mr r0, r3
/* 80033664 000305A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033668 000305A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003366C 000305AC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80033670 000305B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033674 000305B4  7F C5 F3 78 */	mr r5, r30
/* 80033678 000305B8  4B FF F9 41 */	bl setItem__17dSv_player_item_cFiUc
/* 8003367C 000305BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033680 000305C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033684 000305C4  7F E4 FB 78 */	mr r4, r31
/* 80033688 000305C8  4B FF F3 D5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003368C 000305CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80033690 000305D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80033694 000305D4  98 64 5E 7D */	stb r3, 0x5e7d(r4)
/* 80033698 000305D8  9B C4 5E 7E */	stb r30, 0x5e7e(r4)
/* 8003369C 000305DC  7F E3 FB 78 */	mr r3, r31
/* 800336A0 000305E0  4B FF A7 55 */	bl dComIfGp_setSelectItem__Fi
lbl_800336A4:
/* 800336A4 000305E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800336A8 000305E8  48 32 EB 81 */	bl _restgpr_29
/* 800336AC 000305EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800336B0 000305F0  7C 08 03 A6 */	mtlr r0
/* 800336B4 000305F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800336B8 000305F8  4E 80 00 20 */	blr