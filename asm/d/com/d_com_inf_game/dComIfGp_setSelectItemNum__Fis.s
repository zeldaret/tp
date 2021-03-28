lbl_8002E714:
/* 8002E714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002E718  7C 08 02 A6 */	mflr r0
/* 8002E71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002E720  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E724  48 33 3A B5 */	bl _savegpr_28
/* 8002E728  7C 7C 1B 78 */	mr r28, r3
/* 8002E72C  7C 9F 23 78 */	mr r31, r4
/* 8002E730  4B FF F7 ED */	bl dComIfGp_getSelectItem__Fi
/* 8002E734  7C 7D 1B 78 */	mr r29, r3
/* 8002E738  38 1D FF 90 */	addi r0, r29, -112
/* 8002E73C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8002E740  28 00 00 02 */	cmplwi r0, 2
/* 8002E744  40 81 00 10 */	ble lbl_8002E754
/* 8002E748  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8002E74C  28 00 00 59 */	cmplwi r0, 0x59
/* 8002E750  40 82 00 68 */	bne lbl_8002E7B8
lbl_8002E754:
/* 8002E754  7F 83 E3 78 */	mr r3, r28
/* 8002E758  4B FF F5 E5 */	bl dComIfGs_getSelectMixItemNoArrowIndex__Fi
/* 8002E75C  38 03 FF F1 */	addi r0, r3, -15
/* 8002E760  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8002E764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E76C  3B C3 00 F8 */	addi r30, r3, 0xf8
/* 8002E770  7F C3 F3 78 */	mr r3, r30
/* 8002E774  7F A4 EB 78 */	mr r4, r29
/* 8002E778  48 00 59 81 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8002E77C  7F E4 07 34 */	extsh r4, r31
/* 8002E780  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002E784  7C 04 00 00 */	cmpw r4, r0
/* 8002E788  40 81 00 14 */	ble lbl_8002E79C
/* 8002E78C  7F C3 F3 78 */	mr r3, r30
/* 8002E790  7F A4 EB 78 */	mr r4, r29
/* 8002E794  48 00 59 65 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8002E798  54 7F 06 3E */	clrlwi r31, r3, 0x18
lbl_8002E79C:
/* 8002E79C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E7A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E7A4  38 63 00 EC */	addi r3, r3, 0xec
/* 8002E7A8  7F 84 E3 78 */	mr r4, r28
/* 8002E7AC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8002E7B0  48 00 57 BD */	bl setBombNum__24dSv_player_item_record_cFUcUc
/* 8002E7B4  48 00 00 70 */	b lbl_8002E824
lbl_8002E7B8:
/* 8002E7B8  28 00 00 4B */	cmplwi r0, 0x4b
/* 8002E7BC  40 82 00 14 */	bne lbl_8002E7D0
/* 8002E7C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E7C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E7C8  9B E3 00 F4 */	stb r31, 0xf4(r3)
/* 8002E7CC  48 00 00 58 */	b lbl_8002E824
lbl_8002E7D0:
/* 8002E7D0  28 00 00 76 */	cmplwi r0, 0x76
/* 8002E7D4  40 82 00 50 */	bne lbl_8002E824
/* 8002E7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E7E0  7F 84 E3 78 */	mr r4, r28
/* 8002E7E4  48 00 42 79 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002E7E8  38 03 FF F5 */	addi r0, r3, -11
/* 8002E7EC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8002E7F0  4B FF FD C9 */	bl dComIfGs_getBottleMax__Fv
/* 8002E7F4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8002E7F8  7F E0 07 34 */	extsh r0, r31
/* 8002E7FC  7C 00 18 00 */	cmpw r0, r3
/* 8002E800  40 81 00 0C */	ble lbl_8002E80C
/* 8002E804  4B FF FD B5 */	bl dComIfGs_getBottleMax__Fv
/* 8002E808  54 7F 06 3E */	clrlwi r31, r3, 0x18
lbl_8002E80C:
/* 8002E80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E814  38 63 00 EC */	addi r3, r3, 0xec
/* 8002E818  7F 84 E3 78 */	mr r4, r28
/* 8002E81C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8002E820  48 00 57 6D */	bl setBottleNum__24dSv_player_item_record_cFUcUc
lbl_8002E824:
/* 8002E824  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E828  48 33 39 FD */	bl _restgpr_28
/* 8002E82C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002E830  7C 08 03 A6 */	mtlr r0
/* 8002E834  38 21 00 20 */	addi r1, r1, 0x20
/* 8002E838  4E 80 00 20 */	blr 
